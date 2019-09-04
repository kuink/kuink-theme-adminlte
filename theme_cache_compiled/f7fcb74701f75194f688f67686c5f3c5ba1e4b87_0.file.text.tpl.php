<?php
/* Smarty version 3.1.33, created on 2019-07-04 08:49:35
  from '/opt/moodle/mod/kuink/theme/adminlte/ui/control/grid/text.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5d1dbd9f0cecc1_29350513',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'f7fcb74701f75194f688f67686c5f3c5ba1e4b87' => 
    array (
      0 => '/opt/moodle/mod/kuink/theme/adminlte/ui/control/grid/text.tpl',
      1 => 1495732824,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5d1dbd9f0cecc1_29350513 (Smarty_Internal_Template $_smarty_tpl) {
?><input class="input-<?php echo $_smarty_tpl->tpl_vars['inputSize']->value;?>
 <?php echo $_smarty_tpl->tpl_vars['disabledClass']->value;?>
" <?php echo $_smarty_tpl->tpl_vars['disabledAttr']->value;?>
 id="<?php echo $_smarty_tpl->tpl_vars['id']->value;
echo $_smarty_tpl->tpl_vars['multiSeparator']->value;
echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['name'];?>
" name="<?php echo $_smarty_tpl->tpl_vars['id']->value;
echo $_smarty_tpl->tpl_vars['multiSeparator']->value;
echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['name'];?>
" onchange='<?php echo $_smarty_tpl->tpl_vars['onChange']->value;?>
' value="<?php echo $_smarty_tpl->tpl_vars['value']->value['value'];?>
"></input>
<?php }
}
