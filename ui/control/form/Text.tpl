<input
	type="text"
	{$disabledAttr}
	class="form-control {$disabledClass} popover-dismiss"
	id="{$fieldGuid}"
	name="{$fieldName}"
	value="{$field['value']}"

	maxlength="{$fieldAttrs['maxlength']}"
	{if $field['attributes']['required']=='true'}
		data-bv-notempty
    	data-bv-notempty-message="{translate app="framework"}requiredField{/translate}"
	{/if}>
