@extends('admin_panel.admin_master')
@section('admin_content')
<div class="row-fluid sortable">
    <div class="box span12">
        <div class="box-header well" data-original-title>
            <h2><i class="icon-edit"></i> Edit Elements</h2>
            <div class="box-icon">
                <a href="#" class="btn btn-setting btn-round"><i class="icon-cog"></i></a>
                <a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
                <a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
            </div>
        </div>
        <div class="box-content">
            <!--<form name="edit_category"  class="form-horizontal" action="" method="post">-->
                {!! Form::open(array('url'=>'update-category','name'=>'edit_category','class'=>'form-horizontal','role'=>'form', 'method'=>'POST')) !!}
                
                <fieldset>
                    <legend>Edit Category</legend>
                   
                    <div class="control-group">
                        <label class="control-label" for="typeahead">Category name </label>
                        <div class="controls">
                            <input type="text" class="span6 typeahead" name="category_name" value="{{$category_info[0]->category_name}}">
                            <input type="hidden" name="category_id" value="{{$category_info[0]->id}}">
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="textarea2">Category Description</label>
                        <div class="controls">
                            <textarea class="cleditor" name="category_description"  id="textarea2" rows="3">{{$category_info[0]->category_description}}</textarea>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="textarea2">Publication Status</label>
                        <div class="controls">
                            <select name="publication_status">
                                <option>Select Status</option>
                                <option value="1">Published</option>
                                <option value="0">Unpublished</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-actions">
                        <button type="submit" class="btn btn-primary">Update</button>
                        <button type="reset" class="btn">Cancel</button>
                    </div>
                </fieldset>
              {!! Form::close() !!}   

        </div>
    </div><!--/span-->

</div><!--/row-->

<script type="text/javascript">
    document.forms['edit_category'].elements['publication_status'].value = {{$category_info[0]->publication_status}};
</script>
@stop