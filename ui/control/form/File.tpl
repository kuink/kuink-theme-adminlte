<div class="controls">
  {if $field['attributes']['icon']!=""}
    <div class="input-prepend">
      <span class="add-on"><i class="icon-{$fieldAttrs['icon']}"></i></span>
      <input type="file" class="input-file {$disabledClass}" id="{$fieldID}" name="{$fieldID}" />
    </div>
  {else}
    <input type="file" class="input-file {$disabledClass}" id="{$fieldID}" name="{$fieldID}" />
  {/if}
</div>
