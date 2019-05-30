<?php
/* Smarty version 3.1.30, created on 2019-02-05 17:05:16
  from "/opt/moodledata/neon/apps/framework/framework.ide/process/generator/templates/actionSave.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c59c24c5d02e4_33649784',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'adeb2dcf06480eabdf8c9b66da54428e0c62d314' => 
    array (
      0 => '/opt/moodledata/neon/apps/framework/framework.ide/process/generator/templates/actionSave.tpl',
      1 => 1531692272,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c59c24c5d02e4_33649784 (Smarty_Internal_Template $_smarty_tpl) {
?>

<Action name="save">
  <If condition="@selectedId == ''">
    <Then>
      <Call library="<?php echo $_smarty_tpl->tpl_vars['apiApplication']->value;?>
,<?php echo $_smarty_tpl->tpl_vars['apiProcess']->value;?>
,api" function="add" params="POSTDATA"/>
    </Then>
    <Else>
      <Call library="<?php echo $_smarty_tpl->tpl_vars['apiApplication']->value;?>
,<?php echo $_smarty_tpl->tpl_vars['apiProcess']->value;?>
,api" function="update" params="POSTDATA">
        <Param name="id"><Var name="selectedId" process="true"/></Param>
      </Call>    
    </Else>
  </If>
  
  <Action name="search"/>
</Action>
<?php }
}
