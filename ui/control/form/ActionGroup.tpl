<div class="controls">
	{foreach $field['options'] as $label => $url}
	   		{$href = $url['url']}
		    <a href="javascript: result = setFormAction_{$form['_guid']}('{$href}','', '',  '', true); $('#{$form['_guid']}').submit();" class="link" >{$label}</a> &nbsp;

<!-- javascript: result = setFormAction_{$form['_guid']}('{$buttonActionUrl}', confirmMessage, '{$buttonType}', '{$buttonAttrs['id']}'); -->
	{/foreach}
</div>
