<style>
.cover-container {
    width: 100%;
    white-space: nowrap;
    overflow-x: scroll;
    overflow-y: hidden;
}
</style>

{if $title != ''}
<div class="box-header">
    <i class="fa fa-project-diagram">&nbsp;</i>
    <h3 class="box-title">{$title}</h3>
</div>
{/if}

<div class="cover-container">
    {if $format != 'svg'}
        <a href="http://www.plantuml.com/plantuml/{$format}/{$encoded}" target="_blank">
            <img class="cover-item" src="http://www.plantuml.com/plantuml/{$format}/{$encoded}"/>
        </a>
    {else}
        <object type="image/svg+xml" data="http://www.plantuml.com/plantuml/{$format}/{$encoded}"></object>
    {/if}

</div>
