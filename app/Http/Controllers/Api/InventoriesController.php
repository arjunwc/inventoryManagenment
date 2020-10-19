<?php

namespace App\Http\Controllers\api;

use App\Admin\Inventories;
use App\Admin\Inventory_items;
use App\Admin\StockAssignToEmployee;
use App\Admin\StockAssignToStore;
use App\Admin\Subsubcategory;
use App\Admin\WareHouse;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Log;
use Validator;

class InventoriesController extends Controller
{
    public $successStatus          = 200;
    public $unAuthorisedStatus     = 401;
    public $destination_image_path = 'stock/';
    public function index()
    {

        $success  = true;
        $response = array();
        $data     = array();
        $webpath  = URL('/');

        $user = Auth::user();
        if ($user) {
            $search       = array();
            $title        = $_POST['title'];
            $category_id  = $_POST['category_id'];
            $sub_category = $_POST['sub_category_id'];
            $warehouse    = $_POST['warehouse_id'];
            if ($title != "") {
                $search[] = array('title', 'like', $title . '%');
            }
            if ($category_id != "") {
                $search[] = array('category_id', $category_id);
            }
            if ($sub_category != "") {
                $search[] = array('subcategory_id', $sub_category);
            }
            if ($warehouse != "") {
                $search[] = array('warehouse_id', $warehouse);
            }
            $search[] = array('user_id', $user->id);
            $records  = Inventories::select('*')->where($search)
                ->orderBy('created_at', 'desc')
                ->paginate(15);
            foreach ($records as $value) {
                if ($value->store_id != 0) {
                    $store_record = get_record_by_store_id($value->store_id);
                    $value->store = $store_record->title;
                } else {
                    $value->store = "Assigned";
                }
                $category        = get_category_by_id($value->category_id);
                $value->category = $category->title;
                if ($value->subcategory_id) {
                    $subcategory_id      = get_sub_category_by_id($value->subcategory_id);
                    $value->sub_category = $subcategory_id->title;
                }

                $warehouse_id     = get_warehouse_by_id($value->warehouse_id);
                $value->warehouse = $warehouse_id->title;
                $location         = get_location_by_id($value->location);
                $value->location  = $location->title;
                if ($value->invoice) {
                    $value->invoice = url('stock') . "/" . $value->invoice;
                }

                if ($value->image) {
                    $value->invoice = url('stock') . "/" . $value->image;
                }

            }
            if ($records->count()) {
                $data      = $records;
                $message   = "Data Found SuccessFully";
                $apiStatus = $this->successStatus;
            } else {
                $message   = "Records Not Found";
                $apiStatus = $this->successStatus;
                $data      = (object) array();
            }

        } else {
            $success   = false;
            $apiStatus = $this->unAuthorisedStatus;
            $message   = "Unauthenticated";
        }
        $response['success'] = $success;
        $response['message'] = $message;
        $response['data']    = $data;
        return response()->json($response, $apiStatus);
    }

