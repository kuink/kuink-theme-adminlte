<?php
/* Smarty version 3.1.30, created on 2019-01-29 17:27:32
  from "/opt/moodle/mod/kuink/theme/adminlte/template/app/App_1colClean.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c508d04328dd2_87965560',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '942382a9e64c42d1a1a22212882fe0921ae5dec1' => 
    array (
      0 => '/opt/moodle/mod/kuink/theme/adminlte/template/app/App_1colClean.tpl',
      1 => 1515496186,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c508d04328dd2_87965560 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->ext->_tplFunction->callTemplateFunction($_smarty_tpl, 'hook', array('position'=>'left'), true);?>

<?php $_smarty_tpl->ext->_tplFunction->callTemplateFunction($_smarty_tpl, 'hook', array('position'=>'default'), true);?>

<?php echo '<script'; ?>
>
	$("#cscmHeader").parent().parent().hide();
	$(".breadcrumb").hide();
	$(".nav").parent().remove();
	$(".span10").addClass("span12").removeClass("span10");
	$("#header").css("margin-top", "0px");
	$("body").css("padding-top","30px");
	$(".control-group").css("margin-bottom","0px");
	$(".well").removeClass("well").css("margin-top","15px").css("margin-bottom","15px");
	$("table").attr("class","table table-condensed");
	$(".label").hide();
	$("#signatures").attr("class","");
	$("hr").css("margin","0px");
	$(".table").css("margin-bottom","0px");
	$("label").css("font-size","10px").css("margin-bottom","0px");
	$(".controls").css("padding-top","5px");
	$("td").css("font-size","10px");
	$("th").css("font-size","10px");
<?php echo '</script'; ?>
>
<?php }
}
