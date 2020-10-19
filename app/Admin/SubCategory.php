<?php
namespace App\Admin;
use Illuminate\Database\Eloquent\Model;
class SubCategory extends Model
{
    protected $fillable = [
       'title','category_id','status','user_id'
    ];
    public function category()
    {
        return $this->belongsTo('App\Admin\Category'); 
    }
     public function items()
    {
        return $this->hasMany('App\Admin\Subsubcategory','subcategory_id');
    }
}