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
        <div class="box-content">
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
{!! Form::open(array('url'=>'save-category', 'role'=>'form', 'method'=>'POST')) !!}
        <fieldset>
         
            <div class="control-group">
                <label class="control-label" for="typeahead">Category Name </label>
                <div class="controls">
                    <input type="text" name="category_name" class="span6 typeahead" id="typeahead"  data-provide="typeahead" data-items="4" data-source='["Alabama","Alaska","Arizona","Arkansas","California","Colorado","Connecticut","Delaware","Florida","Georgia","Hawaii","Idaho","Illinois","Indiana","Iowa","Kansas","Kentucky","Louisiana","Maine","Maryland","Massachusetts","Michigan","Minnesota","Mississippi","Missouri","Montana","Nebraska","Nevada","New Hampshire","New Jersey","New Mexico","New York","North Dakota","North Carolina","Ohio","Oklahoma","Oregon","Pennsylvania","Rhode Island","South Carolina","South Dakota","Tennessee","Texas","Utah","Vermont","Virginia","Washington","West Virginia","Wisconsin","Wyoming"]'>
                </div>
            </div>
            <div class="control-group hidden-phone">
                <label class="control-label" for="textarea2">Category Description</label>
                <div class="controls">
                    <textarea style="width: 48%" class="cleditor"  rows="10" name="category_description"></textarea>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label" for="typeahead">Publication Status </label>
                <div class="controls">
                <select name="publication_status">
                    <option>select</option>
                    <option value="1">Published</option>
                    <option value="0">Unpublished</option>
                </select>
                </div>
            </div>
            
            <div class="form-actions">
                <button type="submit" class="btn btn-primary">Save changes</button>
                <button type="reset" class="btn">Cancel</button>
            </div>
        </fieldset>
    {!! Form::close() !!} 
            </div>
        </div>
    </div>
@stop