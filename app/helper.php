<?php
use App\Admin\SubCategory;
use App\Admin\Inventories;
use App\Admin\Category;
use App\Admin\Empolyee;
use App\Admin\Location;
use App\Admin\WareHouse;
use App\Admin\AssignReason;
use App\Admin\Store;
if (!function_exists('pr')) {

    function pr($arr)
    {
        echo '<pre>';
        print_r($arr);
        echo '</pre>';
    }
}

function show_limited_text($string, $len = 10)
{
    $string = strip_tags($string);
    if (strlen($string) > $len) {
        $string = mb_substr($string, 0, $len - 3) . "...";
    }

    return $string;
}
function show_custome_text($string, $len = 2)
{
    $string = strtolower(substr(str_replace(" ", "_", $string), 0, $len));
    return $string;
}
function remove_space_from_string($string = '')
{
    $string = strtolower(str_replace(" ", "", $string));
    return $string;
}
if (!function_exists('escape_text')) {
    function escape_text($s = '')
    {
        return str_replace('&#039;', "'", htmlspecialchars_decode(html_entity_decode($s)));
    }
}

function get_random_key($len = 30)
{
    return substr(str_shuffle("0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"), 0, $len - 1);
}

function add_log_entry($string)
{
    $filename = 'logs/' . date("Y-m-d") . '_complete_log.log';
    $myfile   = fopen($filename, "a");
    fwrite($myfile, "\n" . $string);
    fclose($myfile);
}

function json_output($data, $die = true)
{
    header('Content-Type: application/json');
    echo json_encode($data);

    if ($die) {
        die;
    }
}

function get_sub_category_by_id($sub_cat)
{
    $records = SubCategory::where(['id' => $sub_cat])->first();
    return $records;
}
function get_category_by_id($cat)
{
    $records = Category::where(['id' => $cat])->first();
    return $records;
}
function get_warehouse_by_id($id)
{
    $records = WareHouse::where(['id' => $id])->first();
    return $records;
}
function get_location_by_id($id)
{
    $records = Location::where(['id' => $id])->first();
    return $records;
}
function get_record_by_employee_id($employee_id)
{
    $records = Empolyee::where(['id' => $employee_id])->first();
    return $records;
}
function get_assign_reason($user_id)
{
    $records = AssignReason::where(['user_id' => $user_id])->get();
    return $records;
}
function get_assign_reason_by_id($id)
{
    $record = AssignReason::where(['id' => $id])->first();
    return $record;
}
function get_record_qr_code_by_id($qr_code)
{
    $record = Inventories::where(['qr_code' => $qr_code])->first();
    return $record;
}
function get_record_by_store_id($id)
{
    $record = Store::where(['id' => $id])->first();
    return $record;
}