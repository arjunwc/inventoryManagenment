<!-- First you need to extend the CB layout -->
 <?php $user = session('user_type'); ?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Crosspoles: Dashboard</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name='generator' content='CRUDBooster 5.4.6'/>
    <meta name='robots' content='noindex,nofollow'/>
    <link rel="shortcut icon"
      href="{{ asset('uploads/8ef69f7c8d31db987ab6a0f438827944.png') }}">
      <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
      <!-- Bootstrap 3.4.1 -->
      <link href="{{ asset('backend/css/bootstrap.min.css') }}" rel="stylesheet">
      <!-- Font Awesome Icons -->
      <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
      <link href="{{ asset('backend/css/jquery.toast.min.css') }}" rel="stylesheet">
      <link href="{{ asset('backend/css/select2.min.css') }}" rel="stylesheet">
      <!-- Ionicons -->
      <link href="{{ asset('backend/css/ionicons.min.css') }}" rel="stylesheet" type="text/css"/>
      <!-- Theme style -->
      <link href="{{ asset('backend/css/AdminLTE.css?v=1.1') }}" rel="stylesheet">
      <link href="{{ asset('backend/css/_all-skins.min.css') }}" rel="stylesheet" type="text/css"/>
      <!-- support rtl-->
      <link href="{{ asset('backend/css/main.css') }}" rel="stylesheet">
      <!--SWEET ALERT-->
      <script src="{{ asset('backend/js/sweetalert.min.js') }}"></script>
      <link rel="stylesheet" type="text/css" href="{{ asset('backend/css/sweetalert.css') }}">
      <script src="{{ asset('backend/js/jquery.min.js') }}"></script>
      <script src="{{ asset('backend/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js') }}"></script>
      <script src="{{ asset('backend/js/select2.min.js') }}"></script>
      <script src="{{ asset('backend/js/jquery.form.js') }}"></script>
      <script src="{{ asset('backend/js/jquery.toast.min.js') }}"></script>
      <script src="{{ asset('backend/js/pertify.js') }}"></script>
          <script src="{{ asset('backend/js/popper.min.js') }}"></script>
    <script src="{{ asset('backend/js/bootstrap.min.js') }}"></script>
  `      <script type="text/javascript">
      var baseUrl = '<?php  echo  url('/administrator'); ?>/';
      </script>
      <!-- load css -->
      <style type="text/css">
      </style>
      
      <style type="text/css">
      .dropdown-menu-action {
      left: -130%;
      }
      .btn-group-action .btn-action {
      cursor: default
      }
      #box-header-module {
      box-shadow: 10px 10px 10px #dddddd;
      }
      .sub-module-tab li {
      background: #F9F9F9;
      cursor: pointer;
      }
      .sub-module-tab li.active {
      background: #ffffff;
      box-shadow: 0px -5px 10px #cccccc
      }
      .nav-tabs > li.active > a, .nav-tabs > li.active > a:focus, .nav-tabs > li.active > a:hover {
      border: none;
      }
      .nav-tabs > li > a {
      border: none;
      }
      .breadcrumb {
      margin: 0 0 0 0;
      padding: 0 0 0 0;
      }
      .form-group > label:first-child {
      display: block
      }
      </style>
    </head>
    <body class="skin-blue  ">
      <div id='app' class="wrapper">
        <!-- Header -->
        <!-- Main Header -->
        <header class="main-header">
          <!-- Logo -->
          <a href="{{url('administrator/dashboard')}}" title='Crosspoles' class="logo"><?php echo ucfirst($user['name']); ?></a>
          <!-- Header Navbar -->
          <nav class="navbar navbar-static-top" role="navigation">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
              <span class="sr-only">Toggle navigation</span>
            </a>
            <!-- Navbar Right Menu -->
            <div class="navbar-custom-menu">
              <ul class="nav navbar-nav">
                <!-- User Account Menu -->
                <li class="dropdown user user-menu">
                  <!-- Menu Toggle Button -->
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    <!-- The user image in the navbar-->
                    <img src="{{ asset('users/'.$user['profile_image']) }}" class="user-image" alt="User Image"/>
                    <!-- hidden-xs hides the username on small devices so only the image appears. -->
                   
                    <span class="hidden-xs"><?php echo ucfirst($user['name']); ?></span>
                  </a>
                  <ul class="dropdown-menu">
                    <!-- The user image in the menu -->
                    <li class="user-header">
                      <img src="{{ asset('users/'.$user['profile_image']) }}" class="img-circle" alt="User Image"/>
                      <p>
                        
                        <small><?php echo $user['email']; ?></small>
                        <small><em><?php echo date("d-m-Y",strtotime($user['created_at'])); ?></em></small>
                      </p>
                    </li>
                    <!-- Menu Footer-->
                    <li class="user-footer">
                      <div class="pull-left">
                        <a href="{{ url('administrator/users/profile') }}" class="btn btn-default btn-flat"><i
                        class='fa fa-user'></i> Profile</a>
                      </div>
                      <div class="pull-right">
                        <a href="javascript:void(0)" onclick="swal({
                          title: 'Do you want to logout ?',
                          type:'info',
                          showCancelButton:true,
                          allowOutsideClick:true,
                          confirmButtonColor: '#DD6B55',
                          confirmButtonText: 'Logout',
                          cancelButtonText: 'Cancel',
                          closeOnConfirm: false
                          }, function(){
                          //alert('');
                          location.href = '<?php echo  url('administrator/logout')?>'
                        });" title="Logout" class="btn btn-danger btn-flat"><i class='fa fa-power-off'></i></a>
                      </div>
                    </li>
                  </ul>
                </li>
              </ul>
            </div>
          </nav>
        </header>
        <script type="text/javascript">
        
        </script>
        @include('layouts.admin_sidebar')