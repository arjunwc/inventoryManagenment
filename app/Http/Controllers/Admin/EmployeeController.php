<?php

namespace App\Http\Controllers\Admin;

use App\Admin\Empolyee;
use App\Admin\Inventories;
use App\Admin\StockAssignToEmployee;
use App\Http\Controllers\Controller;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Validator;

class EmployeeController extends Controller
{
    public function index()
    {
        $output = array();
        $user   = Auth::user();
        if ($user->toarray()['user_type'] == "Admin") {
            $users           = User::where(['status' => 'Active'])->get();
            $output['users'] = $users;
        }
        $output['module_name'] = "Employee Management";
        $output['module_page'] = "List of employees";
        return view('admin.employee.index', $output);
    }

    public function get_list(Request $request)
    {
        $user    = Auth::user();
        $webpath = URL('/');
        if ($request->ajax()) {

            $search = array();
            $title  = $_GET['title'];
            if (isset($_GET['user_id'])) {
                $user_id = $_GET['user_id'];
            }
            $page_limit = $_GET['per-page'];
            if ($title != "") {
                $search[] = array('name', 'like', $title . '%');
            }
            if (isset($user_id) && $user_id != "") {
                $search[] = array('user_id', $user_id);
            }
            if ($user->toarray()['user_type'] != "Admin") {
                $search[] = array('user_id', $user->id);
            }
            $html    = "";
            $records = Empolyee::where($search)->orderBy('created_at', 'DESC')
                ->paginate($page_limit);
            $response['success']    = true;
            $response['html']       = view('admin.employee.list', ['records' => $records])->render();
            $response['pagination'] = view('admin.pagination', ['page' => $records])->render();
            json_output($response);
        }
    }

    public function get_record_by_id($id)
    {
        $output                = array();
        $output['module_name'] = "Employee Management";
        $output['module_page'] = "Update Employee";
        $record                = Empolyee::where(['id' => $id])->first();
        $output['record']      = $record;
        return view('admin.employee.add', $output);
    }

    public function store(Request $request)
    {
        $output                = array();
        $user                  = Auth::user();
        $output['module_name'] = "Employee Management";
        $output['module_page'] = "Add Employee";
        $output['record']      = "";
        if ($request->isMethod('post')) {

            $validator = Validator::make($request->all(),
                [
                    'name'       => 'required',
                    'department' => 'required',
                    'emp_code'   => 'required|numeric|unique:empolyees',

                ]);
            if (!$validator->fails()) {
                $input            = $request->all();
                $input['user_id'] = $user->id;
                $insert_record    = Empolyee::create($input);
                if ($insert_record->id) {
                    $response['success']     = true;
                    $response['message']     = "Recored Store SuccessFully";
                    $response['resetForm']   = true;
                    $response['redirectURL'] = url('administrator/employee');
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
        return view('admin.employee.add', $output);
    }

    public function update(Request $request)
    {

        if ($request->isMethod('post')) {
            $update = $request->all();

            $validation_array = array(
                'name'       => 'required',
                'department' => 'required',
                'emp_code'   => 'required|unique:empolyees,emp_code,' . $update['id'],
                'email'      => 'unique:empolyees,email,' . $update['id'],
                'contact'    => 'unique:empolyees,contact,' . $update['id'],
            );
            $validator = Validator::make($request->all(), $validation_array);
            if (!$validator->fails()) {
                unset($update['_token']);

                $affectedRows = Empolyee::where('id', $update['id'])->update($update);
                if ($affectedRows) {
                    $response['success']     = true;
                    $response['message']     = "Records Updated SuccessFully";
                    $response['redirectURL'] = url('administrator/employee');
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
        return view('admin.employee.add', $output);
    }

    public function change_status($id, $status)
    {
        $update['status']    = $status;
        $user                = Empolyee::where('id', $id)->update($update);
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
            $affectedRows = Empolyee::where('id', $id)->delete();
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

    public function uploadFile(Request $request)
    {
        if ($request->isMethod('post')) {
            //  pr($request->all()); die;
            $user      = Auth::user();
            $validator = Validator::make($request->all(),
                [
                    'file' => 'required|max:2048',
                ]);
            if (!$validator->fails()) {
                $file      = $request->file('file');
                $filename  = $file->getClientOriginalName();
                $extension = $file->getClientOriginalExtension();
                $tempPath  = $file->getRealPath();
                $fileSize  = $file->getSize();
                $mimeType  = $file->getMimeType();
                if ($extension == 'csv') {
                    // File upload location
                    $location = 'uploads';

                    // Upload file
                    $file->move($location, $filename);

                    // Import CSV to Database
                    $filepath = public_path($location . "/" . $filename);

                    // Reading file
                    $file = fopen($filepath, "r");

                    $importData_arr = array();
                    $i              = 0;

                    while (($filedata = fgetcsv($file, 1000, ",")) !== false) {
                        $num = count($filedata);

                        // Skip first row (Remove below comment if you want to skip the first row)
                        /*if($i == 0){
                        $i++;
                        continue;
                        }*/
                        for ($c = 0; $c < $num; $c++) {
                            $importData_arr[$i][] = $filedata[$c];
                        }
                        $i++;
                    }
                    fclose($file);

                    // Insert to MySQL database
                    foreach ($importData_arr as $importData) {

                        $insertData = array(
                            "name"       => $importData[0],
                            "email"      => $importData[1],
                            "contact"    => $importData[2],
                            "user_id"    => $user->id,
                            "emp_code"   => $importData[3],
                            "department" => $importData[4],
                        );
                        $insert_response = Empolyee::create($insertData);

                    }
                    if ($insert_response->id) {
                        $response['success']          = true;
                        $response['message']          = "Success";
                        $response['callBackFunction'] = 'addCallBack';
                    } else {
                        $response['success'] = false;
                        $response['message'] = "Suppot only csv files";
                    }
                } else {
                    $response['success'] = false;
                    $response['message'] = "Suppot only csv files";
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

    public function view($employee_id)
    {
        $output                = array();
        $output['module_name'] = "Employee Management";
        $output['module_page'] = "List of  Employee";
        $output['employee_id'] = $employee_id;
        return view('admin.employee.view', $output);
    }

    public function get_detail_list(Request $request)
    {
        $user    = Auth::user();
        $webpath = URL('/');
        if ($request->ajax()) {
            $search = array();
            $search['status'] = 1;
            $page_limit = $_GET['per-page'];
            $employee_id = $_GET['employee_id'];
            $html    = "";
            $search['employee_id'] = $employee_id;
            $records = StockAssignToEmployee::where($search)->with('invetnory')->orderBy('stock_assign_to_employees.id', 'DESC')
                ->paginate($page_limit);
            $response['success']    = true;
            $response['html']       = view('admin.employee.detail_list', ['records' => $records,'emp_id'=>$employee_id])->render();
            $response['pagination'] = view('admin.pagination', ['page' => $records])->render();
            json_output($response);
        }
    }
        public function print($id,$emp){
        $output = array();
        $record = Inventories::where(['id' => $id])->first();
        $employee = Empolyee::where(['id' => $emp])->first();
        $output['qr_code'] = $record->qr_code;
        $output['employee'] = $employee;
         return view('admin.employee.print_qr', $output);
    }


}
