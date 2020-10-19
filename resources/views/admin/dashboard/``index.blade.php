@extends('layouts.admin_design')
@section('content')
<?php $user_type = session('user_type')?>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<section class="content-header">
		<h1>
		<!--Now you can define $page_icon alongside $page_tite for custom forms to follow CRUDBooster theme style -->
		<i class='fa fa-th-list'></i> Dashboard &nbsp;&nbsp;
		<!--START BUTTON -->
		
		
		
		
		<!--ADD ACTIon-->
		<!-- END BUTTON -->
		</h1>
		<ol class="breadcrumb">
			<li><a href="http://192.168.40.36/Crosspoles/public/admin"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">Dashboard</li>
		</ol>
	</section>
	<!-- Main content -->
	<section id='content_section' class="content">
		
		
		<!-- Your Page Content Here -->
		<!-- Your custom  HTML goes here -->
		<div class="box hidden">
			<div class="box-body">
				<form class="form-inline" method="get">
					<div class="row">
						<div class="col-md-3">
							<select class="form-control" style="width: 100%" name="item">
								<option value="0">- Select Item -</option>
								<option  value="3">Centos Chair</option>
								<option  value="6">Employee Laptop</option>
								<option  value="10">F2 Paper</option>
								<option  value="8">F4 Letter</option>
								<option  value="4">Meeting Table</option>
								<option  value="9">Paper A1</option>
								<option  value="11">Paper A2</option>
								<option  value="12">Paper A3</option>
								<option  value="2">Paper A4</option>
								<option  value="5">Projector</option>
								<option  value="13">Projector</option>
								<option  value="14">Projector</option>
								<option  value="7">Queen Bolpoin</option>
								<option  value="1">Working Desk</option>
							</select>
						</div>
						<div class="col-md-3">
							<select class="form-control" style="width: 100%" name="warehouse">
								<option value="0">- Select Warehouse -</option>
								<option  value="1">Stevensen WS</option>
								<option  value="2">Natoma WS</option>
								<option  value="3">Franklin WS</option>
								<option  value="4">O&#039;Farrel WS</option>
								<option  value="5">Filmore WS</option>
								<option  value="6">test</option>
							</select>
						</div>
						<div class="col-md-3">
							<input type="submit" value="Filter" class="btn btn-success">
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="box">
			<div class="box-header with-border">
				<h3 class="box-title">Track Your Asset</h3>
				<div class="box-tools pull-right">
					<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
					</button>
				</div>
			</div>
			<div class="box-body">
				<form class="form-inline" method="get" action="http://192.168.40.36/Crosspoles/public/admin/laporan-riwayat-asset">
					<div class="row">
						<div class="col-md-3">
							<input type="input" name="q" class="form-control" style="width: 100%">
						</div>
						<div class="col-md-3">
							<input type="submit" value="Track" class="btn btn-success">
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<div class="box">
					<div class="box-header with-border">
						<h3 class="box-title">Stock Item in Warehouse (ASSET)</h3>
						<div class="box-tools pull-right">
							<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
							</button>
						</div>
					</div>
					<div class="box-body">
						<canvas id="chartAsset"></canvas>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="box">
					<div class="box-header with-border">
						<h3 class="box-title">Stock Item in Warehouse (STOCK)</h3>
						<div class="box-tools pull-right">
							<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
							</button>
						</div>
					</div>
					<div class="box-body">
						<canvas id="chartStock"></canvas>
					</div>
				</div>
			</div>
		</div>
		<div class="box">
			<div class="box-header with-border">
				<h3 class="box-title">Out In Item Flow</h3>
				<div class="box-tools pull-right">
					<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
					</button>
				</div>
			</div>
			<div class="box-body">
				<canvas id="outInFlow"></canvas>
			</div>
		</div>
		</section><!-- /.content -->
		</div><!-- /.content-wrapper -->
		<script src="https://www.chartjs.org/dist/2.7.1/Chart.bundle.js"></script>
