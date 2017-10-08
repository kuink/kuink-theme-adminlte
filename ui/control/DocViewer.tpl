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
    <i class="fa fa-file">&nbsp;</i>
    <h3 class="box-title">{$title}</h3>
  </div>
  {/if} 
  <div id="imageBlock" class="imageBlock">
    <iframe style="float:left" src = "kuink-core/lib/tools/viewerjs/ViewerJS/#../../../../../stream.php?type=file&guid={$fileGuid}" width='566' height='800' allowfullscreen webkitallowfullscreen>
    </iframe>
  </div>
</div>