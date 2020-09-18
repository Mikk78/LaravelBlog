@extends('layouts.layout')

@section('content')

    <form action="{{route('post.update',['id'=>$post->post_id]) }}" method="post" enctype="multipart/form-data">
        @method('PATCH')
        @csrf <!защита от csrf>
        <h3>Edit articles</h3>
        @include('posts.parts.form')
        <input id ="createart" class="btn btn-outline-success my-2 my-sm-0" type="submit" value="Edit articles" >
    </form>

@endsection
