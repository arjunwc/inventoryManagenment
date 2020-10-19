@extends('layouts.admin_design')
@section('content')
<script type="text/javascript" src="{{ asset('backend/js/moment.min.js') }}"></script>
<link href="{{ asset('backend/css/daterangepicke.css') }}" rel="stylesheet"/>
<script src="{{ asset('backend/js/daterangepicker.min.js ') }}"></script>
<div class="content-wrapper" style="min-height: 926px;">
   <section class="content-header">
      <h1>
      <i class="fa fa-users"></i> <?php echo $module_name; ?>
      </h1>
      <ol class="breadcrumb">
         <li><a href="{{url('administrator/dashboard')}}"><i class="fa fa-dashboard"></i> Home</a></li>
         <li class="active"><?php echo $module_name; ?></li>
      </ol>
   </section>
   <section id="content_section" class="content">
      <div>
         <p><a title="Main Module" href="{{url('administrator/users')}}"><i class="fa fa-chevron-circle-left "></i>
         &nbsp; Back To List Data Inventories Management</a>
      </p>
      <div class="panel panel-default">
         <div class="panel-heading">
            <strong><i class="fa fa-users"></i> <?php echo $module_page; ?></strong>
         </div>
         <div class="panel-body" style="padding:20px 0px 0px 0px">
            <?php if(isset($record->id) && $record->id!=""){ ?>
            <form class="form-horizontal ajax_form" method="post" id="form" enctype="multipart/form-data" action="{{url('administrator/inventories/update_record')}}" autocomplete="off">
               <?php }else{ ?>
               <form class="form-horizontal ajax_form" method="post" id="form" enctype="multipart/form-data" action="{{url('administrator/inventories/add')}}" autocomplete="off">
                  <?php } ?>
                  <div class="box-body" id="parent-form-area">
                     <div class="form-group header-group-0 " id="form-group-name" style="">
                        <label class="control-label col-sm-2">
                           Title
                           <span class="text-danger" title="This field is required">*</span>
                        </label>
                        <div class="col-sm-9">
                           <input type="text" title="Name"  class="form-control" name="title" id="name"  value=" <?php if(isset($record->title) && $record->title!=""){ echo $record->title;  }?>">
                           <div class="text-danger"></div>
                           <p class="help-block"></p>
                        </div>
                     </div>
                     <div class="form-group header-group-0 " id="form-group-name" style="">
                        <label class="control-label col-sm-2">
                           Category
                           <span class="text-danger" title="This field is required">*</span>
                        </label>
                        <div class="col-sm-9">
                           <select class="form-control category" id="category" data-value=""  name="category_id" onchange="getSubCategory(this)" >
                              <option value="">** Please select </option>
                              <?php foreach($category_record as $value){ ?>
                              <option value="{{$value->id}}" <?php if(isset($record->category_id) && $record->category_id!="" && $record->category_id == $value->id ){ echo "selected";  }?>>{{$value->title}}</option>
                              <?php } ?>
                           </select>
                           <div class="text-danger"></div>
                           <p class="help-block"></p>
                        </div>
                     </div>
                      <?php if(isset($record->id) && $record->id!=""){ ?>
                     <div class="form-group header-group-0 " id="form-group-name" style="">
                        <label class="control-label col-sm-2">
                           Select Category
                           <span class="text-danger" title="This field is required">*</span>
                        </label>
                        <div class="col-sm-9">
                           <select class="form-control subcategory" id="sub_cat" data-value=""  name="subcategory_id" onchange="getSubCategoryItem(this)" >
                              <option value="">** Please select </option>
                              <?php foreach($sub_category_record as $value){ ?>
                              <option value="{{$value->id}}" <?php if(isset($record->subcategory_id) && $record->subcategory_id!="" && $record->subcategory_id == $value->id ){ echo "selected";  }?>>{{$value->title}}</option>
                              <?php } ?>
                           </select>
                           <div class="text-danger"></div>
                           <p class="help-block"></p>
                        </div>
                     </div>
                     <div class="form-group header-group-0 " id="form-group-name" style="">
                        <label class="control-label col-sm-2">
                          Items
                           <span class="text-danger" title="This field is required">*</span>
                        </label>
                        <div class="col-sm-9">
                           <select class="form-control Items" id="sub_sub_cat" data-value=""  name="sub_sub_cat[]" multiple="">
                              <option value="">** Please select </option>
                              <?php foreach($Subsubcategory as $value){ ?>
                              <option value="{{$value->id}}" <?php if(isset($Inventory_items) && in_array($value->id,$Inventory_items) ){ echo "selected";  }?>>{{$value->title}}</option>
                              <?php } ?>
                           </select>
                           <div class="text-danger"></div>
                           <p class="help-block"></p>
                        </div>
                     </div>
                  <?php } else { ?>
                     <div class="form-group header-group-0 " id="form-group-name" style="">
                        <label class="control-label col-sm-2">
                           Sub Category
                           
                        </label>
                        <div class="col-sm-9">
                           <select class="form-control subcategory" id="sub_cat" data-value=""  name="subcategory_id" onchange="getSubCategoryItem(this)">

                           </select>
                           <div class="text-danger"></div>
                           <p class="help-block"></p>
                        </div>
                     </div>

                     <div class="form-group header-group-0 " id="form-group-name" style="">
                        <label class="control-label col-sm-2">
                           Items
                           
                        </label>
                        <div class="col-sm-9">
                           <select class="form-control subcategory Items" id="sub_sub_cat" data-value=""  name="sub_sub_cat[]" multiple="">
                           </select>
                           <div class="text-danger"></div>
                           <p class="help-block"></p>
                        </div>
                     </div>
                  <?php } ?>   
                     <div class="form-group header-group-0 " id="form-group-name" style="">
                        <label class="control-label col-sm-2">
                           Select Venture
                           <span class="text-danger" title="This field is required">*</span>
                        </label>
                        <div class="col-sm-9">
                           <select class="form-control warehouse" id="Venture" data-value=""  name="warehouse_id" >
                              <option value="">** Please select </option>
                              <?php foreach($ware_house_record as $value){ ?>
                              <option value="{{$value->id}}" <?php if(isset($record->warehouse_id) && $record->warehouse_id!="" && $record->warehouse_id == $value->id ){ echo "selected";  }?>>{{$value->title}}</option>
                              <?php } ?>
                           </select>
                           <div class="text-danger"></div>
                           <p class="help-block"></p>
                        </div>
                     </div>
                     <div class="form-group header-group-0 " id="form-group-name" style="">
                        <label class="control-label col-sm-2">
                           Select Location
                           <span class="text-danger" title="This field is required">*</span>
                        </label>
                        <div class="col-sm-9">
                           <select class="form-control location" id="location" data-value=""  name="location" >
                              <option value="">** Please select </option>
                              <?php foreach($location as $value){ ?>
                              <option value="{{$value->id}}" <?php if(isset($record->location) && $record->location!="" && $record->location == $value->id ){ echo "selected";  }?>>{{$value->title}}</option>
                              <?php } ?>
                           </select>
                           <div class="text-danger"></div>
                           <p class="help-block"></p>
                        </div>
                     </div>
                     <div class="form-group header-group-0 " id="form-group-name" style="">
                        <label class="control-label col-sm-2">
                           Select Store
                           <span class="text-danger" title="This field is required">*</span>
                        </label>
                        <div class="col-sm-9">
                           <select class="form-control Basment" id="category" data-value=""  name="store_id" >
                              <option value="">** Please select </option>
                              <?php foreach($store_record as $value){ ?>
                              <option value="{{$value->id}}" <?php if(isset($record->store_id) && $record->store_id!="" && $record->store_id == $value->id ){ echo "selected";  }?>>{{$value->title}}</option>
                              <?php } ?>
                           </select>
                           <div class="text-danger"></div>
                           <p class="help-block"></p>
                        </div>
                     </div>
                        <div class="form-group header-group-0">
                            <label for="lname" class="col-sm-2 text-right control-label col-form-label">Date</label>
                            <div class="col-sm-9">
                               <input type="text" name="date"  class="form-control" id="date" readonly="" />
                               <input type="hidden" name="date"  class="form-control" id="dateapp" />
                               
                            </div>
                        </div>
                     <div class="form-group header-group-0 " id="form-group-name" style="">
                        <label class="control-label col-sm-2">
                           Vendor
                           
                        </label>
                        <div class="col-sm-9">
                           <input type="text" title="Name"  class="form-control" name="vendor" id="brand"  value=" <?php if(isset($record->vendor) && $record->vendor!=""){ echo $record->vendor;  }?>">
                           <div class="text-danger"></div>
                           <p class="help-block"></p>
                        </div>
                     </div>
                     <div class="form-group header-group-0 " id="form-group-name" style="">
                        <label class="control-label col-sm-2">
                           Description
                           
                        </label>
                        <div class="col-sm-9">
                           <textarea class="form-control" name="description" id="description"><?php if(isset($record->description) && $record->description!=""){ echo $record->description;  }?></textarea>
                           <div class="text-danger"></div>
                           <p class="help-block"></p>
                        </div>
                     </div>
                     <div class="form-group header-group-0 " id="form-group-photo" style="">
                        <label class="col-sm-2 control-label">Photo
                           
                        </label>
                        <div class="col-sm-9">
                           <input type="file" id="photo" title="Photo"  class="form-control" name="image">
                           <p class="help-block">Recommended resolution is 200x200px</p>
                           <div class="text-danger"></div>
                        </div>
                     </div>
                     <div class="form-group header-group-0 " id="form-group-photo" style="">
                        <label class="col-sm-2 control-label">Invoice
                           
                        </label>
                        <div class="col-sm-9">
                           <input type="file" id="invoice" title="invoice"  class="form-control" name="invoice">
                           <div class="text-danger"></div>
                        </div>
                     </div>
                     <input type="hidden" name="id" value="<?php if(isset($record->id) && $record->id!=""){ echo $record->id;  }?>">
                  </div>
                  <!-- /.box-body -->
                  <div class="box-footer" style="background: #F5F5F5">
                     <div class="form-group">
                        <label class="control-label col-sm-2"></label>
                        <div class="col-sm-10">
                           <a href="{{url('administrator/inventories')}}" class="btn btn-default"><i class="fa fa-chevron-circle-left"></i> Back</a>
                           <?php if(isset($record->id) && $record->id!=""){ ?>
                           <button type="submit" name="submit" class="btn btn-success"> Update</button>
                           <?php }else { ?>
                           <button type="submit" name="submit" class="btn btn-success"> Submit</button>
                           <?php
                           }
                           ?>
                        </div>
                     </div>
                  </div>
                  <!-- /.box-footer-->
               </form>
            </div>
         </div>
      </div>
      <!--END AUTO MARGIN-->
   </section>
   <!-- /.content -->