    public function store(Request $request)
    {
        $apiStatus = $this->successStatus;
        $success   = true;
        $response  = array();
        $data      = array();
        if ($request->isMethod('post')) {
            $user = Auth::user();
            if ($user) {
                $input = $request->all();
                Log::info(json_encode($input));
                $validation_array = array(
                    'title'        => 'required',
                    'category_id'  => 'required|numeric',
                    'warehouse_id' => 'required|numeric',
                    'store_id'     => 'required|numeric',
                    //  'price'        => 'required',
                    //'description'  => 'required',
                    'location'     => 'required',
                );
                if (isset($input['image']) && $input['image'] != "") {
                    $validation_array['image'] = "required|image|mimes:jpeg,jpg,png|max:5048";
                }
                if (isset($input['invoice']) && $input['invoice'] != "") {
                    $validation_array['invoice'] = "required|image|mimes:jpeg,jpg,png,pdf|max:5048";
                }
                $validator = Validator::make($request->all(), $validation_array);
                if (!$validator->fails()) {
                    if (isset($input['image']) && $input['image'] != "") {
                        $imageName = time() . '.' . $request->image->extension();
                        $request->image->move(public_path('stock/'), $imageName);
                        $input['image'] = $imageName;
                    }
                    if (isset($input['invoice']) && $input['invoice'] != "") {
                        $imageName = "dnvoi" . time() . '.' . $request->invoice->extension();
                        $request->invoice->move(public_path('stock/'), $imageName);
                        $input['invoice'] = $imageName;
                    }
                    $ware_house_record = WareHouse::where(['id' => $input['warehouse_id']])->first();
                    $input['user_id']  = $user->id;
                    $insert_record     = Inventories::create($input);
                    if ($insert_record->id) {

                        $update['qr_code'] = remove_space_from_string($ware_house_record->title) . "/" . date("dY") . "/" . show_custome_text($input['title'], 2) . "/" . $insert_record->id;
                        //update qrcode
                        $affectedRows = Inventories::where('id', $insert_record->id)->update($update);
                        //end

                        // add entry to store
                        $store_input                 = array();
                        $store_input['inventory_id'] = $insert_record->id;
                        $store_input['store_id']     = $input['store_id'];
                        $store_input['user_id']      = $user->id;
                        $store_input['status']       = 'in';
                        StockAssignToStore::create($store_input);
                        //end

                        // add entry to store
                        if (isset($input['sub_sub_cat'])) {
                            $item_array = explode(",", $input['sub_sub_cat']);
                            foreach ($item_array as $value) {

                                $add_items                        = array();
                                $add_items['category_id']         = $input['category_id'];
                                $add_items['sub_category_id']     = $input['subcategory_id'];
                                $add_items['inventory_id']        = $insert_record->id;
                                $add_items['sub_sub_cateogry_id'] = $value;
                                Inventory_items::create($add_items);
                            }
                        }
                        $insert_record = Inventories::select('*')->where('id', $insert_record->id)
                            ->orderBy('created_at', 'desc')
                            ->first();
                        $response['success'] = true;
                        $response['message'] = "Inventories added successfully";
                        $response['data']    = $insert_record;
                        $apiStatus           = $this->successStatus;
                    } else {

                        $response['success'] = false;
                        $response['message'] = "There is some technical error please try after some time";
                        $response['data']    = $data;
                        $apiStatus           = $this->successStatus;
                    }

                } else {
                    $response['success'] = false;

                    foreach ($validator->errors()->toarray() as $value) {

                        $error = $value['0'];
                    }
                    $response['message'] = $error;
                    $response['data']    = $data;
                    $apiStatus           = $this->successStatus;
                }
            } else {
                $success   = false;
                $apiStatus = $this->unAuthorisedStatus;
                $message   = "Unauthenticated";
            }
            return response()->json($response, $apiStatus);die;
        }
    }

    public function get_record_by_qr_code(Request $request)
    {
        $success = true;
        $message = "";
        $data    = array();
        $webpath = URL('/');
        if ($request->isMethod('post')) {
            $user = Auth::user();
            if ($user) {
                $validator = Validator::make($request->all(),
                    [
                        'qr_code' => 'required',
                    ]);
                if (!$validator->fails()) {
                    $input  = $request->all();
                    $record = Inventories::where(['qr_code' => $input['qr_code']])->first();

                    if ($record) {
                        $items = Subsubcategory::where(['category_id' => $record->category_id, 'subcategory_id' => $record->subcategory_id, 'status' => 'Active'])->get();
                        if ($items) {
                            $record->items = $items;
                        } else {
                            $record->items = array();
                        }
                        if ($record->store_id != 0) {
                            $store_record  = get_record_by_store_id($record->store_id);
                            $record->store = $store_record->title;
                        } else {
                            $record->store = "Assigned";
                        }
                        $category         = get_category_by_id($record->category_id);
                        $record->category = $category->title;
                        if ($record->subcategory_id) {
                            $subcategory_id       = get_sub_category_by_id($record->subcategory_id);
                            $record->sub_category = $subcategory_id->title;

                        }
                        $warehouse_id      = get_warehouse_by_id($record->warehouse_id);
                        $record->warehouse = $warehouse_id->title;
                        $location          = get_location_by_id($record->location);
                        $record->location  = $location->title;
                        if (!empty($record->image) && File::exists($this->destination_image_path . $record->image)) {
                            $image = $webpath . '/' . $this->destination_image_path . $record->image;
                        } else {
                            $image = '';
                        }
                        $record->image = $image;
                        if (!empty($record->invoice) && File::exists($this->destination_image_path . $record->invoice)) {
                            $image = $webpath . '/' . $this->destination_image_path . $record->invoice;
                        } else {
                            $image = '';
                        }
                        $record->invoice = $image;
                        $assign_to       = StockAssignToEmployee::where(['inventory_id' => $record->id, 'status' => '1'])->first();
                        $data            = $record;
                        if ($assign_to) {
                            $record->assign_status = 1;
                            $data['assing_to']     = get_record_by_employee_id($assign_to->employee_id);
                        } else {
                            $record->assign_status = 0;
                        }

                        $message   = "Data Found SuccessFully";
                        $apiStatus = $this->successStatus;
                    } else {
                        $success   = false;
                        $message   = "Records Not Found";
                        $apiStatus = $this->successStatus;
                        $data      = (object) array();
                    }

                } else {
                    $success = false;
                    foreach ($validator->errors()->toarray() as $value) {

                        $error = $value['0'];
                    }
                    $message   = $error;
                    $apiStatus = $this->successStatus;
                }
            } else {
                $success   = false;
                $apiStatus = $this->unAuthorisedStatus;
                $message   = "Unauthenticated";
            }
            $response['success'] = $success;
            $response['message'] = $message;
            $response['data']    = $data;
            return response()->json($response, $apiStatus);die;
        }
    }

