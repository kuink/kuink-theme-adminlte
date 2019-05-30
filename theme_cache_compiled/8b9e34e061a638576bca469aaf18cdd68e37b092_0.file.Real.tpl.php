<?php
/* Smarty version 3.1.30, created on 2019-01-31 13:59:32
  from "/opt/moodle/mod/kuink/theme/adminlte/ui/control/form/Real.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c52ff44258202_08833235',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '8b9e34e061a638576bca469aaf18cdd68e37b092' => 
    array (
      0 => '/opt/moodle/mod/kuink/theme/adminlte/ui/control/form/Real.tpl',
      1 => 1517500460,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c52ff44258202_08833235 (Smarty_Internal_Template $_smarty_tpl) {
if (!is_callable('smarty_block_translate')) require_once '/opt/kuink-dev/kuink-core/lib/tools/smarty/plugins/block.translate.php';
?>
<input type="text" id="<?php echo $_smarty_tpl->tpl_vars['fieldGuid']->value;?>
" name="<?php echo $_smarty_tpl->tpl_vars['fieldName']->value;?>
" <?php echo $_smarty_tpl->tpl_vars['disabledAttr']->value;?>

	class="form-control <?php echo $_smarty_tpl->tpl_vars['disabledClass']->value;?>
"
	data-bv-numeric="true" 
	data-bv-numeric-message="<?php $_smarty_tpl->smarty->_cache['_tag_stack'][] = array('translate', array('app'=>"framework"));
$_block_repeat1=true;
echo smarty_block_translate(array('app'=>"framework"), null, $_smarty_tpl, $_block_repeat1);
while ($_block_repeat1) {
ob_start();
?>
realField<?php $_block_repeat1=false;
echo smarty_block_translate(array('app'=>"framework"), ob_get_clean(), $_smarty_tpl, $_block_repeat1);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>
"
	data-bv-numeric-decimalseparator="." 
	maxlength="<?php echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['maxlength'];?>
"
	value="<?php echo $_smarty_tpl->tpl_vars['field']->value['value'];?>
"
	<?php if ($_smarty_tpl->tpl_vars['field']->value['attributes']['required'] == 'true') {?>
		data-bv-notempty data-bv-notempty-message="<?php $_smarty_tpl->smarty->_cache['_tag_stack'][] = array('translate', array('app'=>"framework"));
$_block_repeat1=true;
echo smarty_block_translate(array('app'=>"framework"), null, $_smarty_tpl, $_block_repeat1);
while ($_block_repeat1) {
ob_start();
?>
requiredField<?php $_block_repeat1=false;
echo smarty_block_translate(array('app'=>"framework"), ob_get_clean(), $_smarty_tpl, $_block_repeat1);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>
"
	<?php }?>/>
<?php }
}
