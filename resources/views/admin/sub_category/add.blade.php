@extends('layouts.admin_design')
@section('content')

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
            &nbsp; Back To List Data Category Management</a>
         </p>
         <div class="panel panel-default">
            <div class="panel-heading">
               <strong><i class="fa fa-users"></i> <?php echo $module_page; ?></strong>
            </div>
            <div class="panel-body" style="padding:20px 0px 0px 0px">
               <?php if(isset($record->id) && $record->id!=""){ ?>
               <form class="form-horizontal ajax_form" method="post" id="form" enctype="multipart/form-data" action="{{url('administrator/sub-category/update_record')}}" autocomplete="off">
               <?php }else{ ?>
               <form class="form-horizontal ajax_form" method="post" id="form" enctype="multipart/form-data" action="{{url('administrator/sub-category/add')}}" autocomplete="off">
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
                        <select class="form-control select2" id="id_cms_privileges" data-value=""  name="category_id">
                              <option value="">** Please select </option>
                            <?php foreach($category_record as $value){ ?>
                                 <option value="{{$value->id}}" <?php if(isset($record->category_id) && $record->category_id!="" && $record->category_id == $value->id ){ echo "selected";  }?>>{{$value->title}}</option>
                            <?php } ?>
                           </select>
                           <div class="text-danger"></div>
                           <p class="help-block"></p>
                        </div>
                     </div>
                     <input type="hidden" name="id" value="<?php if(isset($record->id) && $record->id!=""){ echo $record->id;  }?>">
                  </div>
                  <!-- /.box-body -->
                  <div class="box-footer" style="background: #F5F5F5">
                     <div class="form-group">
                        <label class="control-label col-sm-2"></label>
                        <div class="col-sm-10">
                           <a href="{{url('administrator/sub-category')}}" class="btn btn-default"><i class="fa fa-chevron-circle-left"></i> Back</a>
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
    $('.select2').select2({
      placeholder: 'Select Category',

    })  
</script>
                @endsection