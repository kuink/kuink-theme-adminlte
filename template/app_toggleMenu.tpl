<!-- Sidebar -->
{if $menuIsToggled == false}
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

{/if}
<!-- /#sidebar-wrapper -->
<script>
$(document).ready(function(){
	$("[data-tt=tooltip]").tooltip();
	if(typeof window.toggleMenuIsVisible !== 'undefined') {
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
	}
	var menuText = `
	{foreach from=$menuEntries item=menu}
        {createLeftMenuNew menu=$menu submenu=false menuType=toggle}
    {/foreach}`;
    
	$(".main-sidebar .sidebar-menu").html(menuText);
});
</script>
