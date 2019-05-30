<?php
/* Smarty version 3.1.30, created on 2019-02-05 17:05:16
  from "/opt/moodledata/neon/apps/framework/framework.ide/process/generator/templates/screenView.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c59c24c4da213_01675633',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '81b54e36e13f5c820f16e80c6d4409f51ef950ba' => 
    array (
      0 => '/opt/moodledata/neon/apps/framework/framework.ide/process/generator/templates/screenView.tpl',
      1 => 1531692428,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c59c24c4da213_01675633 (Smarty_Internal_Template $_smarty_tpl) {
?>

<Screen id="scrView" doc="View Screen">
  <Form name="frmView">
    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['attributes']->value, 'field');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['field']->value) {
?>
    <?php if ($_smarty_tpl->tpl_vars['field']->value['form'] == 1) {?>
      <?php if ($_smarty_tpl->tpl_vars['field']->value['datasource'] != '') {?>
        <Static id="<?php echo $_smarty_tpl->tpl_vars['field']->value['name'];?>
" datasource="<?php echo $_smarty_tpl->tpl_vars['field']->value['datasource'];?>
" bindid="<?php echo $_smarty_tpl->tpl_vars['field']->value['bindid'];?>
" bindvalue="<?php echo $_smarty_tpl->tpl_vars['field']->value['bindvalue'];?>
"/>
      <?php } else { ?>
        <Static id="<?php echo $_smarty_tpl->tpl_vars['field']->value['name'];?>
"/>
      <?php }?>
    <?php }?>
    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

    <ButtonGroup>
      <Button id="back" type="back" label="back" action="search"/>
      <Button id="edit" type="update" label="edit" action="edit"/>
      <Button id="delete" type="delete" label="delete" action="delete" confirm="true"/>
    </ButtonGroup>    
  </Form>
</Screen>

<?php }
}
