<?php
/* Smarty version 3.1.33, created on 2019-06-19 08:48:00
  from '/opt/moodle/mod/kuink/theme/adminlte/template/Master_left-navbar.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5d09f6c03cc470_14119104',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'a743081ce66de7b122ff87ee0b893001173dbb94' => 
    array (
      0 => '/opt/moodle/mod/kuink/theme/adminlte/template/Master_left-navbar.tpl',
      1 => 1516813824,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5d09f6c03cc470_14119104 (Smarty_Internal_Template $_smarty_tpl) {
?><!-- Left side column. contains the logo and sidebar -->
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
