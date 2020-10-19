<!-- Footer -->
<footer class="main-footer">
	<!-- To the right -->
	<div class="pull-right hidden-xs">
		Powered by Crosspoles
	</div>
	<!-- Default to the left -->
	<strong>Copyright &copy; 2020. All Rights Reserved .</strong>
</footer>
</div><!-- ./wrapper -->


<!-- DataTable -->

<script>
//$(function() {
// $("table").DataTable({
// pageLength: 4,
// lengthChange: false,
// });
// });
</script>
<script>
$(document).ready(function() {
$("#menuToggle").click(function() {
$("body").toggleClass("open");
});
});
</script>
<script>
	$(function() {
	$('[data-toggle="tooltip"]').tooltip();
	});
	</script>
	<script>
	jQuery(document).ready(function($) {
	var alterClass = function() {
	var ww = document.body.clientWidth;
	if (ww < 768) {
	$("body").addClass("open");
	} else if (ww >= 769) {
	$("body").removeClass("open");
	}
	};
	$(window).resize(function() {
	alterClass();
	});
	//Fire it when the page first loads:
	alterClass();
	});
</script>


<!-- load js -->

<script type="text/javascript">
$(".treeview").click(function(){
	$(this).find('.treeview-menu').slideToggle();
	
});
</script>

</body>
</html>