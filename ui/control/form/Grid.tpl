<div class="">


<form class="form-horizontal" id="{$name}" action="" method="post" enctype="multipart/form-data">



  <table class="table table-striped table-bordered table-condensed">
  <thead>
    <tr>
    {foreach $headers as $header}
	    <th>{$header}</th>
    {/foreach}
    </tr>
  </thead>
  <tbody>

    {foreach $data as $block}
	    {foreach $block as $row}
		    <tr>
			    {foreach $row as $col}
			    	<td>{$col}</td>
				{/foreach}
		    </tr>
	    {/foreach}
     {/foreach}

  	</tbody>
	</table>

	{if $exportable}
		<div style="float:right; padding:3px">
		    {foreach $exportTypes as $exportType}
	            <a href="{$baseUrl}&action={$action}&exporttype={$exportType}&export={$name}"><span class="label label-info">{$exportType}</span></a>
		    {/foreach}
       	</div>
	{/if}



	{if $isPageable == "true"}

	  <div class="pagination">
	  <ul>
		{if $pageCurrent > 0}
			<li><a href="{$baseUrl}&{$name}_page={$pageCurrent-1}">{translate app="framework"}previous{/translate}</a></li>
		  	<li><a href="{$baseUrl}&{$name}_page=0">1</a></li>
		{else}
	    	<li class="active"><a href="{$baseUrl}&{$name}_page={$pageCurrent-1}">{translate app="framework"}previous{/translate}</a></li>
		  	<li class="active"><a href="{$baseUrl}&{$name}_page=0">1</a></li>
	  {/if}

		{if $pageTotal > 10 && $pageCurrent > 5}
			<li class="active"><a href="#">...</a></li>
	  {/if}

	  	{assign var="start" value="2"}
	  	{assign var="end" value="$pageTotal"}
	  	{if $pageCurrent > 5 && $pageTotal > 10}
	  		{assign var="start" value=$pageCurrent - 2}
	  	{/if}

	  	{if $pageCurrent < $pageTotal - 5  && $pageTotal > 10}
	  		{assign var="end" value=$pageCurrent + 5}
	  	{/if}

	  	{for $i=$start to $end-1}
	  		{if $pageCurrent+1 eq $i}
	  			<li class="active"><a href="{$baseUrl}&{$name}_page={$i-1}">{$i}</a></li>
	  		{else}
		    	<li><a href="{$baseUrl}&{$name}_page={$i-1}">{$i}</a></li>
		    {/if}
	    {/for}

		{if $pageTotal > 10 && $pageCurrent < $pageTotal - 5}
			<li class="active"><a href="#">...</a></li>
	  {/if}

		{if $pageCurrent < $pageTotal-1}
			{if $pageTotal != 1}
		    	<li><a href="{$baseUrl}&{$name}_page={$pageTotal-1}">{$pageTotal}</a></li>
		  {/if}
			<li><a href="{$baseUrl}&{$name}_page={$pageCurrent+1}">{translate app="framework"}next{/translate}</a></li>
		{else}
			{if $pageTotal != 1}
			    <li class="active"><a href="{$baseUrl}&{$name}_page={$pageTotal-1}">{$pageTotal}</a></li>
			{/if}
	    	<li class="active"><a href="{$baseUrl}&{$name}_page={$pageCurrent+1}">{translate app="framework"}next{/translate}</a></li>
	  {/if}

	  </ul>
  </div>
	{/if}

	<script>
	  function submit_form(buttonType, formId, baseUrl, action, event){
	  var form = $("#"+formId);
	  if (action!="")
	    baseUrl += "&action="+action;
	  if (event!="")
	    baseUrl += "&event="+event;

	  if (buttonType == "submit"){
	  $(form).attr("action", baseUrl);
	  return true;
	}
	if (buttonType == "cancel"){
	baseUrl += "&skipClientValidation=true"
	document.location = baseUrl;
	return false;
	}
	return false;
	}
	</script>

	{$count = 0}
    {foreach $globalActions as $action_name=>$action_desc}
	  {$buttonClass = "btn"}
	  {if $count == 0}
        {$buttonClass = "btn btn-primary"}
      {/if}

      <button type="{$buttonType}" class="{$buttonClass}" onclick="return submit_form('submit','{$name}', '{$baseUrl}', '{$action_name}', '');">{if $buttonAttrs['icon']!=""}<i class="icon-{$buttonAttrs['icon']}" ></i>{/if} {$action_desc}</button>
      {$count = $count+1}
    {/foreach}
    </p>

</form>

</div>
