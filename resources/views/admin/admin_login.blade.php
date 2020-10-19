<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Login Panel : </title>
        <meta name='generator' content='CRUDBooster'/>
        <meta name='robots' content='noindex,nofollow'/>
        <link rel="shortcut icon"
            href="{{ asset('uploads/8ef69f7c8d31db987ab6a0f438827944.png') }}">
            <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
            <!-- Bootstrap 3.3.2 -->
            <link href="{{ asset('backend/css/bootstrap.min.css') }}" rel="stylesheet">
            <link href="{{ asset('backend/css/jquery.toast.min.css') }}" rel="stylesheet">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.min.css">
            <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.2.0/sweetalert2.all.min.js"></script>
            <!-- Font Awesome Icons -->
            <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
            <!-- Theme style -->
            <link href="{{ asset('backend/css/AdminLTE.css') }}" rel="stylesheet">
            <link href="{{ asset('backend/css/main.css') }}" rel="stylesheet">
            <style type="text/css">
            .login-page, .register-page {
            background: #dddddd url('{{ asset('uploads/a65d9174082474606e3cc1de7e327c9d.png') }}');
            color: #ffffff  !important;
            background-repeat: no-repeat;
            background-position: center;
            background-size: cover;
            }
            .login-box, .register-box {
            margin: 2% auto;
            }
            .login-box-body {
            box-shadow: 0px 0px 50px rgba(0, 0, 0, 0.8);
            background: rgba(255, 255, 255, 0.9);
            color: #666666  !important;
            }
            html, body {
            overflow: hidden;
            }
            </style>
        </head>
        <body class="login-page">
            <div class="login-box">
                <div class="login-logo">
                    <a href="{{url('/administrator')}}">
                        <img title='Crosspoles'
                        src="{{ asset('uploads/79e28543f56ec26062ff3c24f622992e.png') }}"
                        style='max-width: 100%;max-height:170px'/>
                    </a>
                    </div><!-- /.login-logo -->
                    <div class="login-box-body">
                        
                        <p class='login-box-msg'>Please login to start your session</p>
                        
                        <form class="ajax_form" id="loginform" action="{{ url('administrator') }}" method="post" autocomplete="off">
                            {{csrf_field()}}
                            <div class="form-group has-feedback">
                                <input type="text"  placeholder="Email" aria-label="Username" name="email" autocomplete='off'  class="form-control">
                                <span class="glyphicon glyphicon-user form-control-feedback"></span>
                            </div>
                            <div class="form-group has-feedback">
                                <input type="password"  placeholder="Password" name="password"  class="form-control" autocomplete='off'>
                                <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                            </div>
                            <div style="margin-bottom:10px" class='row'>
                                <div class='col-xs-12'>
                                    <button type="submit" class="btn btn-primary btn-block btn-flat"><i class='fa fa-lock'></i> Sign In</button>
                                </div>
                            </div>
                            <div class='row'>
                                <div class='col-xs-12' align="center"><p style="padding:10px 0px 10px 0px">Forgot the password ? <a
                                href='javascript:'>Click here</a></p></div>
                            </div>
                        </div>
                    </form>
                    <br/>
                    <!--a href="#">I forgot my password</a-->
                    </div><!-- /.login-box-body -->
                    </div><!-- /.login-box -->
                    <!-- jQuery 2.2.3 -->
                    <script src="{{ asset('backend/js/jquery.min.js') }}"></script>
                    <script src="{{ asset('backend/js/jquery.form.js') }}"></script>
                    <script src="{{ asset('backend/js/jquery.toast.min.js') }}"></script>
                    <script src="{{ asset('backend/js/pertify.js') }}"></script>
                </body>
            </html>