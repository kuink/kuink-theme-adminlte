<?php
/* Smarty version 3.1.30, created on 2019-02-05 17:05:16
  from "/opt/moodledata/neon/apps/framework/framework.ide/process/generator/templates/screenEdit.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c59c24c535e90_62941826',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '661b1536be4dd02abba0023dc00a5f46482355b0' => 
    array (
      0 => '/opt/moodledata/neon/apps/framework/framework.ide/process/generator/templates/screenEdit.tpl',
      1 => 1531692416,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c59c24c535e90_62941826 (Smarty_Internal_Template $_smarty_tpl) {
?>

<Screen id="scrEdit" doc="Edit Screen">
  <Form name="frmEdit">
    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['attributes']->value, 'field');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['field']->value) {
?>
    <?php if ($_smarty_tpl->tpl_vars['field']->value['form'] == 1) {?>
      <?php if ($_smarty_tpl->tpl_vars['field']->value['datasource'] != '') {?>
        <<?php if ($_smarty_tpl->tpl_vars['field']->value['key'] == 'PRI') {?>Static<?php } else { ?>Select<?php }?> id="<?php echo $_smarty_tpl->tpl_vars['field']->value['name'];?>
" label="<?php echo $_smarty_tpl->tpl_vars['field']->value['name'];?>
" required="<?php echo $_smarty_tpl->tpl_vars['field']->value['required'];?>
" datasource="<?php echo $_smarty_tpl->tpl_vars['field']->value['datasource'];?>
" bindid="<?php echo $_smarty_tpl->tpl_vars['field']->value['bindid'];?>
" bindvalue="<?php echo $_smarty_tpl->tpl_vars['field']->value['bindvalue'];?>
"/>
      <?php } else { ?>
        <<?php if ($_smarty_tpl->tpl_vars['field']->value['key'] == 'PRI') {?>Static<?php } else {
echo $_smarty_tpl->tpl_vars['field']->value['type'];
}?>  id="<?php echo $_smarty_tpl->tpl_vars['field']->value['name'];?>
" label="<?php echo $_smarty_tpl->tpl_vars['field']->value['name'];?>
" required="<?php echo $_smarty_tpl->tpl_vars['field']->value['required'];?>
"/>
      <?php }?>
    <?php }?>
    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

    <ButtonGroup>
      <Button id="cancel" type="cancel" label="cancel" action="search"/>
      <Button id="save" type="update" label="save" action="save"/>
    </ButtonGroup>    
  </Form>
</Screen>

<?php }
}
