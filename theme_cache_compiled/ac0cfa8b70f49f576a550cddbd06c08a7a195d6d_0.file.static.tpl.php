<?php
/* Smarty version 3.1.33, created on 2019-12-19 11:57:08
  from '/media/sf_local-development/code/kuink-bridge-standalone/vendor/kuink/kuink-theme-adminlte/ui/control/grid/static.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5dfb659402a7c9_18064674',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'ac0cfa8b70f49f576a550cddbd06c08a7a195d6d' => 
    array (
      0 => '/media/sf_local-development/code/kuink-bridge-standalone/vendor/kuink/kuink-theme-adminlte/ui/control/grid/static.tpl',
      1 => 1575365758,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5dfb659402a7c9_18064674 (Smarty_Internal_Template $_smarty_tpl) {
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
