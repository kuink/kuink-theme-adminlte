<?php
/* Smarty version 3.1.30, created on 2018-12-01 14:53:30
  from "/var/www/html/kuink/theme/adminlte/ui/control/grid/static.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c02a06af39367_12489428',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'eb5ef0213e4ee2ee2e0e6570f6d90fb47e5c8f48' => 
    array (
      0 => '/var/www/html/kuink/theme/adminlte/ui/control/grid/static.tpl',
      1 => 1515496186,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c02a06af39367_12489428 (Smarty_Internal_Template $_smarty_tpl) {
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
