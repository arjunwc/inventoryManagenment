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
         <p><a title="Main Module" href="{{url('administrator/employee')}}"><i class="fa fa-chevron-circle-left "></i>
            &nbsp; Back To List Data Employee Management</a>
         </p>
         <div class="panel panel-default">
            <div class="panel-heading">
               <strong><i class="fa fa-users"></i> <?php echo $module_page; ?></strong>
            </div>
            <div class="panel-body" style="padding:20px 0px 0px 0px">
               <?php if(isset($record->id) && $record->id!=""){ ?>
               <form class="form-horizontal ajax_form" method="post" id="form" enctype="multipart/form-data" action="{{url('administrator/employee/update_record')}}" autocomplete="off">
               <?php }else{ ?>
               <form class="form-horizontal ajax_form" method="post" id="form" enctype="multipart/form-data" action="{{url('administrator/employee/add')}}" autocomplete="off">
               <?php } ?>   
                  <div class="box-body" id="parent-form-area">
                     <div class="form-group header-group-0 " id="form-group-name" style="">
                        <label class="control-label col-sm-2">
                        Name
                        <span class="text-danger" title="This field is required">*</span>
                        </label>
                        <div class="col-sm-9">
                           <input type="text" title="Name"  class="form-control" name="name" id="name"  value=" <?php if(isset($record->name) && $record->name!=""){ echo $record->name;  }?>">
                           <div class="text-danger"></div>
                           <p class="help-block"></p>
                        </div>
                     </div>
                     <div class="form-group header-group-0 " id="form-group-name" style="">
                        <label class="control-label col-sm-2">
                        Department
                        <span class="text-danger" title="This field is required">*</span>
                        </label>
                        <div class="col-sm-9">
                           <select class="select2 form-control" name="department">
                              <option value="" selected="">Please Select Primary Company</option>
                              <option value="Accounts" <?php if(isset($record->department) && $record->department=="Accounts"){ echo "selected";} ?>>Accounts</option>
                              <option value="Admin" <?php if(isset($record->department) && $record->department=="Admin"){ echo "selected";} ?>>Admin</option>
                              <option value="Digital Media & Marketing" <?php if(isset($record->department) && $record->department=="Digital Media & Marketing"){ echo "selected";} ?>>Digital Media &amp; Marketing</option>
                              <option value="Engineering & Technology" <?php if(isset($record->department) && $record->department=="Engineering & Technology"){ echo "selected";} ?>>Engineering &amp; Technology</option>
                              <option value="MarComm" <?php if(isset($record->department) && $record->department=="MarComm"){ echo "selected";} ?>>MarComm</option>
                              <option value="Marketing" <?php if(isset($record->department) && $record->department=="Marketing"){ echo "selected";} ?>>Marketing</option>
                              <option value="SEO" <?php if(isset($record->department) && $record->department=="SEO"){ echo "selected";} ?>>SEO</option>
                           </select>
                        </div>
                     </div>
                     <div class="form-group header-group-0 " id="form-group-name" style="">
                        <label class="control-label col-sm-2">
                        Employee Code
                        <span class="text-danger" title="This field is required">*</span>
                        </label>
                        <div class="col-sm-9">
                           <input type="text" title="Name"  class="form-control" name="emp_code" id="emp_code"  value=" <?php if(isset($record->emp_code) && $record->emp_code!=""){ echo $record->emp_code;  }?>">
                           <div class="text-danger"></div>
                           <p class="help-block"></p>
                        </div>
                     </div>
                     <div class="form-group header-group-0 " id="form-group-name" style="">
                        <label class="control-label col-sm-2">
                        Email
                        
                        </label>
                        <div class="col-sm-9">
                           <input type="text" title="Name"  class="form-control" name="email" id="email"  value=" <?php if(isset($record->email) && $record->email!=""){ echo $record->email;  }?>">
                           <div class="text-danger"></div>
                           <p class="help-block"></p>
                        </div>
                     </div>
                      <div class="form-group header-group-0 " id="form-group-name" style="">
                        <label class="control-label col-sm-2">
                        Contact
                        
                        </label>
                        <div class="col-sm-9">
                           <input type="text" title="Name"  class="form-control" name="contact" id="contact"  value=" <?php if(isset($record->contact) && $record->contact!=""){ echo $record->contact;  }?>">
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
                           <a href="{{url('administrator/employee')}}" class="btn btn-default"><i class="fa fa-chevron-circle-left"></i> Back</a>
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
      placeholder: 'Select Department',

    })  
</script>
                @endsection