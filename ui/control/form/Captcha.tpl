<script type="text/javascript"> 
  function getCaptcha() {
    document.getElementById('img{$fieldID}').src = 'stream.php?type=captcha&'+ Date.now(); return false;
  }

  jQuery(document).ready(function() { 
    getCaptcha();
  });
</script>


<div class="controls">
  {* $field['value'] *}
  <img id="img{$fieldID}" src="stream.php?type=captcha" alt="CAPTCHA Image" />
  {*
  <a href="#" onclick="document.getElementById('img{$fieldID}').src = 'stream.php?type=captcha&'+ Date.now(); return false;"><i class="fa fa-sync"></i></a>
  *}
  <a href="#" onclick="getCaptcha();"><i class="fa fa-sync"></i></a>
  <br/>

  {if $field['attributes']['icon']!=""}
    <div class="input-prepend">
      <span class="add-on"><i class="icon-{$fieldAttrs['icon']}"></i></span>
		<input type="text" {$disabledAttr} class="input-{$inputSize} {$disabledClass}" id="{$fieldID}" name="{$fieldID}" maxlength="6">
    </div>
  {else}
    <br/>
	  <input type="text" {$disabledAttr} class="input-{$inputSize} {$disabledClass}" id="{$fieldID}" name="{$fieldID}" maxlength="6">
  {/if}

</div>