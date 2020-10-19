<?php

namespace App\Http\Controllers\Api;

use App\Admin\Empolyee;
use App\Admin\StockAssignToEmployee;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Validator;

class EmployeeController extends Controller
{
    public $successStatus      = 200;
    public $unAuthorisedStatus = 401;
    public function index()
    {
        $success  = true;
        $response = array();
        $data     = array();
        $webpath  = URL('/');

        $user = Auth::user();
        if ($user) {
            $records = Empolyee::select('*')->where(['status' => 'Active', 'user_id' => $user->id])
                ->orderBy('emp_code', 'ASC')
                ->get();

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
            $data      = (object) array();
        }
        $response['success'] = $success;
        $response['message'] = $message;
        $response['data']    = $data;
        return response()->json($response, $apiStatus);
    }

    public function details(Request $request)
    {
        $success  = true;
        $output   = array();
        $response = array();
        $data     = array();
        if ($request->isMethod('post')) {

            $validator = Validator::make($request->all(),
                [
                    'employee_id' => 'required',
                ]);
            if (!$validator->fails()) {
                $input    = $request->all();
                $search[] = array('employee_id', $input['employee_id']);
                $search[] = array('assign_reasons_id', '!=', 0);
                $records  = StockAssignToEmployee::select('*')->where($search)
                    ->with('invetnory')

                    ->orderBy('created_at', 'desc')
                    ->get();
                foreach ($records as $key => $value) {

                    if ($value->status == 1) {
                        $value->status = "Useing";
                    } else {
                        $value->status = "Return";
                    }
                    if ($value->assign_reasons_id != 0) {
                        $record        = get_assign_reason_by_id($value->assign_reasons_id);
                        $value->reason = $record->title;
                    } else {
                        $value->reason = "Returned";
                    }
                    if ($value->invetnory) {
                        $category                   = get_category_by_id($value->invetnory->category_id);
                        $value->invetnory->category = $category->title;
                        $subcategory_id             = get_sub_category_by_id($value->invetnory->subcategory_id);
                        if ($value->invetnory->sub_category) {
                            $value->invetnory->sub_category = $subcategory_id->title;
                        }

                        $warehouse_id                = get_warehouse_by_id($value->invetnory->warehouse_id);
                        $value->invetnory->warehouse = $warehouse_id->title;
                        if ($value->invetnory->location) {
                            $location                   = get_location_by_id($value->location);
                            $value->invetnory->location = $location->title;
                        }

                        if ($value->invetnory->invoice) {
                            $value->invetnory->invoice = url('stock') . "/" . $value->invoice;
                        }

                        if ($value->invetnory->image) {
                            $value->invetnory->invoice = url('stock') . "/" . $value->image;
                        }
                    }
                }

                if (count($records->toarray())) {
                    $data      = $records;
                    $message   = "Data Found SuccessFully";
                    $apiStatus = $this->successStatus;
                } else {
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
        }
        $response['success'] = $success;
        $response['message'] = $message;
        $response['data']    = $data;
        return response()->json($response, $apiStatus);
    }
}
