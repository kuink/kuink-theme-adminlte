<?php
/* Smarty version 3.1.33, created on 2020-06-03 11:59:52
  from '/media/sf_local-development/code/kuink-bridge-standalone/vendor/kuink/kuink-theme-adminlte/template/app_toggleMenu.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5ed790b80c6731_94014719',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '2da49ef6391f4e2f351dc1eef24b13e59cd17b03' => 
    array (
      0 => '/media/sf_local-development/code/kuink-bridge-standalone/vendor/kuink/kuink-theme-adminlte/template/app_toggleMenu.tpl',
      1 => 1575365758,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5ed790b80c6731_94014719 (Smarty_Internal_Template $_smarty_tpl) {
?><!-- Sidebar -->
<?php if ($_smarty_tpl->tpl_vars['menuIsToggled']->value == false) {?>
	<div id="sidebar-wrapper" style="overflow: hidden; display: none;margin-right: 20px; float: left;">
		<ul style="list-style: none;" class="nav nav-pills nav-stacked">
			<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['menuEntries']->value, 'menu');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['menu']->value) {
?>
				<?php $_smarty_tpl->smarty->ext->_tplFunction->callTemplateFunction($_smarty_tpl, 'createLeftMenu', array('menu'=>$_smarty_tpl->tpl_vars['menu']->value,'submenu'=>false,'menuType'=>'toggle'), true);?>

			<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
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
				<?php $_smarty_tpl->smarty->ext->_tplFunction->callTemplateFunction($_smarty_tpl, 'createLeftMenu', array('menu'=>$_smarty_tpl->tpl_vars['menu']->value,'submenu'=>false,'menuType'=>'toggled'), true);?>

			<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
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
