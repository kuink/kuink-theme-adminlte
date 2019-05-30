<?php
/* Smarty version 3.1.30, created on 2019-01-22 17:03:36
  from "/opt/moodledata/neon/apps/gecol/gecol.common/process/person/templates/personBlockMedium.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c474ce8d22b03_66956751',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '4210cc32ee92a7b5c959b4972f99b468886a68f3' => 
    array (
      0 => '/opt/moodledata/neon/apps/gecol/gecol.common/process/person/templates/personBlockMedium.tpl',
      1 => 1548176256,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c474ce8d22b03_66956751 (Smarty_Internal_Template $_smarty_tpl) {
?>
<style>
    .personBlock_<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
 {
position: relative;
margin: 15px 0;
padding: 39px 19px 14px;

border: 1px solid #ddd;
-webkit-border-radius: 4px;
-moz-border-radius: 4px;
border-radius: 4px;
}


.personBlock_<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
 .table {
width: 100%;
margin-bottom: 0px;
}
.personBlock_<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
::after {
content: "<?php echo $_smarty_tpl->tpl_vars['_person_type_description']->value;?>
";
position: absolute;
top: -1px;
left: -1px;
padding: 3px 7px;
font-size: 12px;
font-weight: bold;
background-color: #f5f5f5;
border: 1px solid #ddd;
color: #828282;
-webkit-border-radius: 4px 0 4px 0;
-moz-border-radius: 4px 0 4px 0;
border-radius: 4px 0 4px 0;
}
.personBlockFirst td {
border-top: 0px;
}
</style>
<div class="well personBlock_<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
">
<table class="table table-condensed" style="max-width: 400px;" >
              <tbody>
                <tr class="personBlockFirst">
                  <td rowspan="2" width="60"><?php echo $_smarty_tpl->tpl_vars['photo']->value;?>
</td>
                  <td><b><?php echo $_smarty_tpl->tpl_vars['display_name']->value;?>
</b></td>
                  <td><?php echo $_smarty_tpl->tpl_vars['mobile_1']->value;?>
</td>
                  
                  
                </tr>
                <tr>
                  <td>Utente <?php echo $_smarty_tpl->tpl_vars['id']->value;?>
</td>
                  <td><?php echo $_smarty_tpl->tpl_vars['email']->value;?>
</td>
                  
                  
                </tr>
              </tbody>
            </table>
</div><?php }
}
