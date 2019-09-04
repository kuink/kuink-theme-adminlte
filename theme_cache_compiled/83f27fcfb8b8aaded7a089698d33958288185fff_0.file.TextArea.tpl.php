<?php
/* Smarty version 3.1.33, created on 2019-06-19 11:43:30
  from '/opt/moodle/mod/kuink/theme/adminlte/ui/control/form/TextArea.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5d0a1fe2394680_63399459',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '83f27fcfb8b8aaded7a089698d33958288185fff' => 
    array (
      0 => '/opt/moodle/mod/kuink/theme/adminlte/ui/control/form/TextArea.tpl',
      1 => 1516961616,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5d0a1fe2394680_63399459 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'/opt/kuink-dev/kuink-core/lib/tools/smarty/plugins/block.translate.php','function'=>'smarty_block_translate',),));
if ($_smarty_tpl->tpl_vars['fieldAttrs']->value['multilang'] == 'true' && is_array($_smarty_tpl->tpl_vars['field']->value['value'])) {?>
	<!-- This is multilang: load languages from _lang datasource-->
	<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['_languages']->value, 'language');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['language']->value) {
?>
		<?php $_smarty_tpl->_assignInScope('lang', $_smarty_tpl->tpl_vars['language']->value['country']);?>
		<div class="controls">
			<textarea
				class="form-control <?php echo $_smarty_tpl->tpl_vars['disabledClass']->value;?>
" style="display:table-cell"
				id="<?php echo $_smarty_tpl->tpl_vars['fieldGuid']->value;?>
_<?php echo $_smarty_tpl->tpl_vars['lang']->value;?>
"
				name="<?php echo $_smarty_tpl->tpl_vars['fieldName']->value;?>
_<?php echo $_smarty_tpl->tpl_vars['lang']->value;?>
"
				rows="<?php echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['rows'];?>
"
				cols="<?php echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['cols'];?>
"
				<?php echo $_smarty_tpl->tpl_vars['disabledAttr']->value;?>
 maxlength="<?php echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['maxlength'];?>
" <?php if ($_smarty_tpl->tpl_vars['field']->value['attributes']['required'] == 'true') {?>
					data-bv-notempty data-bv-notempty-message="<?php $_smarty_tpl->smarty->_cache['_tag_stack'][] = array('translate', array('app'=>"framework"));
$_block_repeat=true;
echo smarty_block_translate(array('app'=>"framework"), null, $_smarty_tpl, $_block_repeat);
while ($_block_repeat) {
ob_start();?>requiredField<?php $_block_repeat=false;
echo smarty_block_translate(array('app'=>"framework"), ob_get_clean(), $_smarty_tpl, $_block_repeat);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>"
				<?php }?>><?php echo $_smarty_tpl->tpl_vars['field']->value['value'];?>
</textarea>
		  <span class="add-on"><img src="<?php echo $_smarty_tpl->tpl_vars['_themeRoot']->value;?>
theme/<?php echo $_smarty_tpl->tpl_vars['THEME']->value;?>
/assets/css/flags/blank.gif" class="flag flag-<?php echo $_smarty_tpl->tpl_vars['lang']->value;?>
" alt="<?php echo $_smarty_tpl->tpl_vars['lang']->value;?>
" /></span>
		</div>
	<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);
} else { ?>
	<textarea
		class="form-control <?php echo $_smarty_tpl->tpl_vars['disabledClass']->value;?>
" style="display:table-cell"
		id="<?php echo $_smarty_tpl->tpl_vars['fieldGuid']->value;?>
"
		name="<?php echo $_smarty_tpl->tpl_vars['fieldName']->value;?>
"
		rows="<?php echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['rows'];?>
"
		cols="<?php echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['cols'];?>
"
		<?php echo $_smarty_tpl->tpl_vars['disabledAttr']->value;?>
 maxlength="<?php echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['maxlength'];?>
" <?php if ($_smarty_tpl->tpl_vars['field']->value['attributes']['required'] == 'true') {?>
			data-bv-notempty data-bv-notempty-message="<?php $_smarty_tpl->smarty->_cache['_tag_stack'][] = array('translate', array('app'=>"framework"));
$_block_repeat=true;
echo smarty_block_translate(array('app'=>"framework"), null, $_smarty_tpl, $_block_repeat);
while ($_block_repeat) {
ob_start();?>requiredField<?php $_block_repeat=false;
echo smarty_block_translate(array('app'=>"framework"), ob_get_clean(), $_smarty_tpl, $_block_repeat);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>"
		<?php }?>><?php echo $_smarty_tpl->tpl_vars['field']->value['value'];?>
</textarea>
<?php }
}
}
