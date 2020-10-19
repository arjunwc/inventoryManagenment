<?php

namespace App\Admin;

use Illuminate\Database\Eloquent\Model;

class StockAssignToStore extends Model
{
    protected $fillable = [
        'inventory_id', 'status', 'store_id', 'user_id',
    ];
    public function employee()
    {
        return $this->belongsTo('App\Admin\Empolyee');
    }
    public function Inventory()
    {
        return $this->belongsTo('App\Admin\Inventories');
    }
}
