@extends('front_end.master')
@section('maincontent')
<div id="contact_form" >

    <h2 style="color:green">Sign Up Form</h2>
      <h2 style="color:red">
                            <?php 
                                $msg=Session::get('message');
                                if(isset($msg))
                                {
                                    echo $msg;
                                    Session::put('message','');
                                }
                                ?>
                          </h2>
      {!! Form::open(array('url'=>'save-user', 'role'=>'form', 'method'=>'POST')) !!}
  
                  
        
        <label for="author">Name:</label> <input type="text" id="author" name="name" class="required input_field" />
        <div class="cleaner_h10"></div>

        <label for="email">Email:</label> <input type="email" id="email" name="email" class="validate-email required input_field" />
        <div class="cleaner_h10"></div>
        
        <label for="phone">Password:</label> <input type="password" name="password" id="phone" class="input_field" />
        <div class="cleaner_h10"></div>
        
        <label for="phone">Phone:</label> <input type="text" name="phone" id="phone" class="input_field" />
        <div class="cleaner_h10"></div>

        <label for="text">Address:</label> <textarea id="text" name="address" rows="0" cols="0" class="required"></textarea>
        <div class="cleaner_h10"></div>

        <input type="submit" class="submit_btn" name="submit" id="submit" value="Send" />
        <input type="reset" class="submit_btn" name="reset" id="reset" value="Reset" />

    {!! Form::close() !!}

</div>
@stop