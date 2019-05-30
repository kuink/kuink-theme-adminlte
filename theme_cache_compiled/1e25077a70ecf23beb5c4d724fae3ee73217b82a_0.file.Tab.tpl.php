<?php
/* Smarty version 3.1.30, created on 2019-01-16 13:58:54
  from "/opt/moodle/mod/kuink/theme/adminlte/ui/control/form/Tab.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c3f389eafcb15_89278927',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '1e25077a70ecf23beb5c4d724fae3ee73217b82a' => 
    array (
      0 => '/opt/moodle/mod/kuink/theme/adminlte/ui/control/form/Tab.tpl',
      1 => 1516813824,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c3f389eafcb15_89278927 (Smarty_Internal_Template $_smarty_tpl) {
if ($_smarty_tpl->tpl_vars['insideHeader']->value == 1) {?>
	</div>
<?php }?>

<?php if ($_smarty_tpl->tpl_vars['insideColumn']->value == 1) {?>
		</div>
	</div>
<?php }?>

<?php if ($_smarty_tpl->tpl_vars['insideTab']->value == 1) {?>
  
	</div>
<?php }?>


<?php $_smarty_tpl->_assignInScope('active', '');
if ($_smarty_tpl->tpl_vars['insideTab']->value == 0) {?>
  <?php $_smarty_tpl->_assignInScope('active', 'in active');
}?>

	<div class="tab-pane fade <?php echo $_smarty_tpl->tpl_vars['active']->value;?>
" id="<?php echo $_smarty_tpl->tpl_vars['fieldID']->value;?>
">

<?php }
}
