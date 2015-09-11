@extends('front_end.master')
@section('maincontent')
<div class="post_section">
@foreach($all_published_blog as $v_blog)
    <div class="post_date">
        30<span>Nov</span>
    </div>
    <div class="post_content">

        <h2><a href="blog_post.html">{{$v_blog->blog_title}}</a></h2>

        <strong>Author:</strong>{{$v_blog->author_name}} | <strong>Date:</strong> <a href="#">{{$v_blog->created_at}}</a>

        <a href="http://www.templatemo.com/page/1" target="_parent"><img src="images/templatemo_image_01.jpg" alt="image" /></a>

        <p>{{$v_blog->blog_short_description}}</p>
        
        <p><a href="blog_post.html">24 Comments</a> | <a href="{{URL::to('blog-details/'.$v_blog->id)}}">Continue reading...</a>                </p>
    </div>
    <div class="cleaner"></div>
    @endforeach
</div>


@stop