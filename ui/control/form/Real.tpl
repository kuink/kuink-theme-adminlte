<input type="text" id="{$fieldGuid}" name="{$fieldName}" {$disabledAttr}
	class="form-control {$disabledClass}"
	data-bv-numeric="true" 
	data-bv-numeric-message="{translate app="framework"}realField{/translate}"
	data-bv-numeric-decimalseparator="." 
	maxlength="{$fieldAttrs['maxlength']}"
	value="{$field['value']}"
	{if $field['attributes']['required']=='true'}
		data-bv-notempty data-bv-notempty-message="{translate app="framework"}requiredField{/translate}"
	{/if}/>
