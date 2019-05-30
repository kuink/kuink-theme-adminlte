<?php
/* Smarty version 3.1.30, created on 2019-02-05 17:05:16
  from "/opt/moodledata/neon/apps/framework/framework.ide/process/generator/templates/processAdd.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c59c24c0c1a88_41027559',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'c90dac5bf37766fe6b74870bfc1f2fd70b770b41' => 
    array (
      0 => '/opt/moodledata/neon/apps/framework/framework.ide/process/generator/templates/processAdd.tpl',
      1 => 1531692405,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c59c24c0c1a88_41027559 (Smarty_Internal_Template $_smarty_tpl) {
?>

<?php echo '<?xml ';?>
version='1.0'<?php echo '?>';?>

<Process>
	<Transitions>
		<Flow role='Teacher' startnode='' event='init' endnode='manage' />
    </Transitions>
</Process>
<?php }
}
