@extends('front_end.master')
@section('recent_blog')
<h4>Recent Blogs</h4>
<ul class="templatemo_list well">
    @foreach($recent_blog as $v_blog)
    <li><a href="{{URL::to('/blog-details/'.$v_blog->id)}}">{{$v_blog->blog_title}}</a></li>
    @endforeach
</ul>
@stop