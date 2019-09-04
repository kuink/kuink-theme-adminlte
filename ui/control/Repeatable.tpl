{$item=0}
{foreach $data as $bind}
    {foreach $bind as $menu}
        {if ($item % $cols == 0)}
            <div class="row">
        {/if}

        {include file="./repeatable/$template.tpl"}

        {if ($item % $cols == $cols-1)}
            </div>
        {/if}
        {$item = $item + 1}
    {/foreach}
{/foreach}

        {if ($item % $cols != $cols-1)}
            </div>
        {/if}

</div>
