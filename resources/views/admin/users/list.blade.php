<?php
if (count($records)) {
foreach ($records as $key => $value) {
if ($value->status == "Active") {
$class = "success";
} else if ($value->status == "Inactive") {
$class = "danger";
} else {
$class = "primary";
}?>
<tr>
		<td>
	<?php if($value->profile_image!=""){ ?>
		<img src="{{ asset('users/'.$value->profile_image) }}" height="50">
	<?php } else{ echo "-";} ?>
		
	</td>
	<td><?php echo ucfirst($value->email) ;?></td>
	<td><?php echo $value->mobile_number ;?></td>
	<td><?php echo $value->mobile_number ;?></td>
	<td>
		<div class="btn-group">
			<button type="button" class="btn btn-<?php echo $class ?>"><?php echo ucfirst($value->status) ?></button>
			<button type="button" class="btn btn-<?php echo $class ?> dropdown-toggle" data-toggle="dropdown">
			<span class="caret"></span>
			<span class="sr-only">Toggle Dropdown</span>
			</button>
			<ul class="dropdown-menu" role="menu">
				<li> <a class="dropdown-item" href="javascript:" onclick="changeSatus(<?php echo $value->id ?>,'Active')">Active</a></li>
				<li> <a class="dropdown-item" href="javascript:" onclick="changeSatus(<?php echo $value->id ?>,'Inactive')">Inactive</a></li>
			</ul>
		</div>
	</td>
	<td><?php echo date("d-m-Y",strtotime($value->created_at)) ?></td>
	<td>
		<div class="button_action" style="text-align:right">
	<a class="btn btn-xs btn-info btn-edit" title="Edit Data" href="<?php echo url('administrator/users/update/'.$value->id) ?>"><i class="fa fa-pencil"></i></a>
	
	<a class="btn btn-xs btn-danger btn-delete" title="Delete" href="javascript:;" onclick="deleteRecord('<?php echo $value->id; ?>')"><i class="fa fa-trash"></i></a>
	
</div></td>>
</tr>
<?php }} else {?>
<tr>
<td colspan="10"><div class="alert alert-warning" role="alert" style="text-align: center;">
	No Records Found !!
</div>
</tr>
<?php }?>