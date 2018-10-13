{if $insideHeader == 1}
	</div>
{/if}
{if ($insideColumn == 1)}
	</div>
{else}
	<div class="row">
{/if}

{if ($tabs[$tabIndex]['columns'][$currentColumnGroup] > 0)}
	{$columnWidth = 12/$tabs[$tabIndex]['columns'][$currentColumnGroup]}
{else}
	{$columnWidth = 12}
{/if}
{* <p>%[{$tabIndex}{$currentColumnGroup}]->{$tabs[$tabIndex]['columns'][$currentColumnGroup]}={$columnWidth}</p> *}
{if $field['attributes']['close']=='false'}
	<div class="col-md-{$columnWidth}">
{/if}

