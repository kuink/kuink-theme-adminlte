<script>
	function menuAppAction(confirm, confirm_message, location, button_id) {

		//Call kuink submit center
		$(".box-body").kuinkSubmit({
			'url' : location+'&modal=embed',
			'idContext' : '{$_idContext}',
			'method' : 'get',
			'button_id' : button_id
		});
	}

</script>

{function name=createLeftMenu menu=false submenu=false menuType=toggle}
	{if !is_array($menu['child'])}
		{* Without childs *}
		<li>
			<a target="{$menu['target']}" href="javascript: menuAppAction(false, '', '{$menu['href']}', '');" style="color: #777;"
			{if $menuType == 'toggled' && $submenu != true}data-tt="tooltip" title="{if $menu['label']}{$menu['label']}{else}{translate}noLabel{/translate}{/if}"{/if}>
				<i class="fa fa-{if $menu['icon'] && $menu['icon'] != 'circle'}{$menu['icon']}{else}{if !$submenu}th-list{/if}{/if}"></i>
				{if $menuType != 'toggled' || $submenu == true}<span>{if $menu['label']}{$menu['label']}{else}{translate}noLabel{/translate}{/if}</span>{/if}
			</a>
		</li>
	{else}
		{if $menuType != 'toggled'}
			{if $menuType==dropdown}
				<li class="treeview dropdown-header">
			{else}
				<li style="background-color:#EEEEEE;">
			{/if}
			<i class="fa fa-{if $menu['icon'] && $menu['icon'] != 'circle'}{$menu['icon']}{else}{if !$submenu}th-list{/if}{/if}"></i>
			{if $menuType!='toggled' || $submenu == true}<span>{if $menu['label']}{$menu['label']}{else}{translate}noLabel{/translate}{/if}</span>{/if}
			</li>
			<li>
			{if $menu['child']}
					{foreach from=$menu['child'] item=submenu}
						{createLeftMenu menu=$submenu submenu=true menuType=$menuType}
					{/foreach}
			{/if}
			</li>
		{else}
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#"
				{if $menuType == 'toggled' && $submenu != true}data-tt="tooltip" title="{if $menu['label']}{$menu['label']}{else}{translate}noLabel{/translate}{/if}"{/if}>
					<i class="fa fa-{if $menu['icon'] && $menu['icon'] != 'circle'}{$menu['icon']}{else}{if !$submenu}th-list{/if}{/if}"></i>
					<span class="caret"></span>
				</a>
				{if $menu['child']}
					<ul class="dropdown-menu" style="margin-left: 100%; margin-top: -40px;border-top-left-radius: 0;">
							{foreach from=$menu['child'] item=submenu}
								{createLeftMenu menu=$submenu submenu=true menuType=$menuType}
							{/foreach}
					</ul>
				{/if}
			</li>
		{/if}
	{/if}
{/function}


{function name=createLeftMenuNew menu=false submenu=false menuType=toggle}
	{if !is_array($menu['child'])}
		{* Without childs *}
		<li>
			<a target="{$menu['target']}" href="javascript: menuAppAction(false, '', '{$menu['href']}', '');"
			{if $menuType == 'toggled' && $submenu != true}data-tt="tooltip" title="{if $menu['label']}{$menu['label']}{else}{translate}noLabel{/translate}{/if}"{/if}>
				<i class="fa fa-{if $menu['icon']}{$menu['icon']}{else}circle-o{/if}"></i>
				{if $menuType != 'toggled' || $submenu == true}<span>{if $menu['label']}{$menu['label']}{else}{translate}noLabel{/translate}{/if}</span>{/if}
			</a>
		</li>
	{else}
		{if $menuType != 'toggled'}
				<li class="treeview menu-open">
					<a href="#">
			{*{if $menuType==dropdown}
				<li class="treeview dropdown-header">
			{else}
				<li style="background-color:#EEEEEE;">
			{/if} *}
						<i class="fa fa-{if $menu['icon']}{$menu['icon']}{else}circle-o{/if}"></i>
						{if $menuType!='toggled' || $submenu == true}<span>{if $menu['label']}{$menu['label']}{else}{translate}noLabel{/translate}{/if}</span>{/if}
							{if $menu['child']}<span class="pull-right-container"><i class="fa fa-angle-left pull-right"></i></span>{/if}
					</a>
					{if $menu['child']}
						<ul class="treeview-menu">
							{foreach from=$menu['child'] item=submenu}
								{createLeftMenuNew menu=$submenu submenu=true menuType=$menuType}
							{/foreach}
						</ul>
					{/if}
				</li>
			{*<li>
			{if $menu['child']}
					{foreach from=$menu['child'] item=submenu}
						{createLeftMenuNew menu=$submenu submenu=true menuType=$menuType}
					{/foreach}
			{/if}
			</li>*}
		{else}
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#"
				{if $menuType == 'toggled' && $submenu != true}data-tt="tooltip" title="{if $menu['label']}{$menu['label']}{else}{translate}noLabel{/translate}{/if}"{/if}>
					<i class="fa fa-{if $menu['icon']}{$menu['icon']}{else}circle-o{/if}"></i>
					<span class="caret"></span>
				</a>
				{if $menu['child']}
					<ul class="dropdown-menu" style="margin-left: 100%; margin-top: -40px;border-top-left-radius: 0;">
							{foreach from=$menu['child'] item=submenu}
								{createLeftMenuNew menu=$submenu submenu=true menuType=$menuType}
							{/foreach}
					</ul>
				{/if}
			</li>
		{/if}
	{/if}
{/function}
