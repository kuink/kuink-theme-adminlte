{$id = uniqid()}

{if $value['colAction_constructor'] != ''}

	<a id="k{$id}" href="javascript: {if $tree == 'true'}$($('#k{$id}').closest('tr')).treegrid('toggle');{/if} gridActionField_{$_guid}(false, '', '{$value['colAction_constructor']['url']}', '');">{$value['colAction_constructor']['label']}</a>&nbsp;

	{* if $value['colAction_constructor']['modal'] == 'false'}
		<a id="k{$id}" href="javascript: $($('#k{$id}').closest('tr')).treegrid('toggle'); gridActionField_{$_guid}(false, '', '{$value['colAction_constructor']['url']}', '');">{$value['colAction_constructor']['label']}</a>&nbsp;
	{else}
		<a id="k{$id}" href="javascript: $($('#k{$id}').closest('tr')).treegrid('toggle'); gridActionField_{$_guid}(false, '', '{$value['colAction_constructor']['url']}', '');">{$value['colAction_constructor']['label']}</a>&nbsp;
	{/if *}

{else}
	{$value['value']}
{/if}
