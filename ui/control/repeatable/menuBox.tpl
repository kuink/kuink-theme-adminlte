  <span>
    {if ($menu[$url] != null && $menu[$url] != '')}
      <a id="{$menu['code']}" href="{$menu[$url]}" target="_blank" style="width: 200px" class="btn btn-sq-lg btn-{$menu[$type]}" {if $tooltip != ''}data-toggle="tooltip" data-placement="bottom" title="{$menu[$tooltip]}" {/if}>
    {else}
      <div id="{$menu['code']}" class="btn btn-sq-lg {if ($menu[$type] != '')}btn-{$menu[$type]}{/if}" style="width: 200px" {if $tooltip != ''}data-toggle="tooltip" data-placement="bottom" title="{$menu[$tooltip]}" {/if}>
    {/if}
        <i class="{$menu[$icon]} fa-5x"></i><br/>
        <strong>{$menu[$label]}</strong>&nbsp;<i class="fas fa-arrow-circle-right"></i>
    {if ($menu[$url] != null && $menu[$url] != '')}
      </a>
    {else}
      </div>
    {/if}
  </span>

{*
<div class="col-sm-{12/$cols}">
    <!-- small box -->
    <div class="small-box alert-{$menu[$type]}">
        <div class="inner">
        <h3>&nbsp;</h3>
        <p>&nbsp;</p>
        </div>
        <div class="icon">
        <i class="ion ion-{$menu[$icon]}"></i>
        </div>
        <a href="{$menu[$url]}" target="_blank" class="small-box-footer" {if $tooltip != ''}data-toggle="tooltip" data-placement="bottom" title="{$menu[$tooltip]}" {/if}>{$menu[$label]}&nbsp;<i class="fas fa-arrow-circle-right"></i></a>
    </div>
</div>
<!-- ./col -->    
*}