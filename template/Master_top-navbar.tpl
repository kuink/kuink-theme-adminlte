<!-- Header Navbar: style can be found in header.less -->
<nav class="navbar navbar-fixed-top" role="navigation">
	<!-- Sidebar toggle button-->
	<a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
    </a>
	<div class="navbar-header">
		<a class="navbar-brand" href="{$breadcrumbEntries[0]['href']}">
			{if $_userCompanyData.horizontal_white_logo_url}
				<img src="{$_userCompanyData.horizontal_white_logo_url}">
			{else}
				<span style="font-size: 30px;position: absolute;top: 55%;-ms-transform: translateY(-55%);transform: translateY(-55%);height: auto;">{$_userCompanyData.code}</span>
			{/if}
		</a>
	</div>
	<div class="navbar-right" style="float: right !important;">
		<ul class="nav navbar-nav" style="margin: 0; float: left">

			<!-- Companies Menu -->
			{*<li class="dropdown notifications-menu">
				<!-- Menu toggle button -->
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">
					<i class="fa fa-building"></i> {translate app="framework"}Empresa{/translate}
				</a>
				<ul class="dropdown-menu">
					<li>
						<!-- Inner Menu: contains the companies -->
						<ul class="menu">
							<li>
								{foreach from=$_userCompanies item=COMPANY}
									{if $_userCompany == $COMPANY.id}
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
			</li>*}

			{* <!-- User Account: style can be found in dropdown.less -->
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
			</li> *}
			
			<!-- NEW ICON: User Account -->
			<li class="dropdown user user-menu" style="">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown" style="padding-top: 13px !important;">
					{if $_environment == 'dev' || $_user['id'] == '0'}<img src="{$_imageUrl}photo/default.jpg" class="img-circle" style="width: 35px !important; height: 35px !important" alt=""/>
					{else}<img src="{$imageSrc}{$_user['publicKey']}{if ($_imageUrl != '')}.jpg{/if}" class="img-circle" style="width: 35px !important; height: 35px !important" alt=""/>
					{/if}
					<span style="margin-left: 10px"><i class="fa fa-angle-down"></i></span>
				</a>
				<ul class="dropdown-menu" style="height: auto">
					<!-- User image -->
					<li class="user-header {if $_environment == 'dev'}bg-yellow{else}bg-light-blue{/if}">
						{if $_environment == 'dev' || $_user['id'] == '0'}<img src="{$_imageUrl}photo/default.jpg" class="img-circle " alt="User Image" />
						{else}<img src="{$imageSrc}{$_user['publicKey']}{if ($_imageUrl != '')}.jpg{/if}" class="img-circle " alt="User Image" />
						{/if}
						<p>
							{if $_user['id'] != '0'}<span style="font-size: 14px">{$_user['id']}</span>{/if}<br>{$userDisplayName}
							{*<small>**</small>*}
						</p>
					</li>
					<!-- Menu Body -->
					{if $_user['id'] != '0'}
					<li class="user-footer">
						<!--div class="col-xs-4 text-center"-->
							<a href="{$baseurl}/user/profile.php?id={$userId}" class="dropdown-item">{translate app="framework"}profile{/translate}</a>
						<!--/div-->
					</li>
					{/if}
					<li id="company_title" class="user-footer" style="padding-bottom: 0">
						<span style="color: #777; display: block; padding: 3px 20px; clear: both; font-weight: 400; line-height: 1.42857143; white-space: nowrap;">{translate app="framework"}id_company{/translate}</span>
					</li>
					{foreach from=$_userCompanies item=COMPANY}
						{if $_userCompany == $COMPANY.id}
							<li id="selected_company" class="user-footer">
								<span style="padding-left: 35px !important; color: #fff; background-color: #337ab7; display: block; padding: 3px 20px; clear: both; font-weight: 400; line-height: 1.42857143; white-space: nowrap;">{$COMPANY.code}</span>
							</li>
						{else}
							<li class="user-footer">
								<a href="#" id="kuink_company_{$COMPANY.id}" style="padding-left: 35px !important;" onclick="javascript: paramSet('idCompany', {$COMPANY.id})">
									{$COMPANY.code}
								</a>
							</li>
						{/if}
					{/foreach}
					<!-- Menu Footer-->
					{if $_user['id'] != '0'}
					<li class="user-footer">
						<a href="{$baseurl}/login/logout.php?sesskey={$sessKey}" class="dropdown-item">{translate app="framework"}sign-out{/translate}</a>
					</li>
					{/if}
				</ul>
			</li>
		</ul>
		<script>
			function paramSet(param, value) {
				url = new URL(window.location);
				params = new URLSearchParams(url.search);
				params.set(param, value);
				url.search = params.toString();
				window.location.href = url.href;
			}
			$(".user-header, #company_title, #selected_company").click(
				function(event) {
					event.preventDefault();
					event.stopPropagation();
				}
			)
			$('.dropdown').on('show.bs.dropdown', function(e){
				$(this).find('.dropdown-menu').first().stop(true, true).slideDown(600);
			});
			$('.dropdown').on('hide.bs.dropdown', function(e){
				$(this).find('.dropdown-menu').first().stop(true, true).slideUp(400);
			});
		</script>
	</div>
</nav>
