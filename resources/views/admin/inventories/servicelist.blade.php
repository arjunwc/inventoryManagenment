<?php

if (count($records)) {
	$i=1;
foreach ($records as $key => $value) {  ?>
	<tr>
		<td>{{$i}}</td>
		<td>{{ $value->title}}</td>
		<td>	<?php if($value->invoice!=""){ ?>
		<a href="{{ asset('stock/'.$value->invoice) }}" target="_blank">Invoice</a>
	<?php } else{ echo "-";} ?></td>
		<td>{{ $value->description}}</td>
		<td>{{ date("d-m-Y",strtotime($value->date)) }}</td>
	</tr>

<?php $i++; }} else {?>
<tr>
<td colspan="10"><div class="alert alert-warning" role="alert" style="text-align: center;">
	No Records Found !!
</div>
</tr>
<?php }?>