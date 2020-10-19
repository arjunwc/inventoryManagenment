<?php

namespace App\Admin;

use Illuminate\Database\Eloquent\Model;

class Store extends Model
{
    protected $fillable = [
        'title', 'status', 'user_id',
    ];
}
