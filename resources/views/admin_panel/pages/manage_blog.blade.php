@extends('admin_panel.admin_master')
@section('admin_content')


    <ul class="breadcrumb">
        <li>
            <i class="icon-home"></i>
            <a href="index.html">Home</a> 
            <i class="icon-angle-right"></i>
        </li>
        <li><a href="#">Tables</a></li>
    </ul>

<div class="row-fluid sortable">		
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h2><i class="icon-user"></i> Members</h2>
            <div class="box-icon">
                <a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
                <a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
                <a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
            </div>
        </div>
        <div class="box-content">
            <table class="table table-striped table-bordered bootstrap-datatable datatable">
                <thead>
                    <tr>
                        <th>Blog Id</th>
                        <th>Blog Name</th>
                        <th>Author Name</th>
                        <th>Publication Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>   
                <tbody>
                    @foreach($all_blog as $v_blog)
                        <tr>
                            <td>{{$v_blog->id}}</td>
                            <td class="center">{{$v_blog->blog_title}}</td>
                            <td>{{$v_blog->author_name}}</td>
                            
                            @if($v_blog->publication_status==1)
                            
                            <td class="center">Published</td>
                            
                            @else
                            <td class="center">Unpublished</td>
                            @endif
                           
                            <td class="center">
                                @if($v_blog->publication_status==1)
                                <a class="btn btn-success" href="{{URL::to('/unpublished-blog/'.$v_blog->id)}}" title="Unpublished">
                                    <i class="halflings-icon white lock"></i>  
                                </a>
                                @else
                                <a class="btn btn-danger" href="{{URL::to('/published-blog/'.$v_blog->id)}}" title="published">
                                    <i class="halflings-icon white ok"></i>  
                                </a>
                                @endif
                                <a class="btn btn-info" href="{{URL::to('/edit-blog/'.$v_blog->id)}}"  title="Edit">
                                    <i class="halflings-icon white edit"></i>  
                                </a>
                                <a class="btn btn-danger" href="{{URL::to('/delete-blog/'.$v_blog->id)}}" title="Delete" onclick="return checkDelete();">
                                    <i class="halflings-icon white trash" ></i> 
                                </a>
                            </td>
                        </tr>
                  @endforeach
                </tbody>
            </table>            
        </div>
    </div><!--/span-->

</div><!--/row-->
@stop

