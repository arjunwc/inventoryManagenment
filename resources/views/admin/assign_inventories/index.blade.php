@extends('layouts.admin_design')
@section('content')

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
        <div class="box-tools pull-right" style="position: relative;margin-top: -5px;margin-right: -10px">

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
                                <th width="auto">Category</th>
                                <th width="auto">Sub Category</th>
                                <th width="auto">Location</th>
                                <th width="auto">Vendor</th>
                                <th width="auto">Image</th>
                                <th width="auto">Invoice</th>
                                <th width="auto">Description</th>
                                <th width="auto">Price</th>
                                <th width="auto">QrCode</th>
                                <th width="auto">Venture</th>
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
                                <th width="auto">Category</th>
                                <th width="auto">Sub Category</th>
                                <th width="auto">Location</th>
                                <th width="auto">Vendor</th>
                                <th width="auto">Image</th>
                                <th width="auto">Invoice</th>
                                <th width="auto">Description</th>
                                <th width="auto">Price</th>
                                <th width="auto">QrCode</th>
                                <th width="auto">Venture</th>
                                <th>Status</th>
                                <th>Date</th>
                                <th width="auto" style="text-align:right">Action</th>
            </tr>
            </tfoot>
            <div class="loader-bx lodding " style="display: none;">
                <img src="{{ asset('backend/images/lodder.gif') }}" alt="loader" class="center">
              </div>
            </div>
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
 var id = '<?php  echo $id; ?>';
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
        var url=baseUrl + "assign_inventorieslist?per-page="+page+'&assign_reason_id='+id;
        
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
        var url=baseUrl + "assign_inventorieslist?page="+ page+'&per-page='+pages+'&assign_reason_id='+id;
        
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


$(document).ajaxComplete(function() {
    $("[data-toggle='tooltip']").tooltip();
});


</script>
    <script type="text/javascript">
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
@endsection