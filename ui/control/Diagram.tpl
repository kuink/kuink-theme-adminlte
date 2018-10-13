
<div class="box">
	<div class="box-header">
		<i class="fa fa-sitemap">&nbsp;</i>
		<h3 class="box-title">Kuink Diagram</h3>
	</div>
	<Button type="button" onclick="javascript: {$_guid}.addShape('', 1);">+</Button>
	<svg id="{$_guid}" version="1.1" xmlns="http://www.w3.org/2000/svg" height="600px" width="1200px"><svg>
	
	<script>
		var {$_guid} = new KuinkDiagram("{$_guid}", "");
	
		//Handle keys pressed
		$(document).keydown(function(e) {
			{$_guid}.setKeyDown(e.which)
			//e.preventDefault(); // prevent the default action (scroll / move caret)
		});	
		$(document).keyup(function(e) {
			{$_guid}.setKeyUp(e.which)
			//e.preventDefault(); // prevent the default action (scroll / move caret)
		});	
	
	</script>
</div>