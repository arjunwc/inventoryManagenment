<?php

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
 */

Route::prefix('v1')->group(function () {
    Route::post('login', 'Api\UserController@login');
    Route::post('register', 'Api\UserController@register');

    Route::group(['middleware' => 'auth:api'], function () {
        Route::post('details', 'Api\UserController@details');

        //category Routes
        Route::get('category_list', 'Api\CategoryController@index');
        Route::post('add_category', 'Api\CategoryController@store');

        //Sub category Routes
        Route::post('sub_category_list', 'Api\SubCategoryController@index');
        Route::post('add_sub_category', 'Api\SubCategoryController@store');
        //Ware house Routes
        Route::get('warehouselist', 'Api\WareHouseController@index');
        Route::get('common', 'Api\CommonController@index');

        //Inventories
        Route::post('inventories_list', 'Api\InventoriesController@index');
        Route::post('check', 'Api\InventoriesController@scan_qr_code');
        Route::post('add_inventories', 'Api\InventoriesController@store');
        Route::post('add_service', 'Api\ServiceController@store');
        Route::post('get_service', 'Api\ServiceController@index');
        Route::post('get_record_by_qr', 'Api\InventoriesController@get_record_by_qr_code');
        Route::post('assign_to_employee', 'Api\InventoriesController@assign_to_employee');
        Route::post('reassign', 'Api\InventoriesController@reassign');
        Route::post('assign_to_employeelist', 'Api\InventoriesController@assign_employee_list');

        //Employee Routes
        Route::get('employeelist', 'Api\EmployeeController@index');
        Route::post('employee_inventory_details', 'Api\EmployeeController@details');

        //Store Routes
        Route::get('storelist', 'Api\StoreController@index');
        Route::post('return', 'Api\StoreController@return');

    });
});