    public function assign_to_employee(Request $request)
    {
        $success = true;
        $message = "";
        $data    = null;
        $webpath = URL('/');
        if ($request->isMethod('post')) {
            $user = Auth::user();
            if ($user) {
                $validator = Validator::make($request->all(),
                    [
                        'qr_code'           => 'required',
                        'employee_id'       => 'required',
                        'location_status'   => 'required',
                        'assign_reasons_id' => 'required',
                        'date' => 'required',
                    ]);
                if (!$validator->fails()) {
                    $input        = $request->all();
                    $qrcode_array = explode(",", $input['qr_code']);

                    foreach ($qrcode_array as $value) {
                        $inventory_record = get_record_qr_code_by_id($value);
                        $record           = StockAssignToEmployee::where(['inventory_id' => $inventory_record->id, 'status' => '1'])->first();
                        if ($record) {
                            $response['success'] = false;
                            $response['message'] = "Inventories already is use by some employee";
                            $apiStatus           = $this->successStatus;
                            return response()->json($response, $apiStatus);die;
                        } else {
                            $input['status']       = 1;
                            $input['user_id']      = $user->id;
                            $input['inventory_id'] = $inventory_record->id;
                            $input['category_id']  = $inventory_record->category_id;
                            if ($inventory_record->subcategory_id) {
                                $input['subcategory_id'] = $inventory_record->subcategory_id;
                            }
                            $input['warehouse_id'] = $inventory_record->warehouse_id;
                            $input['qr_code']      = $inventory_record->qr_code;
                            $input['location']     = $inventory_record->location;
                            $message               = "Item Assigned SuccessFully";
                            $insert_record         = StockAssignToEmployee::create($input);
                            $store_input['status'] = 'out';
                            StockAssignToStore::where('inventory_id', $inventory_record->id)->update($store_input);
                            // update in inventory
                            $inventory_update             = array();
                            $inventory_update['store_id'] = 0;
                            Inventories::where('id', $inventory_record->id)->update($inventory_update);
                            //end
                            $apiStatus = $this->successStatus;
                        }
                    }
                } else {
                    $success   = false;
                    $message   = "Validation error";
                    $data      = $validator->errors();
                    $apiStatus = $this->successStatus;
                }
            } else {
                $success   = false;
                $apiStatus = $this->unAuthorisedStatus;
                $message   = "Unauthenticated";
            }
            $response['success'] = $success;
            $response['message'] = $message;
            $response['data']    = $data;
            return response()->json($response, $apiStatus);die;
        }
    }

    public function assign_employee_list()
    {

        $success  = true;
        $response = array();
        $data     = array();
        $webpath  = URL('/');

        $user = Auth::user();
        if ($user) {
            $search = array();

            $employee_id       = $_POST['employee_id'];
            $location_status   = $_POST['location_status'];
            $assign_reasons_id = $_POST['assign_reasons_id'];
            $start_date        = $_POST['start_date'];
            $end_date          = $_POST['end_date'];
            $category_id       = $_POST['category_id'];
            $sub_category      = $_POST['sub_category_id'];
            $warehouse         = $_POST['warehouse_id'];
            $store_id          = $_POST['store_id'];
            $location          = $_POST['location'];
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

            if ($category_id != "") {
                $search[] = array('category_id', $category_id);
            }
            if ($sub_category != "") {
                $search[] = array('subcategory_id', $sub_category);
            }
            if ($location != "") {
                $search[] = array('location', $location);
            }
            $search[] = array('user_id', $user->id);
            $search[] = array('assign_reasons_id', '!=' ,0);

            $records = StockAssignToEmployee::select('*')->where($search)->with('invetnory')
                ->groupBy('stock_assign_to_employees.inventory_id')
                ->orderBy('created_at', 'desc')
                ->paginate(15);
            foreach ($records as $value) {
                $emp_record           = get_record_by_employee_id($value->employee_id);
                $value->employee_name = $emp_record->name;
                if ($value->invetnory) {
                    $category                   = get_category_by_id($value->invetnory->category_id);
                    $value->invetnory->category = $category->title;
                    if ($value->invetnory->subcategory_id) {
                        $subcategory_id                 = get_sub_category_by_id($value->invetnory->subcategory_id);
                        $value->invetnory->sub_category = $subcategory_id->title;

                    }
                    $warehouse_id                = get_warehouse_by_id($value->invetnory->warehouse_id);
                    $value->invetnory->warehouse = $warehouse_id->title;
                    $location                    = get_location_by_id($value->invetnory->location);
                    $value->invetnory->location  = $location->title;
                    if ($value->invetnory->invoice) {
                        $value->invetnory->invoice = url('stock') . "/" . $value->invoice;
                    }

                    if ($value->invetnory->image) {
                        $value->invetnory->invoice = url('stock') . "/" . $value->image;
                    }
                }
            }
            $check = $records->toarray();
            if (isset($check['data']) && count($check['data'])) {
                $data      = $records;
                $message   = "Data Found SuccessFully";
                $apiStatus = $this->successStatus;
            } else {
                $success   = false;
                $message   = "Records Not Found";
                $apiStatus = $this->successStatus;
                $data      = (object) array();
            }

        } else {
            $success   = false;
            $apiStatus = $this->unAuthorisedStatus;
            $message   = "Unauthenticated";
        }
        $response['success'] = $success;
        $response['message'] = $message;
        $response['data']    = $data;
        return response()->json($response, $apiStatus);
    }

