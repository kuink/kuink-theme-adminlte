
<div class="controls form-group">
    {foreach $field['options'] as $optionValue => $optionLabel}
      {if $optionValue != ''}
        <label class="checkbox">
        <input type="hidden" name="{$fieldID}_{$optionValue}" value="0">
        <input type="checkbox" {$disabledAttr} class="form-control {$disabledClass}" id="{$fieldID}_{$optionValue}" name="{$fieldID}_{$optionValue}" value="1"  {if $field['value'][$optionValue] == 1}checked{/if}/>
        {$optionLabel}
        </label>
      {/if}
    {/foreach}
</div>