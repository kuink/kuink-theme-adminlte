{$options = $fieldAttrs['options']}
<div id="{$id}{$multiSeparator}{$fieldAttrs['name']}CG" class="control-group" >
	<select id="{$id}{$multiSeparator}{$fieldAttrs['name']}" name="{$id}{$multiSeparator}{$fieldAttrs['name']}" class="{$disabledClass} form-control" {$disabledAttr} onchange="javascript: setChanged({$id});">
		{foreach $options as $optionValue => $optionLabel}
			{if $value['value'] == $optionValue }
				<option value="{$optionValue}" selected>{$optionLabel}</option>
			{else}
				<option value="{$optionValue}">{$optionLabel}</option>
			{/if}
		{/foreach}
	</select>
</div>
