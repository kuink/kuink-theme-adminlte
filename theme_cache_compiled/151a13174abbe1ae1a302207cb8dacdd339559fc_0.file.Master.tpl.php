<?php
/* Smarty version 3.1.30, created on 2018-12-01 14:38:43
  from "/opt/moodle/mod/kuink/theme/adminlte/template/Master.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c029cf390b6d6_82172431',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '151a13174abbe1ae1a302207cb8dacdd339559fc' => 
    array (
      0 => '/opt/moodle/mod/kuink/theme/adminlte/template/Master.tpl',
      1 => 1543029482,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:Head.tpl' => 1,
    'file:Master_top-navbar.tpl' => 1,
    'file:Master_left-navbar.tpl' => 1,
    'file:Modal_embed.tpl' => 1,
  ),
),false)) {
function content_5c029cf390b6d6_82172431 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->ext->_tplFunction->registerTplFunctions($_smarty_tpl, array (
  'hook' => 
  array (
    'compiled_filepath' => '/opt/moodle/mod/kuink/theme/adminlte/theme_cache_compiled/151a13174abbe1ae1a302207cb8dacdd339559fc_0.file.Master.tpl.php',
    'uid' => '151a13174abbe1ae1a302207cb8dacdd339559fc',
    'call_name' => 'smarty_template_function_hook_21309650165c029cf38a8a90_05402063',
  ),
));
?>




<?php if (($_smarty_tpl->tpl_vars['_imageUrl']->value == '')) {?>
	<?php $_smarty_tpl->_assignInScope('imageSrc', 'stream.php?type=photo&guid=');
} else { ?>
	<?php $_smarty_tpl->_assignInScope('imageSrc', $_smarty_tpl->tpl_vars['_photoUrl']->value);
}?>


<!DOCTYPE html>
<html lang="<?php echo $_smarty_tpl->tpl_vars['_lang']->value;?>
">

	<head>
		<?php $_smarty_tpl->_subTemplateRender("file:Head.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

	</head>

	<body class="<?php if ($_smarty_tpl->tpl_vars['_environment']->value == 'dev') {?>skin-yellow<?php } else { ?>skin-blue-light<?php }?> sidebar-mini wysihtml5-supported sidebar-collapse">

		<div class="wrapper row-offcanvas row-offcanvas-left">
			<header class="main-header">
				<!-- Logo -->
				<a href="<?php echo $_smarty_tpl->tpl_vars['breadcrumbEntries']->value[2]['href'];?>
" class="logo">
					<!-- mini logo for sidebar mini 50x50 pixels -->
					<span class="logo-mini">S</span>
					<!-- logo for regular state and mobile devices -->
					<span class="logo-lg">CSCM-Lx</span>
				</a>

				
				<?php $_smarty_tpl->_subTemplateRender("file:Master_top-navbar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>


			</header>

			
			<?php $_smarty_tpl->_subTemplateRender("file:Master_left-navbar.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>


			<!-- Right side column. Contains the navbar and content of the page -->
			<div class="content-wrapper">
				<!-- Content Header (Page header) -->
					<section class="content-header">
						<h1>
							<?php echo $_smarty_tpl->tpl_vars['breadcrumbEntries']->value[4]['label'];?>

							<small><?php echo $_smarty_tpl->tpl_vars['breadcrumbEntries']->value[3]['label'];?>
</small>
						</h1>
						<ol class="breadcrumb">
							<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['breadcrumbEntries']->value, 'breadcrumb');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['breadcrumb']->value) {
?>
								<li><a href="<?php if ($_smarty_tpl->tpl_vars['breadcrumb']->value['href'] == '') {?>javascript: void(0);<?php } else {
echo $_smarty_tpl->tpl_vars['breadcrumb']->value['href'];
}?>"><?php echo $_smarty_tpl->tpl_vars['breadcrumb']->value['label'];?>
</a></li>
							<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

						</ol>
					</section>

				<!-- Main content -->
				<?php if ($_smarty_tpl->tpl_vars['widgetContainer']->value == true) {?>
						<?php $_smarty_tpl->_assignInScope('appTemplateSmarty', ('app/').($_smarty_tpl->tpl_vars['appTemplate']->value));
?>
						<?php $_smarty_tpl->_subTemplateRender($_smarty_tpl->tpl_vars['appTemplateSmarty']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, true);
?>

				<?php } else { ?>
					<?php $_smarty_tpl->_subTemplateRender("file:Modal_embed.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

				<?php }?>
				

				<footer>
					<div class="pull-right">
						<div style="text-align: right">
							<!-- replace with footer html5 tag -->
							<span class="version label label-primary" style="white-space: pre-wrap;"><?php $_block_plugin1 = isset($_smarty_tpl->smarty->registered_plugins['block']['translate'][0]) ? $_smarty_tpl->smarty->registered_plugins['block']['translate'][0] : null;
if (!is_callable($_block_plugin1)) {
throw new SmartyException('block tag \'translate\' not callable or registered');
}
$_smarty_tpl->smarty->_cache['_tag_stack'][] = array('translate', array('app'=>"framework"));
$_block_repeat1=true;
echo $_block_plugin1(array('app'=>"framework"), null, $_smarty_tpl, $_block_repeat1);
while ($_block_repeat1) {
ob_start();
?>
applicationsVersion<?php $_block_repeat1=false;
echo $_block_plugin1(array('app'=>"framework"), ob_get_clean(), $_smarty_tpl, $_block_repeat1);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>
 | <?php echo $_smarty_tpl->tpl_vars['_appsVersion']->value;?>
</span>&nbsp;&nbsp;&nbsp;<span class="version label label-primary" style="white-space: pre-wrap;"><?php $_block_plugin1 = isset($_smarty_tpl->smarty->registered_plugins['block']['translate'][0]) ? $_smarty_tpl->smarty->registered_plugins['block']['translate'][0] : null;
if (!is_callable($_block_plugin1)) {
throw new SmartyException('block tag \'translate\' not callable or registered');
}
$_smarty_tpl->smarty->_cache['_tag_stack'][] = array('translate', array('app'=>"framework"));
$_block_repeat1=true;
echo $_block_plugin1(array('app'=>"framework"), null, $_smarty_tpl, $_block_repeat1);
while ($_block_repeat1) {
ob_start();
?>
frameworkVersion<?php $_block_repeat1=false;
echo $_block_plugin1(array('app'=>"framework"), ob_get_clean(), $_smarty_tpl, $_block_repeat1);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>
 | <?php echo $_smarty_tpl->tpl_vars['_frameworkVersion']->value;?>
</span>&nbsp;&nbsp;
						</div>
					</div>
				</footer>

			</div><!-- ./right-side -->
		</div><!-- ./wrapper -->

	</body>

</html>
<?php }
/* smarty_template_function_hook_21309650165c029cf38a8a90_05402063 */
if (!function_exists('smarty_template_function_hook_21309650165c029cf38a8a90_05402063')) {
function smarty_template_function_hook_21309650165c029cf38a8a90_05402063($_smarty_tpl,$params) {
foreach ($params as $key => $value) {
$_smarty_tpl->tpl_vars[$key] = new Smarty_Variable($value, $_smarty_tpl->isRenderingCache);
}?>          
	<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['POSITION']->value[$_smarty_tpl->tpl_vars['position']->value], 'item');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['item']->value) {
?>
	<div class="row-fluid" style="margin-left: 0px">
		<?php echo $_smarty_tpl->tpl_vars['item']->value;?>

	</div>
	<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

<?php
}}
/*/ smarty_template_function_hook_21309650165c029cf38a8a90_05402063 */
}
