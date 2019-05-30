<?php
/* Smarty version 3.1.30, created on 2019-02-05 17:05:16
  from "/opt/moodledata/neon/apps/framework/framework.ide/process/generator/templates/API.Simple.Search.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c59c24c2604c4_06425219',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '181a83c693d3505d275e92a4e74431f90c6571b6' => 
    array (
      0 => '/opt/moodledata/neon/apps/framework/framework.ide/process/generator/templates/API.Simple.Search.tpl',
      1 => 1531694176,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c59c24c2604c4_06425219 (Smarty_Internal_Template $_smarty_tpl) {
?>
<Function name="search" doc="Search records from table <?php echo $_smarty_tpl->tpl_vars['entity']->value;?>
">
  <Params>
    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['attributes']->value, 'field');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['field']->value) {
?>
    <?php if ($_smarty_tpl->tpl_vars['field']->value['search'] == 1 && $_smarty_tpl->tpl_vars['field']->value['name'] != '') {?>
    <Param name="<?php echo $_smarty_tpl->tpl_vars['field']->value['name'];?>
" type="<?php echo mb_strtolower($_smarty_tpl->tpl_vars['field']->value['type'], 'UTF-8');?>
"/>
    <?php }?>
    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>
    
    <Param name="pagenum" type="int"/>
    <Param name="pagesize" type="int"/>
  </Params>
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
      <DataAccess method="this,this,search">
        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['attributes']->value, 'field');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['field']->value) {
?>
          <?php if ($_smarty_tpl->tpl_vars['field']->value['search'] == 1 && $_smarty_tpl->tpl_vars['field']->value['name'] != '') {?>
            <Param name="<?php echo $_smarty_tpl->tpl_vars['field']->value['name'];?>
" <?php if ($_smarty_tpl->tpl_vars['field']->value['type'] == 'Text') {?>wildcard="full"<?php }?>><Var name="PARAMS" key="<?php echo $_smarty_tpl->tpl_vars['field']->value['name'];?>
"/></Param>
          <?php }?>
        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>
    
        <Param name="_pageNum"><Var name="PARAMS" key="pagenum"/></Param>
        <Param name="_pageSize"><Var name="PARAMS" key="pagesize"/></Param>
      </DataAccess>
    </Return>
  </Begin>
</Function>
<?php }
}
