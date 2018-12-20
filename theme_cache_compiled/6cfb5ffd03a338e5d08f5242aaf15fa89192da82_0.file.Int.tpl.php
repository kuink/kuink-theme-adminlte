<?php
/* Smarty version 3.1.30, created on 2018-12-04 14:53:14
  from "/opt/moodle/mod/kuink/theme/adminlte/ui/control/form/Int.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c0694da69b021_91014997',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '6cfb5ffd03a338e5d08f5242aaf15fa89192da82' => 
    array (
      0 => '/opt/moodle/mod/kuink/theme/adminlte/ui/control/form/Int.tpl',
      1 => 1517499932,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c0694da69b021_91014997 (Smarty_Internal_Template $_smarty_tpl) {
if (!is_callable('smarty_block_translate')) require_once '/opt/kuink-dev/kuink-core/lib/tools/smarty/plugins/block.translate.php';
?>
<input type="text" id="<?php echo $_smarty_tpl->tpl_vars['fieldGuid']->value;?>
" name="<?php echo $_smarty_tpl->tpl_vars['fieldName']->value;?>
" <?php echo $_smarty_tpl->tpl_vars['disabledAttr']->value;?>

	class="form-control <?php echo $_smarty_tpl->tpl_vars['disabledClass']->value;?>
"
	data-bv-integer="true" 
	data-bv-integer-message="<?php $_smarty_tpl->smarty->_cache['_tag_stack'][] = array('translate', array('app'=>"framework"));
$_block_repeat1=true;
echo smarty_block_translate(array('app'=>"framework"), null, $_smarty_tpl, $_block_repeat1);
while ($_block_repeat1) {
ob_start();
?>
integerField<?php $_block_repeat1=false;
echo smarty_block_translate(array('app'=>"framework"), ob_get_clean(), $_smarty_tpl, $_block_repeat1);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>
"
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
