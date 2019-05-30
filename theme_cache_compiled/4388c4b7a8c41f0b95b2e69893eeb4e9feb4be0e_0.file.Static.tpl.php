<?php
/* Smarty version 3.1.30, created on 2018-12-01 15:32:13
  from "/opt/moodle/mod/kuink/theme/adminlte/ui/control/form/Static.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c02a97dcc4857_79688142',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '4388c4b7a8c41f0b95b2e69893eeb4e9feb4be0e' => 
    array (
      0 => '/opt/moodle/mod/kuink/theme/adminlte/ui/control/form/Static.tpl',
      1 => 1519748684,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c02a97dcc4857_79688142 (Smarty_Internal_Template $_smarty_tpl) {
?>
<!-- <label class="control-label" for="<?php echo $_smarty_tpl->tpl_vars['fieldName']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['field']->value['value'];?>
</label> -->
<span><?php echo $_smarty_tpl->tpl_vars['field']->value['value'];?>
</span>
<input id="<?php echo $_smarty_tpl->tpl_vars['fieldGuid']->value;?>
" name="<?php echo $_smarty_tpl->tpl_vars['fieldName']->value;?>
" type="hidden" disabled="true" value="<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['field']->value['original'], ENT_QUOTES, 'UTF-8', true);?>
"/>

<?php }
}
