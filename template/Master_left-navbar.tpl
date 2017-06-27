<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar">
		<!-- Sidebar user panel -->
		<div class="user-panel">
			<div class="pull-left image">
				{if $_environment == 'dev'}
					<img src="{$_imageUrl}photo/default.jpg"
				{else}
					<img src="{$_imageUrl}photo/{$_user['publicKey']}.jpg"
				{/if}
					class="img-circle" alt="User Image"/>
			</div>
			<div class="pull-left info">
				<p>{$userDisplayName}</p>
			</div>
		</div>

	</section>
	<!-- /.sidebar -->
</aside>
