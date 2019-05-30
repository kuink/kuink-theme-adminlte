<?php
/* Smarty version 3.1.30, created on 2019-03-14 15:40:08
  from "/opt/moodle/mod/kuink/theme/adminlte/ui/control/Grid__chart.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c8a75d82bab80_34265921',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '72f0461a7f8a4bc0acdc482f86ae7e0deed3d9f0' => 
    array (
      0 => '/opt/moodle/mod/kuink/theme/adminlte/ui/control/Grid__chart.tpl',
      1 => 1515496186,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c8a75d82bab80_34265921 (Smarty_Internal_Template $_smarty_tpl) {
if (!is_callable('smarty_block_translate')) require_once '/opt/kuink-dev/kuink-core/lib/tools/smarty/plugins/block.translate.php';
?>


<?php echo '<script'; ?>
 type="text/javascript" src="https://www.google.com/jsapi"><?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 type="text/javascript">
	google.load("visualization", "1", {packages: ["corechart"]});
<?php echo '</script'; ?>
>
<?php echo '<script'; ?>
 type="text/javascript">

	function drawVisualization_<?php echo $_smarty_tpl->tpl_vars['name']->value;?>
() {
		// Create and populate the data table.
		var data = new google.visualization.DataTable();

		<?php echo $_smarty_tpl->tpl_vars['headers']->value;?>

		<?php echo $_smarty_tpl->tpl_vars['rows']->value;?>


		// Create and draw the visualization.
		new google.visualization.<?php echo $_smarty_tpl->tpl_vars['type']->value;?>
(document.getElementById("<?php echo $_smarty_tpl->tpl_vars['guid']->value;?>
")).
		//draw(data, {backgroundColor: "<?php echo $_smarty_tpl->tpl_vars['properties']->value['bgcolor'];?>
"});
		draw(data, { colors:['#0088CC','#BD362F','#F89406','#51A351'] , <?php echo $_smarty_tpl->tpl_vars['viewParams']->value;?>
 } );
	}

	google.setOnLoadCallback(drawVisualization_<?php echo $_smarty_tpl->tpl_vars['name']->value;?>
);
<?php echo '</script'; ?>
>

<h4><?php $_smarty_tpl->smarty->_cache['_tag_stack'][] = array('translate', array());
$_block_repeat1=true;
echo smarty_block_translate(array(), null, $_smarty_tpl, $_block_repeat1);
while ($_block_repeat1) {
ob_start();
echo $_smarty_tpl->tpl_vars['title']->value;
$_block_repeat1=false;
echo smarty_block_translate(array(), ob_get_clean(), $_smarty_tpl, $_block_repeat1);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>
</h4>
<div id="<?php echo $_smarty_tpl->tpl_vars['guid']->value;?>
" style="width: <?php echo $_smarty_tpl->tpl_vars['properties']->value['width'];?>
; height: <?php echo $_smarty_tpl->tpl_vars['properties']->value['height'];?>
;"></div>

<?php if ($_smarty_tpl->tpl_vars['exportable']->value == 'true') {?>
	<div style="float:right; padding:3px">
		<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['exportTypes']->value, 'exportType');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['exportType']->value) {
?>
			<a href="<?php echo $_smarty_tpl->tpl_vars['baseUrl']->value;?>
&action=<?php echo $_smarty_tpl->tpl_vars['action']->value;?>
&exporttype=<?php echo $_smarty_tpl->tpl_vars['exportType']->value;?>
&export=<?php echo $_smarty_tpl->tpl_vars['name']->value;?>
"><span class="label label-info"><?php echo $_smarty_tpl->tpl_vars['exportType']->value;?>
</span></a>
		<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

	</div>
<?php }?>

<?php }
}
