{if $insideHeader == 1}
	</div>
{/if}

{if $insideColumn == 1}
		</div>
	</div>
{/if}

{if $insideTab == 1}
  {*Close the previous tab*}
	</div>
{/if}

{*Insert the new tab*}
{$active = ''}
{if $insideTab == 0}
  {$active = 'in active'}
{/if}

	<div class="tab-pane fade {$active}" id="{$fieldID}">
