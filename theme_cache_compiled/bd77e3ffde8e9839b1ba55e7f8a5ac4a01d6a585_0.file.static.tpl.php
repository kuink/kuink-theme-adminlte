<?php
/* Smarty version 3.1.30, created on 2018-12-01 14:53:39
  from "/opt/moodle/mod/kuink/theme/adminlte/ui/control/grid/static.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c02a07326d034_88797108',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'bd77e3ffde8e9839b1ba55e7f8a5ac4a01d6a585' => 
    array (
      0 => '/opt/moodle/mod/kuink/theme/adminlte/ui/control/grid/static.tpl',
      1 => 1515496186,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c02a07326d034_88797108 (Smarty_Internal_Template $_smarty_tpl) {
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
