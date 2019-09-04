<?php
/* Smarty version 3.1.33, created on 2019-06-19 08:47:59
  from '/opt/moodle/mod/kuink/theme/adminlte/ui/control/form/Text.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5d09f6bfde8951_92494161',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '2a5e87de8486d21d81087312754abeadc06ceb94' => 
    array (
      0 => '/opt/moodle/mod/kuink/theme/adminlte/ui/control/form/Text.tpl',
      1 => 1516749551,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5d09f6bfde8951_92494161 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'/opt/kuink-dev/kuink-core/lib/tools/smarty/plugins/block.translate.php','function'=>'smarty_block_translate',),));
?>
<div class="controls" style="<?php if ($_smarty_tpl->tpl_vars['fieldAttrs']->value['inline'] == 'tight') {?>float: left; margin: 0px<?php }?>">

	<?php if ($_smarty_tpl->tpl_vars['fieldAttrs']->value['multilang'] == 'true' && is_array($_smarty_tpl->tpl_vars['field']->value['value'])) {?>
		<!-- This is multilang: load languages from _lang datasource-->	
		<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['_languages']->value, 'language');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['language']->value) {
?>
			<?php $_smarty_tpl->_assignInScope('lang', $_smarty_tpl->tpl_vars['language']->value['country']);?>
			<div class="input-append">
				<input type="text" <?php echo $_smarty_tpl->tpl_vars['disabledAttr']->value;?>
 class="form-control <?php echo $_smarty_tpl->tpl_vars['disabledClass']->value;?>
 popover-dismiss" 
					id="<?php echo $_smarty_tpl->tpl_vars['fieldGuid']->value;?>
_<?php echo $_smarty_tpl->tpl_vars['lang']->value;?>
" name="<?php echo $_smarty_tpl->tpl_vars['fieldName']->value;?>
_<?php echo $_smarty_tpl->tpl_vars['lang']->value;?>
" 
					value="<?php echo $_smarty_tpl->tpl_vars['field']->value['value'][$_smarty_tpl->tpl_vars['lang']->value];?>
" maxlength="<?php echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['maxlength'];?>
"/>
				<span class="add-on"><img src="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/css/flags/blank.gif" class="flag flag-<?php echo $_smarty_tpl->tpl_vars['lang']->value;?>
" alt="<?php echo $_smarty_tpl->tpl_vars['lang']->value;?>
" /></span>
			</div>
		<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
	<?php } else { ?>
		<?php if ($_smarty_tpl->tpl_vars['field']->value['attributes']['icon'] != '') {?>
			<div class="input-prepend">
	      			<span class="add-on"><i class="icon-<?php echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['icon'];?>
"></i></span>
				<input type="text" <?php echo $_smarty_tpl->tpl_vars['disabledAttr']->value;?>
 class="form-control <?php echo $_smarty_tpl->tpl_vars['disabledClass']->value;?>
 popover-dismiss" id="<?php echo $_smarty_tpl->tpl_vars['fieldGuid']->value;?>
" 
					name="<?php echo $_smarty_tpl->tpl_vars['fieldName']->value;?>
" value="<?php echo $_smarty_tpl->tpl_vars['field']->value['value'];?>
" maxlength="<?php echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['maxlength'];?>
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
					<?php }?>>
			</div>
		<?php } else { ?>
			<input type="text" <?php echo $_smarty_tpl->tpl_vars['disabledAttr']->value;?>
 class="form-control <?php echo $_smarty_tpl->tpl_vars['disabledClass']->value;?>
 popover-dismiss" id="<?php echo $_smarty_tpl->tpl_vars['fieldGuid']->value;?>
" 
				name="<?php echo $_smarty_tpl->tpl_vars['fieldName']->value;?>
" value="<?php echo $_smarty_tpl->tpl_vars['field']->value['value'];?>
" maxlength="<?php echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['maxlength'];?>
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
				<?php }?>>
		<?php }?>
	<?php }?>
</div>
<?php }
}
