<style>
iframe {
  display: block;
  position: relative;
  top: 20px;
  left: 15px;
  width: 95%;
  height: 90%;
}

.imageBlock  {
  width: 100%;
  height: 800px;
  margin: 5px 0;
  border: 1px solid #E8E8E8;
}
</style>
{nocache}

<div class="box">
  {if $title != ''}
  <div class="box-header">
    <i class="fa fa-picture-o">&nbsp;</i>
    <h3 class="box-title">{$title}</h3>
  </div>
  {/if} 
  <div id="imageBlock" class="imageBlock">
    <div class="imageTitle" style="display: block;"></div>
    <img src="{$_streamUrl}?type={$type}&guid={$guid}"/>
  </div>
</div>
{/nocache}





