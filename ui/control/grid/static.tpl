{if $value['colAction_constructor'] != ''}
  <a href="javascript: gridActionField_{$_guid}(false, '', '{$value['colAction_constructor']['url']}', '');">{$value['colAction_constructor']['label']}</a>&nbsp;
{else}
  {$value['value']}
{/if}
