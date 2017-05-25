{if $border == "true"}
	{$class = 'well'}
{/if}

<div class="{$class}" style="{$style}">
	{if $label != ""}
		<h4>{$label}</h4>
	{/if}
	
	{$value}
</div>