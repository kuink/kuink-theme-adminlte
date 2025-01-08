<script>
  {* Redirect current page to the base (home page) if not running inside an iframe. *}
  if(window.self === window.top)
    window.location.href = window.location.origin;
</script>
<div class="container">
{$item=0}
{foreach $data as $bind}
    {foreach $bind as $menu}
        {if ($item % $cols == 0)}
         <div class="row">
          <div class="col-lg-12" style="text-align: center">
            <p>
        {/if}

        {include file="./repeatable/$template.tpl"}

        {if ($item % $cols == $cols-1)}
              </p>
            </div> <!-- col -->
          </div> <!-- .row -->
        {/if}
        {$item = $item + 1}
    {/foreach}
{/foreach}

{if ($item % $cols != $cols-1)}
    </div> <!-- .row -->
{/if}

</div> <!-- .container -->
