<?php

namespace App\Admin;

use Illuminate\Database\Eloquent\Model;

class AssignReason extends Model
{
    protected $fillable = [
        'title', 'status', 'user_id','type',
    ];
}
