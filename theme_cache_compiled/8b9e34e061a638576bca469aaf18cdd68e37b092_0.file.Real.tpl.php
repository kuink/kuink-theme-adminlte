<?php
/* Smarty version 3.1.33, created on 2019-07-08 09:21:09
  from '/opt/moodle/mod/kuink/theme/adminlte/ui/control/form/Real.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5d230b0518f968_60100666',
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
function content_5d230b0518f968_60100666 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'/opt/kuink-dev/kuink-core/lib/tools/smarty/plugins/block.translate.php','function'=>'smarty_block_translate',),));
?>
<input type="text" id="<?php echo $_smarty_tpl->tpl_vars['fieldGuid']->value;?>
" name="<?php echo $_smarty_tpl->tpl_vars['fieldName']->value;?>
" <?php echo $_smarty_tpl->tpl_vars['disabledAttr']->value;?>

	class="form-control <?php echo $_smarty_tpl->tpl_vars['disabledClass']->value;?>
"
	data-bv-numeric="true" 
	data-bv-numeric-message="<?php $_smarty_tpl->smarty->_cache['_tag_stack'][] = array('translate', array('app'=>"framework"));
$_block_repeat=true;
echo smarty_block_translate(array('app'=>"framework"), null, $_smarty_tpl, $_block_repeat);
while ($_block_repeat) {
ob_start();?>realField<?php $_block_repeat=false;
echo smarty_block_translate(array('app'=>"framework"), ob_get_clean(), $_smarty_tpl, $_block_repeat);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>"
	data-bv-numeric-decimalseparator="." 
	maxlength="<?php echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['maxlength'];?>
"
	value="<?php echo $_smarty_tpl->tpl_vars['field']->value['value'];?>
"
	<?php if ($_smarty_tpl->tpl_vars['field']->value['attributes']['required'] == 'true') {?>
		data-bv-notempty data-bv-notempty-message="<?php $_smarty_tpl->smarty->_cache['_tag_stack'][] = array('translate', array('app'=>"framework"));
$_block_repeat=true;
echo smarty_block_translate(array('app'=>"framework"), null, $_smarty_tpl, $_block_repeat);
while ($_block_repeat) {
ob_start();?>requiredField<?php $_block_repeat=false;
echo smarty_block_translate(array('app'=>"framework"), ob_get_clean(), $_smarty_tpl, $_block_repeat);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>"
	<?php }?>/>
<?php }
}
