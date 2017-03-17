<?php
/**
 * Application Routes
 *
 * @category  Routes
 * @package   Routes
 * @author    Volodia Pika <volodia.pika@gmail.com>
 * @copyright 2006-2017 Volodia Pika
 * @license   GNU General Public License version 1
 * @link      https://bitbucket.org/icyklop/laravel-model-project
 */
Route::pattern('id', '\d+');
Route::resource('/', 'HomeController', ['only' => ['index']]);
Route::get('photo/list/{id}', 'PhotoController@list');
Route::get('photo/show/{id}', 'PhotoController@show');
Route::get('photo/remove/{id}', 'PhotoController@remove');
Route::get('photo/removephoto/{id}', 'PhotoController@removephoto');
Route::get('photo/add', 'PhotoController@add');
Route::get('photo/addurl', 'PhotoController@addurl');
