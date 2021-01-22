{if $value['colAction_constructor'] != ''}
	{if $value['colAction_constructor']['modal'] == 'false'}
		<a href="javascript: gridActionField_{$_guid}(false, '', '{$value['colAction_constructor']['url']}', '');">{$value['colAction_constructor']['label']}</a>&nbsp;
	{else}
		<a href="javascript: __kuink.launchApplication('{$value['colAction_constructor']['url']}', '', '', '', '');">{$value['colAction_constructor']['label']}</a>&nbsp;
	{/if}
{else}
	{$value['value']}
{/if}
