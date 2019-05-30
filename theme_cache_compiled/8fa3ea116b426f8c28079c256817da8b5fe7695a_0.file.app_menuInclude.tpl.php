<?php
/* Smarty version 3.1.30, created on 2018-11-02 10:22:14
  from "/opt/kuink-dev/kuink-bridge-moodle/theme/adminlte/template/app_menuInclude.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5bdc2556cdb842_34100044',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '8fa3ea116b426f8c28079c256817da8b5fe7695a' => 
    array (
      0 => '/opt/kuink-dev/kuink-bridge-moodle/theme/adminlte/template/app_menuInclude.tpl',
      1 => 1527122597,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5bdc2556cdb842_34100044 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->ext->_tplFunction->registerTplFunctions($_smarty_tpl, array (
  'createLeftMenu' => 
  array (
    'compiled_filepath' => '/opt/kuink-dev/kuink-bridge-moodle/theme/adminlte/theme_cache_compiled/8fa3ea116b426f8c28079c256817da8b5fe7695a_0.file.app_menuInclude.tpl.php',
    'uid' => '8fa3ea116b426f8c28079c256817da8b5fe7695a',
    'call_name' => 'smarty_template_function_createLeftMenu_7017076295bdc2556c980b1_35864872',
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
/* smarty_template_function_createLeftMenu_7017076295bdc2556c980b1_35864872 */
if (!function_exists('smarty_template_function_createLeftMenu_7017076295bdc2556c980b1_35864872')) {
function smarty_template_function_createLeftMenu_7017076295bdc2556c980b1_35864872($_smarty_tpl,$params) {
$params = array_merge(array('menu'=>false,'submenu'=>false,'menuType'=>'toggle'), $params);
foreach ($params as $key => $value) {
$_smarty_tpl->tpl_vars[$key] = new Smarty_Variable($value, $_smarty_tpl->isRenderingCache);
}?>
	<?php if (!is_array($_smarty_tpl->tpl_vars['menu']->value['child'])) {?>
		
		<li>
			<a target="<?php echo $_smarty_tpl->tpl_vars['menu']->value['target'];?>
" href="javascript: menuAppAction(false, '', '<?php echo $_smarty_tpl->tpl_vars['menu']->value['href'];?>
', '');" style="color: #777;"
			<?php if ($_smarty_tpl->tpl_vars['menuType']->value == 'toggled' && $_smarty_tpl->tpl_vars['submenu']->value != true) {?>data-tt="tooltip" title="<?php if ($_smarty_tpl->tpl_vars['menu']->value['label']) {
echo $_smarty_tpl->tpl_vars['menu']->value['label'];
} else {
$_block_plugin1 = isset($_smarty_tpl->smarty->registered_plugins['block']['translate'][0]) ? $_smarty_tpl->smarty->registered_plugins['block']['translate'][0] : null;
if (!is_callable($_block_plugin1)) {
throw new SmartyException('block tag \'translate\' not callable or registered');
}
$_smarty_tpl->smarty->_cache['_tag_stack'][] = array('translate', array());
$_block_repeat1=true;
echo $_block_plugin1(array(), null, $_smarty_tpl, $_block_repeat1);
while ($_block_repeat1) {
ob_start();
?>
noLabel<?php $_block_repeat1=false;
echo $_block_plugin1(array(), ob_get_clean(), $_smarty_tpl, $_block_repeat1);
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
$_block_plugin1 = isset($_smarty_tpl->smarty->registered_plugins['block']['translate'][0]) ? $_smarty_tpl->smarty->registered_plugins['block']['translate'][0] : null;
if (!is_callable($_block_plugin1)) {
throw new SmartyException('block tag \'translate\' not callable or registered');
}
$_smarty_tpl->smarty->_cache['_tag_stack'][] = array('translate', array());
$_block_repeat1=true;
echo $_block_plugin1(array(), null, $_smarty_tpl, $_block_repeat1);
while ($_block_repeat1) {
ob_start();
?>
noLabel<?php $_block_repeat1=false;
echo $_block_plugin1(array(), ob_get_clean(), $_smarty_tpl, $_block_repeat1);
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
$_block_plugin1 = isset($_smarty_tpl->smarty->registered_plugins['block']['translate'][0]) ? $_smarty_tpl->smarty->registered_plugins['block']['translate'][0] : null;
if (!is_callable($_block_plugin1)) {
throw new SmartyException('block tag \'translate\' not callable or registered');
}
$_smarty_tpl->smarty->_cache['_tag_stack'][] = array('translate', array());
$_block_repeat1=true;
echo $_block_plugin1(array(), null, $_smarty_tpl, $_block_repeat1);
while ($_block_repeat1) {
ob_start();
?>
noLabel<?php $_block_repeat1=false;
echo $_block_plugin1(array(), ob_get_clean(), $_smarty_tpl, $_block_repeat1);
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
						<?php $_smarty_tpl->ext->_tplFunction->callTemplateFunction($_smarty_tpl, 'createLeftMenu', array('menu'=>$_smarty_tpl->tpl_vars['submenu']->value,'submenu'=>true,'menuType'=>$_smarty_tpl->tpl_vars['menuType']->value), true);?>

					<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

			<?php }?>
			</li>
		<?php } else { ?>
			<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#"
				<?php if ($_smarty_tpl->tpl_vars['menuType']->value == 'toggled' && $_smarty_tpl->tpl_vars['submenu']->value != true) {?>data-tt="tooltip" title="<?php if ($_smarty_tpl->tpl_vars['menu']->value['label']) {
echo $_smarty_tpl->tpl_vars['menu']->value['label'];
} else {
$_block_plugin1 = isset($_smarty_tpl->smarty->registered_plugins['block']['translate'][0]) ? $_smarty_tpl->smarty->registered_plugins['block']['translate'][0] : null;
if (!is_callable($_block_plugin1)) {
throw new SmartyException('block tag \'translate\' not callable or registered');
}
$_smarty_tpl->smarty->_cache['_tag_stack'][] = array('translate', array());
$_block_repeat1=true;
echo $_block_plugin1(array(), null, $_smarty_tpl, $_block_repeat1);
while ($_block_repeat1) {
ob_start();
?>
noLabel<?php $_block_repeat1=false;
echo $_block_plugin1(array(), ob_get_clean(), $_smarty_tpl, $_block_repeat1);
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
								<?php $_smarty_tpl->ext->_tplFunction->callTemplateFunction($_smarty_tpl, 'createLeftMenu', array('menu'=>$_smarty_tpl->tpl_vars['submenu']->value,'submenu'=>true,'menuType'=>$_smarty_tpl->tpl_vars['menuType']->value), true);?>

							<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

					</ul>
				<?php }?>
			</li>
		<?php }?>
	<?php }
}}
/*/ smarty_template_function_createLeftMenu_7017076295bdc2556c980b1_35864872 */
}
