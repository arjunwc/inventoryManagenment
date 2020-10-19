<!-- @extends('layouts.admin_design') -->
@section('content')
<script type="text/javascript" src="{{ asset('backend/js/moment.min.js') }}"></script>
<link href="{{ asset('backend/css/daterangepicke.css') }}" rel="stylesheet"/>
<script src="{{ asset('backend/js/daterangepicker.min.js ') }}"></script>



<div class="content-wrapper" style="min-height: 926px;">
    <section class="content-header">
        <h1>
        <i class="fa fa-th-list"></i>  <?php echo $module_name; ?>

        </h1>
        <ol class="breadcrumb">
            <li><a href="{{ url('administrator/dashboard') }}"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active"><?php echo $module_name; ?></li>
        </ol>
    </section>
    <!-- Main content -->
    <section id="content_section" class="content">
        <div class="box">
            <div class="box-header">
                <div class="pull-left">
                    <!--                <div class="selected-action" style="display:inline-block;position:relative;">
                        <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-check-square-o"></i> Bulk Actions
                        <span class="fa fa-caret-down"></span></button>
                        <ul class="dropdown-menu">
                            <li><a href="javascript:void(0)" data-name="delete" title="Delete Selected"><i class="fa fa-trash"></i> Delete Selected</a></li>
                        </ul>
                    </div> -->
                </div>
                <!--end-pull-left-->
                <div class="box-tools" style="position: relative;margin-top: -5px;margin-right: -10px" class="pull-right">

                    <form method="get" style="display:inline-block;width: 260px;" action="#">
                        <div class="input-group">
                                <div id="reportrange" class="reportrange">
                                    <div class="reportrange-inner">
                                        <i class="fa fa-calendar"></i>&nbsp;
                                        <span></span> <i class="fa fa-caret-down"></i>
                                    </div>
                                </div>
                                <input type="hidden" name="" id="hidden_start_date">
                                <input type="hidden" name="" id="hidden_end_date">
                        </div>

                    </form>
                                        <?php $user = session('user_type');?>
          <?php if ($user['user_type'] == "Admin") {?>
                    <form method="get" style="display:inline-block;" action="#">
                        <div class="input-group">
                            <select class="form-control warehouse input-sm" id="user_id" data-value=""  name="user_id" onchange="getList();" >
                                <option value="">Search by Users </option>
                                <?php foreach ($users as $value) {?>
                                <option value="{{$value->id}}" <?php if ($value->id == 1) {echo "selected";}?>>{{$value->email}}</option>
                                <?php }?>
                            </select>
                        </div>
                  </form>
          <?php }?>
                    <form method="get" style="display:inline-block;" action="#">
                        <div class="input-group">
                            <select class="form-control inventory input-sm" id="inventory" data-value=""  name="warehouse_id" onchange="getList();" >
                                <option value="">Search by Inventory </option>
                                <option value="">Select</option>
                                <?php foreach ($Inventories as $value) {?>
                                <option value="{{$value->id}}" <?php if (isset($record->warehouse_id) && $record->warehouse_id != "" && $record->warehouse_id == $value->id) {echo "selected";}?>>{{$value->title}}</option>
                                <?php }?>
                            </select>
                        </div>

                    </form>
                                        <form method="get" style="display:inline-block;" action="#">
                        <div class="input-group">
                            <select class="form-control warehouse input-sm" id="warehouse_id" data-value=""  name="warehouse_id" onchange="getList();" >
                                <option value="">Search by Venture </option>
                                <?php foreach ($ware_house_record as $value) {?>
                                <option value="{{$value->id}}" <?php if (isset($record->warehouse_id) && $record->warehouse_id != "" && $record->warehouse_id == $value->id) {echo "selected";}?>>{{$value->title}}</option>
                                <?php }?>
                            </select>
                        </div>

                    </form>
                    <form method="get" style="display:inline-block;" action="#">
                        <div class="input-group">
                            <select class="form-control select2 input-sm" id="category_id" data-value=""  name="category_id" onchange="getList();">
                                <option value=""> Search by Category</option>
                                <?php foreach ($category_record as $value) {?>
                                <option value="{{$value->id}}" <?php if (isset($record->category_id) && $record->category_id != "" && $record->category_id == $value->id) {echo "selected";}?>>{{$value->title}}</option>
                                <?php }?>
                            </select>
                        </div>

                    </form>
                    <form method="get" style="display:inline-block;" action="#">
                        <div class="input-group">
                            <select class="form-control subcategory input-sm" id="subcategory_id" data-value=""  name="subcategory_id" onchange="getList();" >
                                <option value="">Search by Sub Category </option>
                                <?php foreach ($sub_category_record as $value) {?>
                                <option value="{{$value->id}}" <?php if (isset($record->subcategory_id) && $record->subcategory_id != "" && $record->subcategory_id == $value->id) {echo "selected";}?>>{{$value->title}}</option>
                                <?php }?>
                            </select>
                        </div>

                    </form>
                    <form method="get" style="display:inline-block;" action="#">
                        <div class="input-group">
                            <select class="form-control subcategory input-sm" id="empolyee_id" data-value=""  name="empolyee_id" onchange="getList();" >
                                <option value="">Search by Employee</option>
                                <?php foreach ($empolyee as $value) {?>
                                <option value="{{$value->id}}" <?php if (isset($record->subcategory_id) && $record->subcategory_id != "" && $record->subcategory_id == $value->id) {echo "selected";}?>>{{$value->name}}</option>
                                <?php }?>
                            </select>
                        </div>

                    </form>
                    <form method="get" style="display:inline-block;" action="#">
                        <div class="input-group">
                            <select class="form-control subcategory input-sm" id="reason" data-value=""  name="reason" onchange="getList();" >
                                <option value="">Search by Reason</option>
                                <?php foreach ($AssignReason as $value) {?>
                                <option value="{{$value->id}}" <?php if (isset($record->subcategory_id) && $record->subcategory_id != "" && $record->subcategory_id == $value->id) {echo "selected";}?>>{{$value->title}}</option>
                                <?php }?>
                            </select>
                        </div>

                    </form>
                    <form method="get" style="display:inline-block;" action="#">
                        <div class="input-group">
                            <select class="form-control subcategory input-sm" id="location_status" data-value=""  name="location_status" onchange="getList();" >
                                <option value="">Search by Location Status</option>
                                <option value="in"> In </option>
                                <option value="out"> Out </option>
                            </select>
                        </div>

                    </form>
                    <form method="get" id="form-limit-paging" style="display:inline-block" action="#">
                        <div class="input-group">
                            <select name="limit" style="width: 56px;" class="form-control input-sm" id="page" onchange="getList();">
                                <option value="5">5</option>
                                <option value="10">10</option>
                                <option selected="" value="20">20</option>
                                <option value="25">25</option>
                                <option value="50">50</option>
                                <option value="100">100</option>
                                <option value="200">200</option>
                            </select>
                        </div>
                    </form>
                    <form method="get" id="form-limit-paging" style="display:inline-block" action="#">
                        <div class="input-group">
                            <!-- <button class="btn bg-purple btn-flat margin btn-sm" onclick="exportcsv()" type="button">Export</button> -->
                        </div>
                    </form>
                </div>
                <br style="clear:both">
            </div>
            <div class="box-body table-responsive no-padding">
                <form id="form-table" method="post" action="#">
                    <input type="hidden" name="button_name" value="">
                    <input type="hidden" name="_token" value="7LKezNamEIVrKmj6QuBHdwDaAUksGpp3u8q50hI1">
                    <div class="loader-parent">
                    <table id="table_dashboard" class="table table-hover table-striped table-bordered">
                        <thead>
                            <tr class="active">
                                <th>S.no</th>
                                <th width="auto">Title</th>
                                <th width="auto">Category</th>
                                <th width="auto">Sub Category</th>
                                <th width="auto">Location</th>
                                <th width="auto">Vendor</th>
                                <th width="auto">Image</th>
                                <th width="auto">Invoice</th>
                                <th width="auto">Description</th>
                                <th width="auto">Location</th>
                                <th width="auto">Price</th>
                                <th width="auto">QrCode</th>
                                <th width="auto">Venture</th>
                                <th>Date</th>
                                <th width="auto" style="text-align:right">Action</th>
                            </tr>
                        </thead>
                        <tbody class="customtable">
                        </tbody>
                        <tfoot>
                        <tr>
                            <th>S.no</th>
                            <th width="auto">Title</th>
                            <th width="auto">Category</th>
                            <th width="auto">Sub Category</th>
                            <th width="auto">Location</th>
                            <th width="auto">Vendor</th>
                            <th width="auto">Image</th>
                            <th width="auto">Invoice</th>
                            <th width="auto">Description</th>
                            <th width="auto">Location</th>
                            <th width="auto">Price</th>
                            <th width="auto">QrCode</th>
                            <th width="auto">Ware house</th>
                            <th>Date</th>
                            <th>Action</th>
                        </tr>
                        </tfoot>
                    </table>

          <div class="loader-bx lodding " style="display: none;">
            <img src="{{ asset('backend/images/lodder.gif') }}" alt="loader" class="center">
          </div>
        </div>
                </form>
                <!--END FORM TABLE-->
                <div class="col-md-8 pagnation"></div>
            </div>
        </div>
    </section>
    <!-- /.content -->
