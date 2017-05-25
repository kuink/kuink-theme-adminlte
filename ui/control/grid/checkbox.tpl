{$_value = 0}
{if $value['value'] != ''}
       {$_value = $value['value']}
{/if} 

<input type="hidden" name="{$id}{$multiSeparator}{$fieldAttrs['name']}" value="0" />
<input type="checkbox" class="input-medium grid-class-{$fieldAttrs['name']} {$disabledClass}" {$disabledAttr} id="{$id}{$multiSeparator}{$fieldAttrs['name']}" name="{$id}{$multiSeparator}{$fieldAttrs['name']}" value="1" {if $_value == 1}checked{/if} onclick='{$onChange}' />
