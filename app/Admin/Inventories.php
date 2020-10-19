<?php
namespace App\Admin;
use Illuminate\Database\Eloquent\Model;
class Inventories extends Model
{
    protected $fillable = [
       'category_id','subcategory_id','warehouse_id','title','price','qr_code','status','vendor','status','image','user_id','store_id','location','description','invoice','date'
    ];
    public function category()
    {
        return $this->belongsTo('App\Admin\Category'); 
    }
    public function warehouse()
    {
        return $this->belongsTo('App\Admin\WareHouse'); 
    }    
    public function store()
    {
        return $this->belongsTo('App\Admin\Store'); 
    }
    public function loca()
    {
        return $this->belongsTo('App\Admin\Location','location'); 
    }
}