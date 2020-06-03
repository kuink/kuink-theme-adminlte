<?php
/* Smarty version 3.1.33, created on 2020-06-02 15:45:13
  from '/media/sf_local-development/code/kuink-bridge-standalone/vendor/kuink/kuink-theme-adminlte/ui/control/form/Column.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5ed67409d63c42_57087985',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '52814b0317a5bd32008978806f4af53b2db2d800' => 
    array (
      0 => '/media/sf_local-development/code/kuink-bridge-standalone/vendor/kuink/kuink-theme-adminlte/ui/control/form/Column.tpl',
      1 => 1575365758,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5ed67409d63c42_57087985 (Smarty_Internal_Template $_smarty_tpl) {
if ($_smarty_tpl->tpl_vars['insideHeader']->value == 1) {?>
	</div>
<?php }
if (($_smarty_tpl->tpl_vars['insideColumn']->value == 1)) {?>
	</div>
<?php } else { ?>
	<div class="row">
<?php }?>

<?php if (($_smarty_tpl->tpl_vars['tabs']->value[$_smarty_tpl->tpl_vars['tabIndex']->value]['columns'][$_smarty_tpl->tpl_vars['currentColumnGroup']->value] > 0)) {?>
	<?php $_smarty_tpl->_assignInScope('columnWidth', 12/$_smarty_tpl->tpl_vars['tabs']->value[$_smarty_tpl->tpl_vars['tabIndex']->value]['columns'][$_smarty_tpl->tpl_vars['currentColumnGroup']->value]);
} else { ?>
	<?php $_smarty_tpl->_assignInScope('columnWidth', 12);
}
if ($_smarty_tpl->tpl_vars['field']->value['attributes']['close'] == 'false') {?>
	<div class="col-md-<?php echo $_smarty_tpl->tpl_vars['columnWidth']->value;?>
">
<?php }?>

<?php }
}
