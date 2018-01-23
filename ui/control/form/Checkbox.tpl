<div class="checkbox">
	{$value = 0}
	{if $field['value'] != ''}
		{$value = $field['value']}
	{/if}
	<label>
		{* to post the checkbox even unchecked*}
		<input type="hidden" name="{$fieldID}" value="0">
		<input type="checkbox" {$disabledAttr} class="{$disabledClass}"
			id="{$fieldGuid}" name="{$fieldName}" value="1">

		&nbsp;{$field['attributes']['label']}
		{if $field['attributes']['help']!=''}
			&nbsp;&nbsp;
			<a tabindex="-1" data-toggle="tooltip" title=""
				data-original-title="{$field['attributes']['help']}"
				data-placement="right" href="#">
				<i class="fieldQuestionMark fa fa-info-circle" ></i>
			</a>
		{/if}
	</label>
</div>
