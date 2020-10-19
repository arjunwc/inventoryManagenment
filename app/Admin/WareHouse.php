<?php
namespace App\Admin;
use Illuminate\Database\Eloquent\Model;
class WareHouse extends Model
{
    protected $fillable = [
       'title','address','status','user_id'
    ];

}