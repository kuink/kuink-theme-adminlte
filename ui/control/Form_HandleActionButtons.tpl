{*

Handle all thing about form action buttons.

*}

{* Define things *}

{assign var=buttonAttrs value=$button['attributes']}
{assign var=buttonType value=$buttonAttrs['type']}
{assign var=buttonIcon value=$buttonAttrs['icon']}
{assign var=group value=$buttonAttrs['group']}

{$iconColor = "icon-white"}
{$buttonClass = "btn"}

{if $buttonType == "submit" || $buttonAttrs['decoration']=="primary"}
	{$buttonClass = "btn btn-primary"}
{/if}

	      	{if $buttonType == "cancel"}
		        {$buttonClass = "btn"}
		        {$iconColor = ""}
  	      {elseif $buttonType == "add"}
  	       	  {$buttonType = "submit"}
  	       	  {$buttonIcon = "plus"}
  	          {$iconColor = "icon-white"}
  	          {$buttonClass = "btn btn-success"}
  	      {elseif $buttonType == "execute"}
  	       	  {$buttonType = "submit"}
  	       	  {$buttonIcon = "play"}
  	          {$iconColor = "icon-white"}
  	          {$buttonClass = "btn btn-primary"}
  	      {elseif $buttonType == "save"}
  	       	  {$buttonType = "submit"}
  	       	  {$buttonIcon = "check"}
  	          {$iconColor = "icon-white"}
  	          {$buttonClass = "btn btn-primary"}
  	      {elseif $buttonType == "delete"}
  	       	  {$buttonType = "submit"}
  	       	  {$buttonIcon = "remove"}
  	          {$iconColor = "icon-white"}
  	          {$buttonClass = "btn btn-danger"}
  	      {elseif $buttonType == "search"}
  	       	  {$buttonType = "submit"}
  	       	  {$buttonIcon = "search"}
  	          {$iconColor = "icon-white"}
  	          {$buttonClass = "btn btn-primary"}
          {elseif $buttonType == "back"}
  	       	  {$buttonType = "cancel"}
  	       	  {$buttonIcon = "chevron-left"}
  	          {$iconColor = ""}
  	          {$buttonClass = "btn"}
          {elseif $buttonType == "continue"}
  	       	  {$buttonType = "submit"}
  	       	  {$buttonIcon = "chevron-right"}
  	          {$iconColor = "icon-white"}
  	          {$buttonClass = "btn btn-primary"}
          {elseif $buttonType == "list"}
  	       	  {$buttonType = "submit"}
  	       	  {$buttonIcon = "list"}
  	          {$iconColor = "icon-white"}
  	          {$buttonClass = "btn btn-primary"}
          {elseif $buttonType == "view"}
  	       	  {$buttonType = "submit"}
  	       	  {$buttonIcon = "file"}
  	          {$iconColor = "icon-white"}
  	          {$buttonClass = "btn btn-primary"}
          {elseif $buttonType == "update"}
  	       	  {$buttonType = "submit"}
  	       	  {$buttonIcon = "pencil"}
  	          {$iconColor = "icon-white"}
  	          {$buttonClass = "btn btn-primary"}
          {elseif $buttonType == "send"}
  	       	  {$buttonType = "submit"}
  	       	  {$buttonIcon = "arrow-right"}
  	          {$iconColor = "icon-white"}
  	          {$buttonClass = "btn btn-danger"}
  	      {elseif $buttonType == "validate"}
  	       	  {$buttonType = "submit"}
  	       	  {$buttonIcon = "ok"}
  	          {$iconColor = "icon-white"}
  	          {$buttonClass = "btn btn-success"}
          {elseif $buttonType == "refresh"}
              {$buttonType = "submit"}
              {$buttonIcon = "refresh"}
              {$iconColor = "icon-white"}
              {$buttonClass = "btn btn-warning"}
          {elseif $buttonType == "print"}
              {$buttonType = "cancel"}
              {$buttonIcon = "print"}
              {$iconColor = "icon-white"}
              {$buttonClass = "btn btn-primary"}
	      {/if}

        {if $buttonAttrs['decoration']=="secundary"}
          {$buttonClass = "btn btn-info"}
          {$iconColor = "icon-white"}
        {elseif $buttonAttrs['decoration']=="success"}
          {$buttonClass = "btn btn-success"}
          {$iconColor = "icon-white"}
        {elseif $buttonAttrs['decoration']=="warning"}
          {$buttonClass = "btn btn-warning"}
          {$iconColor = "icon-white"}
        {elseif $buttonAttrs['decoration']=="danger"}
          {$buttonClass = "btn btn-danger"}
          {$iconColor = "icon-white"}
        {elseif $buttonAttrs['decoration']=="inverse"}
          {$buttonClass = "btn btn-inverse"}
          {$iconColor = "icon-white"}
        {/if}

{$buttonActionUrl = "{$form['baseUrl']}"}
{if $buttonAttrs['action'] != ''}
	{$buttonActionUrl = "{$form['baseUrl']}&action={$buttonAttrs['action']}"}
{/if}
{if $buttonAttrs['event'] != ''}
	{$buttonActionUrl = "{$form['baseUrl']}&event={$buttonAttrs['event']}"}
{/if}

<script>
	$(document).ready(function() {
		{if $buttonAttrs['confirm'] != 'false' && $buttonAttrs['confirm'] != ''}
			var confirmMessage = "";
			{assign var="keywords" value="\n"|explode:$buttonAttrs['confirm']}
			{foreach from=$keywords item=keyword}
				confirmMessage = confirmMessage + "\n{$keyword}";
			{/foreach}
		{else}
			confirmMessage = "{$buttonAttrs['confirm']}";
		{/if}
		$("#{$form['_guid']} #{$buttonAttrs['id']}").attr("onclick", function() {
			return "javascript: result = setFormAction_{$form['_guid']}('{$buttonActionUrl}', confirmMessage, '{$buttonType}', '{$buttonAttrs['id']}');";
		});
	});
</script>

<button type="{$buttonType}" class="btn-flat {$buttonPrintableClass} {$buttonDefaultClass} {$buttonClass}" id="{$buttonAttrs['id']}" onclick="">{if $buttonIcon != ""}<i class="fa fa-{$buttonIcon} {$iconColor}"></i>{/if}&nbsp;{$buttonAttrs['label']}</button>
