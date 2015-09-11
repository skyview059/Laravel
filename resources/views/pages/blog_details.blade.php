@extends('front_end.master')
@section('maincontent')
<script type="text/javascript">
<!--
//Create a boolean variable to check for a valid Internet Explorer instance.
var xmlhttp = false;
//Check if we are using IE.
try {
//If the Javascript version is greater than 5.
xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
//alert(xmlhttp);
//alert ("You are using Microsoft Internet Explorer.");
} catch (e) {
   // alert(e);
    
//If not, then use the older active x object.
try {
//If we are using Internet Explorer.
xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
//alert ("You are using Microsoft Internet Explorer");
} catch (E) {
//Else we must be using a non-IE browser.
xmlhttp = false;
}
}
//If we are using a non-IE browser, create a javascript instance of the object.
if (!xmlhttp && typeof XMLHttpRequest != 'undefined') {
xmlhttp = new XMLHttpRequest();
//alert ("You are not using Microsoft Internet Explorer");
}
function makeinputbox(id)
{
      //  alert(id);
        inputbox="<input type='text' id='comments_replay' ><input type='hidden' id='comments_id' value="+ id+"><input type='button' value='Send' >";
    document.getElementById('res').innerHTML=inputbox;
}


function makerequest(given_text,objID)
 {
	//alert(given_text);
        //var obj = document.getElementById(objID);
                  serverPage='';
	xmlhttp.open("GET", serverPage);
	xmlhttp.onreadystatechange = function()
	 {
                            //alert(xmlhttp.readyState);
                            //alert(xmlhttp.status);
		if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
		 {
			//alert(xmlhttp.responseText);
                                            document.getElementById(objID).innerHTML = xmlhttp.responseText;
			//document.getElementById(objcw).innerHTML = xmlhttp.responseText;
		 }
	}
xmlhttp.send(null);
}

</script>
<div class="post_section">

    <div class="post_date">
        30<span>Nov</span>
    </div>
    <div class="post_content">

        <h2><a href="blog_post.html">{{$blog_details[0]->blog_title}}</a></h2>

        <strong>Author:</strong> Steven | <strong>Category:</strong> <a href="#">PSD</a>, <a href="#">Templates</a>

        <a href="http://www.templatemo.com/page/1" target="_parent"><img src="images/templatemo_image_01.jpg" alt="image" /></a>

        <p>{{$blog_details[0]->blog_long_description}}</p>

        <p><a href="blog_post.html">24 Comments</a> | <a href="{{URL::to('/')}}">Back...</a>                </p>
    </div>
    <div class="cleaner"></div>

</div>

    
        <div class="article">
              <h2><span>{{count($all_published_comments)}}</span> Responses</h2>
            <div class="clr"></div>
            @foreach($all_published_comments as $v_comments)
            
            <div class="comment"> <a href="#"><img src="images/userpic.gif" width="40" height="40" alt="" class="userpic" /></a>
              <p><a href="#">{{$v_comments->user_author_name}}</a> Says:<br />
                {{$v_comments->created_at}}</p>
              <p>{{$v_comments->blog_comments}}</p>
              <a href="#" onclick="makeinputbox({{$v_comments->id}});" >Replay</a>
              <br/>
              <span id="res"></span>
            </div>
            @endforeach
        </div>
     <?php
$id = Session::get('user_id');
if ($id != NULL) {
    ?>   
        <div id="contact_form">
            <h2 style="color:red">
                <?php
                $msg = Session::get('message');
                if (isset($msg)) {
                    echo $msg;
                    Session::put('message', '');
                }
                ?>
            </h2>
            <h3>Comments Form</h3>

            {!! Form::open(array('url'=>'save-comments', 'role'=>'form', 'method'=>'POST')) !!}

            <input type="hidden" name="blog_id" value="{{$blog_details[0]->id}}" />

            <div class="cleaner_h10"></div>

            <label for="text">Comments:</label> <textarea id="text" name="blog_comments" rows="0" cols="0" class="required"></textarea>
            <div class="cleaner_h10"></div>

            <input type="submit" class="submit_btn" name="submit" id="submit" value="Send" />
            <input type="reset" class="submit_btn" name="reset" id="reset" value="Reset" />

            {!! Form::close() !!}

        </div> 
    

<?php } ?>

@stop

