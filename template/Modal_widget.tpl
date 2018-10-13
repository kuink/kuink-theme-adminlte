{function hook }          {* short-hand *}
	{foreach $POSITION[ $position ] as $item}
		{$item}
	{/foreach}
{/function}

{include 'app_menuInclude.tpl'}

{* include the template *}
<!-- Main content -->

	{* include the template *}
	{assign var="appTemplateSmarty" value='app/'|cat:$appTemplate}
	{include $appTemplateSmarty}

{* include the template 
<!-- Main content -->
<div id="wrapper" class="toggled">
	{if !empty($menuEntries)}
		{assign var="menuIsToggled" value=false}
		{include 'app_toggleMenu.tpl'}
		{assign var="menuIsToggled" value=true}
		{include 'app_toggleMenu.tpl'}
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
					<div id="{$_idContext}_content_wrapper" kuink-guid="{$_idContext}">

						{assign var="appTemplateSmarty" value='app/'|cat:$appTemplate}
						{include $appTemplateSmarty}
					</div>
				</div>
			</div>
	</div>
</div>
<div class="box-footer" style="clear:both;">
	<div class="row">
		<div id="debugMessages" class="noPrint">
			{call hook position='debugMessages'}
		</div>
		<div id="kuinkTrace">
			{call hook position='trace'}
		</div>
	</div><!-- /.row -->
</div>
*}

