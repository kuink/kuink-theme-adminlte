<?php
/* Smarty version 3.1.33, created on 2019-07-23 10:15:52
  from '/opt/moodle/mod/kuink/theme/adminlte/ui/control/form/Hidden.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5d36de58dd4007_90012001',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '65b628cece16821238cd2dbaca4508fc85325a21' => 
    array (
      0 => '/opt/moodle/mod/kuink/theme/adminlte/ui/control/form/Hidden.tpl',
      1 => 1495732824,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5d36de58dd4007_90012001 (Smarty_Internal_Template $_smarty_tpl) {
?><input type="hidden" id="<?php echo $_smarty_tpl->tpl_vars['fieldGuid']->value;?>
" name="<?php echo $_smarty_tpl->tpl_vars['fieldName']->value;?>
" value="<?php echo $_smarty_tpl->tpl_vars['field']->value['value'];?>
" />
<?php }
}
