@extends('front_end.master')
@section('maincontent')
<div class="post_section">
@foreach($all_published_blog as $v_blog)
    <div class="well">
        <div class="post_date">
            {{$v_blog->d}}<span>{{$v_blog->m}}</span>
        </div>
        <div class="post_content">
    
            <h2><a href="{{URL::to('blog-details/'.$v_blog->id)}}">{{$v_blog->blog_title}}</a></h2>
    		
            <div class="authortime">
            	<strong class="author">نویسنده:</strong>{{$v_blog->author_name}} | <strong class="time">زمان:</strong> 
                <a href="#">{{$v_blog->created_at}}</a>
    		</div>
            
            <a href="{{URL::asset($v_blog->blog_image)}}" target="_blank"><img 
            src="{{URL::asset($v_blog->blog_image)}}" alt="image" /></a>
    	
            <div class="text">{!!($v_blog->blog_short_description)!!}</div>
            
            <p><a href="blog_post.html">24 Comments</a> | <a 
            href="{{URL::to('blog-details/'.$v_blog->id)}}">Continue reading...</a>
            </p>
        </div>
        <div class="cleaner"></div>
    </div>
    @endforeach
</div>


@stop