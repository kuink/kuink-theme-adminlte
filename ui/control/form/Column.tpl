{if $insideHeader == 1}
	</div>
{/if}

{if $insideColumn == 1}
	</div>
{else}
	<div class="row kuink-form-column">
{/if}

{assign var="columnWidth" value=12/$columns}
{$converted = settype($columnWidth, 'integer')}
	<div class="col-md-{$columnWidth}">
