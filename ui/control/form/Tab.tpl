
{if $insideTab == 1}
  {*Close the previous tab*}
    </fieldset>
  </div>
{/if}

{*Insert the new tab*}
{$active = ''}
{if $firstTab == 1}
  {$active = 'active in'}
{/if}

<div class="tab-pane fade {$active}" id="{$fieldAttrs['id']}">
  <fieldset>