<?php
/* Smarty version 3.1.30, created on 2018-12-04 15:37:27
  from "/opt/moodle/mod/kuink/theme/adminlte/ui/control/Image.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c069f37810b86_02975337',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '0f4ecc5d8c8809bcf3929807ff33a24abba9c975' => 
    array (
      0 => '/opt/moodle/mod/kuink/theme/adminlte/ui/control/Image.tpl',
      1 => 1511567079,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c069f37810b86_02975337 (Smarty_Internal_Template $_smarty_tpl) {
?>
<style>
iframe {
  display: block;
  position: relative;
  top: 20px;
  left: 15px;
  width: 95%;
  height: 90%;
}

.imageBlock  {
  width: 100%;
  height: 800px;
  margin: 5px 0;
  border: 1px solid #E8E8E8;
}
</style>


<div class="box">
  <?php if ($_smarty_tpl->tpl_vars['title']->value != '') {?>
  <div class="box-header">
    <i class="fa fa-picture-o">&nbsp;</i>
    <h3 class="box-title"><?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</h3>
  </div>
  <?php }?> 
  <div id="imageBlock" class="imageBlock">
    <div class="imageTitle" style="display: block;"></div>
    <img src="<?php echo $_smarty_tpl->tpl_vars['_streamUrl']->value;?>
?type=<?php echo $_smarty_tpl->tpl_vars['type']->value;?>
&guid=<?php echo $_smarty_tpl->tpl_vars['guid']->value;?>
"/>
  </div>
</div>






<?php }
}
