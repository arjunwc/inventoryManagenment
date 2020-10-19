@extends('layouts.admin_design')
@section('content')
<div class="content-wrapper" style="min-height: 1136px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        User Profile
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
              <li class="active">User profile</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">

      <div class="row">
        <div class="col-md-3">

          <!-- Profile Image -->
          <div class="box box-primary">
            <div class="box-body box-profile">
              <img class="profile-user-img img-responsive img-circle" src="{{ asset('users/'.$user->profile_image) }}" alt="User profile picture">

              <h3 class="profile-username text-center"><?php echo $user->name ?></h3>

              <p class="text-muted text-center"><?php echo $user->email ?></p>

              <ul class="list-group list-group-unbordered">
                <li class="list-group-item">
                  <b>Employee</b> <a class="pull-right"><?php  echo $employee_count;  ?></a>
                </li>
                <li class="list-group-item">
                  <b>Stock</b> <a class="pull-right"><?php echo $inventories_count;  ?></a>
                </li>
                <li class="list-group-item">
                  <b>Category</b> <a class="pull-right"><?php echo $employee_count;  ?></a>
                </li>
              </ul>
            </div>
            <!-- /.box-body -->
          </div>
        </div>
        <!-- /.col -->
        <div class="col-md-9">
          <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
  
              <li class="active"><a href="#settings" data-toggle="tab" aria-expanded="true">Settings</a></li>
            </ul>
            <div class="tab-content">


              <div class="tab-pane active" id="settings">
               <form class="form-horizontal ajax_form" method="post" id="form" enctype="multipart/form-data" action="{{url('administrator/profile/setting')}}" autocomplete="off">
                 
                  <div class="box-body" id="parent-form-area">
                     <div class="form-group header-group-0 " id="form-group-name" style="">
                        <label class="control-label col-sm-2">
                        Name
                        <span class="text-danger" title="This field is required">*</span>
                        </label>
                        <div class="col-sm-9">
                           <input type="text" title="Name"  class="form-control" name="name" id="name" value=" <?php if(isset($user->name) && $user->name!=""){ echo $user->name;  }?>">
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
                              <input type="email" title="Email"  class="form-control" name="email" id="email" value=" <?php if(isset($user->email) && $user->email!=""){ echo $user->email;  }?>">
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
                              <input type="text" title="Contact"  class="form-control" name="mobile_number" id="email" value=" <?php if(isset($user->mobile_number) && $user->mobile_number!=""){ echo $user->mobile_number;  }?>">
                           </div>
                           <div class="text-danger"></div>
                           <p class="help-block"></p>
                        </div>
                     </div>
                     <div class="form-group header-group-0 " id="form-group-photo" style="">
                        <label class="col-sm-2 control-label">Photo
                        
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
                        <label class="control-label col-sm-2">  Password 
                        </label>
                        <div class="col-sm-9">
                           <input type="password" title="Password" id="password" class="form-control" name="npassword">
                           <div class="text-danger"></div>
                        </div>
                     </div>
                    <div class="form-group header-group-0 " id="form-group-password" style="">
                        <label class="control-label col-sm-2"> Confirm Password 
                        </label>
                        <div class="col-sm-9">
                           <input type="password" title="Password" id="cpassword" class="form-control" name="c_password">
                           <div class="text-danger"></div>
                        </div>
                     </div>
                  </div>
                  <input type="hidden" name="id" value="<?php if(isset($user->id) && $user->id!=""){ echo $user->id;  }?>">
                  <!-- /.box-body -->
                  
                     <div class="form-group">
                        <label class="control-label col-sm-2"></label>
                        <div class="col-sm-10">
                           
                           <button type="submit" name="submit" class="btn btn-success"> Submit</button>
                        </div>
                     </div>
                  
                  <!-- /.box-footer-->
               </form>
              </div>
              <!-- /.tab-pane -->
            </div>
            <!-- /.tab-content -->
          </div>
          <!-- /.nav-tabs-custom -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->

    </section>
    <!-- /.content -->
  </div>
@endsection
