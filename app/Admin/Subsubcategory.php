<?php

namespace App\Admin;

use Illuminate\Database\Eloquent\Model;

class Subsubcategory extends Model
{
    protected $fillable = [
        'title', 'category_id', 'subcategory_id','status', 'user_id',
    ];
    protected $table ='subsubcategories';

    public function category()
    {
        return $this->belongsTo('App\Admin\Category'); 
    }   
     public function subcat()
    {
        return $this->belongsTo('App\Admin\SubCategory','subcategory_id'); 
    }
}
