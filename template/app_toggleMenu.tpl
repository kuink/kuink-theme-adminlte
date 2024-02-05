<!-- Sidebar -->
{*{if $menuIsToggled == false}
	<div id="sidebar-wrapper" style="overflow: hidden; display: none;margin-right: 20px; float: left;">
		<ul style="list-style: none;" class="nav nav-pills nav-stacked">
			{foreach from=$menuEntries item=menu}
				{call createLeftMenu menu=$menu submenu=false menuType=toggle}
			{/foreach}
		</ul>
	</div>
{else}
	<div id="iconMenuToggled" style="display: block;margin-right:20px;float:left;">
		<ul style="list-style: none;" class="nav nav-pills nav-stacked" id="toggleMenuChildren">
			{foreach from=$menuEntries item=menu}
				{call createLeftMenu menu=$menu submenu=false menuType=toggled}
			{/foreach}
		</ul>
	</div>

{/if}*}
<!-- /#sidebar-wrapper -->
<script>
$(document).ready(function(){
	$("[data-tt=tooltip]").tooltip();
	{*if(typeof window.toggleMenuIsVisible !== 'undefined') {
		if(window.toggleMenuIsVisible == false){
			if($("#sidebar-wrapper").is(":visible") == true){
				$("#wrapper").toggleClass("toggled");
			}
			$("#sidebar-wrapper").fadeOut('fast');
			$("#iconMenuToggled").fadeIn('fast');
		} else {
			if($("#sidebar-wrapper").is(":visible") == false){
				$("#wrapper").toggleClass("toggled");
			}
			$("#sidebar-wrapper").fadeIn('fast');
			$("#iconMenuToggled").fadeOut('fast');
		}
	}

	var hasMenu = document.getElementById("toggleMenuChildren");
	if(hasMenu != null) {
		if(hasMenu.hasChildNodes())
			$("#sidebarMenu").fadeIn('fast');
	} else {
		if(!hasMenu.hasChildNodes())
			$("#sidebarMenu").fadeOut('fast');
	} *}
	var menuText = '<li><br></li>';
	menuText += '<li><a href="{$breadcrumbEntries[2]['href']|regex_replace:'/&.*/':''}"><i aria-hidden="true" class="fa fa-home"></i><span>{translate app="framework"}home{/translate}</span></a></li><li><br></li>';

	menuText += `
	{foreach from=$menuEntries item=menu}
        {createLeftMenuNew menu=$menu submenu=false menuType=toggle}
    {/foreach}`;
	//console.log(menuText);
	
	menuText += '<li><br></li><li><a data-toggle="modal" data-target="#reportBugTool" href="#"><i aria-hidden="true" class="fa fa-exclamation-triangle"></i><span>{translate app="framework"}reportBug{/translate}</span></a></li>';
	menuText += '<li><a href="{$breadcrumbEntries[1]['href']}"><i aria-hidden="true" class="fa fa-sign-out"></i><span>{translate app="framework"}exit{/translate}</span></a></li><li style="margin-bottom: 60px"><br></li>';
	$(".main-sidebar .sidebar-menu").html(menuText);

	if (window.innerWidth <= 767)
		$("body").removeClass("sidebar-collapse");	

	$( window ).on( "resize", function() {
		$("body").removeClass("sidebar-collapse");
		y_scroll_toggle();
	} );

	// This needs to be ensured that is always this way
	$(".sidebar-toggle").click(function(){
		y_scroll_toggle();
	});

	function y_scroll_toggle() {
		setTimeout(() => {
			if (!$('body').hasClass('sidebar-collapse'))
				$('.sidebar ').addClass('y-scroll');
			else
				$('.sidebar ').removeClass('y-scroll');
		}, 500);
	}
});
</script>
