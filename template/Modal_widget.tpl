{function hook }          {* short-hand *}
	{foreach $POSITION[ $position ] as $item}
	<div class="row-fluid" style="margin-left: 0px">
		{$item}
	</div>
	{/foreach}
{/function}

{* include the template *}
<!-- Main content -->
	
<div id="wrapper" class="toggled">
	
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
					{call hook position='debugMessages'}
				</div>
				{call hook position='trace'}
			</div>
		</div>
	</div>
</div>

