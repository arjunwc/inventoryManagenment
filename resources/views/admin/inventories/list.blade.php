<?php

if (count($records)) {
	$i=1;
foreach ($records as $key => $value) {  
	
if ($value->status == "Active") {
$class = "success";
} else if ($value->status == "Inactive") {
$class = "danger";
} else {
$class = "primary";
}?>
<tr>
	<td><?php echo $i; ?></td>
	<td><a href="javascript:" data-id="<?php echo $value->id ?>" onclick="getItems(this)"><?php echo ucfirst($value->title) ?></a></td>
	<td><?php echo ucfirst($value->category->title) ?></td>
	<td><?php $record = get_sub_category_by_id($value->subcategory_id);  if($record){ echo $record->title;  }else{ echo "-";} ?></td>
	<td><?php echo ucfirst($value->loca->title) ?></td>
	<td><?php echo ucfirst($value->vendor) ?></td>
	<td>
	<?php if($value->image!=""){ ?>
		<img src="{{ asset('stock/'.$value->image) }}" height="50">
	<?php } else{ echo "-";} ?>
		
	</td>
		<td>
	<?php if($value->invoice!=""){ ?>
		<a href="{{ asset('stock/'.$value->invoice) }}" target="_blank">Invoice</a>
	<?php } else{ echo "-";} ?>
		
	</td>

	<td><?php echo ucfirst($value->description) ?></td>
	<td><?php if ($value->store_id != 0) {
                    $store_record = get_record_by_store_id($value->store_id);
                    echo $store_record->title;
                } else {
                    echo  '<span class="label label-success">Assigned</span>';
                } ?></td>
	<td><?php echo ucfirst($value->qr_code) ?></td>
	<td>{!! QrCode::size(100)->generate($value->qr_code); !!}</td>
	<td><?php echo ucfirst($value->warehouse->title) ?></td>
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
	
	<a class="btn btn-xs btn-success" title="Add Service" href="<?php echo url('administrator/inventories/print/'.$value->id) ?>" target="_blank"><i class="fa fa-fw fa-print"></i></a>
	<a class="btn btn-xs btn-warning" title="Add Service" href="<?php echo url('administrator/inventories/service/'.$value->id) ?>"><i class="fa fa-fw fa-plus-circle"></i></a>
	<a class="btn btn-xs btn-info btn-edit" title="Edit data" href="<?php echo url('administrator/inventories/update/'.$value->id) ?>"><i class="fa fa-pencil"></i></a>
		<a class="btn btn-xs btn-primary btn-edit" title="View data" href="<?php echo url('administrator/inventories/view/'.$value->id) ?>"><i class="fa fa-eye"></i></a>
	<a class="btn btn-xs btn-danger btn-delete" title="Delete" href="javascript:;" onclick="deleteRecord('<?php echo $value->id; ?>')"><i class="fa fa-trash"></i></a>
	
</div></td>
</tr>
<?php $i++; }} else {?>
<tr>
<td colspan="16"><div class="alert alert-warning" role="alert" style="text-align: center;">
	No Records Found !!
</div>
</tr>
<?php }?>