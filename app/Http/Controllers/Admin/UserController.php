<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Validator;

class UserController extends Controller
{

    public function index()
    {
        $user = Auth::user();
        if ($user->toarray()['user_type'] != "Admin") {
            return abort(404);
        }
        $output                = array();
        $output['module_name'] = "Users Management";
        $output['module_page'] = "List of Users";
        return view('admin.users.index', $output);
    }

    public function get_list(Request $request)
    {
        $user = Auth::user();
        if ($user->toarray()['user_type'] != "Admin") {
            return abort(404);
        }
        $webpath = URL('/');
        if ($request->ajax()) {

            $search     = array();
            $title      = $_GET['title'];
            $page_limit = $_GET['per-page'];
            if ($title != "") {
                $search[] = array('name', 'like', $title . '%');
            }
            $search['user_type'] = 'role_user';
            $html                = "";
            $records             = User::where($search)->orderBy('created_at', 'DESC')
                ->paginate($page_limit);
            $response['success']    = true;
            $response['html']       = view('admin.users.list', ['records' => $records])->render();
            $response['pagination'] = view('admin.pagination', ['page' => $records])->render();
            json_output($response);
        }
    }

    public function get_record_by_id($id)
    {
        $user = Auth::user();
        if ($user->toarray()['user_type'] != "Admin") {
            return abort(404);
        }
        $output                = array();
        $output['module_name'] = "Users Management";
        $output['module_page'] = "Update Users";
        $record                = User::where(['id' => $id])->first();
        $output['record']      = $record;
        return view('admin.users.add', $output);

    }

    public function store(Request $request)
    {
        $user = Auth::user();
        if ($user->toarray()['user_type'] != "Admin") {
            return abort(404);
        }
        $output                = array();
        $output['module_name'] = "Users Management";
        $output['module_page'] = "Add Users";
        if ($request->isMethod('post')) {

            $validator = Validator::make($request->all(),
                [
                    'name'          => 'required|min:3',
                    // 'role'          => 'required|numeric',
                    'mobile_number' => 'required|unique:users|digits_between:9,15',
                    'email'         => 'required|email|unique:users',
                    'profile_image' => 'required|image|mimes:jpeg,jpg,png|max:2048',
                    'password'      => 'required',
                    'c_password'    => 'required|same:password',
                ]);
            if (!$validator->fails()) {
                $input     = $request->all();
                $imageName = time() . '.' . $request->profile_image->extension();

                $request->profile_image->move(public_path('users/'), $imageName);
                $input['profile_image'] = $imageName;
                $input['password']      = bcrypt($input['password']);
                $user                   = User::create($input);

                $response['success']     = true;
                $response['message']     = "Recored Store SuccessFully";
                $response['resetForm']   = true;
                $response['redirectURL'] = url('administrator/users');
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
        return view('admin.users.add', $output);
    }

    public function update(Request $request)
    {
        $user = Auth::user();
        if ($user->toarray()['user_type'] != "Admin") {
            return abort(404);
        }
        if ($request->isMethod('post')) {
            $update           = $request->all();
            $record           = User::select(['profile_image'])->where(['id' => $update['id']])->first();
            $validation_array = array('name' => 'required|min:3',
                'email'                          => 'required|unique:users,email,' . $update['id'],
                'mobile_number'                  => 'required|numeric|unique:users,mobile_number,' . $update['id'],
                'role'                           => 'required|numeric');
            if ($update['profile_image'] != "") {
                $validation_array['profile_image'] = "required|image|mimes:jpeg,jpg,png|max:2048";
            }
            if ($update['password'] != "") {
                $validation_array['password']   = 'required';
                $validation_array['c_password'] = 'required|same:password';
            }

            $validator = Validator::make($request->all(), $validation_array);
            if (!$validator->fails()) {
                unset($update['_token']);
                unset($update['c_password']);

                if ($update['profile_image'] != "") {
                    $imageName = time() . '.' . $request->profile_image->extension();
                    $request->profile_image->move(public_path('users/'), $imageName);
                    $update['profile_image'] = $imageName;
                    $this->unlink($record->profile_image);
                } else {
                    unset($update['images']);
                }
                if ($update['password'] != "") {
                    $update['password'] = bcrypt($update['password']);
                } else {
                    unset($update['password']);
                }
                $user                    = User::where('id', $update['id'])->update($update);
                $response['success']     = true;
                $response['message']     = "Records Updated SuccessFully";
                $response['redirectURL'] = url('administrator/users');
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
        $user = Auth::user();
        if ($user->toarray()['user_type'] != "Admin") {
            return abort(404);
        }
        $update['status']    = $status;
        $user                = User::where('id', $id)->update($update);
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
        $user = Auth::user();
        if ($user->toarray()['user_type'] != "Admin") {
            return abort(404);
        }
        $affectedRows = User::where('id', $id)->delete();
        if ($affectedRows) {
            $response['success'] = true;
        } else {
            $response['success'] = false;
        }
        return response()->json($response);die;
    }

    public function unlink($image = '')
    {
        unlink("public/users/" . $image);
    }
}
