{*

Returns the position hook html
$position = Position of controls

*}
{function hook }          {* short-hand *}
	{foreach $POSITION[ $position ] as $item}
	<div class="row-fluid" style="margin-left: 0px">
		{$item}
	</div>
	{/foreach}
{/function}

{* necessary to display user photos at the navbar *}
{if ($_imageUrl == '')}
	{$imageSrc = 'stream.php?type=photo&guid='}
{else}
	{$imageSrc = $_photoUrl}
{/if}


{foreach from=$_userCompanies item=COMPANY}
	{if $_userCompany == $COMPANY.id}
		{$_userCompanyData = $COMPANY}							
	{/if}
{/foreach}


<!DOCTYPE html>
<html lang="{$_lang}">

	<head>
		{include 'Head.tpl'}
	</head>

	<body class="{if $_environment == 'dev'}skin-yellow{else}skin-blue{*-light*}{/if} sidebar-mini wysihtml5-supported sidebar-collapse">

		<div class="wrapper row-offcanvas row-offcanvas-left">
			<header class="main-header" style="height: 0">
				<!-- Logo -->
				<a href="{$breadcrumbEntries[2]['href']}" class="logo">{*
					<!-- mini logo for sidebar mini 50x50 pixels -->
					<span class="logo-mini">{$_userCompanyData.code[0]}</span>
					<!-- logo for regular state and mobile devices -->
					<span class="logo-lg">{$_userCompanyData.code}</span>*}
				</a>

				{* include the top navbar*}
				{include 'Master_top-navbar.tpl'}

			</header>

			{* include left sidebar *}
			{include 'Master_left-navbar.tpl'}

			<!-- Right side column. Contains the navbar and content of the page -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
					<section class="content-header">
						<h1>{*<i class="fa fa-cube" style="font-size: 85%"></i>*}
						{$appName}
						{*	{$breadcrumbEntries[4]['label']}
							<small>{$breadcrumbEntries[3]['label']}</small> *}
						</h1>
						{* <ol class="breadcrumb">
							{foreach from=$breadcrumbEntries item=breadcrumb}
								<li><a href="{if $breadcrumb['href']==''}javascript: void(0);{else}{$breadcrumb['href']}{/if}">{$breadcrumb['label']}</a></li>
							{/foreach}
						</ol> *}
					</section>

				<!-- Main content -->
				{if $widgetContainer==true}
						{assign var="appTemplateSmarty" value='app/'|cat:$appTemplate}
						{include $appTemplateSmarty}
				{else}
					{include 'Modal_embed.tpl'}
				{/if}
				{*include 'Modal_embed.tpl'*}

				<footer>
					{* <div class="pull-right">
						<div style="text-align: right">
							<!-- replace with footer html5 tag -->
							<span class="version label label-primary" style="white-space: pre-wrap;">{translate app="framework"}applicationsVersion{/translate} | {$_appsVersion}</span>&nbsp;&nbsp;&nbsp;<span class="version label label-primary" style="white-space: pre-wrap;">{translate app="framework"}frameworkVersion{/translate} | {$_frameworkVersion}</span>&nbsp;&nbsp;
						</div>
					</div> *}
				</footer>
			</div><!-- ./right-side -->
		</div><!-- ./wrapper -->


		<!-- Modal REPORT BUG -->
		<div id="reportBugTool" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content" style="border-radius: 6px;">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
						<h4 class="modal-title">{translate app="framework"}reportBug{/translate}</h4>
					</div>
					<div class="modal-body">
						<form id="reportBug" class="form-group">
							<label for="handler" class="form-label">{translate app="framework"}handler{/translate}</label>
							<select id="handler" name="handler" class="form-control"></select>
							<br>
							<label for="message" class="form-label">{translate app="framework"}describeProblem{/translate}</label>
							<textarea class="form-control" id="message" name="message" placeholder="{translate app="framework"}enterMessage{/translate}" oninvalid="this.setCustomValidity('{translate app=framework}emptyMessage{/translate}')" rows="6" required style="resize:none"></textarea>
							<small id="successSendingMessage" class="text-success" style="display: none">{translate app="framework"}requestSuccess{/translate}</small>    
							<small id="errorSendingMessage" class="text-danger" style="display: none">{translate app="framework"}requestError{/translate}</small>    
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">{translate app="framework"}close{/translate}</button>
						<button type="submit" form="reportBug" class="btn btn-primary">{translate app="framework"}send{/translate}</button>
					</div>
				</div>
			</div>
		</div>
		<script>
		    $(document).ready(function () {
				var metadata = $.ajax({
					dataType: "json",
					url: 'api.php?idcontext={$_idContext}&neonfunction=framework,ticket,api,getHandlers',
					data: {},
					success: function(data){
						$.each(data, function(index, item) {
							$('#handler').append($('<option>', {
								value: item.code,
								html: item.description
							}));
						});
					},
					error: function(XMLHttpRequest) {
						console.log("ERROR getting handlers");
					}
				});


				$(document).on("submit", "#reportBug", function(e){
					e.preventDefault();
					$('#reportBugTool button[type="submit"]').prop('disabled', true);
					$.ajax({
						dataType: "json",
						url: 'api.php?idcontext={$_idContext}&neonfunction=framework,ticket,api,add',
						data: {
							'handler_code': $('#reportBug #handler').val(),
							'message': $('#reportBug #message').val(),
							'url': window.location.href
						},
						success: function(data){
							$('#reportBugTool #successSendingMessage').show();
							setTimeout(function(){	$('#reportBugTool').modal("hide");	}, 1000);
						},
						error: function(XMLHttpRequest) {
							$('#reportBugTool button[type="submit"]').prop('disabled', false);
							$('#reportBugTool #errorSendingMessage').show();
						}
					});
				});

				$("#reportBugTool").on('hidden.bs.modal', function(){
					$('#reportBugTool button[type="submit"]').prop('disabled', false);
					$('#reportBug').get(0).reset();
					$('#reportBugTool #errorSendingMessage').hide();
					$('#reportBugTool #successSendingMessage').hide();
				});
				//$("body").addClass("fixed");
			});

			
		</script>
		<!-- /Modal REPORT BUG -->

	</body>

</html>
