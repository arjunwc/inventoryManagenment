<?php

if (count($records)) {
	$i=1;
foreach ($records as $key => $value) { 
if ($value->status == 1) {
$class = "label bg-green";
$text="Is Using";
} else if ($value->status == 0) {
$class = "label bg-blue";
$text="Returned";
} else {
$class = "primary";
}?>
<tr>
	<td><?php echo $i; ?></td>
	<td><?php echo ucfirst($value->employee->name) ?></td>
	<td><?php echo ucfirst($value->employee->emp_code) ?></td>
	<td><?php echo ucfirst($value->employee->department) ?></td>
	<td><?php echo ucfirst($value->location_status) ?></td>
	<td><?php if($value->assign_reasons_id!=0){ $assign_reson = get_assign_reason_by_id($value->assign_reasons_id); echo ucfirst($assign_reson->title);} else{echo "Returned";} ?></td>
	<td>
		<span class="<?php echo $class; ?>"><?php echo $text; ?></span>
	</td>
	<td><?php echo date("d-m-Y",strtotime($value->created_at)) ?></td>

</tr>
<?php $i++; }} else {?>
<tr>
<td colspan="10"><div class="alert alert-warning" role="alert" style="text-align: center;">
	No Records Found !!
</div>
</tr>
<?php }?>