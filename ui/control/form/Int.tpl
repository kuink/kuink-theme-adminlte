<input type="text" id="{$fieldGuid}" name="{$fieldName}" {$disabledAttr}
	class="form-control {$disabledClass}"
	data-bv-integer="true" 
	data-bv-integer-message="{translate app="framework"}integerField{/translate}"
	maxlength="{$fieldAttrs['maxlength']}"
	value="{$field['value']}"
	{if $field['attributes']['required']=='true'}
		data-bv-notempty data-bv-notempty-message="{translate app="framework"}requiredField{/translate}"
	{/if}/>
