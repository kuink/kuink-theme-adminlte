<?php
/* Smarty version 3.1.30, created on 2018-12-11 10:23:18
  from "/opt/moodle/mod/kuink/theme/adminlte/ui/control/grid/checkbox.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c0f901649d403_33881110',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'cf9f6b25be05ea5130cbde107b038885eee1c8bb' => 
    array (
      0 => '/opt/moodle/mod/kuink/theme/adminlte/ui/control/grid/checkbox.tpl',
      1 => 1515496186,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c0f901649d403_33881110 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_assignInScope('_value', 0);
if ($_smarty_tpl->tpl_vars['value']->value['value'] != '') {?>
	<?php $_smarty_tpl->_assignInScope('_value', $_smarty_tpl->tpl_vars['value']->value['value']);
}?>

<input type="hidden" name="<?php echo $_smarty_tpl->tpl_vars['id']->value;
echo $_smarty_tpl->tpl_vars['multiSeparator']->value;
echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['name'];?>
" value="0" />
<input type="checkbox" class="input-medium grid-class-<?php echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['name'];?>
 <?php echo $_smarty_tpl->tpl_vars['disabledClass']->value;?>
" <?php echo $_smarty_tpl->tpl_vars['disabledAttr']->value;?>
 id="<?php echo $_smarty_tpl->tpl_vars['id']->value;
echo $_smarty_tpl->tpl_vars['multiSeparator']->value;
echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['name'];?>
" name="<?php echo $_smarty_tpl->tpl_vars['id']->value;
echo $_smarty_tpl->tpl_vars['multiSeparator']->value;
echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['name'];?>
" value="1" <?php if ($_smarty_tpl->tpl_vars['_value']->value == 1) {?>checked<?php }?> onclick='<?php echo $_smarty_tpl->tpl_vars['onChange']->value;?>
' />
<?php }
}
