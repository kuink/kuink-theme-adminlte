<?php
/* Smarty version 3.1.30, created on 2019-02-05 17:05:16
  from "/opt/moodledata/neon/apps/framework/framework.ide/process/generator/templates/actionDelete.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c59c24c62ae87_42979576',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'b617eb5b534a5cdb9baa3ef8624b114f469049e5' => 
    array (
      0 => '/opt/moodledata/neon/apps/framework/framework.ide/process/generator/templates/actionDelete.tpl',
      1 => 1531692496,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c59c24c62ae87_42979576 (Smarty_Internal_Template $_smarty_tpl) {
?>

    <Action name="delete">
      <Var name="selectedId" process="true">
          <IsNull>
             <Param><ActionValue/></Param>
             <Param><Var name="selectedId" process="true"/></Param>
          </IsNull>
      </Var>
      <Call library="<?php echo $_smarty_tpl->tpl_vars['apiApplication']->value;?>
,<?php echo $_smarty_tpl->tpl_vars['apiProcess']->value;?>
,api" function="delete">
        <Param name="id"><Var name="selectedId" process="true"/></Param>
      </Call>
      <Action name="search"/>
    </Action>
<?php }
}
