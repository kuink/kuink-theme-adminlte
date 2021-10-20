<!DOCTYPE html>
<html lang="{$_lang}">

	<head>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">	
	{include 'Head.tpl'}

	{literal}
		<style>

			h1 {color: white; font-size: 60px; font-family: 'Montserrat'; }
			h2 {color: white; font-size: 35px; font-family: 'Montserrat'; line-height:  60px; }
			body {color: white; font-size: 35px; font-family: 'Montserrat'; }
			.cms-clock {color:#246c96; font-size: 35px; text-align:center; width:160px; font-family: 'Montserrat';}
			.cms-date {color:#246c96; font-size: 20px; text-align:center; width:160px; font-family: 'Montserrat';}
		</style>
	{/literal}


	</head>


	{function hook }          {* short-hand *}
		{foreach $POSITION[ $position ] as $item}
						{$item}
		{/foreach}
	{/function}
	{* include the template *}

		{if $userMessages|@count > 0}
			<div class="kuink-user-messages">
				{include 'UserMessages.tpl'}
			</div>
		{/if}

		{* include the template *}
		{assign var="appTemplateSmarty" value='app/'|cat:$appTemplate}
		{include $appTemplateSmarty}
		
</html>