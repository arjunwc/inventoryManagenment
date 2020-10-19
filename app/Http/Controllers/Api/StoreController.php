<?php

namespace App\Http\Controllers\Api;

use App\Admin\Inventories;
use App\Admin\StockAssignToEmployee;
use App\Admin\StockAssignToStore;
use App\Admin\Store;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Validator;

class StoreController extends Controller
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
            $records = Store::select('*')->where(['status' => 'Active', 'user_id' => $user->id])
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

    function return (Request $request) {
        if ($request->isMethod('post')) {
            $user = Auth::user();
            if ($user) {
                $validator = Validator::make($request->all(),
                    [
                        'qr_code'  => 'required',
                        'store_id' => 'required',
                    ]);
                if (!$validator->fails()) {
                    $input  = $request->all();
                    $record = Inventories::where(['qr_code' => $input['qr_code']])->first();
                    if ($record) {
                        $inventor_id           = $record->id;
                        $input['user_id']      = $user->id;
                        $store_input['status'] = 'in';
                        $affected_row          = StockAssignToStore::where('inventory_id', $inventor_id)->update($store_input);
                        if ($affected_row) {
                            $record = StockAssignToEmployee::where(['inventory_id' => $inventor_id, 'status' => 1])->first();
                            if ($record) {

                                $update                      = array();
                                $update['status']            = '0';
                                $update['assign_reasons_id'] = 0;
                                $affected_row                = StockAssignToEmployee::where('inventory_id', $inventor_id)->update($update);
                                // update in inventory
                                $inventory_update             = array();
                                $inventory_update['store_id'] = $input['store_id'];
                                $affected_row                 = Inventories::where('id', $inventor_id)->update($inventory_update);
                                //end
                            }
                            $response['success'] = true;
                            $response['message'] = "Return process done SuccessFully";
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
                        $response['message'] = "Invalid QR code";
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
