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

			{* If there's a url to popup in the label  *}
			{if $field['attributes']['label-url'] != ''}onclick="javascript: if($('#{$fieldGuid}').prop('checked') == true) window.open('{$field['attributes']['label-url']}', '_blank');"{/if}

			{* If there's an action defined *}
			{if $fieldAttrs['action'] != ''}onclick="javascript: submit_{$_guid}_field('{$fieldID}', '{$fieldAttrs['action']}');"{/if}

		>


	</label>
</div>
