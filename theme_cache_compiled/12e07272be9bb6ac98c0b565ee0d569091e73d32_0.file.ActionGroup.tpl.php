<?php
/* Smarty version 3.1.30, created on 2018-12-03 12:55:10
  from "/opt/moodle/mod/kuink/theme/adminlte/ui/control/form/ActionGroup.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c0527ae2bbdd6_56798779',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '12e07272be9bb6ac98c0b565ee0d569091e73d32' => 
    array (
      0 => '/opt/moodle/mod/kuink/theme/adminlte/ui/control/form/ActionGroup.tpl',
      1 => 1517503463,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c0527ae2bbdd6_56798779 (Smarty_Internal_Template $_smarty_tpl) {
?>
<div class="controls">
	<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['field']->value['options'], 'url', false, 'label');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['label']->value => $_smarty_tpl->tpl_vars['url']->value) {
?>
	   		<?php $_smarty_tpl->_assignInScope('href', $_smarty_tpl->tpl_vars['url']->value['url']);
?>
		    <a href="#" onclick="javascript: result = setFormAction_<?php echo $_smarty_tpl->tpl_vars['_guid']->value;?>
('<?php echo $_smarty_tpl->tpl_vars['href']->value;?>
','', '',  '', true); $('#<?php echo $_smarty_tpl->tpl_vars['_guid']->value;?>
').submit();" class="link" ><?php echo $_smarty_tpl->tpl_vars['label']->value;?>
</a> &nbsp;

<!-- javascript: result = setFormAction_<?php echo $_smarty_tpl->tpl_vars['_guid']->value;?>
('<?php echo $_smarty_tpl->tpl_vars['buttonActionUrl']->value;?>
', confirmMessage, '<?php echo $_smarty_tpl->tpl_vars['buttonType']->value;?>
', '<?php echo $_smarty_tpl->tpl_vars['buttonAttrs']->value['id'];?>
'); -->
	<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

</div>
<?php }
}
