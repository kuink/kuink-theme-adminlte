<style>
	#leftMenu .accordion-group {
		margin-bottom: 0px;
		border:0px;
		-webkit-border-radius: 0px;
		-moz-border-radius: 0px;
		border-radius: 0px;
	}

	#leftMenu .accordion-heading {
		height: 34px;
		border-top: 1px solid #717171; /* inner stroke */
		border-bottom: 1px solid #5A5A5A; /* inner stroke */
		background-color: #353535; /* layer fill content */
		background-image: -moz-linear-gradient(90deg, #595b59 0%, #616161 100%); /* gradient overlay */
		background-image: -o-linear-gradient(90deg, #595b59 0%, #616161 100%); /* gradient overlay */
		background-image: -webkit-linear-gradient(90deg, #595b59 0%, #616161 100%); /* gradient overlay */
		background-image: linear-gradient(90deg, #595b59 0%, #616161 100%); /* gradient overlay */
		list-style-type:none;
	}

	#leftMenu .accordion-heading  a{
		color: #cbcbcb; /* text color */
		text-shadow: 0 1px 0 #3b3b3b; /* drop shadow */
		text-decoration:none;
		/**font-weight:bold;**/
		font-size: 14px;
		white-space: nowrap;
	}

	#leftMenu .accordion-heading  a:hover{
		color:#ccc
	}

	#leftMenu .accordion-heading .active {
		width: 182px;
		height: 34px;
		border: 1px solid #5b5b5b; /* inner stroke */
		background-color: #353535; /* layer fill content */
		background-image: -moz-linear-gradient(90deg, #4b4b4b 0%, #555 100%); /* gradient overlay */
		background-image: -o-linear-gradient(90deg, #4b4b4b 0%, #555 100%); /* gradient overlay */
		background-image: -webkit-linear-gradient(90deg, #4b4b4b 0%, #555 100%); /* gradient overlay */
		background-image: linear-gradient(90deg, #4b4b4b 0%, #555 100%); /* gradient overlay */
	}
</style>

<div class="container-fluid">
	<div class="accordion col-md-2" id="leftMenu" style="position: relative; left: -10px; border-right: 1px solid #dcdcdc;">
		{function name=LeftAccordionMenu menu=false}
			{if !is_array($menu['child'])}
				<div class="accordion-group">
					<div class="accordion-heading">
						<a target="{$menu['target']}" href="{$menu['href']}" data-parent="#leftMenu"  class="accordion-toggle">
							<i class="fa fa-{$menu['icon']}"></i> {$menu['label']}
						</a>
					</div>
				</div>
			{else}
				<div class="accordion-group">
					<div class="accordion-heading">
						<a href="#collapseThree" data-parent="#leftMenu" data-toggle="collapse" class="accordion-toggle">
							<i class="fa fa-{$menu['icon']}"></i> {$menu['label']}
						</a>
					</div>
					<div style="height: 0px;" class="accordion-body collapse" id="collapseThree">
						<div class="accordion-inner">
							<ul>
								{foreach from=$menu['child'] item=submenu}
									<li>
										<a target="{$submenu['target']}" href="{$submenu['href']}">{$submenu['label']}</a>
									</li>
								{/foreach}
							</ul>
						</div>
					</div>
				</div>
			{/if}
		{/function}

		{foreach from=$menuEntries item=menu}
			{LeftAccordionMenu menu=$menu}
		{/foreach}
	</div>

	<div class="col-md-4">
		{call hook position='left'}
	</div>
	<div class="col-md-6" style="margin-top:0px">
		{call hook position='right'}
	</div>
	<div class="col-md-10">
		{call hook position='bottom'}
		{call hook position='default'}
	</div>
	
</div>
