<?php

namespace App\Http\Controllers\Admin;

use App\Admin\Category;
use App\Admin\SubCategory;
use App\Admin\Subsubcategory;
use App\Http\Controllers\Controller;
use Exception;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Validator;

class SubCategoryController extends Controller
{
    public function index()
    {
        $output = array();
        $user   = Auth::user();
        if ($user->toarray()['user_type'] == "Admin") {
            $users           = User::where(['status' => 'Active'])->get();
            $output['users'] = $users;
        }
        $output['module_name'] = "Sub Category Management";
        $output['module_page'] = "List of  Sub Category";
        return view('admin.sub_category.index', $output);
    }

    public function get_list(Request $request)
    {
       
        $user    = Auth::user();
        $webpath = URL('/');
        if ($request->ajax()) {

            $search     = array();
            $title      = $_GET['title'];
            $page_limit = $_GET['per-page'];
            if ($title != "") {
                $search[] = array('title', 'like', $title . '%');
            }
            $html = "";
            if (isset($_GET['user_id'])) {
                $user_id = $_GET['user_id'];
            }
            if (isset($user_id) && $user_id != "") {
                $search[] = array('user_id', $user_id);
            }
            if ($user->toarray()['user_type'] != "Admin") {
                $search[] = array('user_id', $user->id);
            }
            $search[] = array('user_id', $user->id);
            $records  = SubCategory::where($search)->with('category')->orderBy('created_at', 'DESC')
                ->paginate($page_limit);
            $response['success']    = true;
            $response['html']       = view('admin.sub_category.list', ['records' => $records])->render();
            $response['pagination'] = view('admin.pagination', ['page' => $records])->render();
            json_output($response);
        }
    }

    public function get_record_by_id($id)
    {
        $user                      = Auth::user();
        $output                    = array();
        $output['module_name']     = "Sub Category Management";
        $output['module_page']     = "Update Category";
        $category_record           = Category::where(['status' => 'Active', 'user_id' => $user->id])->get();
        $output['category_record'] = $category_record;
        $record                    = SubCategory::where(['id' => $id])->first();
        $output['record']          = $record;
        return view('admin.sub_category.add', $output);
    }

    public function store(Request $request)
    {
        $user                      = Auth::user();
        $output                    = array();
        $output['module_name']     = "Sub Category Management";
        $output['module_page']     = "Add Sub Category";
        $output['record']          = "";
        $category_record           = Category::where(['status' => 'Active', 'user_id' => $user->id])->get();
        $user                      = Auth::user();
        $output['category_record'] = $category_record;
        if ($request->isMethod('post')) {

            $validator = Validator::make($request->all(),
                [
                    'title'       => 'required|unique:sub_categories',
                    'category_id' => 'required',
                ]);
            if (!$validator->fails()) {
                $input            = $request->all();
                $input['user_id'] = $user->id;

                $insert_record = SubCategory::create($input);
                if ($insert_record->id) {
                    $response['success']     = true;
                    $response['message']     = "Recored Store SuccessFully";
                    $response['resetForm']   = true;
                    $response['redirectURL'] = url('administrator/sub-category');
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
        return view('admin.sub_category.add', $output);
    }

    public function update(Request $request)
    {

        if ($request->isMethod('post')) {
            $update = $request->all();

            $validation_array = array(
                'title' => 'required|unique:sub_categories,title,' . $update['id'], 'category_id' => 'required');

            $validator = Validator::make($request->all(), $validation_array);
            if (!$validator->fails()) {
                unset($update['_token']);

                $affectedRows = SubCategory::where('id', $update['id'])->update($update);
                if ($affectedRows) {
                    $response['success']     = true;
                    $response['message']     = "Records Updated SuccessFully";
                    $response['redirectURL'] = url('administrator/sub-category');
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

    }

    public function change_status($id, $status)
    {
        $update['status']    = $status;
        $user                = SubCategory::where('id', $id)->update($update);
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
            $affectedRows = SubCategory::where('id', $id)->delete();
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
