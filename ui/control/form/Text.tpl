<div class="controls" style="{if $fieldAttrs['inline'] == 'tight'}float: left; margin: 0px{/if}">

	{if $fieldAttrs['multilang'] == 'true' && is_array($field['value'])}
		<!-- This is multilang: load languages from _lang datasource-->	
		{foreach $_languages as $language}
			{$lang = $language['country']}

				<div class="input-group">
					<div class="input-group-addon">
						<!-- i class="fa fa-laptop"></-->
						<span id="{$fieldGuid}_flag" class="add-on"><img src="{$_themeRoot}theme/{$THEME}/assets/css/flags/blank.gif" class="flag flag-{$lang}" alt="{$lang}" /></span>
					</div>				

					<input type="text" {$disabledAttr} class="form-control {$disabledClass} popover-dismiss" 
						id="{$fieldGuid}_{$lang}" name="{$fieldName}_{$lang}" 
						value="{$field['value'][$lang]}" maxlength="{$fieldAttrs['maxlength']}" />
				</div>
		{/foreach}
	{else}
		{if $field['attributes']['icon']!=""}
			<div class="input-prepend">
	      			<span class="add-on"><i class="icon-{$fieldAttrs['icon']}"></i></span>
				<input type="text" {$disabledAttr} class="form-control {$disabledClass} popover-dismiss" id="{$fieldGuid}" 
					name="{$fieldName}" value="{$field['value']}" maxlength="{$fieldAttrs['maxlength']}"
					{if $field['attributes']['required']=='true'} 
						data-bv-notempty data-bv-notempty-message="{translate app="framework"}requiredField{/translate}"
					{/if}>
			</div>
		{else}
			<input type="text" {$disabledAttr} class="form-control {$disabledClass} popover-dismiss" id="{$fieldGuid}" 
				name="{$fieldName}" value="{$field['value']}" maxlength="{$fieldAttrs['maxlength']}"
				{if $field['attributes']['required']=='true'} 
					data-bv-notempty data-bv-notempty-message="{translate app="framework"}requiredField{/translate}"
				{/if}>
		{/if}
	{/if}
</div>
