<?php

namespace App\Http\Controllers\Blog;

use App\Http\Requests\Postrequest;
use App\Models\Blog\Post;
use Illuminate\Http\Request;
use PhpParser\Node\Stmt\Return_;
use Illuminate\Support\Facades\Storage;


class Postcontroller extends Controller
{


    public function __construct()
    {
        $this->middleware('auth')->except('index','show');//ограничение для незарег. пользователель создание поста
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if($request->search) {                                      //реализация поиска
            $posts = Post::join('users','author_id','=','users.id')
                ->where('title','like','%' . $request->search. '%')
                ->orWhere('descr','title','like','%' . $request->search. '%')
                ->orWhere('name','title','like','%' . $request->search. '%')
                ->orderBy('posts.created_at','desc')//сортировка
                ->get();
            return view('posts.index', compact ('posts'));
        }

        $posts = Post::join('users','author_id','=','users.id')//объединие таблиц и вывод постов на главную
            ->orderBy('posts.created_at','desc')
            ->paginate(4);
        return view('posts.index', compact ('posts'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('posts.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Postrequest $request)
    {
        $post =new Post(); //создание постп а бд
        $post->title =$request->title;//внесение в бд
        $post->short_title =$request->title= \Str::length($request->title)>30 ? \Str::substr($request->title, 0,30) . '...': $request->title; //проверка длинны заголовка
        $post->descr =$request->descr;
        $post->author_id =\Auth::user()->id; //пирвязка пользователя к бд

        if($request->file('file')){// картинки
            $path =\Storage::putFile('public',$request->file('file')); //путь файла
            $url= \Storage::url($path);// создание ссылки для картинки
            $post->img = $url;//сохрание в бд
        }

        $post-> save();

        return redirect()->route('post.index')->with('success','Article is created.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $post =Post::join('users','author_id','=','users.id')
        -> find($id);//ищем статью

        if(!$post){
            return redirect()->route('post.index')->withErrors('Articles not found');
        }

        return view('posts.show', compact('post')); //выводим статью
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $post =Post::find($id);//ищем статью

        if(!$post){
            return redirect()->route('post.index')->withErrors('Articles not found');
        }

        if($post->author_id !=\Auth::user()->id){
            return redirect()->route('post.index')->withErrors('You cannot edit articles' );
        }

        return view('posts.edit', compact('post'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Postrequest $request, $id)
    {
        $post =Post::find($id);

        if(!$post){
            return redirect()->route('post.index')->withErrors('Articles not found');
        }

        if($post->author_id !=\Auth::user()->id){
            return redirect()->route('post.index')->withErrors('You cannot edit articles' );
        }

        $post->title =$request->title;
        $post->short_title =$request->title= \Str::length($request->title)>30 ? \Str::substr($request->title, 0,30) . '...': $request->title; //проверка длинны заголовка
        $post->descr =$request->descr;
        if($request->file('img')){
            $path=Storage::putFile('public',$request->file('img'));
            $url=Storage::url($path);
            $post->img=$url;
        }

        $post->update();
        $id = $post->post_id;
        return redirect()->route('post.show', compact('id'))->with('success','Article is edited.');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $post = Post::find($id);

        if(!$post){
            return redirect()->route('post.index')->withErrors('Articles not found');
        }

        if($post->author_id !=\Auth::user()->id){
            return redirect()->route('post.index')->withErrors('You cannot edit articles' );
        }

        $post->delete();
        return redirect()->route('post.index')->with('success','Article is deleted.');
    }
}
