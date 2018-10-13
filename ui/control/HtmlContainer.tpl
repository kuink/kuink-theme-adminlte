<style>
    .form-horizontal h4 {
        margin-top: 15px;
     }
    .static-control-group {
        margin-top: 5px;
    }


#htmlBlock.well {
  padding: 0px 0px 15px 0px;
  border: none;
}


.htmlBlock {
  width: 100%;
  margin: 5px 0;
  border: 1px solid #E8E8E8;
}

.htmlBlock .htmlTitle::after  {
  content: "{$title}";
  position: relative;
  top: 1px;
  left: 1px;
  padding: 3px 7px;
  font-size: 13px;
  font-weight: bold;
  background-color: #f3f3f3;
  /**border: 1px solid #ddd;**/
  border: 1px solid #E8E8E8;
  color: #0072aa;
  -webkit-border-radius: 4px 0 4px 0;
  -moz-border-radius: 4px 0 4px 0;
  border-radius: 4px 0 4px 0;
}

</style>
{nocache}

{if $title != ''}
<div id="htmlBlock" class="htmlBlock">
  <div class="htmlTitle" style="display: block;"></div>
{/if}

{if $border == "true"}
	{$class = 'well'}
{/if}

<div class="{$class}" style="{$style}">
	{if $label != ""}
    <h4>{$label}</h4>
  {/if}

  {$value}
</div>

{if $title != ''}
</div>
{/if}
{/nocache}