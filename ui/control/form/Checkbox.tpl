<div class="checkbox">

	{$value = 0}
	{if $field['value'] != ''}
		{$value = $field['value']}
	{/if}
	<label>
		{* to post the checkbox even unchecked*}
		<input type="hidden" name="{$fieldID}" value="0">
		<input type="checkbox" 
			{$disabledAttr} 
			class="{$disabledClass}"	
			id="{$fieldGuid}" 
			name="{$fieldName}" 
			value="1" 
			{if $field['value'] == '1'}checked{/if} 
			{if $field['attributes']['label-url'] != ''}onclick="javascript: if($('#{$fieldGuid}').prop('checked') == true) window.open('{$field['attributes']['label-url']}', '_blank');"{/if}>
	</label>
</div>
