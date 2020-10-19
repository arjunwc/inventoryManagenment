<?php

namespace App\Http\Controllers\Admin;

use App\Admin\Category;
use App\Admin\Empolyee;
use App\Admin\Inventories;
use App\Admin\StockAssignToEmployee;
use App\Admin\SubCategory;
use App\Admin\WareHouse;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class DashboardController extends Controller
{
    public function index()
    {
        $output                          = array();
        $user                            = Auth::user();
        $category_count                  = Category::where(['status' => 'Active', 'user_id' => $user->id])->count();
        $inventories_count               = Inventories::where(['status' => 'Active', 'user_id' => $user->id])->count();
        $inventories_in_count            = StockAssignToEmployee::where(['user_id' => $user->id, 'location_status' => 'in'])->groupBy('stock_assign_to_employees.inventory_id')->count();
        $inventories_out_count           = StockAssignToEmployee::where(['user_id' => $user->id, 'location_status' => 'out'])->groupBy('stock_assign_to_employees.inventory_id')->count();
        $inventories                     = Inventories::where(['status' => 'Active', 'user_id' => $user->id])->limit(10)->orderBy('id', 'DESC')->get();
        $sub_category_count              = SubCategory::where(['status' => 'Active', 'user_id' => $user->id])->count();
        $warehouse_count                 = WareHouse::where(['status' => 'Active', 'user_id' => $user->id])->count();
        $emp_count                       = Empolyee::where(['status' => 'Active', 'user_id' => $user->id])->count();
        $output['category_count']        = $category_count;
        $output['inventories_count']     = $inventories_count;
        $output['inventories']           = $inventories;
        $output['sub_category_count']    = $sub_category_count;
        $output['warehouse_count']       = $warehouse_count;
        $output['emp_count']             = $emp_count;
        $output['inventories_in_count']  = $inventories_in_count;
        $output['inventories_out_count'] = $inventories_out_count;
        return view('admin.dashboard.index', $output);
    }

}
