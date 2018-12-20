<?php
/* Smarty version 3.1.30, created on 2018-12-01 02:51:34
  from "/opt/kuink-dev/kuink-bridge-standalone/public/theme/adminlte/template/Master_top-navbar.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c01f73669ea26_15029953',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'f278063c589da860beee6534e51efabf9a26f2a0' => 
    array (
      0 => '/opt/kuink-dev/kuink-bridge-standalone/public/theme/adminlte/template/Master_top-navbar.tpl',
      1 => 1543029455,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c01f73669ea26_15029953 (Smarty_Internal_Template $_smarty_tpl) {
?>
<!-- Header Navbar: style can be found in header.less -->
<nav class="navbar navbar-static-top" role="navigation">
	<!-- Sidebar toggle button-->
	<a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
        <span class="sr-only">Toggle navigation</span>
  </a>	
	<div class="navbar-right">
		<ul class="nav navbar-nav">

			<!-- Companies Menu -->
			<li class="dropdown notifications-menu">
				<!-- Menu toggle button -->
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">
					<i class="fa fa-building"></i> <?php $_block_plugin1 = isset($_smarty_tpl->smarty->registered_plugins['block']['translate'][0]) ? $_smarty_tpl->smarty->registered_plugins['block']['translate'][0] : null;
if (!is_callable($_block_plugin1)) {
throw new SmartyException('block tag \'translate\' not callable or registered');
}
$_smarty_tpl->smarty->_cache['_tag_stack'][] = array('translate', array('app'=>"framework"));
$_block_repeat1=true;
echo $_block_plugin1(array('app'=>"framework"), null, $_smarty_tpl, $_block_repeat1);
while ($_block_repeat1) {
ob_start();
?>
Empresa<?php $_block_repeat1=false;
echo $_block_plugin1(array('app'=>"framework"), ob_get_clean(), $_smarty_tpl, $_block_repeat1);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>

				</a>
				<ul class="dropdown-menu">
					<li>
						<!-- Inner Menu: contains the companies -->
						<ul class="menu">
							<li>
								<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['KUINK_USER_COMPANIES']->value, 'COMPANY');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['COMPANY']->value) {
?>
									<?php if ($_smarty_tpl->tpl_vars['KUINK_USER_COMPANY']->value == $_smarty_tpl->tpl_vars['COMPANY']->value['id']) {?>
										<a href="#"><i class="fa fa-caret-right"></i><?php echo $_smarty_tpl->tpl_vars['COMPANY']->value['name'];?>
</a>
									<?php } else { ?>
										<a href="#" id="kuink_company_<?php echo $_smarty_tpl->tpl_vars['COMPANY']->value['id'];?>
" onclick="javascript: window.location = window.location + '&idCompany=<?php echo $_smarty_tpl->tpl_vars['COMPANY']->value['id'];?>
';">
											<?php echo $_smarty_tpl->tpl_vars['COMPANY']->value['name'];?>

										</a>
									<?php }?>
								<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

							</li>
						</ul>
					</li>
				</ul>
			</li>

			<!-- User Account: style can be found in dropdown.less -->
			<li class="dropdown user user-menu">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">
					<i class="glyphicon glyphicon-user"></i>
					<span><?php echo $_smarty_tpl->tpl_vars['userDisplayName']->value;?>
 <i class="caret"></i></span>
				</a>
				<ul class="dropdown-menu">
					<!-- User image -->
					<li class="user-header <?php if ($_smarty_tpl->tpl_vars['_environment']->value == 'dev') {?>bg-yellow<?php } else { ?>bg-light-blue<?php }?>">
						<?php if ($_smarty_tpl->tpl_vars['_environment']->value == 'dev') {?><img src="<?php echo $_smarty_tpl->tpl_vars['_imageUrl']->value;?>
photo/default.jpg" class="img-circle " alt="User Image" />
						<?php } else { ?><img src="<?php echo $_smarty_tpl->tpl_vars['imageSrc']->value;
echo $_smarty_tpl->tpl_vars['_user']->value['publicKey'];
if (($_smarty_tpl->tpl_vars['_imageUrl']->value != '')) {?>.jpg<?php }?>" class="img-circle " alt="User Image" />
						<?php }?>
						<p>
							<?php echo $_smarty_tpl->tpl_vars['userDisplayName']->value;?>

							<small>**</small>
						</p>
					</li>
					<!-- Menu Body -->
					<li class="user-footer">
						<!--div class="col-xs-4 text-center"-->
							<a href="<?php echo $_smarty_tpl->tpl_vars['baseurl']->value;?>
/user/profile.php?id=<?php echo $_smarty_tpl->tpl_vars['userId']->value;?>
" class="btn btn-default btn-flat"><?php $_block_plugin1 = isset($_smarty_tpl->smarty->registered_plugins['block']['translate'][0]) ? $_smarty_tpl->smarty->registered_plugins['block']['translate'][0] : null;
if (!is_callable($_block_plugin1)) {
throw new SmartyException('block tag \'translate\' not callable or registered');
}
$_smarty_tpl->smarty->_cache['_tag_stack'][] = array('translate', array('app'=>"framework"));
$_block_repeat1=true;
echo $_block_plugin1(array('app'=>"framework"), null, $_smarty_tpl, $_block_repeat1);
while ($_block_repeat1) {
ob_start();
?>
profile<?php $_block_repeat1=false;
echo $_block_plugin1(array('app'=>"framework"), ob_get_clean(), $_smarty_tpl, $_block_repeat1);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>
</a>
						<!--/div-->
					</li>
					<!-- Menu Footer-->
					<li class="user-footer">
						<!--div class="pull-left">
							<a href="<?php echo $_smarty_tpl->tpl_vars['breadcrumbEntries']->value[1]['href'];?>
" class="btn btn-default btn-flat"><?php $_block_plugin1 = isset($_smarty_tpl->smarty->registered_plugins['block']['translate'][0]) ? $_smarty_tpl->smarty->registered_plugins['block']['translate'][0] : null;
if (!is_callable($_block_plugin1)) {
throw new SmartyException('block tag \'translate\' not callable or registered');
}
$_smarty_tpl->smarty->_cache['_tag_stack'][] = array('translate', array('app'=>"framework"));
$_block_repeat1=true;
echo $_block_plugin1(array('app'=>"framework"), null, $_smarty_tpl, $_block_repeat1);
while ($_block_repeat1) {
ob_start();
?>
backToMoodleCourse<?php $_block_repeat1=false;
echo $_block_plugin1(array('app'=>"framework"), ob_get_clean(), $_smarty_tpl, $_block_repeat1);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>
</a>
						</div>
						<div class="pull-right"-->
							<a href="<?php echo $_smarty_tpl->tpl_vars['baseurl']->value;?>
/login/logout.php?sesskey=<?php echo $_smarty_tpl->tpl_vars['sessKey']->value;?>
" class="btn btn-default btn-flat"><?php $_block_plugin1 = isset($_smarty_tpl->smarty->registered_plugins['block']['translate'][0]) ? $_smarty_tpl->smarty->registered_plugins['block']['translate'][0] : null;
if (!is_callable($_block_plugin1)) {
throw new SmartyException('block tag \'translate\' not callable or registered');
}
$_smarty_tpl->smarty->_cache['_tag_stack'][] = array('translate', array('app'=>"framework"));
$_block_repeat1=true;
echo $_block_plugin1(array('app'=>"framework"), null, $_smarty_tpl, $_block_repeat1);
while ($_block_repeat1) {
ob_start();
?>
sign-out<?php $_block_repeat1=false;
echo $_block_plugin1(array('app'=>"framework"), ob_get_clean(), $_smarty_tpl, $_block_repeat1);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>
</a>
						<!--/div-->
					</li>
				</ul>
			</li>
		</ul>
	</div>
</nav>
<?php }
}
