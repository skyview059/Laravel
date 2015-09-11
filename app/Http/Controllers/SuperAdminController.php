<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Session;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Models\Categories;
use App\Models\Blogs;
use Illuminate\Support\Facades\DB;
//use Illuminate\Support\Facades\Redirect;
use Redirect;
 session_start();
class SuperAdminController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
   
    public function __construct() {
        $id=Session::get('id');
        //echo '-----'.$id;
        if($id==NULL)
        {
            return redirect('adda')->send();
            //echo 'In if Post';
        }
    }
    public function index()
    {
       $content=view('admin_panel.pages.dashboard_content');
        return view('admin_panel.admin_master')
                                ->with('admin_content',$content);
    }
    //-------------------------------------start category-------------------------------------------------------
    public function add_category()
    {
        $content=view('admin_panel.pages.add_category');
        return view('admin_panel.admin_master')
                                ->with('admin_content',$content);
    }
    public function save_category(Request $request)
    {
        $category= new Categories();
        $category->category_name=$request->category_name;
        $category->category_description=$request->category_description;
        $category->publication_status=$request->publication_status;
        
        $category->save();
        Session::put('message','Save Category Information Successfully !');
        return redirect('/add-category');
    }
    public function manage_category()
    {
        //$all_category=Categories::all();
        $all_category =  DB::table('tbl_category')->get();
        $content=view('admin_panel.pages.manage_category')->with('all_category',$all_category);
        return view('admin_panel.admin_master')
                                ->with('admin_content',$content);

    }
    public function delete_category($id)
    {
        //echo $id;
        DB::table('tbl_category')->where('id',$id)->delete();
        return redirect('manage-category');
    }
    public function unpublished_category($id)
    {
        DB::table('tbl_category')
            ->where('id', $id)
            ->update(['publication_status' => 0]);
        return redirect('manage-category');
    }
    public function published_category($id)
    {
        DB::table('tbl_category')
            ->where('id', $id)
            ->update(['publication_status' => 1]);
        return redirect('manage-category');
    }

    public function edit_category($id)
    {
        $category_info =  DB::table('tbl_category')->where('id',$id)->get();
        $content=view('admin_panel.pages.edit_category')->with('category_info',$category_info);
        return view('admin_panel.admin_master')
                                ->with('admin_content',$content);
    }
    public function update_category(Request $request)
    {
        //$category= new Categories();
        $category_id=$request->category_id;
        $category_name=$request->category_name;
        $category_description=$request->category_description;
        $publication_status=$request->publication_status;
        
        
        
        
        DB::table('tbl_category')
            ->where('id', $category_id)
            ->update(array('category_name' => $category_name,'category_description'=>$category_description,'publication_status'=>$publication_status));
            return redirect('manage-category');
    }
     //-------------------------------------end category-------------------------------------------------------
    
    
//-------------------------------------start blog-------------------------------------------------------
    public function add_blog() {
        $all_category =  DB::table('tbl_category')->where('publication_status', 1)->get();
        $content = view('admin_panel.pages.add_blog')->with('all_published_category',$all_category);
        return view('admin_panel.admin_master')->with('admin_content', $content); 
    }
    public function save_blog(Request $request)
    {
        $image = $request->file('blog_image');
//        echo '<pre>';
//        print_r($image);
//        exit();
        
        if ($image) {
            $image_name = str_random(20);
            $ext = strtolower($image->getClientOriginalExtension());
            $image_full_name = $image_name . '.' . $ext;
            $destination_path = 'blog_images/';
            $image_url = $destination_path . $image_full_name;
            $success = $request->file('blog_image')->move($destination_path, $image_full_name);

        if($success)
        {
        $blog= new Blogs();
        $blog->category_id=$request->category_id;
        $blog->blog_title=$request->blog_title;
        $blog->blog_short_description=$request->blog_short_description;
        $blog->blog_long_description=$request->blog_long_description;
        $blog->publication_status=$request->publication_status;
        $blog->author_name=Session::get('admin_name');
        $blog->blog_image=$image_url;
        $blog->save();
        Session::put('message','Save Blog Information Successfully !');
        return redirect('/add-blog');  
        }
       }
    }

    public function manage_blog() {
         $all_blog=  DB::table('tbl_blog')->get();
         $content = view('admin_panel.pages.manage_blog')->with('all_blog',$all_blog);
        return view('admin_panel.admin_master')->with('admin_content', $content); 
    }
    public function delete_blog($id)
    {
        //echo $id;
        DB::table('tbl_blog')->where('id',$id)->delete();
        return redirect('manage-blog');
    }
    public function unpublished_blog($id)
    {
        DB::table('tbl_blog')
            ->where('id', $id)
            ->update(['publication_status' => 0]);
        return redirect('manage-blog');
    }
    public function published_blog($id)
    {
        DB::table('tbl_blog')
            ->where('id', $id)
            ->update(['publication_status' => 1]);
        return redirect('manage-blog');
    }
public function edit_blog($id)
    {
     //$category_info = DB::table('tbl_category')->where($id)->get();
   // $category_info = Categories::find($id);
    $all_category =  DB::table('tbl_category')->where('publication_status', 1)->get();
     $content = view('admin_panel.pages.edit_blog')->with('all_published_category',$all_category);
    return view('admin_panel.admin_master')->with('admin_content', $content); 

    }
//-------------------------------------end blog-------------------------------------------------------
    
    public function admin_logout()
    {
        Session::put('id','');
        Session::put('admin_name','');
        Session::put('message','You Are Succsssfully Logout ! ');
       return  redirect('/adda');
    }

    



    /**
     * Show the form for creating a new resource.
     *
     * @return Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  Request  $request
     * @return Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  Request  $request
     * @param  int  $id
     * @return Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return Response
     */
    public function destroy($id)
    {
        //
    }
}
