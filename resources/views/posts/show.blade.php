@extends('layouts.layout')

@section('content')

    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-header"><h2>{{ $post->title}}</h2></div>
                <div class="card-boby">
                    <div class="card-img card-img-max "
                         style="background-image: url({{$post->img ?? asset('img/default.png')}}"></div>
                    <div class="card-author">Author: {{$post->name}}</div>
                    <div class="card-data">Articles crested: {{$post->created_at->diffForHumans()}}</div>
                    <div class="card-btn">
                        <a href="{{route('post.index')}}" class="btn btn-outline-primary">Home Page</a>
                        @auth
                            @if(Auth::user()->id == $post->author_id) <!проверка доступ к кнопкам>
                            <a href="{{route('post.edit',['id'=>$post->post_id])}}"
                               class="btn btn-outline-success">Edit</a>
                            <form action="{{ route('post.destroy', ['id'=>$post->post_id]) }}" method="post" onsubmit="
                        if (confirm('Are you sure you want to delete')) {return true} else{return false}"><!edit>
                                @csrf
                                @method('DELETE')
                                <input type="submit" class="btn btn-outline-danger" value="Delete">
                            </form>
                            @endif
                        @endauth
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>

@endsection
