<div class="controls">
	{foreach $field['options'] as $label => $url}
	   		{$href = $url['url']}
		    <a href="javascript: formActionField(false, '', '{$href}', '')" class="link" >{$label}</a> &nbsp;

	{/foreach}
</div>
