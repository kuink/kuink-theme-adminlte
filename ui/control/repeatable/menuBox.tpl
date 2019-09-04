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
        <a href="{$menu[$url]}" target="_blank" class="small-box-footer" {if $tooltip != ''}data-toggle="tooltip" data-placement="bottom" title="{$menu[$tooltip]}" {/if}>{$menu[$label]}<i class="fas fa-arrow-circle-right"></i></a>
    </div>
</div>
<!-- ./col -->    
