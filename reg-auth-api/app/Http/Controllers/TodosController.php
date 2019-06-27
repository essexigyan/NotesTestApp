<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Illuminate\Support\Facades\DB;

use App\Todos;

class TodosController extends Controller
{
    public function show(Request $request)
    {

    	$todos = DB::select('SELECT * FROM todos WHERE user_id ='. $request->id);

    	//var_dump($request->id);

    	return $todos;
    }

    public function create(Request $request)
    {

    	  Todos::create([
    	  	'title' 	=> $request->title,
    	  	'todo'  	=> $request->todo,
    	  	'created_at' 		=> $request->created_at,
    	  	'user_id' 		=> $request->user_id
    	  ]);

    	    $status = ['msg'=>'Todo Added Successfully']	;
    
    	  return $status;


    }

     public function edit(Request $request)
    {

    	$todo = DB::select('SELECT * FROM todos WHERE id ='. $request->id);

    	//var_dump($request->id);

    	return $todo;
    }
}
