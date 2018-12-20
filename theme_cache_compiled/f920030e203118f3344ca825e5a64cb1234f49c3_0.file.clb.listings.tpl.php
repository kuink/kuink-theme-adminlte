<?php
/* Smarty version 3.1.30, created on 2018-12-10 14:31:27
  from "/opt/moodledata/neon/apps/gecol/gecol.core/process/collaborator/templates/clb.listings.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c0e78bf204830_81270532',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'f920030e203118f3344ca825e5a64cb1234f49c3' => 
    array (
      0 => '/opt/moodledata/neon/apps/gecol/gecol.core/process/collaborator/templates/clb.listings.tpl',
      1 => 1513620345,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:clb.header.tpl' => 1,
  ),
),false)) {
function content_5c0e78bf204830_81270532 (Smarty_Internal_Template $_smarty_tpl) {
?>

<?php $_smarty_tpl->_subTemplateRender("file:clb.header.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, false);
?>


<table cellspacing="0" style="text-align:center" border="1">
	<thead>
		<tr nobr="true" style="font-size:10px">
			<th><b>Foto</b></th>
			<th><b>Descrição</b></th>
			<th><b>Começou Serviço</b></th>
			<th><b>Termina Serviço</b></th>
		</tr>
	</thead>
	<tbody>
	<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['records']->value, 'record');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['record']->value) {
?>
	  <tr nobr="true" style="font-size:9px">
	    <td><img alt="" src="https://moodle.cscm-lx.pt/mod/neon/stream.php?type=photo&guid=<?php echo $_smarty_tpl->tpl_vars['record']->value['public_key'];?>
" style="width: 20px"/></td>
	    <td><?php echo $_smarty_tpl->tpl_vars['record']->value['description'];?>
</td>
			<td><?php echo $_smarty_tpl->tpl_vars['record']->value['start_service_date'];?>
</td>
	    <td style="color:blue"><?php echo $_smarty_tpl->tpl_vars['record']->value['stop_service_date'];?>
</td>
	  </tr>
	<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl);
?>

  </tbody>
</table>
<?php }
}
