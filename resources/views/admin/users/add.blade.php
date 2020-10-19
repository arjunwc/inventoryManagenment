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
            &nbsp; Back To List Data Users Management</a>
         </p>
         <div class="panel panel-default">
            <div class="panel-heading">
               <strong><i class="fa fa-users"></i> <?php echo $module_page; ?></strong>
            </div>
            <div class="panel-body" style="padding:20px 0px 0px 0px">
            <?php if(isset($record->id) && $record->id!=""){ ?>
            <form class="form-horizontal ajax_form" method="post" id="form" enctype="multipart/form-data" action="{{url('administrator/users/update_record')}}" autocomplete="off">
               <?php }else{ ?>
               <form class="form-horizontal ajax_form" method="post" id="form" enctype="multipart/form-data" action="{{url('administrator/users/add')}}" autocomplete="off">
                  <?php } ?>
                  <div class="box-body" id="parent-form-area">
                     <div class="form-group header-group-0 " id="form-group-name" style="">
                        <label class="control-label col-sm-2">
                        Name
                        <span class="text-danger" title="This field is required">*</span>
                        </label>
                        <div class="col-sm-9">
                           <input type="text" title="Name"  class="form-control" name="name" id="name" value=" <?php if(isset($record->name) && $record->name!=""){ echo $record->name;  }?>">
                           <div class="text-danger"></div>
                           <p class="help-block"></p>
                        </div>
                     </div>
                     <div class="form-group header-group-0 " id="form-group-email" style="">
                        <label class="control-label col-sm-2">Email
                        <span class="text-danger" title="This field is required">*</span>
                        </label>
                        <div class="col-sm-9">
                           <div class="input-group">
                              <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
                              <input type="email" name="email" style="display: none">
                              <input type="email" title="Email"  class="form-control" name="email" id="email" value=" <?php if(isset($record->email) && $record->email!=""){ echo $record->email;  }?>">
                           </div>
                           <div class="text-danger"></div>
                           <p class="help-block"></p>
                        </div>
                     </div>
                     <div class="form-group header-group-0 " id="form-group-email" style="">
                        <label class="control-label col-sm-2">Contact
                        <span class="text-danger" title="This field is required">*</span>
                        </label>
                        <div class="col-sm-9">
                           <div class="input-group">
                              <span class="input-group-addon"><i class="fa fa-mobile"></i></span>
                              <input type="email" name="mobile_number" style="display: none">
                              <input type="text" title="Contact"  class="form-control" name="mobile_number" id="email" value=" <?php if(isset($record->mobile_number) && $record->mobile_number!=""){ echo $record->mobile_number;  }?>">
                           </div>
                           <div class="text-danger"></div>
                           <p class="help-block"></p>
                        </div>
                     </div>
                     <div class="form-group header-group-0 " id="form-group-photo" style="">
                        <label class="col-sm-2 control-label">Photo
                        <span class="text-danger" title="This field is required">*</span>
                        </label>
                        <div class="col-sm-9">
                           <input type="file" id="photo" title="Photo"  class="form-control" name="profile_image">
                           <p class="help-block">Recommended resolution is 200x200px</p>
                           <div class="text-danger"></div>
                        </div>
                     </div>
<!--                      <div class="form-group header-group-0 " id="form-group-id_cms_privileges" style="">
                        <label class="control-label col-sm-2">Privilege
                        <span class="text-danger" title="This field is required">*</span>
                        </label>
                        <div class="col-sm-9">
                           <select class="form-control select2" id="id_cms_privileges" data-value=""  name="role">
                              <option value="">** Please select a Privilege</option>
                              <option value="1">Category</option>
                           </select>
                           <div class="text-danger"></div>
                           <p class="help-block"></p>
                        </div>
                     </div> -->
                     <div class="form-group header-group-0 " id="form-group-password" style="">
                        <label class="control-label col-sm-2">Password <span class="text-danger" title="This field is required">*</span>
                        </label>
                        <div class="col-sm-9">
                           <input type="password" title="Password" id="password" class="form-control" name="password">
                           <div class="text-danger"></div>
                        </div>
                     </div>
                    <div class="form-group header-group-0 " id="form-group-password" style="">
                        <label class="control-label col-sm-2"> Confirm Password <span class="text-danger" title="This field is required">*</span>
                        </label>
                        <div class="col-sm-9">
                           <input type="password" title="Password" id="cpassword" class="form-control" name="c_password">
                           <div class="text-danger"></div>
                        </div>
                     </div>
                  </div>
                  <input type="hidden" name="id" value="<?php if(isset($record->id) && $record->id!=""){ echo $record->id;  }?>">
                  <!-- /.box-body -->
                  <div class="box-footer" style="background: #F5F5F5">
                     <div class="form-group">
                        <label class="control-label col-sm-2"></label>
                        <div class="col-sm-10">
                           <a href="{{url('administrator/users')}}" class="btn btn-default"><i class="fa fa-chevron-circle-left"></i> Back</a>
                           <button type="submit" name="submit" class="btn btn-success"> Submit</button>
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
      placeholder: 'Select Privilege',

    })  
</script>
                @endsection