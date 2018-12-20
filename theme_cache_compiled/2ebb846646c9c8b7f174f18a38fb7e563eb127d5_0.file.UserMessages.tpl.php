<?php
/* Smarty version 3.1.30, created on 2018-12-01 14:51:28
  from "/var/www/html/kuink/theme/adminlte/template/UserMessages.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c029ff08b7a83_33587331',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '2ebb846646c9c8b7f174f18a38fb7e563eb127d5' => 
    array (
      0 => '/var/www/html/kuink/theme/adminlte/template/UserMessages.tpl',
      1 => 1515496186,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c029ff08b7a83_33587331 (Smarty_Internal_Template $_smarty_tpl) {
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['userMessages']->value, 'message');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['message']->value) {
?>
	<?php $_smarty_tpl->_assignInScope('messageClass', "alert-info");
?>
	<?php $_smarty_tpl->_assignInScope('messageIcon', 'info');
?>
	<?php if ($_smarty_tpl->tpl_vars['message']->value['type'] == "error") {?>
		<?php $_smarty_tpl->_assignInScope('messageClass', "alert-danger");
?>
		<?php $_smarty_tpl->_assignInScope('messageIcon', 'ban');
?>
	<?php } elseif ($_smarty_tpl->tpl_vars['message']->value['type'] == "information") {?>
		<?php $_smarty_tpl->_assignInScope('messageClass', "alert-info");
?>
		<?php $_smarty_tpl->_assignInScope('messageIcon', 'info');
?>
	<?php } elseif ($_smarty_tpl->tpl_vars['message']->value['type'] == "success") {?>
		<?php $_smarty_tpl->_assignInScope('messageClass', "alert-success");
?>
		<?php $_smarty_tpl->_assignInScope('messageIcon', 'check');
?>
	<?php } elseif ($_smarty_tpl->tpl_vars['message']->value['type'] == "warning") {?>
		<?php $_smarty_tpl->_assignInScope('messageClass', "alert-warning");
?>
		<?php $_smarty_tpl->_assignInScope('messageIcon', 'warning');
?>
	<?php } elseif ($_smarty_tpl->tpl_vars['message']->value['type'] == "exception") {?>
		<?php $_smarty_tpl->_assignInScope('messageClass', "alert-error");
?>
		<?php $_smarty_tpl->_assignInScope('messageIcon', 'danger');
?>
	<?php }?>


	<div class="alert <?php echo $_smarty_tpl->tpl_vars['messageClass']->value;?>
 alert-dismissable">
		<i class="fa fa-<?php echo $_smarty_tpl->tpl_vars['messageIcon']->value;?>
"></i>
		<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
		<?php echo $_smarty_tpl->tpl_vars['message']->value['text'];?>

	</div>
<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

<?php }
}
