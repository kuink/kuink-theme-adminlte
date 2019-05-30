<?php
/* Smarty version 3.1.30, created on 2019-02-05 17:05:16
  from "/opt/moodledata/neon/apps/framework/framework.ide/process/generator/templates/API.Simple.GetAll.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c59c24c2cf164_43597283',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '73e8e562070cd6c8e430a8df24a30eae10fa5cd2' => 
    array (
      0 => '/opt/moodledata/neon/apps/framework/framework.ide/process/generator/templates/API.Simple.GetAll.tpl',
      1 => 1536838352,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c59c24c2cf164_43597283 (Smarty_Internal_Template $_smarty_tpl) {
?>

<Function name="getAll" doc="Get all records from table <?php echo $_smarty_tpl->tpl_vars['entity']->value;?>
">
  <Params/>
  <Return type="multiple" doc="">
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
      <DataAccess method="getAll">
        <Param name="_entity"><?php echo $_smarty_tpl->tpl_vars['entity']->value;?>
</Param>
      </DataAccess>
    </Return>
  </Begin>
</Function>

<?php }
}