<script src="https://www.chartjs.org/samples/latest/utils.js"></script>
<style>
canvas {
-moz-user-select: none;
-webkit-user-select: none;
-ms-user-select: none;
}
</style>

<!-- Inquiry -->

<script>
var labelAsset = ["Employee Laptop","Projector","Working Desk","Centos Chair","Meeting Table"];
var dataAsset= {
labels: labelAsset,
datasets: [{
label: 'Asset',
fill : false,
backgroundColor: 'rgba(3, 169, 244, 0.7)',
borderColor: 'rgba(3, 169, 244, 1)',
borderWidth: 1,
data: [2,1,0,0,0]
}]
};
var labelStock = ["Paper A2","Queen Bolpoin","F2 Paper","Paper A3","Paper A4","F4 Letter","Projector"];
var dataStock= {
labels: labelStock,
datasets: [{
label: 'Stock',
fill : false,
backgroundColor: "rgba(255, 193, 7, 0.7)",
borderColor: 'rgba(255, 193, 7, 1)',
borderWidth: 1,
data: [920,500,370,271,200,16,4]
}]
};
var labelStock = ['2018-11-01','2018-11-12','2018-11-13','2018-11-14','2018-11-15','2018-11-16','2018-11-17','2018-11-18','2018-11-19','2018-11-20','2018-11-21','2018-11-22','2018-11-23','2018-11-24','2018-11-25','2018-11-26','2018-11-27','2018-11-28',];
var datainout = {
labels: labelStock,
datasets: [{
label: 'In',
fill : false,
backgroundColor: "rgba(255, 193, 7, 0.7)",
borderColor: 'rgba(255, 193, 7, 1)',
borderWidth: 1,
data: [11,31,14,25,34,47,38,21,27,24,37,38,32,24,19,20,33,26]
},{
label: 'Out',
fill : false,
backgroundColor: 'rgba(3, 169, 244, 0.7)',
borderColor: 'rgba(3, 169, 244, 1)',
borderWidth: 1,
data: [21,27,24,37,38,32,24,19,20,33,26,11,31,14,25,34,47,38]
}]
};
window.onload = function() {

var ctx = document.getElementById("chartAsset").getContext("2d");
window.myBar = new Chart(ctx, {
type: 'bar',
data: dataAsset,
options: {
// Elements options apply to all of the options unless overridden in a dataset
// In this case, we are setting the border of each horizontal bar to be 2px wide
elements: {
rectangle: {
borderWidth: 2,
}
},
responsive: true,
legend: {
position: 'bottom',
},
tooltips: {
mode: 'index',
intersect: true
},
scales :{
yAxes : [{
ticks : {
beginAtZero : true
}
}]
}
}
});

var ctx = document.getElementById("chartStock").getContext("2d");
window.myBar = new Chart(ctx, {
type: 'bar',
data: dataStock,
options: {
// Elements options apply to all of the options unless overridden in a dataset
// In this case, we are setting the border of each horizontal bar to be 2px wide
elements: {
rectangle: {
borderWidth: 2,
}
},
responsive: true,
legend: {
position: 'bottom',
},
tooltips: {
mode: 'index',
intersect: true
},
scales :{
yAxes : [{
ticks : {
beginAtZero : true
}
}]
}
}
});

var ctx = document.getElementById("outInFlow").getContext("2d");
window.myBar = new Chart(ctx, {
type: 'line',
data: datainout,
options: {
// Elements options apply to all of the options unless overridden in a dataset
// In this case, we are setting the border of each horizontal bar to be 2px wide
elements: {
rectangle: {
borderWidth: 2,
}
},
responsive: true,
legend: {
position: 'bottom',
},
tooltips: {
mode: 'index',
intersect: true
},
scales :{
yAxes : [{
ticks : {
beginAtZero : true
}
}]
}
}
});
};
</script>
<!-- Optionally, you can add Slimscroll and FastClick plugins.
Both of these plugins are recommended to enhance the
user experience -->
		@endsection