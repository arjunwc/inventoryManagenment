<?php

namespace App\Admin;

use Illuminate\Database\Eloquent\Model;

class InventoryService extends Model
{
    protected $table    = 'tbl_inventory_services';
    protected $fillable = [
        'inventory_id', 'title', 'description','user_id','invoice','date'
    ];
}
