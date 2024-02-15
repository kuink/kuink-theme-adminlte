{function hook }          {* short-hand *}
	{foreach $POSITION[ $position ] as $item}
		{$item}
	{/foreach}
{/function}

{include 'app_menuInclude.tpl'}

{* include the template *}
<!-- Main content -->

<div id="{$_idContext}_wrapper" class="box" kuink-guid="{$_idContext}" style="padding: 0px 5px;">
	{if $onlyApp != 1}
	<div class="box-header with-border" style="cursor: move;">
		<!--<div class="pull-right box-tools">
			<button id="collapseWidgetButton" class="btn btn-danger btn-sm" data-widget="collapse" data-toggle="tooltip" title="" data-original-title="{translate}toggleApp{/translate}"><i class="fa fa-minus"></i></button>
		</div>-->
		{*<i class="fa fa-cube"></i>
		<h3 class="box-title">{$appName}</h3>*}
		{*<div style="display:inline-block;white-space: nowrap;">
			{if !empty($menuEntries)}<a href="#sidebarMenu" class="btn btn-default" id="sidebarMenu" data-toggle="tooltip" data-placement="right" title="{translate}toggleMenu{/translate}"><i class="fa fa-bars"></i></a>{/if}
		</div>*}
		{*<div style="display:inline-block;white-space: nowrap;">
			<a href="#sidebarMenu" class="btn btn-default sidebar-toggle" id="sidebarMenu" data-toggle="push-menu" data-placement="right" title="{translate}toggleMenu{/translate}"><i class="icon fa fa-list fa-fw " aria-hidden="true"></i></a>
		</div>*}
		<div id="float-panel">
			<button id="backToTop" class="btn float-button" title="{translate app="framework"}backToTop{/translate}"><i class="fa fa-chevron-up"></i></button>
			<a href="javascript: menuAppAction(false, '', '{$_refresh}', '');" class="btn btn-success float-button" title="{translate app="framework"}refresh{/translate}"><i class="fa fa-sync"></i></a>
			{*<button data-toggle="modal" data-target="#reportBugTool" class="btn btn-warning float-button" title="{translate app="framework"}reportBug{/translate}"><i class="fa fa-exclamation-triangle"></i></button>*}
		</div>
		{*<a href="javascript: menuAppAction(false, '', '{$_refresh}', '');" class="btn btn-success" id="refresh" title="{translate app="framework"}refresh{/translate}"><i class="fa fa-sync"></i></a>
		<button data-toggle="modal" data-target="#reportBugTool" class="btn btn-warning" id="bug" title="{translate app="framework"}reportBug{/translate}"><i class="fa fa-exclamation-triangle"></i></button>
		<a href="javascript: menuAppAction(false, '', '{$_refresh}', '');" class="btn btn-success" id="refresh" title="{translate}refresh{/translate}"><i class="fa fa-sync"></i></a>*}
		{/if}
	</div>
	
	<div class="box-body">
		<div id="{$_idContext}_loading_wrapper" kuink-guid="{$_idContext}">
			<div id="wrapper" class="toggled">
				{if $onlyApp != 1}
				{* commented to support display default items even if menu is not defined 
					needs to be organized. toggle current not needed.
				*}
				{*{if !empty($menuEntries)} *} 
					{assign var="menuIsToggled" value=false}
					{include 'app_toggleMenu.tpl'}
					{assign var="menuIsToggled" value=true}
					{include 'app_toggleMenu.tpl'}
				{*{/if}*}
				{/if}
				<!-- Page Content -->
				<div style="overflow: auto;overflow-x: hidden; padding-bottom: 40px">
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
							</div>
						</div>
				</div>
			</div>
			<div class="box-footer" style="clear:both;">
				<div class="row" id="adminPerformance">
					<div class="span12">
						{$_executionTime}
					</div>
				</div>
				<div class="row">
					<div id="debugMessages" class="noPrint">
						{call hook position='debugMessages'}
					</div>
					{if $noDebug != 1}
						<div id="kuinkTrace">
							{call hook position='trace'}
						</div>
					{/if}
				</div><!-- /.row -->
			</div>
		</div>
	</div>
</div>

<!-- Kuink Modal - Applications will be launched here...-->
<div class="modal fade" id="kuinkModal" tabindex="-1" role="dialog" aria-labelledby="kuinkModalTitle">
<div class="modal-dialog" role="document" style="width: 90%">
	<div class="modal-content">
	<div class="modal-header">
		<button type="button" class="close" data-dismiss="modal" aria-label="Close" onclick="__kuink.modalClose();"><span aria-hidden="true">&times;</span></button>
		<h4 class="modal-title" id="kuinkModalTitle">App Launcher</h4>
	</div>
	<div class="modal-body">
		<div id="kuinkModalContainer">
		//Application will be launched here
		</div>
	</div>
	<div class="modal-footer">
		<button type="button" class="btn btn-default" data-dismiss="modal" onclick="__kuink.modalClose();">Close</button>
	</div>
	</div>
</div>
</div>		

<!-- Detect when global modal is closed -->
<script>
$(document).ready(function(){
  $("#kuinkModal").on('hide.bs.modal', function(){
	//Inform kuink that this modal is closed
	console.log('Inform kuink that this modal is closed');
    __kuink.modalClose();
  });
});
</script>

<script>
{if $_focus != '' && $_focus != null }
	__kuink.setFocusToControl('{$_focus}');
{/if}
</script>		


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

<script>
	$("#backToTop").click(function() {ldelim}
		var body = $("html, body");
		body.stop().animate({ldelim}scrollTop:0{rdelim}, 500, 'swing', function() {ldelim}
			$("#backToTop").blur();
		{rdelim});
	{rdelim});
	$(window).scroll(function(){
		if ($(this).scrollTop() > 220) {
			$("#backToTop").fadeIn();
		} else {
			$("#backToTop").fadeOut();
		}
	});
</script>