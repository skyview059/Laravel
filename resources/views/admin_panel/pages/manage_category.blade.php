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
            <div class="box-header" data-original-title>
                <h2><i class="halflings-icon user"></i><span class="break"></span>Members</h2>
                <div class="box-icon">
                    <a href="#" class="btn-setting"><i class="halflings-icon wrench"></i></a>
                    <a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
                    <a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
                </div>
            </div>
            <div class="box-content">
                <table class="table table-striped table-bordered bootstrap-datatable datatable">
                    <thead>
                        <tr>
                            <th>Category Id</th>
                            <th>Category Name</th>
                            <th>Publication Status</th>
                            <th>Actions</th>
                        </tr>
                    </thead>   
                    <tbody>
                        @foreach($all_category as $v_category)
                        <tr>
                            <td>{{$v_category->id}}</td>
                            <td class="center">{{$v_category->category_name}}</td>
                            
                                @if($v_category->publication_status==1)
                            
                            <td class="center">Published</td>
                            
                            @else
                            <td class="center">Unpublished</td>
                            @endif
                           
                            <td class="center">
                                @if($v_category->publication_status==1)
                                <a class="btn btn-success" href="{{URL::to('/unpublished-category/'.$v_category->id)}}" title="Unpublished">
                                    <i class="halflings-icon white lock"></i>  
                                </a>
                                @else
                                <a class="btn btn-danger" href="{{URL::to('/published-category/'.$v_category->id)}}" title="published">
                                    <i class="halflings-icon white ok"></i>  
                                </a>
                                @endif
                                <a class="btn btn-info" href="{{URL::to('/edit-category/'.$v_category->id)}}"  title="Edit">
                                    <i class="halflings-icon white edit"></i>  
                                </a>
                                <a class="btn btn-danger" href="{{URL::to('/delete-category/'.$v_category->id)}}" title="Delete" onclick="return checkDelete();">
                                    <i class="halflings-icon white trash" ></i> 
                                </a>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div> 
        </div>
        </div>
 @stop