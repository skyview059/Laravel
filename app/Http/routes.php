<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/
//Route::get('/', 'StudentController@index');


//Route::get('/topu',function(){
//    echo 'Md. Saahil Alam Talha';
//});
//Route::get('/', 'UserController@index');
//Route::get('/', function () {
//    return view('welcome');
//});

Route::get('/','BlogController@index');
Route::get('/sign-up','UserController@sign_up');
Route::get('/sign-in','UserController@sign_in');
Route::get('/contact','BlogController@contact');
Route::get('/sports-tv','BlogController@sports_tv');

//-------------------------------start users--------------------------------
Route::post('/save-user', 'UserController@save_user');
Route::post('/user-login-check','UserController@user_login_check');
Route::get('/user-logout','BlogController@user_logout');
//-------------------------------end users--------------------------------
//-------------------------------Start Comments------------------------
Route::post('/save-comments', 'BlogController@save_comments');

//--------------------------------End Comments-------------------------

Route::get('/adda', 'LoginController@index');
Route::post('/admin-login-check', 'LoginController@admin_login_check');
Route::get('/dashboard', 'SuperAdminController@index');
Route::get('/logout', 'SuperAdminController@admin_logout');
//-------------------------------start category--------------------------------
Route::get('/add-category', 'SuperAdminController@add_category');
Route::post('/save-category', 'SuperAdminController@save_category');
Route::get('/manage-category', 'SuperAdminController@manage_category');
Route::get('/delete-category/{id}', 'SuperAdminController@delete_category');
Route::get('/unpublished-category/{id}', 'SuperAdminController@unpublished_category');
Route::get('/published-category/{id}', 'SuperAdminController@published_category');
Route::get('/edit-category/{id}', 'SuperAdminController@edit_category');
Route::post('/update-category/', 'SuperAdminController@update_category');
//-------------------------------end category--------------------------------

//-------------------------------start blog--------------------------------

Route::get('/add-blog', 'SuperAdminController@add_blog');
Route::post('/save-blog', 'SuperAdminController@save_blog');
Route::get('/manage-blog', 'SuperAdminController@manage_blog');
Route::get('/delete-blog/{id}', 'SuperAdminController@delete_blog');
Route::get('/unpublished-blog/{id}', 'SuperAdminController@unpublished_blog');
Route::get('/published-blog/{id}', 'SuperAdminController@published_blog');
Route::get('/edit-blog/{id}', 'SuperAdminController@edit_blog');
Route::get('/category-blog/{id}', 'BlogController@category_blog');
Route::get('/blog-details/{id}', 'BlogController@blog_details');

//-------------------------------end category--------------------------------