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

Route::pattern('id', '\d+');

Route::resource('/', 'HomeController', ['only' => [
    'index'
]]);

Route::get('photo/list/{id}', 'PhotoController@list');

Route::get('photo/show/{id}', 'PhotoController@show');

Route::get('photo/remove/{id}', 'PhotoController@remove');

Route::get('photo/removephoto/{id}', 'PhotoController@removephoto');

Route::get('photo/add', 'PhotoController@add');

Route::get('photo/addurl', 'PhotoController@addurl');