</div>
<script type = "text/javascript" >
    $('.category').select2({
      placeholder: 'Select Category',

    })  
</script>
<script type = "text/javascript" >
    $('.subcategory').select2({
      placeholder: 'Select Sub Category',

    })  
</script>
<script type = "text/javascript" >
    $('.warehouse').select2({
      placeholder: 'Select warehouse',

    })  
</script>
<script type = "text/javascript" >
    $('.Basment').select2({
      placeholder: 'Select warehouse',

    })  
</script>
<script type = "text/javascript" >
    $('.Items').select2({
      placeholder: 'Select Items',

    })  
</script>
<script type = "text/javascript" >
    $('.location').select2({
      placeholder: 'Select location',

    })  
</script>

<script type="text/javascript">
   function getSubCategory($this) {
        var categoryId = $($this).val();
        $.ajax({
            url: baseUrl + "inventories/get_sub_category_by_category_id/"+categoryId,
            type: 'get',
            dataType: 'json',
            beforeSend: function() {
               
            },
            complete: function() {
               
            },
            success: function(json) {
               if(json.success){
                  $('#sub_cat').html(json.data);
               }
            },
            error: function(xhr, ajaxOptions, thrownError) {
                console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    } 
</script>
<script type="text/javascript">
   function getSubCategoryItem($this) {
        var subCatId = $($this).val();
        var categoryId = $('#category').val();
        $.ajax({
            url: baseUrl + "inventories/get_item_by_cat_sub_cat_id/"+categoryId+"/"+subCatId,
            type: 'get',
            dataType: 'json',
            beforeSend: function() {
               
            },
            complete: function() {
               
            },
            success: function(json) {
               if(json.success){
                  $('#sub_sub_cat').html(json.data);
               }
            },
            error: function(xhr, ajaxOptions, thrownError) {
                console.log(thrownError + "\r\n" + xhr.statusText + "\r\n" + xhr.responseText);
            }
        });
    } 
</script>
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