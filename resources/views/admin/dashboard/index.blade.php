@extends('layouts.admin_design')
@section('content')
<?php $user_type = session('user_type')?>
<div class="content-wrapper" style="min-height: 926px;">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
		Dashboard
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">Dashboard</li>
		</ol>
	</section>
	<!-- Main content -->
	<section class="content" style="min-height: 135px;">
		<!-- Info boxes -->
		<div class="row">
			<div class="col-md-3 col-sm-6 col-xs-12">
				<a href="{{url('administrator/employee')}}">
					<div class="info-box">
						<span class="info-box-icon bg-aqua"><i class="fa fa-users"></i></span>
						<div class="info-box-content">
							<span class="info-box-text">Employees</span>
							<span class="info-box-number"><?php echo $emp_count ?></span>
						</div>
						<!-- /.info-box-content -->
					</div></a>
					<!-- /.info-box -->
				</div>
				<!-- /.col -->
				<div class="col-md-3 col-sm-6 col-xs-12">
					<a href="{{url('administrator/inventories')}}">
						<div class="info-box">
							<span class="info-box-icon bg-red"><i class="fa fa-fw fa-mail-reply"></i></span>
							<div class="info-box-content">
								<span class="info-box-text">Stock</span>
								<span class="info-box-number"><?php echo $inventories_count ?></span>
							</div>
							<!-- /.info-box-content -->
						</div>
					</a>
					<!-- /.info-box -->
				</div>
				<!-- /.col -->
				<!-- fix for small devices only -->
				<div class="clearfix visible-sm-block"></div>
				<div class="col-md-3 col-sm-6 col-xs-12">
					<a href="{{url('administrator/category')}}">
						<div class="info-box">
							<span class="info-box-icon bg-green"><i class="fa fa-fw fa-arrows"></i></span>
							<div class="info-box-content">
								<span class="info-box-text">Category</span>
								<span class="info-box-number"><?php echo $category_count ?></span>
							</div>
							<!-- /.info-box-content -->
						</div>
					</a>
					<!-- /.info-box -->
				</div>
				<!-- /.col -->
				<div class="col-md-3 col-sm-6 col-xs-12">
					<a href="{{url('administrator/sub-category')}}">
						<div class="info-box">
							<span class="info-box-icon bg-yellow"><i class="fa fa-users"></i></span>
							<div class="info-box-content">
								<span class="info-box-text">Sub Category</span>
								<span class="info-box-number"><?php echo $sub_category_count ?></span>
							</div>
							<!-- /.info-box-content -->
						</div>
					</a>
					<!-- /.info-box -->
				</div>
				<!-- /.col -->
			</div>
		</section>
		<div class="row" style="margin:0">
			<div class="col-sm-8">
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
			</div>
			<div class="col-md-4">
				<!-- Info Boxes Style 2 -->
				<a href="#">
					<div class="info-box bg-yellow">
						<span class="info-box-icon"><i class="fa fa-fw fa-mail-forward"></i></span>
						<div class="info-box-content">
							<span class="info-box-text">Inventory in house</span>
							<span class="info-box-number"><?php echo $inventories_in_count; ?></span>

						</div>
						<!-- /.info-box-content -->
					</div>
				</a>
				<!-- /.info-box -->
				<a href="#">
					<div class="info-box bg-aqua">
						<span class="info-box-icon"><i class="fa fa-fw fa-mail-reply"></i></span>
						<div class="info-box-content">
							<span class="info-box-text">Inventory out of house</span>
							<span class="info-box-number"><?php echo $inventories_out_count; ?></span>

						</div>
						<!-- /.info-box-content -->
					</div>
				</a>
				<!-- /.box -->
			</div>
		</div>
		<!-- /.content -->
		<div class="row" style="margin:0">
			<div class="col-xs-12">
				<div class="box box-info">
					<div class="box-header with-border">
						<h3 class="box-title">Latest Inventories</h3>
						<div class="box-tools pull-right">
							<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
							</button>
							<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
						</div>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<div class="table-responsive">
							<table class="table no-margin">
								<thead>
									<tr>
										<th width="auto">Title</th>
										<th width="auto">Category</th>
										<th width="auto">Sub Category</th>
										<th width="auto">Vendor</th>
										<th width="auto">Image</th>
										<th width="auto">Price</th>
										<th width="auto">QrCode</th>
										<th width="auto">Ware house</th>
									</tr>
								</thead>
								<tbody>
									<?php foreach ($inventories as $value) { ?>
										<tr>
									<td><?php echo ucfirst($value->title) ?></td>
									<td><?php echo ucfirst($value->category->title) ?></td>
									<td><?php $record = get_sub_category_by_id($value->subcategory_id);if ($record) {echo $record->title;} else {echo "-";}?></td>
									<td><?php echo ucfirst($value->vendor) ?></td>
									<td>
										<?php if ($value->image != "") {?>
										<img src="{{ asset('stock/'.$value->image) }}" height="50">
										<?php } else {echo "-";}?>
									</td>
									<td><?php echo ucfirst($value->price) ?></td>
									<td><?php echo ucfirst($value->qr_code) ?></td>
									<td><?php echo ucfirst($value->warehouse->title) ?></td>
								</tr>
									<?php }?>
								</tbody>
							</table>
						</div>
						<!-- /.table-responsive -->
					</div>
					<!-- /.box-body -->
					<div class="box-footer clearfix">
						<a href="{{url('administrator/inventories')}}" class="btn btn-sm btn-default btn-flat pull-right">View All Inventories</a>
					</div>
					<!-- /.box-footer -->
				</div>
			</div>
		</div>
	</div>

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



window.onload = function() {
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
@endsection