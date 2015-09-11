@extends('admin_panel.admin_master')
@section('admin_content')
<div>
    <ul class="breadcrumb">
        <li>
            <a href="#">Home</a> <span class="divider">/</span>
        </li>
        <li>
            <a href="#">Forms</a>
        </li>
    </ul>
</div>

<div class="row-fluid sortable">
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h2><i class="icon-edit"></i> Form Elements</h2>
            <div class="box-icon">
                <a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
                <a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
                <a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
            </div>
        </div>
        <div class="box-content" >
             <h2 style="color: green">
                <?php
                    $msg=Session::get('message');
                    if($msg)
                    {
                        echo $msg;
                        Session::put('message','');
                    }
                
                ?>
            </h2>
           {!! Form::open(array('url'=>'save-blog', 'role'=>'form', 'method'=>'POST','files'=>'true')) !!}
                <fieldset>
                    <legend>Add Blog</legend>
               
                    <div class="control-group">
                        <label class="control-label" for="typeahead">Blog Title </label>
                        <div class="controls">
                            <input type="text" class="span6 typeahead" name="blog_title" style="width:33%" >
                            
                       </div>
                    </div>
                   <div class="control-group">
                        <label class="control-label" for="typeahead">Category Name  </label>
                        <div class="controls">
                            <select name="category_id" style="width:33%">
                                <option>Select Category Name....</option>
                               
                                @foreach($all_published_category as $v_category)
                               
                                <option value="{{$v_category->id}}">{{$v_category->category_name}}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                     
                    
                    <div class="control-group">
                        <label class="control-label" for="textarea2">Blog Short Description</label>
                        <div class="controls">
                            <textarea name="blog_short_description" class="cleditor"   rows="8" style="width:48%"></textarea>
                        </div>
                    </div>
                      <div class="control-group">
                        <label class="control-label" for="textarea2">Blog Long Description</label>
                        <div class="controls">
                            <textarea name="blog_long_description" class="cleditor"   rows="8" style="width:48%"></textarea>
                        </div>
                    </div>
                  
                    <div class="control-group">
                        <label class="control-label" for="fileInput">Blog Images</label>
                        <div class="controls">
                            <input class="input-file uniform_on" id="fileInput" type="file" name="blog_image">
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="textarea2">Publication Status</label>
                        <div class="controls">
                            <select name="publication_status" style="width:33%">
                                <option>Select Status...</option>
                                <option value="1">Published</option>
                                <option value="0">Unpublished</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-actions">
                        <button type="submit" class="btn btn-primary">Save Blog</button>
                        <button type="reset" class="btn">Cancel</button>
                    </div>
                </fieldset>
             {!! Form::close() !!}   

        </div>
    </div><!--/span-->

</div><!--/row-->
@stop