<?php
/* Smarty version 3.1.33, created on 2019-10-30 14:47:09
  from '/opt/moodledata/neon/apps/framework/framework/process/form/templates/header.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5db9a26d158795_82498979',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '84113e049eeb0c34df6804c806869c6742cce2fd' => 
    array (
      0 => '/opt/moodledata/neon/apps/framework/framework/process/form/templates/header.tpl',
      1 => 1572446465,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5db9a26d158795_82498979 (Smarty_Internal_Template $_smarty_tpl) {
?><table id="header" align="center" >
    <tr>
        <td align="left">
            <img src="http://apps.cscm-lx.pt/~docs/imagens/normasGraficas/pagina_04/v1/v1.svg" width="300"/>
        </td>
        <td style="font-size: 19px;" align="right">
            <?php echo $_smarty_tpl->tpl_vars['title']->value;?>

        </td>
    </tr>
</table>
<table>
    <tr>
        <td>&nbsp;</td>
        <td align="right" style="font-size: 15px;">Ano letivo <?php echo $_smarty_tpl->tpl_vars['class']->value['school_year_name'];?>
</td>
    </tr>
    <tr>
        <td align="left" width="238" style="font-size: 10px;">Data de impressão: <?php echo $_smarty_tpl->tpl_vars['now']->value;?>
 </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td align="right" style="font-size: 13px; color: #828282">
            <?php echo $_smarty_tpl->tpl_vars['class']->value['class_director_designation'];?>
: <?php echo $_smarty_tpl->tpl_vars['classDirector']->value['display_name'];?>

        </td>
    </tr>
</table><?php }
}
