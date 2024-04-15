<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar">
		<!-- Sidebar user panel -->
		{*<div class="user-panel">
			<div class="pull-left image" style="text-align:center !important;float:none !important;">
				{if $_environment == 'dev'}
					<img src="{$_imageUrl}photo/default.jpg"
				{else}
					<img src="{$imageSrc}{$_user['publicKey']}{if ($_imageUrl != '')}.jpg{/if}"
				{/if}
					class="img-circle" alt="User Image"/>
			</div>
			<div class="pull-left info" style="text-align:center !important;position:static !important;float:none !important;padding-left:5px !important;">
				<p>{$userDisplayName}</p>
			</div> 
		</div>*}
		<ul class="sidebar-menu tree" data-widget="tree">
		</ul>
	</section>
	<!-- /.sidebar -->
</aside>
