@extends('layouts.admin_design')
@section('content')
<script type="text/javascript" src="{{ asset('backend/js/moment.min.js') }}"></script>
<link href="{{ asset('backend/css/daterangepicke.css') }}" rel="stylesheet"/>
<script src="{{ asset('backend/js/daterangepicker.min.js ') }}"></script>
<div class="content-wrapper" style="min-height: 926px;">
    <section class="content-header">
        <h1>
        <i class="fa fa-th-list"></i>  <?php echo $module_name; ?>
        <a href="javascript:" onclick="serviceRecord('<?php echo $id; ?>')" id="btn_add_new_data" class="btn btn-sm btn-success" title="Add Data">
            <i class="fa fa-plus-circle"></i> Add Data
        </a>
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
                                <th width="auto">Invoice</th>
                                <th width="auto">Description</th>
                                <th width="auto">Date</th>
                            </tr>
                        </thead>
                        <tbody class="customtable">
                        </tbody>
                        <tfoot>
                        <tr>
                            <th>S.no</th>
                            <th width="auto">Title</th>
                            <th width="auto">Invoice</th>
                            <th width="auto">Description</th>
                            <th width="auto">Date</th>
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
var id = '<?php echo $id ?>';
function addCallBack() {
        setTimeout(function() {
            $('#modal-default2').modal('hide');
        }, 2000);
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

        var page = $('#page').val();

          var url=baseUrl + "get_service_list?per-page="+page+'&id='+id;
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

          var url=baseUrl + "get_service_list?page=" + page+'&per-page='+pages+'&id='+id;
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

function serviceRecord(inventory_id) {
    $('#inventory_id').val(inventory_id);
    $('#modal-default2').modal('show');
}
$(document).ajaxComplete(function() {
    $("[data-toggle='tooltip']").tooltip();
});


</script>
<div class="modal fade" id="modal-default2" style="display: none;">
    <div class="modal-dialog">
        <form class="form-horizontal ajax_form" method="post" id="form" enctype="multipart/form-data" action="{{url('administrator/inventories/add_service')}}" autocomplete="off">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span></button>
                    <h4 class="modal-title">Add Service</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group header-group-0 " id="form-group-photo" style="">
                        <label class="col-sm-2 control-label">Title
                            <span class="text-danger" title="This field is required">*</span>
                        </label>
                        <div class="col-sm-9">
                            <input type="text" id="photo" title="Photo"  class="form-control" name="title">
                            <div class="text-danger"></div>
                        </div>
                    </div>
                    <div class="form-group header-group-0 " id="form-group-photo" style="">
                        <label class="col-sm-2 control-label">Description
                            <span class="text-danger" title="This field is required">*</span>
                        </label>
                        <div class="col-sm-9">
                            <textarea name="description" class="form-control"></textarea>
                            <div class="text-danger"></div>
                        </div>
                    </div>
                    <div class="form-group header-group-0 " id="form-group-photo" style="">
                        <label class="col-sm-2 control-label">Invoice
                            <input type="hidden" name="inventory_id" id="inventory_id">
                        </label>
                        <div class="col-sm-9">
                            <input type="file" id="photo" title="Photo"  class="form-control" name="invoice">
                            <div class="text-danger"></div>
                        </div>
                    </div>
                    <div class="form-group header-group-0">
                            <label for="lname" class="col-sm-2 text-right control-label col-form-label">Date</label>
                            <div class="col-sm-9">
                               <input type="text" name="date"  class="form-control" id="date" readonly="" />
                               <input type="hidden" name="date"  class="form-control" id="dateapp" />
                               
                            </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary" name="submit">Submit</button>
                </div>
            </div>
        </form>
        
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
            <script type = "text/javascript" >
            var start = moment().subtract(0, 'days');
            var end = moment().add(10,'days');
            function Callback2(start, end) {
               $('#dateapp').val(start.format('Y-M-D'));

            }
            $('#date').daterangepicker({
            singleDatePicker: true,
            startDate: start,
           // endDate: end,
           // minDate:start,
           // maxDate:end,
   
            }, Callback2);
            Callback2(start, end);
            </script>
@endsection