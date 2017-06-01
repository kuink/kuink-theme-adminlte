{function hook }          {* short-hand *}
	{foreach $POSITION[ $position ] as $item}
		{$item}
	{/foreach}
{/function}

{include 'app_menuInclude.tpl'}

{* include the template *}
<!-- Main content -->
<div id="wrapper" class="toggled">
	{if !empty($menuEntries)}
		{assign var="menuIsToggled" value=false}
		{include 'app_toggleMenu.tpl'}
		{assign var="menuIsToggled" value=true}
		{include 'app_toggleMenu.tpl'}
	{else}
		<script>$("#sidebarMenu").toggle();</script>
	{/if}
	<!-- Page Content -->
	<div style="overflow: auto;overflow-x: hidden;">
		<div class="row">
			<div class="col-lg-12 col-md-12 .col-sm-12 .col-xs-12">
				{if $userMessages|@count > 0}
					<div class="kuink-user-messages">
						{include 'UserMessages.tpl'}
					</div>
				{/if}
				{* include the template *}
				{assign var="appTemplateSmarty" value='app/'|cat:$appTemplate}
				{include $appTemplateSmarty}
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
