{if $fieldAttrs['multilang'] == 'true' && is_array($field['value'])}
	<!-- This is multilang: load languages from _lang datasource-->
	{foreach $_languages as $language}
		{$lang = $language['country']}
		<div class="controls">
			<textarea
				class="form-control {$disabledClass}" style="display:table-cell"
				id="{$fieldGuid}_{$lang}"
				name="{$fieldName}_{$lang}"
				rows="{$fieldAttrs['rows']}"
				cols="{$fieldAttrs['cols']}"
				{$disabledAttr} maxlength="{$fieldAttrs['maxlength']}" {if $field['attributes']['required']=='true'}
					data-bv-notempty data-bv-notempty-message="{translate app="framework"}requiredField{/translate}"
				{/if}>{$field['value']}</textarea>
		  <span class="add-on"><img src="{$_themeRoot}theme/{$THEME}/assets/css/flags/blank.gif" class="flag flag-{$lang}" alt="{$lang}" /></span>
		</div>
	{/foreach}
{else}
	<textarea
		class="form-control {$disabledClass}" style="display:table-cell"
		id="{$fieldGuid}"
		name="{$fieldName}"
		rows="{$fieldAttrs['rows']}"
		cols="{$fieldAttrs['cols']}"
		{$disabledAttr} maxlength="{$fieldAttrs['maxlength']}" {if $field['attributes']['required']=='true'}
			data-bv-notempty data-bv-notempty-message="{translate app="framework"}requiredField{/translate}"
		{/if}>{$field['value']}</textarea>
		<span id='{$fieldGuid}_remaining'></span>
{/if}

{if $fieldAttrs['maxlength'] != ''}
	<script>
		$("#{$fieldGuid}").keyup(function(){
				if(this.value.length > {$fieldAttrs['maxlength']}){
						return false;
				}
				$("#{$fieldGuid}_remaining").html("{translate app="framework"}remainingChars{/translate} : " + ({$fieldAttrs['maxlength']} - this.value.length));
		});
	</script>
{/if}
