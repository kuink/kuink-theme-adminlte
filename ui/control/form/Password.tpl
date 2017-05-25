<input 
	type="password" 
	{$disabledAttr} 
	class="form-control {$disabledClass} popover-dismiss" 
	id="{$fieldGuid}" 
	name="{$fieldName}" 
	value="{$field['value']}"

	maxlength="{$fieldAttrs['maxlength']}"
	{if $field['attributes']['required']=='true'}
		data-bv-notempty="true"
    	data-bv-notempty-message="{translate app="framework"}requiredField{/translate}"
	{/if}>
