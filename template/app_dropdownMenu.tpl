<div class="dropdown" id="dropdownMenu">
	<button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Menu
		<span class="caret"></span></button>
	<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
		{foreach from=$menuEntries item=menu}
			{call createLeftMenu menu=$menu submenu=false menuType=dropdown}
		{/foreach}
	</ul>
</div>
