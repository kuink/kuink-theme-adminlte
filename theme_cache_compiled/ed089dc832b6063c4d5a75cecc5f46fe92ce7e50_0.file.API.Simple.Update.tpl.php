<?php
/* Smarty version 3.1.30, created on 2019-02-05 17:05:16
  from "/opt/moodledata/neon/apps/framework/framework.ide/process/generator/templates/API.Simple.Update.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c59c24c218377_95327578',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'ed089dc832b6063c4d5a75cecc5f46fe92ce7e50' => 
    array (
      0 => '/opt/moodledata/neon/apps/framework/framework.ide/process/generator/templates/API.Simple.Update.tpl',
      1 => 1531694184,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c59c24c218377_95327578 (Smarty_Internal_Template $_smarty_tpl) {
?>
<Function name="update" doc="Updates a record in table <?php echo $_smarty_tpl->tpl_vars['entity']->value;?>
">
  <Params>
  <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['attributes']->value, 'field');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['field']->value) {
?>
	  <?php if (($_smarty_tpl->tpl_vars['field']->value['name'] != '' && $_smarty_tpl->tpl_vars['field']->value['name'][0] != '_' && $_smarty_tpl->tpl_vars['field']->value['name'] != 'id_company')) {?>
	    
	    <Param name="<?php echo $_smarty_tpl->tpl_vars['field']->value['name'];?>
" type="<?php echo mb_strtolower($_smarty_tpl->tpl_vars['field']->value['type'], 'UTF-8');?>
" required="<?php if ($_smarty_tpl->tpl_vars['field']->value['key'] == 'PRI') {?>true<?php } else { ?>false<?php }?>"/>
	  <?php }?>
  <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

  </Params>
  <Begin> 
    
    <Var name="paramData">
      <UtilsLib method="filterNotNull">
        <Param><Var name="PARAMS"/></Param>
      </UtilsLib>
    </Var>
    
    <DataAccess method="update" params="paramData">
      <Param name="_entity"><?php echo $_smarty_tpl->tpl_vars['entity']->value;?>
</Param>
      <Param name="_base">true</Param>
    </DataAccess>
  </Begin>
</Function>
<?php }
}
