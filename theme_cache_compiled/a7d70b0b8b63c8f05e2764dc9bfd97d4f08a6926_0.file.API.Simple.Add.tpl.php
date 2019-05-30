<?php
/* Smarty version 3.1.30, created on 2019-02-05 17:05:16
  from "/opt/moodledata/neon/apps/framework/framework.ide/process/generator/templates/API.Simple.Add.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c59c24c14ed14_48028520',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'a7d70b0b8b63c8f05e2764dc9bfd97d4f08a6926' => 
    array (
      0 => '/opt/moodledata/neon/apps/framework/framework.ide/process/generator/templates/API.Simple.Add.tpl',
      1 => 1531694141,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c59c24c14ed14_48028520 (Smarty_Internal_Template $_smarty_tpl) {
?>


<Function name="add" doc="Adds a record in table <?php echo $_smarty_tpl->tpl_vars['data']->value['entity'];?>
">
  <Params>
  <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['attributes']->value, 'field');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['field']->value) {
?>
  <?php if (($_smarty_tpl->tpl_vars['field']->value['key'] != 'PRI' && $_smarty_tpl->tpl_vars['field']->value['name'] != '' && $_smarty_tpl->tpl_vars['field']->value['name'][0] != '_' && $_smarty_tpl->tpl_vars['field']->value['name'] != 'id_company')) {?>
    
    <Param name="<?php echo $_smarty_tpl->tpl_vars['field']->value['name'];?>
" type="<?php echo mb_strtolower($_smarty_tpl->tpl_vars['field']->value['type'], 'UTF-8');?>
" required="<?php echo $_smarty_tpl->tpl_vars['field']->value['required'];?>
"/>
  <?php }?>
  <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

  </Params>
  <Return type="int" doc="The inserted record id"/>
  <Begin>
  	<Return>
	    <DataAccess method="insert">
	      <Param name="_entity"><?php echo $_smarty_tpl->tpl_vars['entity']->value;?>
</Param>
	      <Param name="_base">true</Param>
	      <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['attributes']->value, 'field');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['field']->value) {
?>
	        <?php if (($_smarty_tpl->tpl_vars['field']->value['key'] != 'PRI' && $_smarty_tpl->tpl_vars['field']->value['name'] != '' && $_smarty_tpl->tpl_vars['field']->value['name'][0] != '_' && $_smarty_tpl->tpl_vars['field']->value['name'] != 'id_company')) {?>
	           <Param name="<?php echo $_smarty_tpl->tpl_vars['field']->value['name'];?>
"><Var name="PARAMS" key="<?php echo $_smarty_tpl->tpl_vars['field']->value['name'];?>
"/></Param>
	        <?php }?>
	      <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

	    </DataAccess>
    </Return>
  </Begin>
</Function>

<?php }
}
