<?php
/* Smarty version 3.1.30, created on 2019-02-05 17:05:16
  from "/opt/moodledata/neon/apps/framework/framework.ide/process/generator/templates/API.Simple.GetById.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c59c24c2f3394_37967608',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '8415578b9286114ae92163cd8ba35dadaa3fa089' => 
    array (
      0 => '/opt/moodledata/neon/apps/framework/framework.ide/process/generator/templates/API.Simple.GetById.tpl',
      1 => 1531694163,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c59c24c2f3394_37967608 (Smarty_Internal_Template $_smarty_tpl) {
?>
<Function name="getById" doc="Get a record by id from table <?php echo $_smarty_tpl->tpl_vars['entity']->value;?>
">
  <Params>
    <Param name="id" type="int" required="true"/>
  </Params>
  <Return type="single" doc="">
    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['attributes']->value, 'field');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['field']->value) {
?>
    <?php if ($_smarty_tpl->tpl_vars['field']->value['name'] != '') {?>
      <External name="<?php echo $_smarty_tpl->tpl_vars['field']->value['name'];?>
" type="<?php echo mb_strtolower($_smarty_tpl->tpl_vars['field']->value['type'], 'UTF-8');?>
" doc=""/>
    <?php }?>
    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>
    
  </Return>    
  <Begin>
    <Return>
      <DataAccess method="load">
        <Param name="_entity"><?php echo $_smarty_tpl->tpl_vars['entity']->value;?>
</Param>
        <Param name="id"><Var name="PARAMS" key="id"/></Param>
      </DataAccess>
    </Return>
  </Begin>
</Function>
<?php }
}
