<?php

namespace App\Http\Controllers\Api;

use App\Admin\InventoryService;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Validator;

class ServiceController extends Controller
{
    public $successStatus      = 200;
    public $unAuthorisedStatus = 401;
    public function index(Request $request)
    {
        $success = true;
        $message = "";
        $data    = array();
        if ($request->isMethod('post')) {
            $user = Auth::user();
            if ($user) {
                $validator = Validator::make($request->all(),
                    [
                        'inventory_id' => 'required',
                    ]);
                if (!$validator->fails()) {
                    $input   = $request->all();
                    $records = InventoryService::where(['inventory_id' => $input['inventory_id'], 'user_id' => $user->id])->get();
                    if (!empty($records->toarray())) {
                        $data      = $records;
                        $message   = "Data Found SuccessFully";
                        $apiStatus = $this->successStatus;
                    } else {
                        $message   = "Records Not Found";
                        $apiStatus = $this->successStatus;
                        $data      =  array();
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

    public function store(Request $request)
    {
        if ($request->isMethod('post')) {
            $user  = Auth::user();
            $input = $request->all();
            if ($user) {
                $validation_array = array(
                    'title'        => 'required',
                    'description'  => 'required',
                    'inventory_id' => 'required',
                );

                if (isset($input['invoice']) && $input['invoice'] != "") {
                    $validation_array['invoice'] = "required|image|mimes:jpeg,jpg,png,pdf|max:2048";
                }
                $validator = Validator::make($request->all(), $validation_array);
                if (!$validator->fails()) {
                    $input            = $request->all();
                    $input['user_id'] = $user->id;
                    if (isset($input['invoice']) && $input['invoice'] != "") {
                        $imageName = time() . '.' . $request->invoice->extension();
                        $request->invoice->move(public_path('stock/'), $imageName);
                        $input['invoice'] = $imageName;
                    }
                    $input['user_id'] = $user->id;
                    $insert_record    = InventoryService::create($input);
                    if ($insert_record->id) {
                        $response['success'] = true;
                        $response['message'] = "Recored Store SuccessFully";
                        $response['data']    = (object) array();
                        $apiStatus           = $this->successStatus;
                    } else {
                        $response['success'] = false;
                        $response['message'] = "Sorry there is some error please try after some time";
                        $response['data']    = (object) array();
                        $apiStatus           = $this->successStatus;
                    }

                } else {
                    $response['success'] = false;
                    $response['message'] = "Validation error";
                    $response['data']    = $validator->errors();
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

}
