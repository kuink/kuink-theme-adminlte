<div class="hero-unit" style="padding: 10px; margin-bottom: 5px;" >
  {if $field['attributes']['title'] != ''}
  <h1 style="font-size: 18px;">{$field['attributes']['title']}</h1>
  <hr style="margin: 5px;"/>
  {/if}
  <p style="font-size: 14px;">{$field['attributes']['body']}</p>
  {if $field['attributes']['footer'] != ''}
  	<hr style="margin: 5px;"/>
  	<small style="font-size: 12px;">{$field['attributes']['footer']}</small>
  {/if}
</div>

