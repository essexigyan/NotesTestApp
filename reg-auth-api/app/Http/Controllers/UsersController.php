<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\User;

use Illuminate\Support\Facades\Input;

use Hash;

class UsersController extends Controller
{
    
	/*
	   Return all users;
	*/

    public function index(){

    	return User::all();
    }

    /*
	   Get logged in users details
	*/

     public function user(Request $request){

    	return $request->user();
    }


    public function register(Request $request){

    	  User::create([
    	  	'first_name' 	=> $request->first_name,
    	  	'last_name'  	=> $request->last_name,
    	  	'email' 		=> $request->email,
    	  	'password' 		=> Hash::make($request->password),
    	  ]);

    	  return 'User added successfully!! Woo Hoo!';


    }
}
