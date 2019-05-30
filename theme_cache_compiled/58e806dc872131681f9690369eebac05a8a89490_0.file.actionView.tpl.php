<?php
/* Smarty version 3.1.30, created on 2019-02-05 17:05:16
  from "/opt/moodledata/neon/apps/framework/framework.ide/process/generator/templates/actionView.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c59c24c5af204_78975500',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '58e806dc872131681f9690369eebac05a8a89490' => 
    array (
      0 => '/opt/moodledata/neon/apps/framework/framework.ide/process/generator/templates/actionView.tpl',
      1 => 1531692281,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c59c24c5af204_78975500 (Smarty_Internal_Template $_smarty_tpl) {
?>

<Action name="view" screen="scrView">
  <Var name="selectedId" process="true">
    <ActionValue/>
  </Var>
  <Control method="bind" object="frmView">
    <Param>
      <Call library="<?php echo $_smarty_tpl->tpl_vars['apiApplication']->value;?>
,<?php echo $_smarty_tpl->tpl_vars['apiProcess']->value;?>
,api" function="getById">
        <Param name="id"><ActionValue/></Param>
      </Call>
    </Param>
  </Control>
</Action>

<?php }
}
