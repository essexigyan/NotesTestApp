<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Todos extends Model
{
    public $timestamps = true;

    protected $table = 'todos';

      protected $fillable = [
        'title','todo', 'user_id',
    ];
}
