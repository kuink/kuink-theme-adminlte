<?php
/* Smarty version 3.1.30, created on 2019-02-05 17:05:16
  from "/opt/moodledata/neon/apps/framework/framework.ide/process/generator/templates/API.Simple.Delete.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c59c24c1ce243_77723108',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '1deb874138f8789dc0b1dd54022507ee716c5f7e' => 
    array (
      0 => '/opt/moodledata/neon/apps/framework/framework.ide/process/generator/templates/API.Simple.Delete.tpl',
      1 => 1531694148,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c59c24c1ce243_77723108 (Smarty_Internal_Template $_smarty_tpl) {
?>

<Function name="delete" doc="Delete a record by id from table <?php echo $_smarty_tpl->tpl_vars['entity']->value;?>
">
  <Params>
    <Param name="id" type="int" required="true"/>
  </Params>
  <Return type="int" doc=""/>
  <Begin>
    <Return>
      <DataAccess method="delete">
        <Param name="_entity"><?php echo $_smarty_tpl->tpl_vars['entity']->value;?>
</Param>
        <Param name="id"><Var name="PARAMS" key="id"/></Param>
      </DataAccess>
    </Return>
  </Begin>
</Function>
<?php }
}
