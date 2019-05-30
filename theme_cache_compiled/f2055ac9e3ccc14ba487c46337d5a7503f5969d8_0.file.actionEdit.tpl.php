<?php
/* Smarty version 3.1.30, created on 2019-02-05 17:05:16
  from "/opt/moodledata/neon/apps/framework/framework.ide/process/generator/templates/actionEdit.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c59c24c6499f9_12765537',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'f2055ac9e3ccc14ba487c46337d5a7503f5969d8' => 
    array (
      0 => '/opt/moodledata/neon/apps/framework/framework.ide/process/generator/templates/actionEdit.tpl',
      1 => 1531692258,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c59c24c6499f9_12765537 (Smarty_Internal_Template $_smarty_tpl) {
?>

<Action name="edit" screen="scrEdit">
  <Var name="selectedId" process="true">
      <IsNull>
         <Param><ActionValue/></Param>
         <Param><Var name="selectedId" process="true"/></Param>
      </IsNull>
  </Var>
  <Control method="bind" object="frmEdit">
    <Param>
      <Call library="<?php echo $_smarty_tpl->tpl_vars['apiApplication']->value;?>
,<?php echo $_smarty_tpl->tpl_vars['apiProcess']->value;?>
,api" function="getById">
        <Param name="id">
          <Var name="selectedId" process="true"/>
        </Param>
      </Call>
    </Param>
  </Control>
</Action>

<?php }
}
