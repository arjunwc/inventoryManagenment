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
	<td><a href="javascript:" data-id="<?php echo $value->invetnory->id ?>" onclick="getItems(this)"><?php echo ucfirst($value->invetnory->title) ?></a></td>
	<td><?php echo ucfirst($value->invetnory->category->title) ?></td>
	<td><?php $record = get_sub_category_by_id($value->invetnory->subcategory_id);  if($record){ echo $record->title;  }else{ echo "-";} ?></td>
	<td><?php echo ucfirst($value->invetnory->loca->title) ?></td>
	<td><?php echo ucfirst($value->invetnory->vendor) ?></td>
	<td>
	<?php if($value->invetnory->image!=""){ ?>
		<img src="{{ asset('stock/'.$value->invetnory->image) }}" height="50">
	<?php } else{ echo "-";} ?>
		
	</td>
		<td>
	<?php if($value->invetnory->invoice!=""){ ?>
		<a href="{{ asset('stock/'.$value->invetnory->invoice) }}" target="_blank">Invoice</a>
	<?php } else{ echo "-";} ?>
		
	</td>

	<td><?php echo ucfirst($value->invetnory->description) ?></td>
	<td><?php echo ucfirst($value->invetnory->price) ?></td>
	<td><?php echo ucfirst($value->invetnory->qr_code) ?></td>
	<td><?php echo ucfirst($value->invetnory->warehouse->title) ?></td>
	<td>
		<div class="btn-group">
			<button type="button" class="btn btn-<?php echo $class ?>"><?php echo ucfirst($value->invetnory->status) ?></button>
		</div>
			
	</td>
	<td><?php echo date("d-m-Y",strtotime($value->created_at)) ?></td>
	<td>
		<div class="button_action" style="text-align:right">

		<a class="btn btn-xs btn-primary btn-edit" title="View data" href="<?php echo url('administrator/inventories/view/'.$value->invetnory->id) ?>" target="_blank"><i class="fa fa-eye"></i></a>
	
</div></td>>
</tr>
<?php $i++; }} else {?>
<tr>
<td colspan="15"><div class="alert alert-warning" role="alert" style="text-align: center;">
	No Records Found !!
</div>
</tr>
<?php }?>