<div class="controls">
	{foreach $field['options'] as $label => $url}
	   		{$href = $url['url']}
		    <a href="#" onclick="javascript: result = setFormAction_{$_guid}('{$href}','', '',  '', true); $('#{$_guid}').submit();" class="link" >{$label}</a> &nbsp;

<!-- javascript: result = setFormAction_{$_guid}('{$buttonActionUrl}', confirmMessage, '{$buttonType}', '{$buttonAttrs['id']}'); -->
	{/foreach}
</div>
