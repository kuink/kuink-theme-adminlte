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

	<body class="{if $_environment == 'dev'}skin-yellow{else}skin-blue-light{/if} sidebar-mini wysihtml5-supported sidebar-collapse">

		<div class="wrapper row-offcanvas row-offcanvas-left">
			<header class="main-header">
				<!-- Logo -->
				<a href="{$breadcrumbEntries[2]['href']}" class="logo">
					<!-- mini logo for sidebar mini 50x50 pixels -->
					<span class="logo-mini">{$_userCompanyData.code[0]}</span>
					<!-- logo for regular state and mobile devices -->
					<span class="logo-lg">{$_userCompanyData.code}</span>
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
						<h1>
							{$breadcrumbEntries[4]['label']}
							<small>{$breadcrumbEntries[3]['label']}</small>
						</h1>
						<ol class="breadcrumb">
							{foreach from=$breadcrumbEntries item=breadcrumb}
								<li><a href="{if $breadcrumb['href']==''}javascript: void(0);{else}{$breadcrumb['href']}{/if}">{$breadcrumb['label']}</a></li>
							{/foreach}
						</ol>
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
					<div class="pull-right">
						<div style="text-align: right">
							<!-- replace with footer html5 tag -->
							<span class="version label label-primary" style="white-space: pre-wrap;">{translate app="framework"}applicationsVersion{/translate} | {$_appsVersion}</span>&nbsp;&nbsp;&nbsp;<span class="version label label-primary" style="white-space: pre-wrap;">{translate app="framework"}frameworkVersion{/translate} | {$_frameworkVersion}</span>&nbsp;&nbsp;
						</div>
					</div>
				</footer>
			</div><!-- ./right-side -->
		</div><!-- ./wrapper -->
	</body>

</html>
