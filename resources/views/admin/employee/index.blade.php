@extends('layouts.admin_design')
@section('content')
<div class="content-wrapper" style="min-height: 926px;">
  <section class="content-header">
    <h1>
    <i class="fa fa-th-list"></i>  <?php echo $module_name; ?>
    <a href="{{url('administrator/employee/add')}}" id="btn_add_new_data" class="btn btn-sm btn-success" title="Add Data">
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
        <a href="javascript:" data-toggle="modal" data-target="#modal-default" class="btn bg-olive btn-flat margin">Bulk upload</a>
        <div class="box-tools pull-right" style="position: relative;margin-top: -5px;margin-right: -10px">
                    <?php $user = session('user_type');?>
          <?php if($user['user_type']=="Admin"){ ?>
                    <form method="get" style="display:inline-block;" action="#">
                        <div class="input-group">
                            <select class="form-control warehouse input-sm" id="user_id" data-value=""  name="user_id" onchange="getList();" >
                                <option value="">Search by Users </option>
                                <?php foreach($users as $value){ ?>
                                <option value="{{$value->id}}" <?php if($value->id==1) {echo "selected";} ?>>{{$value->email}}</option>
                                <?php } ?>
                            </select>
                        </div>
                  </form>
          <?php } ?> 
          <form method="get" style="display:inline-block;width: 260px;" action="#">
            <div class="input-group">
              <input type="text" name="q" value="" class="form-control input-sm pull-right" placeholder="Search by employee name" id="title">
              <div class="input-group-btn">
                <button type="button" class="btn btn-sm btn-default" onclick="getList();"><i class="fa fa-search"></i></button>
              </div>
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
                <th width="auto">Name</th>
                <th width="auto">Department</th>
                <th width="auto">Email</th>
                <th width="auto">Employee Code</th>
                <th width="auto">Contact Number</th>
                <th>Status</th>
                <th>Date</th>
                <th width="auto" style="text-align:right">Action</th>
              </tr>
            </thead>
            <tbody class="customtable">
            </tbody>
            <tfoot>
            <tr>
              <th>S.no</th>
                <th width="auto">Name</th>
                <th width="auto">Department</th>
                <th width="auto">Email</th>
                <th width="auto">Employee Code</th>
                <th width="auto">Contact Number</th>
                <th>Date</th>
                <th>Status</th>
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
            $('#modal-default').modal('hide');
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
        var page = $('#page').val();
        if(userType=="Admin"){
          var user_id = $('#user_id').val();
          var url=baseUrl + "employeelist?title=" + title+'&per-page='+page+'&user_id='+user_id;
        }else{
          var url=baseUrl + "employeelist?title=" + title+'&per-page='+page;
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
        if(userType=="Admin"){
          var user_id = $('#user_id').val();
          var url=baseUrl + "employeelist?title=" + title + '&page=' + page+'&per-page='+pages+'&user_id='+user_id;
        }else{
          var url=baseUrl + "employeelist?title=" + title + '&page=' + page+'&per-page='+pages;
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

    function deleteRecord(id) {
      swal({
            title: 'Do you want to Delete ?',
            type:'info',
            showCancelButton:true,
            allowOutsideClick:true,
            confirmButtonColor: '#DD6B55',
            confirmButtonText: 'Delete',
            cancelButtonText: 'Cancel',
            closeOnConfirm: false
            }, function(){
              $.get(baseUrl + "employee/delete/" + id, function(data, status) {
                if (data.success) {
                    swal("Good job!", "Records deleted Successfully", "success");
                       getList();
                } else {
                    swal("Opps !!", data.message);
                }
              });
            })
    }

function changeSatus(id, status) {
    $.ajax({
        url: baseUrl + "employee/change_status/" + id + "/" + status,
        type: 'get',
        dataType: 'json',
        beforeSend: function() {},
        complete: function() {},
        success: function(json) {
            getList();
        },
        error: function(xhr, ajaxOptions, thrownError) {
            console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
        }
    });
}
$(document).ajaxComplete(function() {
    $("[data-toggle='tooltip']").tooltip();
});


</script>

<div class="modal fade" id="modal-default" style="display: none;">
          <div class="modal-dialog">
            <form class="form-horizontal ajax_form" method="post" id="form" enctype="multipart/form-data" action="{{url('administrator/employee/uploadFile')}}" autocomplete="off">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">×</span></button>
                <h4 class="modal-title">Bulk upload</h4>
              </div>
              <div class="modal-body">
                                   <div class="form-group header-group-0 " id="form-group-photo" style="">
                        <label class="col-sm-2 control-label">File
                        <span class="text-danger" title="This field is required">*</span>
                        </label>
                        <div class="col-sm-9">
                           <input type="file" id="photo" title="Photo"  class="form-control" name="file">
                           <div class="text-danger"></div>
                        </div>
                     </div>
                     <a href="{{ asset('EmployeeSample.csv') }}">Download Sample</a>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary" name="submit">Upload</button>
              </div>
            </div>
          </form>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
@endsection