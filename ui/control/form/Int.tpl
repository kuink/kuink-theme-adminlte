<input type="number" id="{$fieldGuid}" name="{$fieldName}" {$disabledAttr}
	class="form-control {$disabledClass}"
	data-fv-integer-message="{translate app="framework"}integerField{/translate}"
	maxlength="{$fieldAttrs['maxlength']}"
	value="{$field['value']}"
	{if $field['attributes']['required']=='true'}
		data-bv-notempty data-bv-notempty-message="{translate app="framework"}requiredField{/translate}"
	{/if}/>
