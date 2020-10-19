<?php

namespace App\Http\Controllers\Admin;

use App\Admin\Category;
use App\Admin\Empolyee;
use App\Admin\Inventories;
use App\Http\Controllers\Controller;
use app\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Session;
use Validator;

class AdminController extends Controller
{
    public function login(Request $request)
    {
        $success = true;
        $message = "";
        $webpath = URL('/');

        if ($request->isMethod('post')) {
            $validator = Validator::make($request->all(),
                [
                    'email'    => 'required',
                    'password' => 'required',
                ]);
            if (!$validator->fails()) {
                $data = $request->input();
                if (Auth::attempt(['email' => $data['email'], 'password' => $data['password'], 'status' => 'Active'])) {

                    Session::put('loginEmail', $data['email']);
                    $user = User::where(['email' => $data['email']])
                        ->first();

                    Session::put('user_type', $user->toarray());
                    $response['success']     = $success;
                    $response['message']     = "Login Successfully";
                    $response['redirectURL'] = $webpath . '/administrator/dashboard';
                } else {
                    $response['success'] = false;
                    $response['message'] = "Email or password is wrong";
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
        return view('admin.admin_login');
    }

    public function logout()
    {
        Auth::logout(); // log the user out of our application
        return Redirect::to('administrator'); // redirect the user to the login screen
    }
    public function setting(Request $request)
    {
        $user = Auth::user();

        if ($request->isMethod('post')) {
            $update = $request->all();

            $validation_array = array('name' => 'required|min:3',
                'email'                          => 'required|unique:users,email,' . $update['id'],
                'mobile_number'                  => 'required|numeric');
            if ($update['profile_image'] != "") {
                $validation_array['profile_image'] = "required|image|mimes:jpeg,png,jpg,gif,svg|max:2048";
            }
            if ($update['npassword'] != "") {
                $validation_array['npassword']   = "required";
                $validation_array['c_password'] = "required|same:npassword";
            }
            $validator = Validator::make($request->all(), $validation_array);
            if (!$validator->fails()) {
                unset($update['_token']);
                if ($update['profile_image'] != "") {
                    unset($update['profile_image']);
                    $imageName = time() . '.' . $request->profile_image->extension();
                    $request->profile_image->move(public_path('users/'), $imageName);
                    $update['profile_image'] = $imageName;
                } else {
                    unset($update['profile_image']);
                }
                if ($update['npassword'] != "") {
                    $update['password']      = bcrypt($update['npassword']);
                    $response['redirectURL'] = url('administrator/logout');
                } else {
                    $response['selfReload'] = true;
                }
                unset($update['npassword']);
                unset($update['c_password']);
                $user                    = User::where('id', $update['id'])->update($update);
                $response['success']     = true;
                $response['message']     = "Records Updated Successfully";
                $response['redirectURL'] = url('administrator/logout');
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
        } else {
            return view('admin.setting', compact('user'));
        }
    }

    public function profile()
    {
        $output         = array();
        $user           = Auth::user();
        $category_count = Category::where(['status' => 'Active', 'user_id' => $user->id])->orderBy('created_at', 'DESC')
            ->count();
        $employee_count = Empolyee::where(['status' => 'Active', 'user_id' => $user->id])->orderBy('created_at', 'DESC')
            ->count();
        $inventories_count = Inventories::where(['status' => 'Active', 'user_id' => $user->id])->orderBy('created_at', 'DESC')
            ->count();
        $output['category_count']    = $category_count;
        $output['employee_count']    = $employee_count;
        $output['inventories_count'] = $inventories_count;
        $output['user']              = $user;
        return view('admin.profile', $output);
    }

}
