<?php

namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Admin\WareHouse;
use Validator;
class WareHouseController extends Controller
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
}
