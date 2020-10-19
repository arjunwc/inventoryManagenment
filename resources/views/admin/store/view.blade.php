@extends('layouts.admin_design')
@section('content')
<div class="content-wrapper" style="min-height: 926px;">
  <section class="content-header">
    <h1>
    <i class="fa fa-th-list"></i>  <?php echo $module_name; ?>
    <a href="{{url('administrator/store/add')}}" id="btn_add_new_data" class="btn btn-sm btn-success" title="Add Data">
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
              <input type="text" name="q" value="" class="form-control input-sm pull-right" placeholder="Search by title" id="title">
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
          <table id="table_dashboard" class="table table-hover table-striped table-bordered">
            <thead>
              <tr class="active">
                <th>S.no</th>
                <th width="auto">Title</th>
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
                <th width="auto">Title</th>
                <th>Status</th>
                <th>Date</th>
              <th>Action</th>
            </tr>
            </tfoot>
          </table>
        </form>
        <!--END FORM TABLE-->
        <div class="col-md-8 pagnation"></div>
        <div class="loader-bx lodding" style="/* display: none; */">
          <img src="{{ asset('backend/images/lodder.gif') }}" alt="loader" style="height:80px;
          margin-left: 50%;
          margin-top: -10%;">
        </div>
      </div>
    </div>
  </section>
  <!-- /.content -->
</div>
<script type = "text/javascript" >
  var userType='<?php echo $user['user_type']; ?>';
  var storeId='<?php echo $user['id']; ?>';
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
        var page = $('#page').val();
        if(userType=="Admin"){
          var user_id = $('#user_id').val();
          var url=baseUrl + "store_stock_list?title=" + title+'&per-page='+page+'&user_id='+user_id+'&store_id='+storeId;
        }else{
          var url=baseUrl + "store_stock_list?title=" + title+'&per-page='+page+'&store_id='+storeId;
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
          var url=  baseUrl + "store_stock_list?title=" + title + '&page=' + page+'&per-page='+pages+'&user_id='+user_id+'&store_id='+storeId;
        
        }else{
          var url=baseUrl + "store_stock_list?title=" + title + '&page=' + page+'&per-page='+pages+'&store_id='+storeId;
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
              $.get(baseUrl + "store/delete/" + id, function(data, status) {
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
        url: baseUrl + "store/change_status/" + id + "/" + status,
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


@endsection