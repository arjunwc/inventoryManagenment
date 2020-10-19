<?php

namespace App\Http\Controllers\api;

use App\Admin\WareHouse;
use App\Admin\Location;
use App\Admin\AssignReason;
use App\Admin\Store;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Validator;

class CommonController extends Controller
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
            $records = WareHouse::select('*')->where(['status' =>'Active','user_id' =>$user->id])
                ->orderBy('created_at', 'desc')
                ->get();

            if ($records->count()) {
                $data['warehouse']     = $records;
                $message   = "Data Found SuccessFully";
                $apiStatus = $this->successStatus;
            } 
            $records = Location::select('*')->where(['status' =>'Active','user_id' =>$user->id])
                ->orderBy('created_at', 'desc')
                ->get();

            if ($records->count()) {
                $data['Location']     = $records;
                $message   = "Data Found SuccessFully";
                $apiStatus = $this->successStatus;
            } 
            $records = Store::select('*')->where(['status' =>'Active','user_id' =>$user->id])
                ->orderBy('created_at', 'desc')
                ->get();

            if ($records->count()) {
                $data['Store']     = $records;
                $message   = "Data Found SuccessFully";
                $apiStatus = $this->successStatus;
            }
            $records = AssignReason::select('*')->where(['status' =>'Active','user_id' =>$user->id])
                ->orderBy('created_at', 'desc')
                ->get();

            if ($records->count()) {
                $data['assignReason']     = $records;
                $message   = "Data Found SuccessFully";
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
        return response()->json($response, $apiStatus);
    }
    //
}