    public function scan_qr_code(Request $request)
    {
        $success = true;
        $message = "";
        $data    = array();
        $webpath = URL('/');
        if ($request->isMethod('post')) {
            $user = Auth::user();
            if ($user) {
                $validator = Validator::make($request->all(),
                    [
                        'qr_code' => 'required',
                    ]);
                if (!$validator->fails()) {
                    $input  = $request->all();
                    $record = Inventories::where(['qr_code' => $input['qr_code']])->first();
                    if ($record) {
                        $assing_record = StockAssignToEmployee::where('inventory_id', $record->id)->where('status', 1)->with('employee')->first();
                        if ($assing_record) {
                            $data['assign_status'] = 1;
                            $data['employee_name'] = $assing_record->employee->name;
                            $data['department']    = $assing_record->employee->department;
                            $data['emp_code']      = $assing_record->employee->emp_code;
                            $message               = "Data Found SuccessFully";
                            $apiStatus             = $this->successStatus;
                        } else {
                            $store_record          = get_record_by_store_id($record->store_id);
                            $data['assign_status'] = 0;
                            $data['store']         = $store_record->title;
                            $message               = "Data Found SuccessFully";
                            $apiStatus             = $this->successStatus;
                        }
                    } else {
                        $success   = false;
                        $message   = "Invalid Qr Code";
                        $apiStatus = $this->successStatus;
                        $data      = (object) array();
                    }

                } else {
                    $success = false;
                    foreach ($validator->errors()->toarray() as $value) {

                        $error = $value['0'];
                    }
                    $message   = $error;
                    $apiStatus = $this->successStatus;
                }
            } else {
                $success   = false;
                $apiStatus = $this->unAuthorisedStatus;
                $message   = "Unauthenticated";
            }
            $response['success'] = $success;
            $response['message'] = $message;
            $response['data']    = $data;
            return response()->json($response, $apiStatus);die;
        }
    }

    public function reassign(Request $request)
    {
        $success = true;
        $message = "";
        $data    = null;
        $webpath = URL('/');
        if ($request->isMethod('post')) {
            $user = Auth::user();
            if ($user) {
                $validator = Validator::make($request->all(),
                    [
                        'qr_code'           => 'required',
                        'employee_id'       => 'required',
                        'location_status'   => 'required',
                        'assign_reasons_id' => 'required',
                    ]);
                if (!$validator->fails()) {
                    $input = $request->all();

                    $inventory_record = get_record_qr_code_by_id($input['qr_code']);

                    $input['status']       = 1;
                    $input['user_id']      = $user->id;
                    $input['inventory_id'] = $inventory_record->id;
                    $input['category_id']  = $inventory_record->category_id;
                    if ($inventory_record->subcategory_id) {
                        $input['subcategory_id'] = $inventory_record->subcategory_id;
                    }
                    $input['warehouse_id'] = $inventory_record->warehouse_id;
                    $input['qr_code']      = $inventory_record->qr_code;
                    $input['location']     = $inventory_record->location;
                    $message               = "Item Assigned SuccessFully";
                    $insert_record         = StockAssignToEmployee::create($input);
                    $apiStatus             = $this->successStatus;

                } else {
                    $success   = false;
                    $message   = "Validation error";
                    $data      = $validator->errors();
                    $apiStatus = $this->successStatus;
                }
            } else {
                $success   = false;
                $apiStatus = $this->unAuthorisedStatus;
                $message   = "Unauthenticated";
            }
            $response['success'] = $success;
            $response['message'] = $message;
            $response['data']    = $data;
            return response()->json($response, $apiStatus);die;
        }
    }
}
