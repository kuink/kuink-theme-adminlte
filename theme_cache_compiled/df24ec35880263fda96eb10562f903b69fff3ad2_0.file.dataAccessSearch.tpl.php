<?php
/* Smarty version 3.1.30, created on 2019-02-05 17:05:16
  from "/opt/moodledata/neon/apps/framework/framework.ide/process/generator/templates/dataAccessSearch.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c59c24c3dc527_64053122',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'df24ec35880263fda96eb10562f903b69fff3ad2' => 
    array (
      0 => '/opt/moodledata/neon/apps/framework/framework.ide/process/generator/templates/dataAccessSearch.tpl',
      1 => 1531692358,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c59c24c3dc527_64053122 (Smarty_Internal_Template $_smarty_tpl) {
?>

<?php echo '<?xml ';?>
version="1.0" encoding="UTF-8"<?php echo '?>';?>

<Method>
    <Doc>
        Search all <?php echo $_smarty_tpl->tpl_vars['entity']->value;?>

    </Doc>
    <Params>
    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['attributes']->value, 'field');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['field']->value) {
?>
    <?php if ($_smarty_tpl->tpl_vars['field']->value['search'] == 1) {?>
      <Param name="<?php echo $_smarty_tpl->tpl_vars['field']->value['name'];?>
"/>
    <?php }?>
    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

    </Params>
    <Body>
        <SqlPaginated>
            <XSql>
                <XSelect>
                    <XField >
                        *
                    </XField>
                </XSelect>
                <XFrom>
                    <XTable>
                        <?php echo $_smarty_tpl->tpl_vars['entity']->value;?>
 t
                    </XTable>
                </XFrom>
                <XWhere>
                  <XCondition>1 = 1</XCondition>
                  <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['attributes']->value, 'field');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['field']->value) {
?>
                  <?php $_smarty_tpl->_assignInScope('operator', "=" ,true);
?>
                  <?php $_smarty_tpl->_assignInScope('valueDelim', '' ,true);
?>
                  <?php if ($_smarty_tpl->tpl_vars['field']->value['type'] == 'Text') {?>
                    <?php $_smarty_tpl->_assignInScope('operator', "like" ,true);
?>
                    <?php $_smarty_tpl->_assignInScope('valueDelim', "'" ,true);
?>
                  <?php }?>
                  <?php if ($_smarty_tpl->tpl_vars['field']->value['search'] == 1) {?>
                    <XCondition optional="<?php echo $_smarty_tpl->tpl_vars['field']->value['name'];?>
">AND t.<?php echo $_smarty_tpl->tpl_vars['field']->value['name'];?>
 <?php echo $_smarty_tpl->tpl_vars['operator']->value;?>
 <?php echo $_smarty_tpl->tpl_vars['valueDelim']->value;?>
{param-><?php echo $_smarty_tpl->tpl_vars['field']->value['name'];?>
}<?php echo $_smarty_tpl->tpl_vars['valueDelim']->value;?>
</XCondition>
                  <?php }?>
                  <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

                </XWhere>
            </XSql>
        </SqlPaginated>
    </Body>
</Method>

<?php }
}
