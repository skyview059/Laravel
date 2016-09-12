@extends('pages.blog_details')
@section('comments')
<div class="mainbar">
  
        <div class="article">
          <h2><span>3</span> Responses</h2>
          <div class="clr"></div>
          <div class="comment"> <a href="#"><img src="images/userpic.gif" width="40" height="40" alt="" class="userpic" /></a>
            <p><a href="#">admin</a> Says:<br />
              April 20th, 2009 at 2:17 pm</p>
            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec libero. Suspendisse bibendum.</p>
          </div>
          <div class="comment"> <a href="#"><img src="images/userpic.gif" width="40" height="40" alt="" class="userpic" /></a>
            <p><a href="#">Admin</a> Says:<br />
              April 20th, 2009 at 3:21 pm</p>
            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec libero. Suspendisse bibendum. Cras id urna. Morbi tincidunt, orci ac convallis aliquam, lectus turpis varius lorem, eu posuere nunc justo tempus leo.</p>
          </div>
          <div class="comment"> <a href="#"><img src="images/userpic.gif" width="40" height="40" alt="" class="userpic" /></a>
            <p><a href="#">admin</a> Says:<br />
              April 20th, 2009 at 2:17 pm</p>
            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec libero. Suspendisse bibendum.</p>
          </div>
        </div>
<div id="contact_form">

    <h3>Comments Form</h3>

    <form method="post" name="contact" action="#">

        <input type="hidden" name="post" value="Send" />
        <label for="author">Name:</label> <input type="text" id="author" name="author" class="required input_field" />
        <div class="cleaner_h10"></div>

       <label for="text">Comments:</label> <textarea id="text" name="text" rows="0" cols="0" class="required"></textarea>
        <div class="cleaner_h10"></div>

        <input type="submit" class="submit_btn" name="submit" id="submit" value="Send" />
        <input type="reset" class="submit_btn" name="reset" id="reset" value="Reset" />

    </form>

</div> 
 </div>
@stop