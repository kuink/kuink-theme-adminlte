<?php
/* Smarty version 3.1.33, created on 2019-06-19 08:48:00
  from '/opt/moodle/mod/kuink/theme/adminlte/template/Modal_embed.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5d09f6c0432d98_37938911',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'c077cd5da6db1f65b6088b1341e03501db901729' => 
    array (
      0 => '/opt/moodle/mod/kuink/theme/adminlte/template/Modal_embed.tpl',
      1 => 1544544919,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:app_menuInclude.tpl' => 1,
    'file:app_toggleMenu.tpl' => 2,
    'file:UserMessages.tpl' => 1,
  ),
),false)) {
function content_5d09f6c0432d98_37938911 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->smarty->ext->_tplFunction->registerTplFunctions($_smarty_tpl, array (
  'hook' => 
  array (
    'compiled_filepath' => '/opt/moodle/mod/kuink/theme/adminlte/theme_cache_compiled/c077cd5da6db1f65b6088b1341e03501db901729_0.file.Modal_embed.tpl.php',
    'uid' => 'c077cd5da6db1f65b6088b1341e03501db901729',
    'call_name' => 'smarty_template_function_hook_13978513075d09f6c03d2132_84107203',
  ),
));
?>

<?php $_smarty_tpl->_subTemplateRender('file:app_menuInclude.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>

<!-- Main content -->

<div id="<?php echo $_smarty_tpl->tpl_vars['_idContext']->value;?>
_wrapper" class="box" kuink-guid="<?php echo $_smarty_tpl->tpl_vars['_idContext']->value;?>
" style="padding: 0px 5px;">
	<div class="box-header with-border" style="cursor: move;">
		<!-- tools box -->
		<div class="pull-right box-tools">
			<button id="collapseWidgetButton" class="btn btn-danger btn-sm" data-widget="collapse" data-toggle="tooltip" title="" data-original-title="<?php $_block_plugin7 = isset($_smarty_tpl->smarty->registered_plugins['block']['translate'][0]) ? $_smarty_tpl->smarty->registered_plugins['block']['translate'][0] : null;
if (!is_callable($_block_plugin7)) {
throw new SmartyException('block tag \'translate\' not callable or registered');
}
$_smarty_tpl->smarty->_cache['_tag_stack'][] = array('translate', array());
$_block_repeat=true;
echo $_block_plugin7(array(), null, $_smarty_tpl, $_block_repeat);
while ($_block_repeat) {
ob_start();?>toggleApp<?php $_block_repeat=false;
echo $_block_plugin7(array(), ob_get_clean(), $_smarty_tpl, $_block_repeat);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>"><i class="fa fa-minus"></i></button>
		</div><!-- ./ tools -->
		<i class="fa fa-cube"></i>
		<h3 class="box-title"><?php echo $_smarty_tpl->tpl_vars['appName']->value;?>
</h3>
		<div style="display:inline-block;white-space: nowrap;">
			<?php if (!empty($_smarty_tpl->tpl_vars['menuEntries']->value)) {?><a href="#sidebarMenu" class="btn btn-default" id="sidebarMenu" data-toggle="tooltip" data-placement="right" title="<?php $_block_plugin8 = isset($_smarty_tpl->smarty->registered_plugins['block']['translate'][0]) ? $_smarty_tpl->smarty->registered_plugins['block']['translate'][0] : null;
if (!is_callable($_block_plugin8)) {
throw new SmartyException('block tag \'translate\' not callable or registered');
}
$_smarty_tpl->smarty->_cache['_tag_stack'][] = array('translate', array());
$_block_repeat=true;
echo $_block_plugin8(array(), null, $_smarty_tpl, $_block_repeat);
while ($_block_repeat) {
ob_start();?>toggleMenu<?php $_block_repeat=false;
echo $_block_plugin8(array(), ob_get_clean(), $_smarty_tpl, $_block_repeat);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>"><i class="fa fa-bars"></i></a><?php }?>
					</div>
		<a href="javascript: menuAppAction(false, '', '<?php echo $_smarty_tpl->tpl_vars['_refresh']->value;?>
', '');" class="btn btn-success" id="refresh" title="<?php $_block_plugin9 = isset($_smarty_tpl->smarty->registered_plugins['block']['translate'][0]) ? $_smarty_tpl->smarty->registered_plugins['block']['translate'][0] : null;
if (!is_callable($_block_plugin9)) {
throw new SmartyException('block tag \'translate\' not callable or registered');
}
$_smarty_tpl->smarty->_cache['_tag_stack'][] = array('translate', array());
$_block_repeat=true;
echo $_block_plugin9(array(), null, $_smarty_tpl, $_block_repeat);
while ($_block_repeat) {
ob_start();?>refresh<?php $_block_repeat=false;
echo $_block_plugin9(array(), ob_get_clean(), $_smarty_tpl, $_block_repeat);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>"><i class="fa fa-sync"></i></a>

	</div>
	
	<div class="box-body">
		<div id="<?php echo $_smarty_tpl->tpl_vars['_idContext']->value;?>
_loading_wrapper" kuink-guid="<?php echo $_smarty_tpl->tpl_vars['_idContext']->value;?>
">
			<div id="wrapper" class="toggled">
				<?php if (!empty($_smarty_tpl->tpl_vars['menuEntries']->value)) {?>
					<?php $_smarty_tpl->_assignInScope('menuIsToggled', false);?>
					<?php $_smarty_tpl->_subTemplateRender('file:app_toggleMenu.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
					<?php $_smarty_tpl->_assignInScope('menuIsToggled', true);?>
					<?php $_smarty_tpl->_subTemplateRender('file:app_toggleMenu.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, true);
?>
				<?php }?>
				<!-- Page Content -->
				<div style="overflow: auto;overflow-x: hidden;">
						<div class="row">
							<div class="col-lg-12 col-md-12 .col-sm-12 .col-xs-12">
								<?php if (count($_smarty_tpl->tpl_vars['userMessages']->value) > 0) {?>
								<div class="kuink-user-messages">
									<?php $_smarty_tpl->_subTemplateRender('file:UserMessages.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>
								</div>
								<?php }?>
								<div id="<?php echo $_smarty_tpl->tpl_vars['_idContext']->value;?>
_content_wrapper" kuink-guid="<?php echo $_smarty_tpl->tpl_vars['_idContext']->value;?>
">
																		<?php $_smarty_tpl->_assignInScope('appTemplateSmarty', ('app/').($_smarty_tpl->tpl_vars['appTemplate']->value));?>
									<?php $_smarty_tpl->_subTemplateRender($_smarty_tpl->tpl_vars['appTemplateSmarty']->value, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, true);
?>
								</div>
							</div>
						</div>
				</div>
			</div>
			<div class="box-footer" style="clear:both;">
				<div class="row">
					<div id="debugMessages" class="noPrint">
						<?php $_smarty_tpl->smarty->ext->_tplFunction->callTemplateFunction($_smarty_tpl, 'hook', array('position'=>'debugMessages'), true);?>

					</div>
					<div id="kuinkTrace">
						<?php $_smarty_tpl->smarty->ext->_tplFunction->callTemplateFunction($_smarty_tpl, 'hook', array('position'=>'trace'), true);?>

					</div>
				</div><!-- /.row -->
			</div>
		</div>
	</div>
</div>

<!-- Menu Toggle Script -->
<?php echo '<script'; ?>
>
	if(typeof toggleMenuIsVisible === 'undefined')
		var toggleMenuIsVisible = false;

	if(typeof togglingMenu === 'undefined')
		var togglingMenu = false;

	$("#sidebarMenu").click(function(e) {
		if(window.togglingMenu == false){
			window.togglingMenu = true;
			// prevent from anchoring
			e.preventDefault();
			// toggle wrapper
			$("#wrapper").toggleClass("toggled");
			// hide/show sidebar menu
			if ($("#sidebar-wrapper").is(":visible")) {
				if($("#wrapper").hasClass("toggled") && window.toggleMenuIsVisible == true){
					$("#sidebar-wrapper").fadeOut('fast');
					$("#iconMenuToggled").fadeIn('fast');
					window.toggleMenuIsVisible = false;
				}
			} else {
				if(!$("#wrapper").hasClass("toggled") && window.toggleMenuIsVisible == false){
					$("#sidebar-wrapper").fadeIn('fast');
					$("#iconMenuToggled").fadeOut('fast');
					window.toggleMenuIsVisible = true;
				}
			}
			window.togglingMenu = false;
		}
	});

	// hide/show sidebar menu button
	$( "#collapseWidgetButton" ).click(function() {
		if($("#sidebarMenu").length) {
			if(!$("#<?php echo $_smarty_tpl->tpl_vars['_idContext']->value;?>
_wrapper").hasClass("collapsed-box")){
				$("#sidebarMenu").fadeOut('fast');
			}else{
				var hasMenu = document.getElementById("toggleMenuChildren");
				if(hasMenu != null)
					if(hasMenu.hasChildNodes())
						$("#sidebarMenu").fadeIn('fast');
			}
		}
	});
<?php echo '</script'; ?>
>
<?php }
/* smarty_template_function_hook_13978513075d09f6c03d2132_84107203 */
if (!function_exists('smarty_template_function_hook_13978513075d09f6c03d2132_84107203')) {
function smarty_template_function_hook_13978513075d09f6c03d2132_84107203(Smarty_Internal_Template $_smarty_tpl,$params) {
foreach ($params as $key => $value) {
$_smarty_tpl->tpl_vars[$key] = new Smarty_Variable($value, $_smarty_tpl->isRenderingCache);
}
?>
          	<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['POSITION']->value[$_smarty_tpl->tpl_vars['position']->value], 'item');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['item']->value) {
?>
		<?php echo $_smarty_tpl->tpl_vars['item']->value;?>

	<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);
}}
/*/ smarty_template_function_hook_13978513075d09f6c03d2132_84107203 */
}