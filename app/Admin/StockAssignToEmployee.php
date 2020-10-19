<?php
namespace App\Admin;

use Illuminate\Database\Eloquent\Model;

class StockAssignToEmployee extends Model
{
    protected $fillable = [
        'inventory_id', 'status', 'employee_id','user_id','location_status','assign_reasons_id','type','category_id','subcategory_id','warehouse_id','qr_code','location','date','resigned'
    ];
    public function employee()
    {
        return $this->belongsTo('App\Admin\Empolyee'); 
    }
    public function invetnory()
    {
        return $this->belongsTo('App\Admin\Inventories','inventory_id'); 
    }
}
