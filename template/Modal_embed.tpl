
{function hook }          {* short-hand *}
	{foreach $POSITION[ $position ] as $item}
		{$item}
	{/foreach}
{/function}

{include 'app_menuInclude.tpl'}

{* include the template *}
<!-- Main content -->

<div id="{$_idContext}_wrapper" class="box" kuink-guid="{$_idContext}" style="padding: 0px 5px;">

	<div class="box-header" style="cursor: move;">
		<!-- tools box -->
		<div class="pull-right box-tools">
			<button id="collapseWidgetButton" class="btn btn-danger btn-sm" data-widget="collapse" data-toggle="tooltip" title="" data-original-title="{translate}toggleApp{/translate}"><i class="fa fa-minus"></i></button>
		</div><!-- ./ tools -->
		<i class="fa fa-cube"></i>
		<h3 class="box-title">{$appName}</h3>
		<div style="display:inline-block;white-space: nowrap;">
			{if !empty($menuEntries)}<a href="#sidebarMenu" class="btn btn-default" id="sidebarMenu" data-toggle="tooltip" data-placement="right" title="{translate}toggleMenu{/translate}"><i class="fa fa-bars"></i></a>{/if}
			{*include 'app_dropdownMenu.tpl'*}
		</div>
	</div>
	<div id="{$_idContext}_loading_wrapper" kuink-guid="{$_idContext}" class="box-body">
		<div id="wrapper" class="toggled">
			{if !empty($menuEntries)}
				{assign var="menuIsToggled" value=false}
				{include 'app_toggleMenu.tpl'}
				{assign var="menuIsToggled" value=true}
				{include 'app_toggleMenu.tpl'}
			{/if}
			<!-- Page Content -->
			<div style="overflow: auto;overflow-x: hidden;">
				<div class="">
					<div class="row">
						<div class="col-lg-12 col-md-12 .col-sm-12 .col-xs-12">
							{if $userMessages|@count > 0}
							<div class="kuink-user-messages">
								{include 'UserMessages.tpl'}
							</div>
							{/if}
							<div id="{$_idContext}_content_wrapper" kuink-guid="{$_idContext}">
								{* include the template *}
								{assign var="appTemplateSmarty" value='app/'|cat:$appTemplate}
								{include $appTemplateSmarty}
							</div>
							<div class="box-footer">
								<div class="row">
								</div><!-- ./row -->
							</div>
							<div id="debugMessages" class="noPrint">
								{hook position='debugMessages'}
							</div>
							{hook position='trace'}
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- Menu Toggle Script -->
<script>
	if(typeof toggleMenuIsVisible === 'undefined')
		var toggleMenuIsVisible = false;

	if(typeof togglingMenu === 'undefined')
		var togglingMenu = false;

	$("#sidebarMenu").click(function(e) {
		if(window.togglingMenu == false){
			window.togglingMenu = true;
			// prevent from anchoring
			e.preventDefault();
			// toggle wrapper
			$("#wrapper").toggleClass("toggled");
			// hide/show sidebar menu
			if ($("#sidebar-wrapper").is(":visible")) {
				if($("#wrapper").hasClass("toggled") && window.toggleMenuIsVisible == true){
					$("#sidebar-wrapper").fadeOut('fast');
					$("#iconMenuToggled").fadeIn('fast');
					window.toggleMenuIsVisible = false;
				}
			} else {
				if(!$("#wrapper").hasClass("toggled") && window.toggleMenuIsVisible == false){
					$("#sidebar-wrapper").fadeIn('fast');
					$("#iconMenuToggled").fadeOut('fast');
					window.toggleMenuIsVisible = true;
				}
			}
			window.togglingMenu = false;
		}
	});

	// hide/show sidebar menu button
	$( "#collapseWidgetButton" ).click(function() {
		if($("#sidebarMenu").length) {
			if(!$("#{$_idContext}_wrapper").hasClass("collapsed-box")){
				$("#sidebarMenu").fadeOut('fast');
			}else{
				var hasMenu = document.getElementById("toggleMenuChildren");
				if(hasMenu != null)
					if(hasMenu.hasChildNodes())
						$("#sidebarMenu").fadeIn('fast');
			}
		}
	});
</script>
