<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Categories;
use App\Models\Blogs;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Session;
use App\Models\Comments;
class BlogController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function index()
    {
        //$all_category = Categories::where('publication_status', 1)->get();
        $all_category =  DB::table('tbl_category')->where('publication_status', 1)->get();
        $all_blog =  DB::table('tbl_blog')
                ->where('publication_status', 1)
                ->orderBy('id', 'desc')
                ->get();
		$allblog = array();
		foreach($all_blog as $v)
		{
			$m = date('M', strtotime($v->created_at));
			$v->m = $m;
			$d = date('d', strtotime($v->created_at));
			$v->d = $d;
			$allblog[] = $v;
		}
		
		
        $populer_blog =  DB::table('tbl_blog')
                ->where('publication_status', 1)
                ->orderBy('hit_count', 'desc')
                ->take(3)
                ->get();
        
//        echo '<pre>';
//        print_r($all_blog);
//        exit();
        
        $category= view('pages.category')->with('all_published_category',$all_category);
        $content= view('pages.home_content')->with('all_published_blog',$allblog);
        $populer= view('pages.populer')->with('populer_blog',$populer_blog);
        $ads= view('pages.ads');
        return view('front_end.master')
                ->with('category',$category)
                ->with('maincontent',$content)
                ->with('populer',$populer)
                ->with('ads',$ads);
    }
    public function sign_up()
    {
         $all_category =  DB::table('tbl_category')->where('publication_status', 1)->get();
//        echo '<pre>';
//        print_r($all_blog);
//        exit();
        
        $category= view('pages.category')->with('all_published_category',$all_category);
        $content= view('pages.sign_up');
        $ads= view('pages.ads');
        return view('front_end.master')
                ->with('category',$category)
                ->with('maincontent',$content)
                ->with('ads',$ads);  
    }
     
    public function contact()
    {
         $all_category =  DB::table('tbl_category')->where('publication_status', 1)->get();
//        echo '<pre>';
//        print_r($all_blog);
//        exit();
        
        $category= view('pages.category')->with('all_published_category',$all_category);
        $content= view('pages.contact');
        $ads= view('pages.ads');
        return view('front_end.master')
                ->with('category',$category)
                ->with('maincontent',$content)
                ->with('ads',$ads);  
    }

    public function category_blog($id)
    {
        $all_category_blog= DB::table('tbl_blog')->where('category_id',$id)
                ->where('publication_status', 1)->get();
        $all_category =  DB::table('tbl_category')->where('publication_status', 1)->get();
//                echo '<pre>';
//        print_r($all_category_blog);
//        exit();
        $category= view('pages.category')->with('all_published_category',$all_category);
       $content= view('pages.category_blog')->with('all_category_blog',$all_category_blog); 
       $ads= view('pages.ads');
       return view('front_end.master')
                ->with('category',$category)
                ->with('maincontent',$content)
                ->with('ads',$ads);
    }
    public function blog_details($id)
    {
        
        $blog_details= DB::table('tbl_blog')->where('id',$id)->get();
      //  $blog_details= Blogs::find($id);
        $all_category =  DB::table('tbl_category')->where('publication_status', 1)->get();
        $all_published_comments =  DB::table('tbl_comments')->where('publication_status', 1)->where('blog_id',$id)->get();
//       echo '<pre>';
//       print_r($blog_details);
//       exit();
       $hit_count=$blog_details[0]->hit_count+1;
      // $blog_id=$blog_details['id'];
       DB::table('tbl_blog')
               ->where('id',$id)
               ->update(['hit_count'=>$hit_count]);
              
       //$comments= view('pages.comments');
       $category= view('pages.category')->with('all_published_category',$all_category);
       $content= view('pages.blog_details')->with('blog_details',$blog_details)
                                                              ->with('all_published_comments',$all_published_comments);
                                                             
                                                            
      
       
       $ads= view('pages.ads');
       
       return view('front_end.master')
                ->with('category',$category)
                ->with('maincontent',$content)
                ->with('ads',$ads) ;
    }
    
    public function save_comments(Request $request)
    {
        $comments= new Comments();
        $comments->blog_id=$request->blog_id;
        $comments->user_author_name=Session::get('name');
        $comments->blog_comments=$request->blog_comments;
        
        
        
        $comments->save();
        Session::put('message','Your Comments Save Successfully And Weating For Admin Approval !');
        return redirect('/blog-details/'.$request->blog_id);
    }

   function save_reply(){
        //  print_r( $_GET);
        //echo 'Rakib';
   } 

    public function user_logout(){		
		Session::put('user_id','');
		Session::put('name','');
		Session::put('message','You Are Succsssfully Logout ! ');
		return  redirect('/sign-in');
    }

    public function my_portfolio()
    {
        $category= view('pages.category');
        $content= view('pages.portfolio');
        $friends= view('pages.friends');
        return view('front_end.master')
                ->with('category',$category)
                ->with('maincontent',$content)
                ->with('friends',$friends);
    }
  
}