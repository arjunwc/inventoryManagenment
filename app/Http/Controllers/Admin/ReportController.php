<?php

namespace App\Http\Controllers\Admin;

use App\Admin\AssignReason;
use App\Admin\Category;
use App\Admin\Empolyee;
use App\Admin\Inventories;
use App\Admin\Location;
use App\Admin\StockAssignToEmployee;
use App\Admin\Store;
use App\Admin\SubCategory;
use App\Admin\WareHouse;
use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ReportController extends Controller
{
    public function index()
    {
        $user   = Auth::user();
        $output = array();
        if ($user->toarray()['user_type'] == "Admin") {
            $users           = User::where(['status' => 'Active'])->get();
            $output['users'] = $users;
        }
        $category_record               = Category::where(['status' => 'Active', 'user_id' => $user->id])->get();
        $output['category_record']     = $category_record;
        $Inventories                   = Inventories::where(['status' => 'Active', 'user_id' => $user->id])->get();
        $output['Inventories']         = $Inventories;
        $ware_house_record             = WareHouse::where(['status' => 'Active', 'user_id' => $user->id])->get();
        $output['ware_house_record']   = $ware_house_record;
        $sub_category_record           = SubCategory::where(['status' => 'Active', 'user_id' => $user->id])->get();
        $output['sub_category_record'] = $sub_category_record;
        $store_record                  = Store::where(['status' => 'Active', 'user_id' => $user->id])->get();
        $output['store_record']        = $store_record;
        $location                      = Location::where(['status' => 'Active', 'user_id' => $user->id])->get();
        $output['location']            = $location;
        $Empolyee                      = Empolyee::where(['status' => 'Active', 'user_id' => $user->id])->get();
        $output['empolyee']            = $Empolyee;
        $AssignReason                  = AssignReason::where(['status' => 'Active', 'user_id' => $user->id])->get();
        $output['AssignReason']        = $AssignReason;
        $output['module_name']         = "Inventories Management";
        $output['module_page']         = "List of  Sub Category";
        return view('admin.report.index', $output);
    }
    public function get_list(Request $request)
    {
        $user    = Auth::user();
        $webpath = URL('/');
        if ($request->ajax()) {

            $search = array();

            $employee_id       = $_GET['employee_id'];
            $location_status   = $_GET['location_status'];
            $assign_reasons_id = $_GET['assign_reasons_id'];
            $warehouse_id      = $_GET['warehouse_id'];
            $subcategory_id    = $_GET['sub_category_id'];
            $category_id       = $_GET['category_id'];
            $start_date        = $_GET['start_date'];
            $end_date          = $_GET['end_date'];
            $inventory          = $_GET['inventory'];
            if ($employee_id != "") {
                $search[] = array('employee_id', $employee_id);
            }
            if ($inventory != "") {
                $search[] = array('inventory_id', $inventory);
            }
            if ($location_status != "") {
                $search[] = array('location_status', $location_status);
            }
            if ($assign_reasons_id != "") {
                $search[] = array('assign_reasons_id', $assign_reasons_id);
            }
            if ($category_id != "") {
                $search[] = array('category_id', $category_id);
            }
            if ($subcategory_id != "") {
                $search[] = array('subcategory_id', $subcategory_id);
            }
            if ($warehouse_id != "") {
                $search[] = array('warehouse_id', $warehouse_id);
            }
            if ($start_date != "") {
                $search[] = array('created_at', '>=', $start_date . ' 00:00:00');
            }
            if ($end_date != "") {
                $search[] = array('created_at', '<=', $end_date . ' 23:59:59');
            }
            if (isset($_GET['user_id'])) {
                $user_id = $_GET['user_id'];
            }
            if (isset($user_id) && $user_id != "") {
                $search[] = array('user_id', $user_id);
            }
            if ($user->toarray()['user_type'] != "Admin") {
                $search[] = array('user_id', $user->id);
            }
            //$search[] = array('status', 1);
            $records = StockAssignToEmployee::select('*')->where($search)->with('invetnory')
                ->groupBy('stock_assign_to_employees.inventory_id')
                ->orderBy('created_at', 'desc')
                ->paginate(15);
            foreach ($records as $value) {
                if ($value->invetnory) {
                    $category                   = get_category_by_id($value->invetnory->category_id);
                    $value->invetnory->category = $category->title;
                    if ($value->invetnory->subcategory_id) {
                        $subcategory_id                 = get_sub_category_by_id($value->invetnory->subcategory_id);
                        $value->invetnory->sub_category = $subcategory_id->title;

                    }
                    $warehouse_id                = get_warehouse_by_id($value->invetnory->warehouse_id);
                    $value->invetnory->warehouse = $warehouse_id->title;
                    if ($value->invetnory->location) {
                        $location = get_location_by_id($value->invetnory->location);
                        if ($location) {
                            $value->invetnory->location = $location->title;
                        }

                    }
                    if ($value->invoice) {
                        $value->invoice = url('stock') . "/" . $value->invoice;
                    }

                    if ($value->image) {
                        $value->invoice = url('stock') . "/" . $value->image;
                    }
                }
            }

            $response['success']    = true;
            $response['html']       = view('admin.report.list', ['records' => $records])->render();
            $response['pagination'] = view('admin.pagination', ['page' => $records])->render();
            json_output($response);

        }
    }
    public function download(Request $request)
    {
        $user              = Auth::user();
        $search            = array();
        $employee_id       = $_GET['employee_id'];
        $location_status   = $_GET['location_status'];
        $assign_reasons_id = $_GET['assign_reasons_id'];
        $start_date        = $_GET['start_date'];
        $end_date          = $_GET['end_date'];
        if ($employee_id != "") {
            $search[] = array('employee_id', $employee_id);
        }
        if ($location_status != "") {
            $search[] = array('location_status', $location_status);
        }
        if ($assign_reasons_id != "") {
            $search[] = array('assign_reasons_id', $assign_reasons_id);
        }
        if ($start_date != "") {
            $search[] = array('created_at', '>=', $start_date . ' 00:00:00');
        }
        if ($end_date != "") {
            $search[] = array('created_at', '<=', $end_date . ' 23:59:59');
        }

        if (isset($_GET['user_id'])) {
            $user_id = $_GET['user_id'];
        }
        if (isset($user_id) && $user_id != "") {
            $search[] = array('user_id', $user_id);
        }
        if ($user->toarray()['user_type'] != "Admin") {
            $search[] = array('user_id', $user->id);
        }
        $records = StockAssignToEmployee::select('*')->where($search)->with('invetnory')
            ->groupBy('stock_assign_to_employees.inventory_id')
            ->orderBy('created_at', 'desc')
            ->get();
        foreach ($records as $value) {
            if ($value->invetnory) {
                $category                   = get_category_by_id($value->invetnory->category_id);
                $value->invetnory->category = $category->title;
                if ($value->invetnory->subcategory_id) {
                    $subcategory_id                 = get_sub_category_by_id($value->invetnory->subcategory_id);
                    $value->invetnory->sub_category = $subcategory_id->title;

                }
                $warehouse_id                = get_warehouse_by_id($value->invetnory->warehouse_id);
                $value->invetnory->warehouse = $warehouse_id->title;
                if ($value->invetnory->location) {
                    $location = get_location_by_id($value->invetnory->location);
                    if ($location) {
                        $value->invetnory->location = $location->title;
                    }

                }
                if ($value->invoice) {
                    $value->invoice = url('stock') . "/" . $value->invoice;
                }

                if ($value->image) {
                    $value->invoice = url('stock') . "/" . $value->image;
                }
            }
        }
        $delimiter = ",";
        $filename  = "repot_" . date('Y-m-d H:i:s') . ".csv";

        //create a file pointer
        $f = fopen('php://memory', 'w');

        //set column headers
        $fields = array('Title', 'Category', 'Sub Category', 'Location', 'Brand', 'Description', 'Price', 'QrCode', 'Venture', 'Date');
        fputcsv($f, $fields, $delimiter);

        //output each row of the data, format line as csv and write to file pointer
        foreach ($records as $value) {
            // pr($value->toarray());
            if ($value->invetnory->title) {
                $inventory_title = $value->invetnory->title;
            } else {
                $inventory_title = "";
            }
            if ($value->invetnory->title) {
                $inventory_title = $value->invetnory->title;
            } else {
                $inventory_title = "";
            }
            $lineData = array($inventory_title, $value->invetnory->category, $value->invetnory->sub_category, $value->invetnory->location, $value->invetnory->brand, $value->invetnory->description, $value->invetnory->price, $value->invetnory->qr_code, $value->invetnory->warehouse, date("Y-m-d H:i:s", strtotime($value->created_at)));
            fputcsv($f, $lineData, $delimiter);
        }

        //move back to beginning of file
        fseek($f, 0);

        //set headers to download file rather than displayed
        header('Content-Type: text/csv');
        header('Content-Disposition: attachment; filename="' . $filename . '";');

        //output all remaining data on a file pointer
        fpassthru($f);

        exit;
    }
}
