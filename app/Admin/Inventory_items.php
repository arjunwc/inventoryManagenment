<?php

namespace App\Admin;

use Illuminate\Database\Eloquent\Model;

class Inventory_items extends Model
{
    protected $fillable = [
       'category_id','sub_category_id','sub_sub_cateogry_id','inventory_id'
    ];
    public function items()
    {
        return $this->belongsTo('App\Admin\Subsubcategory','sub_sub_cateogry_id'); 
    }
}
