<?php
/* Smarty version 3.1.33, created on 2019-06-19 08:47:59
  from '/opt/moodle/mod/kuink/theme/adminlte/ui/control/form/Column.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5d09f6bfd68c66_55247297',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'eedc56667ac3211a8082a285bd7ac0fef1120bcc' => 
    array (
      0 => '/opt/moodle/mod/kuink/theme/adminlte/ui/control/form/Column.tpl',
      1 => 1525358752,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5d09f6bfd68c66_55247297 (Smarty_Internal_Template $_smarty_tpl) {
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