</div>
<script type = "text/javascript" >
   var userType='<?php echo $user['user_type']; ?>';
function addCallBack() {
        setTimeout(function() {
            $('#addFromPopup').modal('hide');
        }, 3000);
        getList();
    }

function updatedCallback() {
    setTimeout(function() {
        $('#editFromPopup').modal('hide');
    }, 1000);
    getList();
}

$(document).ready(function() {
        getList();
        $(document).on('click', '.pagination a', function(event) {
            event.preventDefault();
            var page = $(this).attr('href').split('page=')[1];
            fetch_date(page);
        });
    });

function getList() {
        var title = $('#title').val();
        var subcategory_id = $('#subcategory_id').val();
        var categoryId = $('#category_id').val();
        var wareHouse = $('#warehouse_id').val();

        var title = $('#title').val();
        var empolyee_id = $('#empolyee_id').val();
        var location_status = $('#location_status').val();
        var assign_reasons_id = $('#reason').val();
        var start = $('#hidden_start_date').val();
        var end = $('#hidden_end_date').val();
        var page = $('#page').val();
        var inventory = $('#inventory').val();
        if(userType=="Admin"){
          var user_id = $('#user_id').val();
          var url=baseUrl + "reportlist?per-page="+page+'&sub_category_id='+subcategory_id+'&category_id='+categoryId+'&warehouse_id='+wareHouse+'&user_id='+user_id+'&employee_id='+empolyee_id+'&location_status='+location_status+'&assign_reasons_id='+assign_reasons_id+'&start_date=' + start + '&end_date=' + end+ '&inventory=' + inventory;
        }else{
          var url=baseUrl + "reportlist?per-page="+page+'&sub_category_id='+subcategory_id+'&category_id='+categoryId+'&warehouse_id='+wareHouse+'&employee_id='+empolyee_id+'&location_status='+location_status+'&assign_reasons_id='+assign_reasons_id+'&start_date=' + start + '&end_date=' + end+ '&inventory=' + inventory;
      }
        $.ajax({
            url: url,
            type: 'get',
            dataType: 'json',
            beforeSend: function() {
                $('.lodding').css('display', 'block');
            },
            complete: function() {
                $('.lodding').css('display', 'none');
            },
            success: function(json) {
                $('.customtable').html(json.html)
                $('.pagnation').html(json.pagination)
            },
            error: function(xhr, ajaxOptions, thrownError) {
                console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    }

    function fetch_date(page) {
        var title = $('#title').val();
        var pages = $('#page').val();
        var subcategory_id = $('#subcategory_id').val();
        var categoryId = $('#category_id').val();
        var wareHouse = $('#warehouse_id').val();
        var empolyee_id = $('#empolyee_id').val();
        var location_status = $('#location_status').val();
        var assign_reasons_id = $('#reason').val();
        var start = $('#hidden_start_date').val();
        var end = $('#hidden_end_date').val();
        var inventory = $('#inventory').val();
        if(userType=="Admin"){
          var user_id = $('#user_id').val();
          var url= baseUrl + "reportlist?page=" + page+'&per-page='+pages+'&sub_category_id='+subcategory_id+'&category_id='+categoryId+'&warehouse_id='+wareHouse+'&user_id='+user_id+'&employee_id='+empolyee_id+'&location_status='+location_status+'&assign_reasons_id='+assign_reasons_id+'&start_date=' + start + '&end_date=' + end+ '&inventory=' + inventory;
        }else{
          var url=baseUrl + "reportlist?&page=" + page+'&per-page='+pages+'&sub_category_id='+subcategory_id+'&category_id='+categoryId+'&warehouse_id='+wareHouse+'&user_id='+user_id+'&employee_id='+empolyee_id+'&location_status='+location_status+'&assign_reasons_id='+assign_reasons_id+'&start_date=' + start + '&end_date=' + end+ '&inventory=' + inventory;
        }
        $.ajax({
            url: url,
            type: 'get',
            dataType: 'json',
            beforeSend: function() {
                $('.lodding').css('display', 'block');
            },
            complete: function() {
                $('.lodding').css('display', 'none');
            },
            success: function(json) {
                $('.customtable').html(json.html)
                $('.pagnation').html(json.pagination)
            },
            error: function(xhr, ajaxOptions, thrownError) {
                console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    }

function getItems($this) {
    var inventorId =  $($this).data('id');
    $.ajax({
        url: baseUrl + "inventories/get_items_by_inventory_id/" + inventorId,
        type: 'get',
        dataType: 'json',
        beforeSend: function() {
            $('.lodding').css('display', 'block');
        },
        complete: function() {
            $('.lodding').css('display', 'none');
        },
        success: function(json) {
           $('#modal-default').modal('show');
           $('.htmlcontain').html(json.data);
        },
        error: function(xhr, ajaxOptions, thrownError) {
            console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
}
$(document).ajaxComplete(function() {
    $("[data-toggle='tooltip']").tooltip();
});


function exportcsv() {
        var title = $('#title').val();
        var pages = $('#page').val();
        var subcategory_id = $('#subcategory_id').val();
        var categoryId = $('#category_id').val();
        var wareHouse = $('#warehouse_id').val();
        var store_id = $('#store_id').val();
        var empolyee_id = $('#empolyee_id').val();
        var location_status = $('#location_status').val();
        var assign_reasons_id = $('#reason').val();
        var start = $('#hidden_start_date').val();
        var end = $('#hidden_end_date').val();
        if(userType=="Admin"){
          var user_id = $('#user_id').val();
          var url= baseUrl + "report/download?sub_category_id="+subcategory_id+'&category_id='+categoryId+'&warehouse_id='+wareHouse+'&user_id='+user_id+'&store_id='+store_id+'&employee_id='+empolyee_id+'&location_status='+location_status+'&assign_reasons_id='+assign_reasons_id+'&start_date=' + start + '&end_date=' + end;
        }else{
          var url=baseUrl + "report/download?&sub_category_id="+subcategory_id+'&category_id='+categoryId+'&warehouse_id='+wareHouse+'&user_id='+user_id+'&store_id='+store_id+'&employee_id='+empolyee_id+'&location_status='+location_status+'&assign_reasons_id='+assign_reasons_id+'&start_date=' + start + '&end_date=' + end;
        }
        window.location.replace(url);
    }
</script>

<div class="modal fade" id="modal-default" style="display: none;">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">×</span></button>
                <h4 class="modal-title">List</h4>
            </div>
            <div class="modal-body">
                <div class="box-body no-padding">
                    <table class="table table-condensed">
                        <tr>
                            <th style="width: 10px">#</th>
                            <th>Item</th>
                            <th style="width: 40px">Status</th>
                        </tr>
                        <tbody class="htmlcontain">

                        </tbody>
                    </table>
                    </div>
                </div>
            </div>

            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>

            <script type = "text/javascript" >
            var start = moment().subtract(60, 'days');
            var end = moment().add(2,'days');
            function Callback(start, end) {
            $('#hidden_start_date').val(start.format('Y-M-D'));
            $('#hidden_end_date').val(end.format('Y-M-D'));
            $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
            getList();
            }
            $('#reportrange').daterangepicker({
           // maxDate: new Date(),
            startDate: start,
            endDate: end,
            ranges: {
            'This Year': [moment().startOf('year'), moment()],
            'Last Year': [moment().subtract(1, 'year').startOf('year'), moment().subtract(1, 'year').endOf('year')],
            'Last 2 Years': [moment().subtract(2, 'year').startOf('year'), moment().subtract(1, 'year').endOf('year')],
            'Last 7 Days': [moment().subtract(6, 'days'), moment()],
            'Last 30 Days': [moment().subtract(29, 'days'), moment()],
            'This Month': [moment().startOf('month'), moment().endOf('month')],
            'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
            }
            }, Callback);
            Callback(start, end);
            </script>
            <script type = "text/javascript" >
    $('.inventory').select2({
      placeholder: 'Select inventory',

    })  
</script>
@endsection