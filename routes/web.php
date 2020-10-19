<?php
Route::get('/', function () {
    return redirect('/administrator');
});
Route::match(['get', 'post'], 'administrator', 'Admin\AdminController@login')->name('login');
Route::get('/administrator/logout', 'Admin\AdminController@logout')->name('logout');
Route::group(['middleware' => ['auth']], function () {
    Route::match(['get', 'post'], 'administrator/profile/setting', 'Admin\AdminController@setting');
    Route::get('/administrator/users/profile', 'Admin\AdminController@profile');
    Route::get('/administrator/dashboard', 'Admin\DashboardController@index')->name('admin_dashboard');

    // user Management routes
    Route::get('/administrator/users', 'Admin\UserController@index')->name('users');;
    Route::get('/administrator/userslist', 'Admin\UserController@get_list');
    Route::match(['get', 'post'], '/administrator/users/add', 'Admin\UserController@store')->name('users');
    Route::get('/administrator/users/get_record_by_id/{id}', 'Admin\UserController@get_record_by_id');
    Route::get('/administrator/users/delete/{id}', 'Admin\UserController@destroy');
    Route::get('/administrator/users/update/{id}', 'Admin\UserController@get_record_by_id');
    Route::post('/administrator/users/update_record', 'Admin\UserController@update');
    Route::get('/administrator/users/change_status/{id}/{status}', 'Admin\UserController@change_status');

    // Category Management routes
    Route::get('/administrator/category', 'Admin\CategoryController@index')->name('category');;
    Route::get('/administrator/categorylist', 'Admin\CategoryController@get_list');
    Route::match(['get', 'post'], '/administrator/category/add', 'Admin\CategoryController@store')->name('category');
    Route::get('/administrator/category/get_record_by_id/{id}', 'Admin\CategoryController@get_record_by_id');
    Route::get('/administrator/category/delete/{id}', 'Admin\CategoryController@destroy');
    Route::post('/administrator/category/update_record', 'Admin\CategoryController@update');
    Route::get('/administrator/category/update/{id}', 'Admin\CategoryController@get_record_by_id');
    Route::get('/administrator/category/change_status/{id}/{status}', 'Admin\CategoryController@change_status');

    // Sub Category Management routes
    Route::get('/administrator/sub-category', 'Admin\SubCategoryController@index')->name('sub-category');;
    Route::get('/administrator/sub-categorylist', 'Admin\SubCategoryController@get_list');
    Route::match(['get', 'post'], '/administrator/sub-category/add', 'Admin\SubCategoryController@store')->name('sub-category');
    Route::get('/administrator/sub-category/get_record_by_id/{id}', 'Admin\SubCategoryController@get_record_by_id');
    Route::get('/administrator/sub-category/delete/{id}', 'Admin\SubCategoryController@destroy');
    Route::post('/administrator/sub-category/update_record', 'Admin\SubCategoryController@update');
    Route::get('/administrator/sub-category/update/{id}', 'Admin\SubCategoryController@get_record_by_id');
    Route::get('/administrator/sub-category/change_status/{id}/{status}', 'Admin\SubCategoryController@change_status');

    // Sub sub Category Management routes
    Route::get('/administrator/sub-sub-category', 'Admin\SubsubcategoryController@index')->name('sub-sub-category');
    Route::get('/administrator/sub-sub-categorylist', 'Admin\SubsubcategoryController@get_list');
    Route::match(['get', 'post'], '/administrator/sub-sub-category/add', 'Admin\SubsubcategoryController@store')->name('sub-sub-category');
    Route::get('/administrator/sub-sub-category/get_record_by_id/{id}', 'Admin\SubsubcategoryController@get_record_by_id');
    Route::get('/administrator/sub-sub-category/delete/{id}', 'Admin\SubsubcategoryController@destroy');
    Route::post('/administrator/sub-sub-category/update_record', 'Admin\SubsubcategoryController@update');
    Route::get('/administrator/sub-sub-category/update/{id}', 'Admin\SubsubcategoryController@get_record_by_id');
    Route::get('/administrator/sub-sub-category/change_status/{id}/{status}', 'Admin\SubsubcategoryController@change_status');

    // Ware house Management routes
    Route::get('/administrator/warehouse', 'Admin\WareHouseController@index')->name('warehouse');;
    Route::get('/administrator/warehouselist', 'Admin\WareHouseController@get_list');
    Route::match(['get', 'post'], '/administrator/warehouse/add', 'Admin\WareHouseController@store')->name('warehouse');
    Route::get('/administrator/warehouse/get_record_by_id/{id}', 'Admin\WareHouseController@get_record_by_id');
    Route::get('/administrator/warehouse/delete/{id}', 'Admin\WareHouseController@destroy');
    Route::post('/administrator/warehouse/update_record', 'Admin\WareHouseController@update');
    Route::get('/administrator/warehouse/update/{id}', 'Admin\WareHouseController@get_record_by_id');
    Route::get('/administrator/warehouse/change_status/{id}/{status}', 'Admin\WareHouseController@change_status');

    // Inventories Management routes
    Route::get('/administrator/inventories/download', 'Admin\InventoriesController@download');
    Route::get('/administrator/inventories', 'Admin\InventoriesController@index')->name('inventories');
    Route::get('/administrator/inventorieslist', 'Admin\InventoriesController@get_list');
    Route::get('/administrator/get_service_list', 'Admin\InventoriesController@get_service_list');
    Route::get('/administrator/inventoriesassignlist', 'Admin\InventoriesController@get_assign_list');
    Route::match(['get', 'post'], '/administrator/inventories/add', 'Admin\InventoriesController@store')->name('inventories');
    Route::get('/administrator/inventories/get_record_by_id/{id}', 'Admin\InventoriesController@get_record_by_id');
    Route::get('/administrator/inventories/get_items_by_inventory_id/{id}', 'Admin\InventoriesController@get_items_by_inventory_id');
    Route::get('/administrator/inventories/get_item_by_cat_sub_cat_id/{id}/{sub}', 'Admin\InventoriesController@get_item_by_cat_sub_cat_id');
    Route::get('/administrator/inventories/delete/{id}', 'Admin\InventoriesController@destroy');
    Route::get('/administrator/inventories/get_sub_category_by_category_id/{id}', 'Admin\InventoriesController@get_sub_category_by_category_id');
    Route::post('/administrator/inventories/update_record', 'Admin\InventoriesController@update');
    Route::post('/administrator/inventories/add_service', 'Admin\InventoriesController@add_service');
    Route::get('/administrator/inventories/service/{id}', 'Admin\InventoriesController@service');
    Route::get('/administrator/inventories/update/{id}', 'Admin\InventoriesController@get_record_by_id');
    Route::get('/administrator/inventories/view/{id}', 'Admin\InventoriesController@view');
    Route::get('/administrator/inventories/change_status/{id}/{status}', 'Admin\InventoriesController@change_status');

    // Employee Management routes
    Route::get('/administrator/employee', 'Admin\EmployeeController@index')->name('employee');
    Route::get('/administrator/employeelist', 'Admin\EmployeeController@get_list');
    Route::match(['get', 'post'], '/administrator/employee/add', 'Admin\EmployeeController@store')->name('employee');
    Route::get('/administrator/employee/get_record_by_id/{id}', 'Admin\EmployeeController@get_record_by_id');
    Route::get('/administrator/employee/delete/{id}', 'Admin\EmployeeController@destroy');
    Route::post('/administrator/employee/update_record', 'Admin\EmployeeController@update');
    Route::post('/administrator/employee/uploadFile', 'Admin\EmployeeController@uploadFile');
    Route::get('/administrator/employee/update/{id}', 'Admin\EmployeeController@get_record_by_id');
    Route::get('/administrator/employee/change_status/{id}/{status}', 'Admin\EmployeeController@change_status');
    Route::get('administrator/employee/employeedetaillist', 'Admin\EmployeeController@get_detail_list');
    Route::get('administrator/employee/employee_view/{id}', 'Admin\EmployeeController@view');

    // Store Management routes
    Route::get('/administrator/store', 'Admin\StoreController@index')->name('store');;
    Route::get('/administrator/storelist', 'Admin\StoreController@get_list');
    Route::get('/administrator/store_stock_list', 'Admin\StoreController@get_stock_list');
    Route::match(['get', 'post'], '/administrator/store/add', 'Admin\StoreController@store')->name('store');
    Route::get('/administrator/store/get_record_by_id/{id}', 'Admin\StoreController@get_record_by_id');
    Route::get('/administrator/store/view/{id}', 'Admin\StoreController@view');
    Route::get('/administrator/store/delete/{id}', 'Admin\StoreController@destroy');
    Route::post('/administrator/store/update_record', 'Admin\StoreController@update');
    Route::get('/administrator/store/update/{id}', 'Admin\StoreController@get_record_by_id');
    Route::get('/administrator/store/change_status/{id}/{status}', 'Admin\StoreController@change_status');

    // Location  Management routes
    Route::get('/administrator/location', 'Admin\LocationController@index')->name('location');;
    Route::get('/administrator/locationlist', 'Admin\LocationController@get_list');
    Route::match(['get', 'post'], '/administrator/location/add', 'Admin\LocationController@store')->name('location');
    Route::get('/administrator/location/get_record_by_id/{id}', 'Admin\LocationController@get_record_by_id');
    Route::get('/administrator/location/delete/{id}', 'Admin\LocationController@destroy');
    Route::post('/administrator/location/update_record', 'Admin\LocationController@update');
    Route::get('/administrator/location/update/{id}', 'Admin\LocationController@get_record_by_id');
    Route::get('/administrator/location/change_status/{id}/{status}', 'Admin\LocationController@change_status');
    // Assign reason  Management routes
    Route::get('/administrator/assign_reasons', 'Admin\AssignreasonController@index')->name('assign_reasons');;
    Route::get('/administrator/assign_reasonslist', 'Admin\AssignreasonController@get_list');
    Route::match(['get', 'post'], '/administrator/assign_reasons/add', 'Admin\AssignreasonController@store')->name('assign_reasons');
    Route::get('/administrator/assign_reasons/get_record_by_id/{id}', 'Admin\AssignreasonController@get_record_by_id');
    Route::get('/administrator/assign_reasons/delete/{id}', 'Admin\AssignreasonController@destroy');
    Route::post('/administrator/assign_reasons/update_record', 'Admin\AssignreasonController@update');
    Route::get('/administrator/assign_reasons/update/{id}', 'Admin\AssignreasonController@get_record_by_id');
    Route::get('/administrator/assign_reasons/change_status/{id}/{status}', 'Admin\AssignreasonController@change_status');

    // Assign Inventories  Management routes
    Route::get('/administrator/assign_inventories/{id}', 'Admin\AssignInventoriesContorller@index')->name('assign_inventores');;
    Route::get('/administrator/assign_inventorieslist', 'Admin\AssignInventoriesContorller@get_list');

    // Assign Inventories  Management routes
    Route::get('/administrator/report/download', 'Admin\ReportController@download');
    Route::get('/administrator/report', 'Admin\ReportController@index')->name('report');;
    Route::get('/administrator/reportlist', 'Admin\ReportController@get_list');
    Route::get('/administrator/inventories/print/{id}', 'Admin\InventoriesController@print');
    Route::get('/administrator/inventories/print/{id}/{emp}', 'Admin\EmployeeController@print');
    Route::get('/administrator/inventories/pdf', 'Admin\EmployeeController@genrate_pdf');


});
