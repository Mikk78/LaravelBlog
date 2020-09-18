@extends('layouts.layout')

@section('content')

    @if(isset($_GET['search']))
        @if(count($posts)>0)
            <h2 class="text-center">Result on demand "<?=$_GET['search']?>"</h2>
            <p  class="lead" class="text-center">Total found {{count($posts) }} articles</p>
        @else
            <h2 class="noarticles">On demand "<?=htmlspecialchars($_GET['search'])?>" no articles found</h2><>
            <a class="noarticles" href="{{route('post.create')}}" class="btn btn-outline-primary">Show all articles</a>
        @endif
    @endif

    <div class="row">
        @foreach($posts as $post)
            <div class="col-6">
                <div class="card">
                    <div class="card-header"><h2>{{ $post->short_title}}</h2></div>
                        <div class="card-boby">
                            <div class="card-img" style="background-image: url({{$post->img ?? asset('img/default.png')}}"></div>
                                <div class="card-author">Author: {{$post->name}}</div>
                            <a href="{{route('post.show',['id'=> $post->post_id])}}" class="btn btn-outline-primary">See all</a>
                        </div>
                </div>
            </div>
        @endforeach
    </div>
    @if(!isset($_GET['search']))
        {{$posts->links()}}
    @endif

@endsection
