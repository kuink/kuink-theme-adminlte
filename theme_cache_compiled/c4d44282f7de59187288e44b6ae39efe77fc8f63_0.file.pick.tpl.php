<?php
/* Smarty version 3.1.30, created on 2018-12-06 10:33:39
  from "/opt/moodle/mod/kuink/theme/adminlte/ui/control/grid/pick.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c08fb03e7d5e7_51273181',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'c4d44282f7de59187288e44b6ae39efe77fc8f63' => 
    array (
      0 => '/opt/moodle/mod/kuink/theme/adminlte/ui/control/grid/pick.tpl',
      1 => 1495732824,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c08fb03e7d5e7_51273181 (Smarty_Internal_Template $_smarty_tpl) {
?>
<!-- The pick class is just to jquery select all the pick checkboxes and not the others-->
<input type="checkbox" class="input-medium neon-pick" id="<?php echo $_smarty_tpl->tpl_vars['id']->value;
echo $_smarty_tpl->tpl_vars['multiSeparator']->value;
echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['name'];?>
" name="<?php echo $_smarty_tpl->tpl_vars['id']->value;
echo $_smarty_tpl->tpl_vars['multiSeparator']->value;
echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['name'];?>
" onclick='<?php echo $_smarty_tpl->tpl_vars['onPick']->value;?>
' value="<?php echo $_smarty_tpl->tpl_vars['value']->value['value'];?>
"></input>
<?php }
}
