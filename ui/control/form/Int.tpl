<input type="text" {$disabledAttr} 
	class="form-control {$disabledClass}" 
	id="{$fieldGuid}" 
	name="{$fieldName}" 
	value="{$field['value']}" 
	maxlength="{$fieldAttrs['maxlength']}"
	data-bv-integer="true"
   	data-bv-integer-message="{translate app="framework"}integerField{/translate}"
	{if $field['attributes']['required']=='true'}
		data-bv-notempty="true"
  		data-bv-notempty-message="{translate app="framework"}requiredField{/translate}"
	{/if}>
