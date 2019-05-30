<?php
/* Smarty version 3.1.30, created on 2018-12-11 10:05:18
  from "/opt/moodle/mod/kuink/theme/adminlte/ui/control/grid/textarea.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c0f8bde7b3811_12704294',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '5e9ce163b78bbf4c4c5f38be3e9575d5c67a8f6c' => 
    array (
      0 => '/opt/moodle/mod/kuink/theme/adminlte/ui/control/grid/textarea.tpl',
      1 => 1515496186,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c0f8bde7b3811_12704294 (Smarty_Internal_Template $_smarty_tpl) {
?>
<textarea class="input-medium <?php echo $_smarty_tpl->tpl_vars['disabledClass']->value;?>
" <?php echo $_smarty_tpl->tpl_vars['disabledAttr']->value;?>
 id="<?php echo $_smarty_tpl->tpl_vars['id']->value;
echo $_smarty_tpl->tpl_vars['multiSeparator']->value;
echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['name'];?>
" name="<?php echo $_smarty_tpl->tpl_vars['id']->value;
echo $_smarty_tpl->tpl_vars['multiSeparator']->value;
echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['name'];?>
" rows="<?php echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['rows'];?>
" cols="<?php echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['cols'];?>
" onchange='<?php echo $_smarty_tpl->tpl_vars['onChange']->value;?>
'><?php echo $_smarty_tpl->tpl_vars['value']->value['value'];?>
</textarea>
<?php }
}
