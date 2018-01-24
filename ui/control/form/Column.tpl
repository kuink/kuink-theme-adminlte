{if $insideHeader == 1}
	</div>
{/if}

{if $insideColumn == 1}
	</div>
{else}
	<div class="row">
{/if}

{if $columns == ''}
	{assign var="columnWidth" value=12/$tabs[$tabIndex]['columns']}
{else}
	{assign var="columnWidth" value=12/$columns}
{/if}

{$converted = settype($columnWidth, 'integer')}
	<div class="col-md-{$columnWidth}">

