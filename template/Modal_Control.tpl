{function hook }          {* short-hand *}
	{foreach $POSITION[ $position ] as $item}
					{$item}
	{/foreach}
{/function}
{* include the template *}
<!-- Main content -->

{if $userMessages|@count > 0}
	<div class="kuink-user-messages">
		{include 'UserMessages.tpl'}
	</div>
{/if}
	{* include the template *}
	{assign var="appTemplateSmarty" value='app/'|cat:$appTemplate}
	{include $appTemplateSmarty}
