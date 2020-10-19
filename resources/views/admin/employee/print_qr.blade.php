<div>
{!! QrCode::size(130)->generate($qr_code); !!}
<br>
<span><b>{{$qr_code}}</b></span>
<br>
<span><?php echo $employee->name.'('.$employee->emp_code.')' ?></span>
<br>
<span>{{$employee->department}}</span>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
window.print();  
});
</script>