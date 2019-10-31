<?php
/* Smarty version 3.1.33, created on 2019-10-13 15:56:21
  from '/opt/moodle/mod/kuink/theme/adminlte/template/message/pe.11.new_html.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5da33b153e31c5_07570235',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '10e5355ed169a821c3f42a353416f1109d99fafb' => 
    array (
      0 => '/opt/moodle/mod/kuink/theme/adminlte/template/message/pe.11.new_html.tpl',
      1 => 1539394069,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5da33b153e31c5_07570235 (Smarty_Internal_Template $_smarty_tpl) {
?>Exmo. Encarregado de Educação, <br/><br/>
o processo de pré-inscrição no Colégio foi submetido, para consultar o seu estado deve utilizar o seguinte endereço:
<br/><br/>
<a href="<?php echo $_smarty_tpl->tpl_vars['url']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['url']->value;?>
</a>
<br/><br/>
<strong>Resumo dos dados submetidos</strong>:<br/><br/>
<?php echo $_smarty_tpl->tpl_vars['legalInfo']->value;?>
<br/>
<?php echo $_smarty_tpl->tpl_vars['dataTable']->value;?>
<br/>
<br/>

Respondeu ainda com "Sim" aos seguintes pontos:<br/>
<br/>
<?php echo $_smarty_tpl->tpl_vars['policies']->value;?>
<br/>


Cumprimentos,<br/>
<?php echo $_smarty_tpl->tpl_vars['signature']->value;?>

<?php }
}
