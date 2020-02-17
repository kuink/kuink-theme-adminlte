<?php
/* Smarty version 3.1.33, created on 2019-12-19 11:57:08
  from '/media/sf_local-development/code/kuink-bridge-standalone/vendor/kuink/kuink-theme-adminlte/template/app_menuInclude.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5dfb659436c476_80488305',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '23946ba97baee22b1d11fcff47610e57538f2a77' => 
    array (
      0 => '/media/sf_local-development/code/kuink-bridge-standalone/vendor/kuink/kuink-theme-adminlte/template/app_menuInclude.tpl',
      1 => 1575365758,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5dfb659436c476_80488305 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->smarty->ext->_tplFunction->registerTplFunctions($_smarty_tpl, array (
  'createLeftMenu' => 
  array (
    'compiled_filepath' => '/media/sf_local-development/code/kuink-bridge-standalone/vendor/kuink/kuink-theme-adminlte/theme_cache_compiled/23946ba97baee22b1d11fcff47610e57538f2a77_0.file.app_menuInclude.tpl.php',
    'uid' => '23946ba97baee22b1d11fcff47610e57538f2a77',
    'call_name' => 'smarty_template_function_createLeftMenu_3493183525dfb659431b1e7_20048851',
  ),
));
echo '<script'; ?>
>
	function menuAppAction(confirm, confirm_message, location, button_id) {

		//Call kuink submit center
		$(".box-body").kuinkSubmit({
			'url' : location+'&modal=embed',
			'idContext' : '<?php echo $_smarty_tpl->tpl_vars['_idContext']->value;?>
',
			'method' : 'get',
			'button_id' : button_id
		});
	}

<?php echo '</script'; ?>
>


<?php }
/* smarty_template_function_createLeftMenu_3493183525dfb659431b1e7_20048851 */
if (!function_exists('smarty_template_function_createLeftMenu_3493183525dfb659431b1e7_20048851')) {
function smarty_template_function_createLeftMenu_3493183525dfb659431b1e7_20048851(Smarty_Internal_Template $_smarty_tpl,$params) {
$params = array_merge(array('menu'=>false,'submenu'=>false,'menuType'=>'toggle'), $params);
foreach ($params as $key => $value) {
$_smarty_tpl->tpl_vars[$key] = new Smarty_Variable($value, $_smarty_tpl->isRenderingCache);
}
?>

	<?php if (!is_array($_smarty_tpl->tpl_vars['menu']->value['child'])) {?>
				<li>
			<a target="<?php echo $_smarty_tpl->tpl_vars['menu']->value['target'];?>
" href="javascript: menuAppAction(false, '', '<?php echo $_smarty_tpl->tpl_vars['menu']->value['href'];?>
', '');" style="color: #777;"
			<?php if ($_smarty_tpl->tpl_vars['menuType']->value == 'toggled' && $_smarty_tpl->tpl_vars['submenu']->value != true) {?>data-tt="tooltip" title="<?php if ($_smarty_tpl->tpl_vars['menu']->value['label']) {
echo $_smarty_tpl->tpl_vars['menu']->value['label'];
} else {
$_block_plugin10 = isset($_smarty_tpl->smarty->registered_plugins['block']['translate'][0]) ? $_smarty_tpl->smarty->registered_plugins['block']['translate'][0] : null;
if (!is_callable($_block_plugin10)) {
throw new SmartyException('block tag \'translate\' not callable or registered');
}
$_smarty_tpl->smarty->_cache['_tag_stack'][] = array('translate', array());
$_block_repeat=true;
echo $_block_plugin10(array(), null, $_smarty_tpl, $_block_repeat);
while ($_block_repeat) {
ob_start();?>noLabel<?php $_block_repeat=false;
echo $_block_plugin10(array(), ob_get_clean(), $_smarty_tpl, $_block_repeat);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);
}?>"<?php }?>>
				<i class="fa fa-<?php if ($_smarty_tpl->tpl_vars['menu']->value['icon'] && $_smarty_tpl->tpl_vars['menu']->value['icon'] != 'circle') {
echo $_smarty_tpl->tpl_vars['menu']->value['icon'];
} else {
if (!$_smarty_tpl->tpl_vars['submenu']->value) {?>th-list<?php }
}?>"></i>
				<?php if ($_smarty_tpl->tpl_vars['menuType']->value != 'toggled' || $_smarty_tpl->tpl_vars['submenu']->value == true) {?><span><?php if ($_smarty_tpl->tpl_vars['menu']->value['label']) {
echo $_smarty_tpl->tpl_vars['menu']->value['label'];
} else {
$_block_plugin11 = isset($_smarty_tpl->smarty->registered_plugins['block']['translate'][0]) ? $_smarty_tpl->smarty->registered_plugins['block']['translate'][0] : null;
if (!is_callable($_block_plugin11)) {
throw new SmartyException('block tag \'translate\' not callable or registered');
}
$_smarty_tpl->smarty->_cache['_tag_stack'][] = array('translate', array());
$_block_repeat=true;
echo $_block_plugin11(array(), null, $_smarty_tpl, $_block_repeat);
while ($_block_repeat) {
ob_start();?>noLabel<?php $_block_repeat=false;
echo $_block_plugin11(array(), ob_get_clean(), $_smarty_tpl, $_block_repeat);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);
}?></span><?php }?>
			</a>
		</li>
	<?php } else { ?>
		<?php if ($_smarty_tpl->tpl_vars['menuType']->value != 'toggled') {?>
			<?php if ($_smarty_tpl->tpl_vars['menuType']->value == 'dropdown') {?>
				<li class="treeview dropdown-header">
			<?php } else { ?>
				<li style="background-color:#EEEEEE;">
			<?php }?>
			<i class="fa fa-<?php if ($_smarty_tpl->tpl_vars['menu']->value['icon'] && $_smarty_tpl->tpl_vars['menu']->value['icon'] != 'circle') {
echo $_smarty_tpl->tpl_vars['menu']->value['icon'];
} else {
if (!$_smarty_tpl->tpl_vars['submenu']->value) {?>th-list<?php }
}?>"></i>
			<?php if ($_smarty_tpl->tpl_vars['menuType']->value != 'toggled' || $_smarty_tpl->tpl_vars['submenu']->value == true) {?><span><?php if ($_smarty_tpl->tpl_vars['menu']->value['label']) {
echo $_smarty_tpl->tpl_vars['menu']->value['label'];
} else {
$_block_plugin12 = isset($_smarty_tpl->smarty->registered_plugins['block']['translate'][0]) ? $_smarty_tpl->smarty->registered_plugins['block']['translate'][0] : null;
if (!is_callable($_block_plugin12)) {
throw new SmartyException('block tag \'translate\' not callable or registered');
}
$_smarty_tpl->smarty->_cache['_tag_stack'][] = array('translate', array());
$_block_repeat=true;
echo $_block_plugin12(array(), null, $_smarty_tpl, $_block_repeat);
while ($_block_repeat) {
ob_start();?>noLabel<?php $_block_repeat=false;
echo $_block_plugin12(array(), ob_get_clean(), $_smarty_tpl, $_block_repeat);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);
}?></span><?php }?>
			</li>
			<li>
			<?php if ($_smarty_tpl->tpl_vars['menu']->value['child']) {?>
					<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['menu']->value['child'], 'submenu');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['submenu']->value) {
?>
						<?php $_smarty_tpl->smarty->ext->_tplFunction->callTemplateFunction($_smarty_tpl, 'createLeftMenu', array('menu'=>$_smarty_tpl->tpl_vars['submenu']->value,'submenu'=>true,'menuType'=>$_smarty_tpl->tpl_vars['menuType']->value), true);?>

					<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
			<?php }?>
			</li>
		<?php } else { ?>
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#"
				<?php if ($_smarty_tpl->tpl_vars['menuType']->value == 'toggled' && $_smarty_tpl->tpl_vars['submenu']->value != true) {?>data-tt="tooltip" title="<?php if ($_smarty_tpl->tpl_vars['menu']->value['label']) {
echo $_smarty_tpl->tpl_vars['menu']->value['label'];
} else {
$_block_plugin13 = isset($_smarty_tpl->smarty->registered_plugins['block']['translate'][0]) ? $_smarty_tpl->smarty->registered_plugins['block']['translate'][0] : null;
if (!is_callable($_block_plugin13)) {
throw new SmartyException('block tag \'translate\' not callable or registered');
}
$_smarty_tpl->smarty->_cache['_tag_stack'][] = array('translate', array());
$_block_repeat=true;
echo $_block_plugin13(array(), null, $_smarty_tpl, $_block_repeat);
while ($_block_repeat) {
ob_start();?>noLabel<?php $_block_repeat=false;
echo $_block_plugin13(array(), ob_get_clean(), $_smarty_tpl, $_block_repeat);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);
}?>"<?php }?>>
					<i class="fa fa-<?php if ($_smarty_tpl->tpl_vars['menu']->value['icon'] && $_smarty_tpl->tpl_vars['menu']->value['icon'] != 'circle') {
echo $_smarty_tpl->tpl_vars['menu']->value['icon'];
} else {
if (!$_smarty_tpl->tpl_vars['submenu']->value) {?>th-list<?php }
}?>"></i>
					<span class="caret"></span>
				</a>
				<?php if ($_smarty_tpl->tpl_vars['menu']->value['child']) {?>
					<ul class="dropdown-menu" style="margin-left: 100%; margin-top: -40px;border-top-left-radius: 0;">
							<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['menu']->value['child'], 'submenu');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['submenu']->value) {
?>
								<?php $_smarty_tpl->smarty->ext->_tplFunction->callTemplateFunction($_smarty_tpl, 'createLeftMenu', array('menu'=>$_smarty_tpl->tpl_vars['submenu']->value,'submenu'=>true,'menuType'=>$_smarty_tpl->tpl_vars['menuType']->value), true);?>

							<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
					</ul>
				<?php }?>
			</li>
		<?php }?>
	<?php }
}}
/*/ smarty_template_function_createLeftMenu_3493183525dfb659431b1e7_20048851 */
}
