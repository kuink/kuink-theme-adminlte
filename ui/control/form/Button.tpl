<div class="controls">
  <div class="input-prepend">

    {assign var=buttonAttrs value=$field['attributes']}
    {assign var=buttonType value=$fieldAttrs['type']}
    {assign var=button value=$field}

    {$buttonClass = "btn"}
    {if $buttonType == "submit"}
      {$buttonClass = "btn btn-primary"}
    {/if}

    {if $buttonType == "cancel"}
      {$buttonClass = "btn"}  
    {/if}

    {$disabledClass = ""}
    {$disabledAttr = 0}
    {if $buttonAttrs['disabled']=="true"}
      {$disabledClass = "disabled"}
      {$disabledAttr = "disabled"}
    {/if}
    <button type="{$buttonType}" class="{$buttonClass} {$disabledClass} " {$disabledAttr} onclick="return submit_form_{$form['_guid']}('{$buttonType}','{$form['_guid']}', '{$form['baseUrl']}', '{$buttonAttrs['action']}', '{$buttonAttrs['event']}');">{if $buttonAttrs['icon']!=""}<i class="icon-{$buttonAttrs['icon']}" ></i>{/if} {$buttonAttrs['label']}</button>


  </div>
</div>
