<?php
/* Smarty version 3.1.30, created on 2018-12-04 17:35:26
  from "/opt/moodle/mod/kuink/theme/adminlte/ui/control/form/Checkbox.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c06badeec7585_18352404',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '9f2b41d4c182a9492ec3b7897fcad3558eb8810c' => 
    array (
      0 => '/opt/moodle/mod/kuink/theme/adminlte/ui/control/form/Checkbox.tpl',
      1 => 1539208324,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c06badeec7585_18352404 (Smarty_Internal_Template $_smarty_tpl) {
?>
<div class="checkbox">

	<?php $_smarty_tpl->_assignInScope('value', 0);
?>
	<?php if ($_smarty_tpl->tpl_vars['field']->value['value'] != '') {?>
		<?php $_smarty_tpl->_assignInScope('value', $_smarty_tpl->tpl_vars['field']->value['value']);
?>
	<?php }?>
	<label>
		
		<input type="hidden" name="<?php echo $_smarty_tpl->tpl_vars['fieldID']->value;?>
" value="0">
		<input type="checkbox" <?php echo $_smarty_tpl->tpl_vars['disabledAttr']->value;?>
 class="<?php echo $_smarty_tpl->tpl_vars['disabledClass']->value;?>
"
			id="<?php echo $_smarty_tpl->tpl_vars['fieldGuid']->value;?>
" name="<?php echo $_smarty_tpl->tpl_vars['fieldName']->value;?>
" value="1" <?php if ($_smarty_tpl->tpl_vars['field']->value['value'] == '1') {?>checked<?php }?>>
	</label>
</div>
<?php }
}
