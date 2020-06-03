<?php
/* Smarty version 3.1.33, created on 2020-06-02 15:45:13
  from '/media/sf_local-development/code/kuink-bridge-standalone/vendor/kuink/kuink-theme-adminlte/ui/control/form/Checkbox.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5ed67409e10947_82651061',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '36f5cf742c3d2e895683052dec0cb3ae497ed41d' => 
    array (
      0 => '/media/sf_local-development/code/kuink-bridge-standalone/vendor/kuink/kuink-theme-adminlte/ui/control/form/Checkbox.tpl',
      1 => 1575365758,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5ed67409e10947_82651061 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="checkbox">

	<?php $_smarty_tpl->_assignInScope('value', 0);?>
	<?php if ($_smarty_tpl->tpl_vars['field']->value['value'] != '') {?>
		<?php $_smarty_tpl->_assignInScope('value', $_smarty_tpl->tpl_vars['field']->value['value']);?>
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
