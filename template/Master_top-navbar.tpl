<!-- Header Navbar: style can be found in header.less -->
<nav class="navbar navbar-static-top" role="navigation">
	<!-- Sidebar toggle button-->
	<a href="#" class="sidebar-button" data-toggle="push-menu" role="button"><i class="fa fa-bars"></i></a>	
	<div class="navbar-right">
		<ul class="nav navbar-nav">

			<!-- Companies Menu -->
			<li class="dropdown notifications-menu">
				<!-- Menu toggle button -->
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">
					<i class="fa fa-building"></i> {translate app="framework"}Empresa{/translate}
				</a>
				<ul class="dropdown-menu">
					<li>
						<!-- Inner Menu: contains the companies -->
						<ul class="menu">
							<li>
								{foreach from=$KUINK_USER_COMPANIES item=COMPANY}
									{if $KUINK_USER_COMPANY == $COMPANY.id}
										<a href="#"><i class="fa fa-caret-right"></i>{$COMPANY.name}</a>
									{else}
										<a href="#" id="kuink_company_{$COMPANY.id}" onclick="javascript: window.location = window.location + '&idCompany={$COMPANY.id}';">
											{$COMPANY.name}
										</a>
									{/if}
								{/foreach}
							</li>
						</ul>
					</li>
				</ul>
			</li>

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
						{else}<img src="{$imageSrc}{$_user['publicKey']}{if ($_imageUrl != '')}.jpg{/if}" class="img-circle " alt="User Image" />
						{/if}
						<p>
							{$userDisplayName}
							<small>**</small>
						</p>
					</li>
					<!-- Menu Footer-->
					<li class="user-footer">
						
					</li>
				</ul>
			</li>
		</ul>
	</div>
</nav>
