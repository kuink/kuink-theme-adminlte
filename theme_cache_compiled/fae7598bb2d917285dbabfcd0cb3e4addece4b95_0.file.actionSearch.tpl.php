<?php
/* Smarty version 3.1.30, created on 2019-02-05 17:05:16
  from "/opt/moodledata/neon/apps/framework/framework.ide/process/generator/templates/actionSearch.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c59c24c58f398_58942268',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'fae7598bb2d917285dbabfcd0cb3e4addece4b95' => 
    array (
      0 => '/opt/moodledata/neon/apps/framework/framework.ide/process/generator/templates/actionSearch.tpl',
      1 => 1531692276,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c59c24c58f398_58942268 (Smarty_Internal_Template $_smarty_tpl) {
?>

<Action name="search" screen="scrSearch">
  <!-- Set default data if applicable -->
  <If condition="$defaultData->__length > 0">
    <Then>
      <Control method="setDefaultData" object="frmSearch">
        <Param><Var name="defaultData"/></Param>
      </Control>
    </Then>
  </If>
  <Var name="currentData">
    <Control method="getCurrentData" object="frmSearch"/>  
  </Var>        
  
  <Control method="bind" object="grdSearchResult">
    <Param>
      <Call library="<?php echo $_smarty_tpl->tpl_vars['apiApplication']->value;?>
,<?php echo $_smarty_tpl->tpl_vars['apiProcess']->value;?>
,api" function="search">
        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['attributes']->value, 'field');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['field']->value) {
?>
        <?php if ($_smarty_tpl->tpl_vars['field']->value['search'] == 1) {?>
        <Param name="<?php echo $_smarty_tpl->tpl_vars['field']->value['name'];?>
"><Var name="currentData" key="<?php echo $_smarty_tpl->tpl_vars['field']->value['name'];?>
"/></Param>
        <?php }?>
        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>
    
        <Param name="pagesize">
          <Control method="getPageSize" object="grdSearchResult"/>
        </Param>
        <Param name="pagenum">
          <Control method="getCurrentPage" object="grdSearchResult"/>
        </Param> 
      </Call>          
    </Param>
  </Control>  
</Action>
<?php }
}
