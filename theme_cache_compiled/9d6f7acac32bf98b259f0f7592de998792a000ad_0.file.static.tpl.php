<?php
/* Smarty version 3.1.30, created on 2018-12-01 14:45:44
  from "/opt/kuink-dev/kuink-bridge-moodle/theme/adminlte/ui/control/grid/static.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c029e980e9430_41403920',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '9d6f7acac32bf98b259f0f7592de998792a000ad' => 
    array (
      0 => '/opt/kuink-dev/kuink-bridge-moodle/theme/adminlte/ui/control/grid/static.tpl',
      1 => 1515496186,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c029e980e9430_41403920 (Smarty_Internal_Template $_smarty_tpl) {
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
