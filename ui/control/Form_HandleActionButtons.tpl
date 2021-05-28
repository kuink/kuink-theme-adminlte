{*

Handle all thing about form action buttons.

*}

{include './_aux/html.fields.tpl'}

{* Define things *}

{assign var=buttonAttrs value=$button['attributes']}
{assign var=buttonType value=$buttonAttrs['type']}
{assign var=group value=$buttonAttrs['group']}


{$buttonActionUrl = "{$form['baseUrl']}"}
{if $buttonAttrs['action'] != ''}
	{$buttonActionUrl = "{$form['baseUrl']}&action={$buttonAttrs['action']}"}
{/if}
{if $buttonAttrs['event'] != ''}
	{$buttonActionUrl = "{$form['baseUrl']}&event={$buttonAttrs['event']}"}
{/if}

<script>
	$(document).ready(function() {
		//Handle confirm message
		var confirmMessage = '';
		{$buttonAttrs['confirm'] = $buttonAttrs['confirm']|replace:'"':"'"}
		{if $buttonAttrs['confirm'] != 'false' && $buttonAttrs['confirm'] != ''}			
			{assign var="keywords" value="\n"|explode:$buttonAttrs['confirm']}
			{$firstChunk = 1}
			{foreach from=$keywords item=keyword}
				{if $firstChunk == 1}
					confirmMessage = "{$keyword}";
					{$firstChunk = 0}
				{else}
					confirmMessage = confirmMessage + "\n{$keyword}";
				{/if}
			{/foreach}		
		{else}
				confirmMessage = "{$buttonAttrs['confirm']}";
		{/if}
		
		if (confirmMessage!='' && confirmMessage!='false')
			__kuink.controlAddKey('{$_idContext}','{$_guid}', '{$buttonAttrs['id']}', 'confirm', confirmMessage);
		
		
		$("#{$_guid} #{$buttonAttrs['id']}").attr("onclick", function() {
			return "javascript: result = setFormAction_{$_guid}('{$buttonActionUrl}', '', '{$buttonType}', '{$buttonAttrs['id']}', false);";
		});
	});
</script>

{call name="addButton" buttonType=$buttonType buttonAttrs=$buttonAttrs}

