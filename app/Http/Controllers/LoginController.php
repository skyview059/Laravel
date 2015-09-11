<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Session;
use App\Http\Requests;
use App\Http\Controllers\Controller;
//use Illuminate\Support\Facades\Redirect;
use Symfony\Component\DomCrawler\Form;
use Illuminate\Support\Facades\DB;
use Redirect;
session_start();
ob_start();

class LoginController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return Response
     */
    public function __construct() {
        $id=Session::get('id');
        //echo '-----'.$id;
        if($id!=NULL)
        {
           return redirect('dashboard')->send();
          //  $this->go_to_dashboard();
        }
    }
    public function index()
    {
        return view('admin_panel.pages.login');
    }
    public function admin_login_check(Request $request)
    {
        $admin_email_address = $request->input('email_address');
        $admin_password = $request->input('password');
        $admin_password=md5($admin_password);
        $admin_info = DB::table('tbl_admin')
                    ->where('admin_email_address',$admin_email_address)
                    ->where('password', $admin_password)
                    ->get();
//       echo '<pre>';
//       print_r($admin_info);
//       exit();
       if(isset($admin_info[0]))
        {
           Session::put('id',$admin_info[0]->id);
           Session::put('admin_name',$admin_info[0]->admin_name);
           return  redirect('dashboard');  
        }
        else{
          //echo 'Else';
            Session::put('message', 'Your Email Address Or password Invalide');
            //Session::put('name', 'saahil');
           
           return  redirect('adda');  
        }
   
        
        
        
        //echo $admin_email_address.'------'.$admin_password;
        //return view('admin_panel.admin_master');
        //redirect('/dashboard');
    }
    public function go_to_dashboard()
    {
        echo 'In Dashboard Function';
        //return Redirect::to('dashboard');
        return redirect('dashboard')->send();
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
