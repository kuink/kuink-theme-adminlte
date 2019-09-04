<?php
/* Smarty version 3.1.33, created on 2019-06-19 11:40:35
  from '/opt/moodle/mod/kuink/theme/adminlte/ui/control/HtmlContainer.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5d0a1f33ba1ba5_14582782',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '36be03e6c3f514324f173e09c4b3e309f9d91010' => 
    array (
      0 => '/opt/moodle/mod/kuink/theme/adminlte/ui/control/HtmlContainer.tpl',
      1 => 1511567056,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5d0a1f33ba1ba5_14582782 (Smarty_Internal_Template $_smarty_tpl) {
?><style>
    .form-horizontal h4 {
        margin-top: 15px;
     }
    .static-control-group {
        margin-top: 5px;
    }


#htmlBlock.well {
  padding: 0px 0px 15px 0px;
  border: none;
}


.htmlBlock {
  width: 100%;
  margin: 5px 0;
  border: 1px solid #E8E8E8;
}

.htmlBlock .htmlTitle::after  {
  content: "<?php echo $_smarty_tpl->tpl_vars['title']->value;?>
";
  position: relative;
  top: 1px;
  left: 1px;
  padding: 3px 7px;
  font-size: 13px;
  font-weight: bold;
  background-color: #f3f3f3;
  /**border: 1px solid #ddd;**/
  border: 1px solid #E8E8E8;
  color: #0072aa;
  -webkit-border-radius: 4px 0 4px 0;
  -moz-border-radius: 4px 0 4px 0;
  border-radius: 4px 0 4px 0;
}

</style>


<?php if ($_smarty_tpl->tpl_vars['title']->value != '') {?>
<div id="htmlBlock" class="htmlBlock">
  <div class="htmlTitle" style="display: block;"></div>
<?php }?>

<?php if ($_smarty_tpl->tpl_vars['border']->value == "true") {?>
	<?php $_smarty_tpl->_assignInScope('class', 'well' ,true);
}?>

<div class="<?php echo $_smarty_tpl->tpl_vars['class']->value;?>
" style="<?php echo $_smarty_tpl->tpl_vars['style']->value;?>
">
	<?php if ($_smarty_tpl->tpl_vars['label']->value != '') {?>
    <h4><?php echo $_smarty_tpl->tpl_vars['label']->value;?>
</h4>
  <?php }?>

  <?php echo $_smarty_tpl->tpl_vars['value']->value;?>

</div>

<?php if ($_smarty_tpl->tpl_vars['title']->value != '') {?>
</div>
<?php }
}
}
