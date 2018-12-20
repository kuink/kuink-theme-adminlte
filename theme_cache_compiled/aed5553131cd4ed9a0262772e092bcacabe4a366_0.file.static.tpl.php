<?php
/* Smarty version 3.1.30, created on 2018-12-01 14:45:39
  from "/opt/kuink-dev/kuink-bridge-standalone/public/theme/adminlte/ui/control/grid/static.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c029e9346b599_67093605',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'aed5553131cd4ed9a0262772e092bcacabe4a366' => 
    array (
      0 => '/opt/kuink-dev/kuink-bridge-standalone/public/theme/adminlte/ui/control/grid/static.tpl',
      1 => 1515496186,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c029e9346b599_67093605 (Smarty_Internal_Template $_smarty_tpl) {
if ($_smarty_tpl->tpl_vars['value']->value['colAction_constructor'] != '') {?>
	<a href="javascript: gridActionField_<?php echo $_smarty_tpl->tpl_vars['_guid']->value;?>
(false, '', '<?php echo $_smarty_tpl->tpl_vars['value']->value['colAction_constructor']['url'];?>
', '');"><?php echo $_smarty_tpl->tpl_vars['value']->value['colAction_constructor']['label'];?>
</a>&nbsp;
<?php } else { ?>
	<?php echo $_smarty_tpl->tpl_vars['value']->value['value'];?>

<?php }
}
}
