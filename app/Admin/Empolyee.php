<?php
namespace App\Admin;
use Illuminate\Database\Eloquent\Model;
class Empolyee extends Model
{
    protected $fillable = [
       'name','status','department','email','emp_code','contact','user_id'
    ];
}