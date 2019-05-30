<?php
/* Smarty version 3.1.30, created on 2019-02-05 17:05:16
  from "/opt/moodledata/neon/apps/framework/framework.ide/process/generator/templates/API.Simple.GetIdByCode.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c59c24c336ae6_86385393',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'b3ceef0fec91820c4333a1240772fae579dadd5f' => 
    array (
      0 => '/opt/moodledata/neon/apps/framework/framework.ide/process/generator/templates/API.Simple.GetIdByCode.tpl',
      1 => 1531694169,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c59c24c336ae6_86385393 (Smarty_Internal_Template $_smarty_tpl) {
?>
<Function name="getIdByCode" doc="Get a record id by its code from entity <?php echo $_smarty_tpl->tpl_vars['entity']->value;?>
">
  <Params>
    <Param name="code" type="string" required="true"/>
  </Params>
  <Return type="int" doc="">
  </Return>    
  <Begin>
  	<Var name="record">
			<DataAccess method="load">
        <Param name="_entity"><?php echo $_smarty_tpl->tpl_vars['entity']->value;?>
</Param>
        <Param name="code"><Var name="PARAMS" key="code"/></Param>
      </DataAccess>  	
  	</Var>
    <Return>
    	<Var name="record" key="id"/>  
    </Return>
  </Begin>
</Function>
<?php }
}
