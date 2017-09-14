<!-- Header Navbar: style can be found in header.less -->
<nav class="navbar navbar-static-top" role="navigation">
	<!-- Sidebar toggle button-->
	<a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
		<span class="sr-only">Toggle navigation</span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
	</a>
	<div class="navbar-right">
		<ul class="nav navbar-nav">

			<!-- User Account: style can be found in dropdown.less -->
			<li class="dropdown user user-menu">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">
					<i class="glyphicon glyphicon-user"></i>
					<span>{$userDisplayName} <i class="caret"></i></span>
				</a>
				<ul class="dropdown-menu">
					<!-- User image -->
					<li class="user-header {if $_environment == 'dev'}bg-yellow{else}bg-light-blue{/if}">
						{if $_environment == 'dev'}<img src="{$_imageUrl}photo/default.jpg" class="img-circle " alt="User Image" />
						{else}<img src="{$_imageUrl}photo/{$_user['publicKey']}.jpg" class="img-circle " alt="User Image" />
						{/if}
						<p>
							{$userDisplayName}
							<small>**</small>
						</p>
					</li>
					<!-- Menu Body -->
					<li class="user-footer">
						<!--div class="col-xs-4 text-center"-->
							<a href="{$baseurl}/user/profile.php?id={$userId}" class="btn btn-default btn-flat">{translate app="framework"}profile{/translate}</a>
						<!--/div-->
					</li>
					<!-- Menu Footer-->
					<li class="user-footer">
						<!--div class="pull-left">
							<a href="{$breadcrumbEntries[1]['href']}" class="btn btn-default btn-flat">{translate app="framework"}backToMoodleCourse{/translate}</a>
						</div>
						<div class="pull-right"-->
							<a href="{$baseurl}/login/logout.php?sesskey={$sessKey}" class="btn btn-default btn-flat">{translate app="framework"}sign-out{/translate}</a>
						<!--/div-->
					</li>
				</ul>
			</li>
		</ul>
	</div>
</nav>
