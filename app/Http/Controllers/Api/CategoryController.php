<?php

namespace App\Http\Controllers\api;

use App\Admin\Category;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Validator;

class CategoryController extends Controller
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
            $records = Category::select('*')->where(['status' => 'Active', 'user_id' => $user->id])
                ->orderBy('created_at', 'desc')
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
        }
        $response['success'] = $success;
        $response['message'] = $message;
        $response['data']    = $data;
        return response()->json($response, $apiStatus);
    }

    public function store(Request $request)
    {
        if ($request->isMethod('post')) {
            $user = Auth::user();
            if ($user) {
                $validator = Validator::make($request->all(),
                    [
                        'title' => 'required|min:3|unique:categories',
                    ]);
                if (!$validator->fails()) {
                    $input            = $request->all();
                    $input['user_id'] = $user->id;
                    $insert_record    = Category::create($input);
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
