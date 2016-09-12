@extends('front_end.master')
@section('category')
<h4>Categories</h4>
<ul class="templatemo_list">
    
   @foreach($all_published_category as $v_category)
    <li><a href="{{URL::to('/category-blog/'.$v_category->id)}}">{{$v_category->category_name}}</a></li>
   @endforeach
</ul>
@stop