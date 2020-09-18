@extends('layouts.layout')

@section('content')

    <form action="{{route('post.store')}}" method="post" enctype="multipart/form-data">
        @csrf <!защита от csrf>
        <h3>Create articles</h3>
        @include('posts.parts.form')
        <input id ="createart" class="btn btn-outline-success my-2 my-sm-0" type="submit" value="Create articles" >
    </form>

 @endsection
