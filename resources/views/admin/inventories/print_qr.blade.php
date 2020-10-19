<br>
{!! QrCode::size(60)->generate($qr_code); !!}
<br>
<span style="font-size: 12px">{{$qr_code}}</span>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
window.print();  
});
</script>