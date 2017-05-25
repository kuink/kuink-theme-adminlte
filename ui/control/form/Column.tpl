{if $insideColumn == 1}
  {*Close the previous column*}
    </fieldset>
  </div>
{/if}

{*Insert the new column*}
{* $spanColumns = 8/$columns *}
<div class="span6" id="{$fieldAttrs['id']}">
  <fieldset>