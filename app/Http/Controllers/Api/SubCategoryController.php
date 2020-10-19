<?php

namespace App\Http\Controllers\api;

use App\Admin\SubCategory;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Validator;

class SubCategoryController extends Controller
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
                        'category_id' => 'required',
                    ]);
                if (!$validator->fails()) {
                    $input   = $request->all();
                    $records = SubCategory::where(['category_id' => $input['category_id'], 'user_id' => $user->id])->with('items')->get();
                    if (!empty($records->toarray())) {
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
            $user = Auth::user();
            if ($user) {
                $validator = Validator::make($request->all(),
                    [
                        'title'       => 'required|min:3|unique:sub_categories',
                        'category_id' => 'required',
                    ]);
                if (!$validator->fails()) {
                    $input            = $request->all();
                    $input['user_id'] = $user->id;
                    $insert_record    = SubCategory::create($input);
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
