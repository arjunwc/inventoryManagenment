<?php

namespace App\Http\Controllers\Admin;

use App\Admin\Category;
use App\Admin\Inventories;
use App\Admin\InventoryService;
use App\Admin\Inventory_items;
use App\Admin\Location;
use App\Admin\StockAssignToEmployee;
use App\Admin\StockAssignToStore;
use App\Admin\Store;
use App\Admin\SubCategory;
use App\Admin\Subsubcategory;
use App\Admin\WareHouse;
use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Validator;

class InventoriesController extends Controller
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
        $ware_house_record             = WareHouse::where(['status' => 'Active', 'user_id' => $user->id])->get();
        $output['ware_house_record']   = $ware_house_record;
        $sub_category_record           = SubCategory::where(['status' => 'Active', 'user_id' => $user->id])->get();
        $output['sub_category_record'] = $sub_category_record;
        $store_record                  = Store::where(['status' => 'Active', 'user_id' => $user->id])->get();
        $output['store_record']        = $store_record;
        $location                      = Location::where(['status' => 'Active', 'user_id' => $user->id])->get();
        $output['location']            = $location;
        $output['module_name']         = "Inventories Management";
        $output['module_page']         = "List of  Sub Category";
        return view('admin.inventories.index', $output);
    }
    public function view($id)
    {
        $output                 = array();
        $output['module_name']  = "Inventories Management";
        $output['module_page']  = "List of  Sub Category";
        $output['inventory_id'] = $id;
        return view('admin.inventories.view', $output);
    }
    public function get_list(Request $request)
    {
        $user    = Auth::user();
        $webpath = URL('/');
        if ($request->ajax()) {

            $search = array();
            $title  = $_GET['title'];
            if (isset($_GET['user_id'])) {
                $user_id = $_GET['user_id'];
            }
            $category_id  = $_GET['category_id'];
            $sub_category = $_GET['subcategory_id'];
            $warehouse    = $_GET['warehouse_id'];
            $store_id     = $_GET['store_id'];
            $page_limit   = $_GET['per-page'];
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
            if ($store_id != "") {
                $search[] = array('store_id', $store_id);
            }
            $html = "";
            if (isset($user_id) && $user_id != "") {
                $search[] = array('user_id', $user_id);
            }
            if ($user->toarray()['user_type'] != "Admin") {
                $search[] = array('user_id', $user->id);
            }
            $records = Inventories::where($search)->with(['category', 'warehouse', 'loca'])->orderBy('created_at', 'DESC')
                ->paginate($page_limit);
            $response['success']    = true;
            $response['html']       = view('admin.inventories.list', ['records' => $records])->render();
            $response['pagination'] = view('admin.pagination', ['page' => $records])->render();
            json_output($response);
        }
    }
    public function get_assign_list(Request $request)
    {
        $user    = Auth::user();
        $webpath = URL('/');
        if ($request->ajax()) {

            $search       = array();
            $inventory_id = $_GET['id'];
            $page_limit   = $_GET['per-page'];
            $html         = "";
            $search[]     = array('user_id', $user->id);
            $search[]     = array('inventory_id', $inventory_id);
            $records      = StockAssignToEmployee::where($search)->with('employee')->orderBy('created_at', 'DESC')
                ->paginate($page_limit);
            $response['success']    = true;
            $response['html']       = view('admin.inventories.assign_list', ['records' => $records])->render();
            $response['pagination'] = view('admin.pagination', ['page' => $records])->render();
            json_output($response);
        }
    }
    public function get_service_list(Request $request)
    {
        $user    = Auth::user();
        $webpath = URL('/');
        if ($request->ajax()) {

            $search       = array();
            $inventory_id = $_GET['id'];
            $page_limit   = $_GET['per-page'];
            $html         = "";
            $search[]     = array('user_id', $user->id);
            $search[]     = array('inventory_id', $inventory_id);
            $records      = InventoryService::where($search)->orderBy('created_at', 'DESC')
                ->paginate($page_limit);
            $response['success']    = true;
            $response['html']       = view('admin.inventories.servicelist', ['records' => $records])->render();
            $response['pagination'] = view('admin.pagination', ['page' => $records])->render();
            json_output($response);
        }
    }
    public function get_record_by_id($id)
    {
        $user                          = Auth::user();
        $output                        = array();
        $output['module_name']         = "Inventories Management";
        $output['module_page']         = "Update Category";
        $category_record               = Category::where(['status' => 'Active', 'user_id' => $user->id])->get();
        $output['category_record']     = $category_record;
        $record                        = Inventories::where(['id' => $id])->first();
        $output['record']              = $record;
        $ware_house_record             = WareHouse::where(['status' => 'Active', 'user_id' => $user->id])->get();
        $output['ware_house_record']   = $ware_house_record;
        $sub_category_record           = SubCategory::where(['status' => 'Active', 'user_id' => $user->id])->get();
        $output['sub_category_record'] = $sub_category_record;
        $store_record                  = Store::where(['status' => 'Active', 'user_id' => $user->id])->get();
        $output['store_record']        = $store_record;
        $location                      = Location::where(['status' => 'Active', 'user_id' => $user->id])->get();
        $output['location']            = $location;
        $Subsubcategory                = Subsubcategory::where(['status' => 'Active', 'user_id' => $user->id])->get();
        $output['Subsubcategory']      = $Subsubcategory;
        $Inventory_items               = Inventory_items::where(['inventory_id' => $id])->get();
        $item                          = array();
        foreach ($Inventory_items as $key => $value) {
            $item[] = $value->sub_sub_cateogry_id;
        }
        $output['Inventory_items'] = $item;
        return view('admin.inventories.add', $output);
    }
    public function service($id)
    {
        $output                = array();
        $output['module_name'] = "Service";
        $output['module_page'] = "Service";
        $output['record']      = "";
        $output['id']          = $id;
        return view('admin.inventories.service', $output);
    }
    public function store(Request $request)
    {
        $user                        = Auth::user();
        $output                      = array();
        $output['module_name']       = "Inventories Management";
        $output['module_page']       = "Add Sub Category";
        $output['record']            = "";
        $user                        = Auth::user();
        $category_record             = Category::where(['status' => 'Active', 'user_id' => $user->id])->get();
        $output['category_record']   = $category_record;
        $ware_house_record           = WareHouse::where(['status' => 'Active', 'user_id' => $user->id])->get();
        $output['ware_house_record'] = $ware_house_record;
        $store_record                = Store::where(['status' => 'Active', 'user_id' => $user->id])->get();
        $output['store_record']      = $store_record;
        $location                    = Location::where(['status' => 'Active', 'user_id' => $user->id])->get();
        $output['location']          = $location;
        if ($request->isMethod('post')) {

            $input            = $request->all();
            $validation_array = array(
                'title'        => 'required',
                'category_id'  => 'required|numeric',
                'warehouse_id' => 'required|numeric',
                'store_id'     => 'required|numeric',
                 'vendor'        => 'required_without:invoice',
                'description'  => 'required',
                'location'     => 'required',
                'date'     => 'required',
            );
            if ($input['image'] != "") {
                $validation_array['image'] = "required|image|mimes:jpeg,jpg,png|max:2048";
            }
            if ($input['invoice'] != "") {
                $validation_array['invoice'] = "required_without:vendor|image|mimes:jpeg,jpg,png,pdf|max:2048";
            }
            $validator = Validator::make($request->all(), $validation_array);
            if (!$validator->fails()) {
                if ($input['image'] != "") {
                    $imageName = time() . '.' . $request->image->extension();
                    $request->image->move(public_path('stock/'), $imageName);
                    $input['image'] = $imageName;
                }
                if ($input['invoice'] != "") {
                    $imageName = time() . '.' . $request->invoice->extension();
                    $request->invoice->move(public_path('stock/'), $imageName);
                    $input['invoice'] = $imageName;
                }
                $ware_house_record = WareHouse::where(['id' => $input['warehouse_id']])->first();
                $input['user_id']  = $user->id;
                $input['date'] = date("Y-m-d",strtotime($input['date']));
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
                    if (isset($input['sub_sub_cat']) && count($input['sub_sub_cat'])) {
                        foreach ($input['sub_sub_cat'] as $value) {

                            $add_items                        = array();
                            $add_items['category_id']         = $input['category_id'];
                            $add_items['sub_category_id']     = $input['subcategory_id'];
                            $add_items['inventory_id']        = $insert_record->id;
                            $add_items['sub_sub_cateogry_id'] = $value;
                            Inventory_items::create($add_items);
                        }

                    }
                    //end

                    //end
                    $response['success']     = true;
                    $response['message']     = "Recored Store SuccessFully";
                    $response['resetForm']   = true;
                    $response['redirectURL'] = url('administrator/inventories');
                } else {
                    $response['success'] = false;
                    $response['message'] = "Sorry there is some error please try after some time";
                }

            } else {
                $response['success'] = false;
                $html                = "<ol type='1'>";
                foreach ($validator->errors()->toarray() as $value) {

                    $html .= '<li>' . $value['0'] . '</li>';
                }
                $html .= "</ol>";

                $response['message'] = $html;
            }
            return response()->json($response);die;
        }
        return view('admin.inventories.add', $output);
    }
    public function add_service(Request $request)
    {
        $user = Auth::user();

        if ($request->isMethod('post')) {

            $input            = $request->all();
            $validation_array = array(
                'title'       => 'required',
                'description' => 'required',
                'date' => 'required',
            );

            if ($input['invoice'] != "") {
                $validation_array['invoice'] = "required|image|mimes:jpeg,jpg,png,pdf|max:2048";
            }
            $validator = Validator::make($request->all(), $validation_array);
            if (!$validator->fails()) {
                $input['user_id'] = $user->id;
                if ($input['invoice'] != "") {
                    $imageName = time() . '.' . $request->invoice->extension();
                    $request->invoice->move(public_path('stock/'), $imageName);
                    $input['invoice'] = $imageName;
                }
                $input['date']  =date("Y-m-d",strtotime($input['date']));
                $insert_record = InventoryService::create($input);
                if ($insert_record->id) {
                    //end
                    $response['success']          = true;
                    $response['message']          = "Recored Store SuccessFully";
                    $response['resetForm']        = true;
                    $response['callBackFunction'] = 'addCallBack';
                } else {
                    $response['success'] = false;
                    $response['message'] = "Sorry there is some error please try after some time";
                }

            } else {
                $response['success'] = false;
                $html                = "<ol type='1'>";
                foreach ($validator->errors()->toarray() as $value) {

                    $html .= '<li>' . $value['0'] . '</li>';
                }
                $html .= "</ol>";

                $response['message'] = $html;
            }
            return response()->json($response);die;
        }
        return view('admin.inventories.add', $output);
    }
    public function update(Request $request)
    {

        if ($request->isMethod('post')) {
            $update = $request->all();

            $validation_array = array(
                'title'        => 'required|unique:inventories,title,' . $update['id'],
                'category_id'  => 'required|numeric',
                'warehouse_id' => 'required|numeric',
                // 'price'        => 'required',
                'description'  => 'required',
                'location'     => 'required',
            );
            if ($update['image'] != "") {
                $validation_array['image'] = "required|image|mimes:jpeg,jpg,png|max:2048";
            }
            $validator = Validator::make($request->all(), $validation_array);
            if (!$validator->fails()) {
                unset($update['_token']);
                $sub_sub_cat = $update['sub_sub_cat'];
                unset($update['sub_sub_cat']);
                if ($update['image'] != "") {
                    $imageName = time() . '.' . $request->image->extension();
                    $request->image->move(public_path('stock/'), $imageName);
                    $update['image'] = $imageName;
                }
                if ($update['invoice'] != "") {
                    $imageName = time() . '.' . $request->invoice->extension();
                    $request->invoice->move(public_path('stock/'), $imageName);
                    $update['invoice'] = $imageName;
                }
                $ware_house_record = WareHouse::where(['id' => $update['warehouse_id']])->first();
                $update['qr_code'] = remove_space_from_string($ware_house_record->title) . "/" . date("dY") . "/" . show_custome_text($update['title'], 2) . "/" . $update['id'];
                $affectedRows      = Inventories::where('id', $update['id'])->update($update);
                if ($affectedRows) {
                    // update in store entry
                    $store_input             = array();
                    $store_input['store_id'] = $update['store_id'];
                    StockAssignToStore::where('inventory_id', $update['id'])->update($store_input);

                    // add entry to store
                    if (isset($sub_sub_cat) && count($sub_sub_cat)) {
                        $affectedRows = Inventory_items::where('inventory_id', $update['id'])->delete();
                        if ($affectedRows) {
                            foreach ($sub_sub_cat as $value) {

                                $add_items                        = array();
                                $add_items['category_id']         = $update['category_id'];
                                $add_items['sub_category_id']     = $update['subcategory_id'];
                                $add_items['inventory_id']        = $update['id'];
                                $add_items['sub_sub_cateogry_id'] = $value;
                                Inventory_items::create($add_items);
                            }
                        }

                    }
                    $response['success']     = true;
                    $response['message']     = "Records Updated SuccessFully";
                    $response['redirectURL'] = url('administrator/inventories');
                } else {
                    $response['success'] = false;
                    $response['message'] = "Sorry there is some error please try after some time";
                }

            } else {
                $response['success'] = false;
                $html                = "<ol type='1'>";
                foreach ($validator->errors()->toarray() as $value) {

                    $html .= '<li>' . $value['0'] . '</li>';
                }
                $html .= "</ol>";

                $response['message'] = $html;
            }
            return response()->json($response);die;
        }

    }

    public function change_status($id, $status)
    {
        $update['status']    = $status;
        $user                = Inventories::where('id', $id)->update($update);
        $response['success'] = true;
        $response['message'] = "Status Changed SuccessFully";
        return response()->json($response);die;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $record       = Inventories::where('id', $id)->first();
        $affectedRows = Inventories::where('id', $id)->delete();
        if ($affectedRows) {
            if ($record->image) {
                $this->unlink($record->image);
            }
            $response['success'] = true;
        } else {
            $response['success'] = false;
        }
        return response()->json($response);die;
    }

    public function get_sub_category_by_category_id($category_id)
    {
        $response            = array();
        $html                = "";
        $html                = '<option value=""> Select </option>';
        $sub_category_record = SubCategory::where(['status' => 'Active', 'category_id' => $category_id])->get();
        if ($sub_category_record) {
            foreach ($sub_category_record as $value) {
                $html .= "<option value='" . $value->id . "'>" . $value->title . "</option>";
            }
            $response['success'] = true;
            $response['data']    = $html;
        } else {
            $response['success'] = false;
        }
        return response()->json($response);die;
    }
    public function get_item_by_cat_sub_cat_id($category_id, $sub_cat)
    {
        $response = array();
        $html     = "";
        $html     = '<option value=""> Select </option>';
        $records  = Subsubcategory::where(['status' => 'Active', 'category_id' => $category_id, 'subcategory_id' => $sub_cat])->get();
        if ($records) {
            foreach ($records as $value) {
                $html .= "<option value='" . $value->id . "'>" . $value->title . "</option>";
            }
            $response['success'] = true;
            $response['data']    = $html;
        } else {
            $response['success'] = false;
        }
        return response()->json($response);die;
    }
    public function get_items_by_inventory_id($inventory_id)
    {
        $response = array();
        $html     = '';
        $records  = Inventory_items::where(['inventory_id' => $inventory_id])->with('items')->get();
        if ($records->count()) {
            $i = 1;
            foreach ($records as $value) {
                $html .= "<tr>
                  <td>" . $i . "</td>
                  <td>" . $value->items->title . "</td>
                  <td><span class='badge bg-green'><i class='fa fa-fw fa-check-circle'></i></span></td>
                </tr>";
                $i++;
            }
            $response['success'] = true;
        } else {
            $html                = "<tr ><td colspan='3' align='center'>No items found !!</td></tr>";
            $response['success'] = true;
        }
        $response['data'] = $html;
        return response()->json($response);die;
    }

    public function unlink($image = '')
    {
        unlink($_SERVER["DOCUMENT_ROOT"] . "/stock/" . $image);

    }

    public function download(Request $request)
    {
        $user   = Auth::user();
        $search = array();
        $title  = $_GET['title'];
        if (isset($_GET['user_id'])) {
            $user_id = $_GET['user_id'];
        }
        $category_id  = $_GET['category_id'];
        $sub_category = $_GET['subcategory_id'];
        $warehouse    = $_GET['warehouse_id'];
        $store_id     = $_GET['store_id'];
        $page_limit   = $_GET['per-page'];
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
        if ($store_id != "") {
            $search[] = array('store_id', $store_id);
        }
        $html = "";
        if (isset($user_id) && $user_id != "") {
            $search[] = array('user_id', $user_id);
        }
        if ($user->toarray()['user_type'] != "Admin") {
            $search[] = array('user_id', $user->id);
        }
        $records = Inventories::where($search)->with(['category', 'warehouse', 'loca'])->orderBy('created_at', 'DESC')
            ->get();

        $delimiter = ",";
        $filename  = "Inventories_" . date('Y-m-d H:i:s') . ".csv";

        //create a file pointer
        $f = fopen('php://memory', 'w');

        //set column headers
        $fields = array('Title', 'Category', 'Sub Category', 'Location', 'Brand', 'Description', 'Price', 'QrCode', 'Venture', 'Date');
        fputcsv($f, $fields, $delimiter);

        //output each row of the data, format line as csv and write to file pointer
        foreach ($records as $value) {

            $lineData = array($value->title, $value->category->title, $value->category->title, $value->loca->title, $value->brand, $value->description, $value->price, $value->qr_code, $value->warehouse->title, date("Y-m-d H:i:s", strtotime($value->created_at)));
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

    public function print($id){
        $output = array();
        $record = Inventories::where(['id' => $id])->first();
        $output['qr_code'] = $record->qr_code;
         return view('admin.inventories.print_qr', $output);
    }
}
