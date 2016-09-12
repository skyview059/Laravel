extends('front_end.master')
@section('populer')
<h4>Popular Blog</h4>
    <ul class="templatemo_list">
        @foreach($populer_blog as $v_blog)
        <li><a href="#" target="_parent">{{$v_blog->blog_title}}</a></li>
        @endforeach
    </ul>
@stop