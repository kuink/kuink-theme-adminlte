<?php
/* Smarty version 3.1.30, created on 2018-12-04 15:36:09
  from "/opt/moodle/mod/kuink/theme/adminlte/ui/control/DocViewer.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c069ee975f1e3_31009135',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'ea2f59fb81f01ef2ea45d7dd6b8f6d913e4caa60' => 
    array (
      0 => '/opt/moodle/mod/kuink/theme/adminlte/ui/control/DocViewer.tpl',
      1 => 1527520355,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c069ee975f1e3_31009135 (Smarty_Internal_Template $_smarty_tpl) {
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
    <i class="fa fa-file">&nbsp;</i>
    <h3 class="box-title"><?php echo $_smarty_tpl->tpl_vars['title']->value;?>
</h3>
  </div>
  <?php }?>
  <div id="imageBlock" class="imageBlock">
    <iframe style="float:left" src = "kuink-core/lib/tools/viewerjs/ViewerJS/#../../../../../stream.php?type=file&guid=<?php echo $_smarty_tpl->tpl_vars['fileGuid']->value;?>
" width='566' height='800' allowfullscreen webkitallowfullscreen>
    </iframe>
  </div>
</div>

<?php }
}
