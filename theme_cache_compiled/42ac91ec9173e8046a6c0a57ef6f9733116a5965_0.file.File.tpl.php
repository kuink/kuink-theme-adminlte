<?php
/* Smarty version 3.1.30, created on 2018-12-04 16:48:15
  from "/opt/moodle/mod/kuink/theme/adminlte/ui/control/form/File.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c06afcfe96d24_34222989',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '42ac91ec9173e8046a6c0a57ef6f9733116a5965' => 
    array (
      0 => '/opt/moodle/mod/kuink/theme/adminlte/ui/control/form/File.tpl',
      1 => 1519987183,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c06afcfe96d24_34222989 (Smarty_Internal_Template $_smarty_tpl) {
if (!is_callable('smarty_block_translate')) require_once '/opt/kuink-dev/kuink-core/lib/tools/smarty/plugins/block.translate.php';
?>
<div class="controls">
  <?php if ($_smarty_tpl->tpl_vars['field']->value['attributes']['icon'] != '') {?>
    <div class="input-prepend">
      <span class="add-on"><i class="icon-<?php echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['icon'];?>
"></i></span>
      <input type="file" class="input-file <?php echo $_smarty_tpl->tpl_vars['disabledClass']->value;?>
" id="<?php echo $_smarty_tpl->tpl_vars['fieldID']->value;?>
" name="<?php echo $_smarty_tpl->tpl_vars['fieldID']->value;?>
"
    </div>
  <?php } else { ?>
    <input type="file" class="input-file <?php echo $_smarty_tpl->tpl_vars['disabledClass']->value;?>
" id="<?php echo $_smarty_tpl->tpl_vars['fieldID']->value;?>
" name="<?php echo $_smarty_tpl->tpl_vars['fieldID']->value;?>
"
  <?php }?>
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
	
	<?php if ($_smarty_tpl->tpl_vars['field']->value['attributes']['allowdelete'] == "true" && $_smarty_tpl->tpl_vars['field']->value['original'] != '' && $_smarty_tpl->tpl_vars['field']->value['original'] != null) {?>
		<input type="checkbox" id="<?php echo $_smarty_tpl->tpl_vars['fieldID']->value;?>
_delete" name="<?php echo $_smarty_tpl->tpl_vars['fieldID']->value;?>
_delete" />&nbsp;<?php $_smarty_tpl->smarty->_cache['_tag_stack'][] = array('translate', array());
$_block_repeat1=true;
echo smarty_block_translate(array(), null, $_smarty_tpl, $_block_repeat1);
while ($_block_repeat1) {
ob_start();
?>
delete<?php $_block_repeat1=false;
echo smarty_block_translate(array(), ob_get_clean(), $_smarty_tpl, $_block_repeat1);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>

	<?php }?>
	<?php if ($_smarty_tpl->tpl_vars['field']->value['original'] != '' && $_smarty_tpl->tpl_vars['field']->value['original'] != null) {?>
		<?php echo $_smarty_tpl->tpl_vars['field']->value['value'];?>

	<?php }?>	

</div>
<?php }
}
