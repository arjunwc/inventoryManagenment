<?php
namespace App\Http\Controllers\api;

use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Validator;
use Illuminate\Support\Facades\File;
class UserController extends Controller
{
    public $successStatus = 200;
       public $destination_image_path = 'users/';
/**
 * login api
 *
 * @return \Illuminate\Http\Response
 */
    public function login()
    {
        $success  = true;
        $response = array();
        $data     = array();
        $webpath = URL('/');
        if (is_numeric(request('mobile_number'))) {

            if (Auth::attempt(['mobile_number' => request('mobile_number'), 'password' => request('password')])) {
                $user                  = Auth::user();
                $data['email']         = $user->email;
                $data['name']          = $user->name;
                $data['mobile_number'] = $user->mobile_number;
                if (!empty($user->profile_image) && File::exists($this->destination_image_path . $user->profile_image)) {
                    $image = $webpath . '/' . $this->destination_image_path . $user->profile_image;
                } else {
                    $image = '';
                }
                $data['profile_image'] = $image;
                $data['token']         = $user->createToken('MyApp')->accessToken;
                $response['success']   = $success;
                $response['message']   = "Login successFully";
                $response['data']      = $data;
                return response()->json($response, $this->successStatus);
            } else {
                $response['success'] = false;
                $response['message'] = "unauthorized";
                $response['data']    = (object) array();
                return response()->json($response, 200);
            }
        } else {
            if (Auth::attempt(['email' => request('mobile_number'), 'password' => request('password')])) {
                $user                  = Auth::user();
                $data['email']         = $user->email;
                $data['name']          = $user->name;
                $data['mobile_number'] = $user->mobile_number;
                if (!empty($user->profile_image) && File::exists($this->destination_image_path . $user->profile_image)) {
                    $image = $webpath . '/' . $this->destination_image_path . $user->profile_image;
                } else {
                    $image = '';
                }
                $data['profile_image'] = $image;
                $data['token']         = $user->createToken('MyApp')->accessToken;
                $response['success']   = $success;
                $response['message']   = "Login successFully";
                $response['data']      = $data;
                return response()->json($response, $this->successStatus);
            } else {
                $response['success'] = false;
                $response['message'] = "unauthorized";
                $response['data']    = (object) array();
                return response()->json($response, 200);
            }
        }

    }
/**
 * Register api
 *
 * @return \Illuminate\Http\Response
 */
    public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name'          => 'required',
            'email'         => 'required|email|unique:users,email',
            'mobile_number' => 'required|numeric|unique:users,mobile_number',
            'password'      => 'required',
            'c_password'    => 'required|same:password',
        ]);
        if ($validator->fails()) {
            return response()->json(['error' => $validator->errors()], 401);
        }
        $input             = $request->all();
        $input['password'] = bcrypt($input['password']);
        $user              = User::create($input);
        $success['token']  = $user->createToken('MyApp')->accessToken;
        $success['name']   = $user->name;
        return response()->json(['success' => $success], $this->successStatus);
    }
/**
 * details api
 *
 * @return \Illuminate\Http\Response
 */
    public function details()
    {
        $user = Auth::user();
        return response()->json(['success' => $user], $this->successStatus);
    }
}
