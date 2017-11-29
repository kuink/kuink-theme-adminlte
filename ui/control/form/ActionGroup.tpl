<div class="controls">
	{foreach $field['options'] as $label => $url}
	   		{$href = $url['url']}
		    <a href="javascript: formActionField_{$form['_guid']}(false, '', '{$href}', '')" class="link" >{$label}</a> &nbsp;

	{/foreach}
</div>
