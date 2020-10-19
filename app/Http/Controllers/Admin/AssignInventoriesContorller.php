<?php

namespace App\Http\Controllers\Admin;

use App\Admin\StockAssignToEmployee;
use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AssignInventoriesContorller extends Controller
{
    public function index($id)
    {
        $output                = array();
        $output['id']          = $id;
        $output['module_name'] = "Assign Inventory Management";
        $output['module_page'] = "List of Assign Inventory";
        return view('admin.assign_inventories.index', $output);
    }

    public function get_list(Request $request)
    {

        $webpath = URL('/');
        if ($request->ajax()) {
            $user             = Auth::user();
            $search           = array();
            $assign_reason_id = $_GET['assign_reason_id'];
            if (isset($_GET['user_id'])) {
                $user_id = $_GET['user_id'];
            }

            $page_limit = $_GET['per-page'];
            $search[]   = array('user_id', $user->id);
            $search[]   = array('assign_reasons_id', $assign_reason_id);

            $html    = "";
            $records = StockAssignToEmployee::where($search)->with('invetnory', 'invetnory.category', 'invetnory.warehouse', 'invetnory.store', 'invetnory.loca')->orderBy('id', 'DESC')
                ->paginate($page_limit);
            $response['success']    = true;
            $response['html']       = view('admin.assign_inventories.list', ['records' => $records])->render();
            $response['pagination'] = view('admin.pagination', ['page' => $records])->render();
            json_output($response);
        }
    }
}
