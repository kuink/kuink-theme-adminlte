<?php
/* Smarty version 3.1.30, created on 2019-02-05 17:05:16
  from "/opt/moodledata/neon/apps/framework/framework.ide/process/generator/templates/screenSearch.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c59c24c4ac194_88844375',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '8b0d3e449ca7dfe0c7a1f9d162ee76653d4eaa46' => 
    array (
      0 => '/opt/moodledata/neon/apps/framework/framework.ide/process/generator/templates/screenSearch.tpl',
      1 => 1531692421,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c59c24c4ac194_88844375 (Smarty_Internal_Template $_smarty_tpl) {
?>

<Screen id="scrSearch" doc="Search Screen">
  <Form name="frmSearch" persist="true" title="search">
    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['attributes']->value, 'field');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['field']->value) {
?>
    <?php if ($_smarty_tpl->tpl_vars['field']->value['search'] == 1) {?>
      <?php if ($_smarty_tpl->tpl_vars['field']->value['datasource'] != '') {?>
        <Select id="<?php echo $_smarty_tpl->tpl_vars['field']->value['name'];?>
" datasource="<?php echo $_smarty_tpl->tpl_vars['field']->value['datasource'];?>
" bindid="<?php echo $_smarty_tpl->tpl_vars['field']->value['bindid'];?>
" bindvalue="<?php echo $_smarty_tpl->tpl_vars['field']->value['bindvalue'];?>
"/>
      <?php } else { ?>
        <<?php echo $_smarty_tpl->tpl_vars['field']->value['type'];?>
 id="<?php echo $_smarty_tpl->tpl_vars['field']->value['name'];?>
"/>
      <?php }?>
    <?php }?>
    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

    <ButtonGroup>
      <Button id="search" type="search" label="search" action="search"/>
      <Button id="insert" type="add" label="insert" action="insert"/>
    </ButtonGroup>
  </Form>

  <Grid name="grdSearchResult" pageable="true" collapsible="false" pagesize="10" pagingaction="search" title="result">
    <Template>
      <Columns>
        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['attributes']->value, 'field');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['field']->value) {
?>
        <?php if ($_smarty_tpl->tpl_vars['field']->value['list'] == 1) {?>
          <?php if ($_smarty_tpl->tpl_vars['field']->value['formatter'] == '') {?>
            <?php if ($_smarty_tpl->tpl_vars['field']->value['datasource'] != '') {?>
              <Column name="<?php echo $_smarty_tpl->tpl_vars['field']->value['name'];?>
" label="<?php echo $_smarty_tpl->tpl_vars['field']->value['name'];?>
" datasource="<?php echo $_smarty_tpl->tpl_vars['field']->value['datasource'];?>
" bindid="<?php echo $_smarty_tpl->tpl_vars['field']->value['bindid'];?>
" bindvalue="<?php echo $_smarty_tpl->tpl_vars['field']->value['bindvalue'];?>
"/>
            <?php } else { ?>
              <Column name="<?php echo $_smarty_tpl->tpl_vars['field']->value['name'];?>
" label="<?php echo $_smarty_tpl->tpl_vars['field']->value['name'];?>
"/>
            <?php }?>
          <?php } else { ?>
            <?php if ($_smarty_tpl->tpl_vars['field']->value['datasource'] != '') {?>
              <Column name="<?php echo $_smarty_tpl->tpl_vars['field']->value['name'];?>
" label="<?php echo $_smarty_tpl->tpl_vars['field']->value['name'];?>
" datasource="<?php echo $_smarty_tpl->tpl_vars['field']->value['datasource'];?>
" bindid="<?php echo $_smarty_tpl->tpl_vars['field']->value['bindid'];?>
" bindvalue="<?php echo $_smarty_tpl->tpl_vars['field']->value['bindvalue'];?>
">
                <Formatter name="<?php echo $_smarty_tpl->tpl_vars['field']->value['formatter'];?>
"/>
              </Column>
            <?php } else { ?>
            <Column name="<?php echo $_smarty_tpl->tpl_vars['field']->value['name'];?>
" label="<?php echo $_smarty_tpl->tpl_vars['field']->value['name'];?>
">
              <Formatter name="<?php echo $_smarty_tpl->tpl_vars['field']->value['formatter'];?>
"/>
            </Column>
            <?php }?>
          <?php }?>
        <?php }?>
        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

      </Columns>
      <Actions separator="true">
        <Action name="view" actionvalue="id"/>
        <Action name="edit" actionvalue="id"/>
        <Action name="delete" actionvalue="id" confirm="true"/>
      </Actions>
    </Template>
  </Grid>
</Screen>

<?php }
}
