<?php
/* Smarty version 3.1.30, created on 2018-12-01 02:51:34
  from "/opt/kuink-dev/kuink-bridge-standalone/public/theme/adminlte/template/Master_left-navbar.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c01f7366da9b3_60412750',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'a82aa98359a3383c63d4a4bd25db41dc1b78f0d3' => 
    array (
      0 => '/opt/kuink-dev/kuink-bridge-standalone/public/theme/adminlte/template/Master_left-navbar.tpl',
      1 => 1516813824,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c01f7366da9b3_60412750 (Smarty_Internal_Template $_smarty_tpl) {
?>
<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar">
		<!-- Sidebar user panel -->
		<div class="user-panel">
			<div class="pull-left image" style="text-align:center !important;float:none !important;">
				<?php if ($_smarty_tpl->tpl_vars['_environment']->value == 'dev') {?>
					<img src="<?php echo $_smarty_tpl->tpl_vars['_imageUrl']->value;?>
photo/default.jpg"
				<?php } else { ?>
					<img src="<?php echo $_smarty_tpl->tpl_vars['imageSrc']->value;
echo $_smarty_tpl->tpl_vars['_user']->value['publicKey'];
if (($_smarty_tpl->tpl_vars['_imageUrl']->value != '')) {?>.jpg<?php }?>"
				<?php }?>
					class="img-circle" alt="User Image"/>
			</div>
			<div class="pull-left info" style="text-align:center !important;position:static !important;float:none !important;padding-left:5px !important;">
				<p><?php echo $_smarty_tpl->tpl_vars['userDisplayName']->value;?>
</p>
			</div>
		</div>

		

	</section>
	<!-- /.sidebar -->
</aside>
<?php }
}
