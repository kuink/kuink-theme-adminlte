<div class="controls">
  {* $field['value'] *}
  <img id="img{$fieldID}" src="kuink-core/lib/tools/securimage/securimage_show.php" alt="CAPTCHA Image" />
  <a href="#" onclick="document.getElementById('img{$fieldID}').src = 'kuink-core/lib/tools/securimage/securimage_show.php?' + Math.random(); return false"><i class="fa fa-sync"></i></a>
  <br/>

  {if $field['attributes']['icon']!=""}
    <div class="input-prepend">
      <span class="add-on"><i class="icon-{$fieldAttrs['icon']}"></i></span>
		<input type="text" {$disabledAttr} class="input-{$inputSize} {$disabledClass}" id="{$fieldID}" name="{$fieldID}" maxlength="6">
    </div>
  {else}
	<input type="text" {$disabledAttr} class="input-{$inputSize} {$disabledClass}" id="{$fieldID}" name="{$fieldID}" maxlength="6">
  {/if}

</div>
