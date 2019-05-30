<?php
/* Smarty version 3.1.30, created on 2018-11-02 10:22:14
  from "/opt/kuink-dev/kuink-bridge-moodle/theme/adminlte/template/app_toggleMenu.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5bdc2556d28538_46995092',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '5580377e2365a9926ecfed5632ca25cb904ff04f' => 
    array (
      0 => '/opt/kuink-dev/kuink-bridge-moodle/theme/adminlte/template/app_toggleMenu.tpl',
      1 => 1516630246,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5bdc2556d28538_46995092 (Smarty_Internal_Template $_smarty_tpl) {
?>
<!-- Sidebar -->
<?php if ($_smarty_tpl->tpl_vars['menuIsToggled']->value == false) {?>
	<div id="sidebar-wrapper" style="overflow: hidden; display: none;margin-right: 20px; float: left;">
		<ul style="list-style: none;" class="nav nav-pills nav-stacked">
			<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['menuEntries']->value, 'menu');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['menu']->value) {
?>
				<?php $_smarty_tpl->ext->_tplFunction->callTemplateFunction($_smarty_tpl, 'createLeftMenu', array('menu'=>$_smarty_tpl->tpl_vars['menu']->value,'submenu'=>false,'menuType'=>'toggle'), true);?>

			<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

		</ul>
	</div>
<?php } else { ?>
	<div id="iconMenuToggled" style="display: block;margin-right:20px;float:left;">
		<ul style="list-style: none;" class="nav nav-pills nav-stacked" id="toggleMenuChildren">
			<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['menuEntries']->value, 'menu');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['menu']->value) {
?>
				<?php $_smarty_tpl->ext->_tplFunction->callTemplateFunction($_smarty_tpl, 'createLeftMenu', array('menu'=>$_smarty_tpl->tpl_vars['menu']->value,'submenu'=>false,'menuType'=>'toggled'), true);?>

			<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

		</ul>
	</div>

<?php }?>
<!-- /#sidebar-wrapper -->
<?php echo '<script'; ?>
>
$(document).ready(function(){
	$("[data-tt=tooltip]").tooltip();
	if(typeof window.toggleMenuIsVisible !== 'undefined') {
		if(window.toggleMenuIsVisible == false){
			if($("#sidebar-wrapper").is(":visible") == true){
				$("#wrapper").toggleClass("toggled");
			}
			$("#sidebar-wrapper").fadeOut('fast');
			$("#iconMenuToggled").fadeIn('fast');
		} else {
			if($("#sidebar-wrapper").is(":visible") == false){
				$("#wrapper").toggleClass("toggled");
			}
			$("#sidebar-wrapper").fadeIn('fast');
			$("#iconMenuToggled").fadeOut('fast');
		}
	}

	var hasMenu = document.getElementById("toggleMenuChildren");
	if(hasMenu != null) {
		if(hasMenu.hasChildNodes())
			$("#sidebarMenu").fadeIn('fast');
	} else {
		if(!hasMenu.hasChildNodes())
			$("#sidebarMenu").fadeOut('fast');
	}});
<?php echo '</script'; ?>
>
<?php }
}
