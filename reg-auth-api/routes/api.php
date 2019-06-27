<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::get('/', 'UsersController@index');

Route::get('/user', 'UsersController@user')->middleware('auth:api');

Route::post('/register', 'UsersController@register');

Route::get('/todos/{id}', 'TodosController@show');

Route::get('/todos/edit/{id}', 'TodosController@edit');

Route::post('/todos/create', 'TodosController@create');

