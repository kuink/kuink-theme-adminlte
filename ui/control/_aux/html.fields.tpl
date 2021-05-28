{*
	Input <Var name="PARAMS" key="key"/>
	$buttonType
	$buttonAttrs['id']
	$buttonAttrs['label']
	$buttonAttrs['disabled']
	$buttonAttrs['decoration']
*}

{function addButton }
	{$buttonIcon = $buttonAttrs['icon']}
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
		{elseif $buttonType == "download"}
			{$buttonType = "submit"}
			{$buttonIcon = "download"}
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


	{$disabledClass = ""}
	{$disabledAttr = ""}
	{if $buttonAttrs['disabled']=="true"}
		{$disabledClass = "disabled"}
		{$disabledAttr = "disabled"}
	{/if}

	<button type="{$buttonType}" class="btn-flat {$buttonClass} {$disabledClass}" {$disabledAttr} id="{$buttonAttrs['id']}" onclick="">{if $buttonIcon != ""}<i class="fa fa-{$buttonIcon} {$iconColor}"></i>{/if}&nbsp;{$buttonAttrs['label']}</button>

{/function}





