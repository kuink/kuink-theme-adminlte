<?php
/* Smarty version 3.1.33, created on 2019-07-08 09:25:37
  from '/opt/moodle/mod/kuink/theme/adminlte/ui/control/grid/select.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5d230c11f12f45_45343643',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'caec0eddbcdbf8af4fb887d221bbf0556981e24c' => 
    array (
      0 => '/opt/moodle/mod/kuink/theme/adminlte/ui/control/grid/select.tpl',
      1 => 1521733175,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5d230c11f12f45_45343643 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_assignInScope('options', $_smarty_tpl->tpl_vars['fieldAttrs']->value['options']);?>
<div id="<?php echo $_smarty_tpl->tpl_vars['id']->value;
echo $_smarty_tpl->tpl_vars['multiSeparator']->value;
echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['name'];?>
CG" class="control-group" >
	<select id="<?php echo $_smarty_tpl->tpl_vars['id']->value;
echo $_smarty_tpl->tpl_vars['multiSeparator']->value;
echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['name'];?>
" name="<?php echo $_smarty_tpl->tpl_vars['id']->value;
echo $_smarty_tpl->tpl_vars['multiSeparator']->value;
echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['name'];?>
" class="<?php echo $_smarty_tpl->tpl_vars['disabledClass']->value;?>
 form-control" <?php echo $_smarty_tpl->tpl_vars['disabledAttr']->value;?>
 onchange="javascript: setChanged(<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
);">
		<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['options']->value, 'optionLabel', false, 'optionValue');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['optionValue']->value => $_smarty_tpl->tpl_vars['optionLabel']->value) {
?>
			<?php if ($_smarty_tpl->tpl_vars['value']->value['value'] == $_smarty_tpl->tpl_vars['optionValue']->value) {?>
				<option value="<?php echo $_smarty_tpl->tpl_vars['optionValue']->value;?>
" selected><?php echo $_smarty_tpl->tpl_vars['optionLabel']->value;?>
</option>
			<?php } else { ?>
				<option value="<?php echo $_smarty_tpl->tpl_vars['optionValue']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['optionLabel']->value;?>
</option>
			<?php }?>
		<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
	</select>
</div>
<?php }
}
