{call hook position='left'}
{call hook position='default'}
<script>
	$("#cscmHeader").parent().parent().hide();
	$(".breadcrumb").hide();
	$(".nav").parent().remove();
	$(".span10").addClass("span12").removeClass("span10");
	$("#header").css("margin-top", "0px");
	$("body").css("padding-top","30px");
	$(".control-group").css("margin-bottom","0px");
	$(".well").removeClass("well").css("margin-top","15px").css("margin-bottom","15px");
	$("table").attr("class","table table-condensed");
	$(".label").hide();
	$("#signatures").attr("class","");
	$("hr").css("margin","0px");
	$(".table").css("margin-bottom","0px");
	$("label").css("font-size","10px").css("margin-bottom","0px");
	$(".controls").css("padding-top","5px");
	$("td").css("font-size","10px");
	$("th").css("font-size","10px");
</script>
