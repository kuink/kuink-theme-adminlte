<?php
/* Smarty version 3.1.33, created on 2019-07-08 09:21:09
  from '/opt/moodle/mod/kuink/theme/adminlte/ui/control/form/CheckBoxList.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5d230b051dae92_15391291',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'fae67d99e3772aeb373f74d3f09dd316e46415c6' => 
    array (
      0 => '/opt/moodle/mod/kuink/theme/adminlte/ui/control/form/CheckBoxList.tpl',
      1 => 1539270874,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5d230b051dae92_15391291 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="controls form-group">
		<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['field']->value['options'], 'optionLabel', false, 'optionValue');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['optionValue']->value => $_smarty_tpl->tpl_vars['optionLabel']->value) {
?>
			<?php if ($_smarty_tpl->tpl_vars['optionValue']->value != '') {?>
				<div class="checkbox">
					<label>
						<input type="hidden" name="<?php echo $_smarty_tpl->tpl_vars['fieldID']->value;?>
_<?php echo $_smarty_tpl->tpl_vars['optionValue']->value;?>
" value="0">
						<input type="checkbox" <?php echo $_smarty_tpl->tpl_vars['disabledAttr']->value;?>
 class="<?php echo $_smarty_tpl->tpl_vars['disabledClass']->value;?>
" id="<?php echo $_smarty_tpl->tpl_vars['fieldID']->value;?>
_<?php echo $_smarty_tpl->tpl_vars['optionValue']->value;?>
" name="<?php echo $_smarty_tpl->tpl_vars['fieldID']->value;?>
_<?php echo $_smarty_tpl->tpl_vars['optionValue']->value;?>
" value="1"  <?php if ($_smarty_tpl->tpl_vars['field']->value['value'][$_smarty_tpl->tpl_vars['optionValue']->value] == 1) {?>checked<?php }?>/>

						&nbsp;<?php echo $_smarty_tpl->tpl_vars['optionLabel']->value;?>

					</label>
				</div>
			<?php }?>
		<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
</div>
<?php }
}
