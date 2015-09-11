<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Categories;
use App\Models\Blogs;
use App\Models\Users;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Session;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
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
    public function save_user(Request $request)
    {
        //$user= new Users();
        $user=array();
        $user['name']=$request->name;
        $user['email']=$request->email;
        $password=$request->password;
        $user['password']=md5($password);
        $user['phone']=$request->phone;
        $user['address']=$request->address;
        $user_info = DB::table('tbl_user')
                    ->where('email', $user['email'])
                    ->get();
//       echo '<pre>';
//      print_r($user_info);
//      echo  
//      exit();
      $num_row=count($user_info);
       if($num_row==1)
        {
           Session::put('message', 'Your Email Address Alredy Exists');
           return  redirect('/sign-up');  
        }
        else{
            $id = Users::insertGetId($user);
            Session::put('id',$id);
            Session::put('name',$request->name);
            Session::put('message','Save User Information Successfully !');
        return redirect('/sign-up');
            
          
        }

    }

    public function sign_in()
    {
         $all_category =  DB::table('tbl_category')->where('publication_status', 1)->get();
//        echo '<pre>';
//        print_r($all_blog);
//        exit();
        
        $category= view('pages.category')->with('all_published_category',$all_category);
        $content= view('pages.sign_in');
        $ads= view('pages.ads');
        return view('front_end.master')
                ->with('category',$category)
                ->with('maincontent',$content)
                ->with('ads',$ads);  
    }
    
     public function user_login_check(Request $request)
    {
        $email = $request->input('email');
        $password = $request->input('password');
        $password=md5($password);
        $user_login_info = DB::table('tbl_user')
                    ->where('email',$email)
                    ->where('password', $password)
                    ->get();
//       echo '<pre>';
//       print_r($user_login_info);
//       exit();
       if(isset($user_login_info[0]))
        {
           Session::put('user_id',$user_login_info[0]->id);
           Session::put('name',$user_login_info[0]->name);
           return  redirect('/');  
        }
        else{
          //echo 'Else';
            Session::put('message', 'Your Email Address Or password Invalide');
            //Session::put('name', 'saahil');
           
           return  redirect('sign-in');  
        }
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
