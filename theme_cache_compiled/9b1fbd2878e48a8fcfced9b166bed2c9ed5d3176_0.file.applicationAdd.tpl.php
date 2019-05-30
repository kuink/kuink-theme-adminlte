<?php
/* Smarty version 3.1.30, created on 2019-02-05 17:01:22
  from "/opt/moodledata/neon/apps/framework/framework.ide/process/generator/templates/applicationAdd.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c59c162ce3731_31542359',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '9b1fbd2878e48a8fcfced9b166bed2c9ed5d3176' => 
    array (
      0 => '/opt/moodledata/neon/apps/framework/framework.ide/process/generator/templates/applicationAdd.tpl',
      1 => 1531692353,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c59c162ce3731_31542359 (Smarty_Internal_Template $_smarty_tpl) {
?>

<?php echo '<?xml ';?>
version='1.0'<?php echo '?>';?>

<Application name="<?php echo $_smarty_tpl->tpl_vars['application']->value;?>
" version="">
    <Config>
    </Config>
    <Databases>
    </Databases>
    <Menus>
    </Menus>
</Application>

<?php }
}
