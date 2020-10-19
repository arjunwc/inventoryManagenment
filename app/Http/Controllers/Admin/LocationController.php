<?php

namespace App\Http\Controllers\Admin;

use App\Admin\Category;
use App\Http\Controllers\Controller;
use App\User;
use App\Admin\Location;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Validator;

class LocationController extends Controller
{
    public function index()
    {
        $output = array();
        $user   = Auth::user();
        if ($user->toarray()['user_type'] == "Admin") {
            $users           = User::where(['status' => 'Active'])->get();
            $output['users'] = $users;
        }
        $output['module_name'] = "Location Management";
        $output['module_page'] = "List of Category";
        return view('admin.location.index', $output);
    }

    public function get_list(Request $request)
    {

        $webpath = URL('/');
        if ($request->ajax()) {
            $user   = Auth::user();
            $search = array();
            $title  = $_GET['title'];
            if (isset($_GET['user_id'])) {
                $user_id = $_GET['user_id'];
            }
            $page_limit = $_GET['per-page'];
            if ($title != "") {
                $search[] = array('title', 'like', $title . '%');
            }
            if (isset($user_id) && $user_id != "") {
                $search[] = array('user_id', $user_id);
            }
            if ($user->toarray()['user_type'] != "Admin") {
                $search[] = array('user_id', $user->id);
            }
            $html    = "";
            $records = Location::where($search)->orderBy('created_at', 'DESC')
                ->paginate($page_limit);
            $response['success']    = true;
            $response['html']       = view('admin.location.list', ['records' => $records])->render();
            $response['pagination'] = view('admin.pagination', ['page' => $records])->render();
            json_output($response);
        }
    }

    public function get_record_by_id($id)
    {
        $output                = array();
        $output['module_name'] = "Location Management";
        $output['module_page'] = "Update Location";
        $record                = Location::where(['id' => $id])->first();
        $output['record']      = $record;
        return view('admin.location.add', $output);
    }

    public function store(Request $request)
    {
        $output                = array();
        $user                  = Auth::user();
        $output['module_name'] = "Location Management";
        $output['module_page'] = "Add Location";
        $output['record']      = "";
        if ($request->isMethod('post')) {

            $validator = Validator::make($request->all(),
                [
                    'title' => 'required|min:3|unique:locations',
                ]);
            if (!$validator->fails()) {
                $input            = $request->all();
                $input['user_id'] = $user->id;
                $insert_record    = Location::create($input);
                if ($insert_record->id) {
                    $response['success']     = true;
                    $response['message']     = "Recored Store SuccessFully";
                    $response['resetForm']   = true;
                    $response['redirectURL'] = url('administrator/location');
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
        return view('admin.location.add', $output);
    }

    public function update(Request $request)
    {

        if ($request->isMethod('post')) {
            $update = $request->all();

            $validation_array = array(
                'title' => 'required|unique:locations,title,' . $update['id']);
            $validator = Validator::make($request->all(), $validation_array);
            if (!$validator->fails()) {
                unset($update['_token']);

                $affectedRows = Location::where('id', $update['id'])->update($update);
                if ($affectedRows) {
                    $response['success']     = true;
                    $response['message']     = "Records Updated SuccessFully";
                    $response['redirectURL'] = url('administrator/location');
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
        return view('admin.location.add', $output);
    }

    public function change_status($id, $status)
    {
        $update['status']    = $status;
        $user                = Location::where('id', $id)->update($update);
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
        try {
            $affectedRows = Location::where('id', $id)->delete();
            if ($affectedRows) {
                $response['success'] = true;
            } else {
                $response['success'] = false;
            }
        } catch (Exception $e) {
            $response['success'] = false;
            $response['message'] = "Not able to delete data of this id is using";

        }
        return response()->json($response);die;
    }
}
