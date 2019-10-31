<?php
/* Smarty version 3.1.33, created on 2019-10-30 15:56:37
  from '/opt/moodledata/neon/apps/framework/framework/process/form/templates/formPdf.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5db9b2b5bf6a92_78210434',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '90948f7d8f85083d705b1b20f7d26186d032d719' => 
    array (
      0 => '/opt/moodledata/neon/apps/framework/framework/process/form/templates/formPdf.tpl',
      1 => 1572450994,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5db9b2b5bf6a92_78210434 (Smarty_Internal_Template $_smarty_tpl) {
?>
<html>
	<body>
		<table id="header" align="center" >
				<tr>
						<td align="left">
								<img src="http://apps.cscm-lx.pt/~docs/imagens/normasGraficas/pagina_04/v1/v1.svg" width="300"/>
						</td>
				</tr>
			</table>
			<table>
				<tr>
					<td>&nbsp;</td>
					<td align="right">
						<p style="font-size: 15px;"><?php echo $_smarty_tpl->tpl_vars['documentInfo']->value['title'];?>
</p>
						<p style="font-size: 10px;">Data do Documento: <?php echo $_smarty_tpl->tpl_vars['documentInfo']->value['date'];?>
</p>
						<p style="font-size: 10px;"><?php echo $_smarty_tpl->tpl_vars['documentInfo']->value['disclaimer'];?>
 <br/>Data de impressão: <?php echo $_smarty_tpl->tpl_vars['now']->value;?>
 </p>
					</td>
				</tr>
		</table>
		<table>
			<tr>
				<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['formData']->value, 'formItem');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['formItem']->value) {
?>
					<?php if (($_smarty_tpl->tpl_vars['formItem']->value['type'] == 'header')) {?>
						<td style="font-size: 11pt"><?php if (($_smarty_tpl->tpl_vars['inHeader']->value == 0)) {?><br/><br/><?php }?><strong><?php echo $_smarty_tpl->tpl_vars['formItem']->value['name'];?>
</strong></td></tr><tr>
						<?php $_smarty_tpl->_assignInScope('inHeader', 1);?>
					<?php } else { ?>
						<?php if (($_smarty_tpl->tpl_vars['formItem']->value['type'] != '')) {?>
							<?php if (($_smarty_tpl->tpl_vars['formItem']->value['inline'] == 0)) {?><td style="font-size: 10pt"><?php if (($_smarty_tpl->tpl_vars['inHeader']->value == 0)) {?><br/><br/><?php } else {
$_smarty_tpl->_assignInScope('inHeader', 0);
}
}?><strong><?php echo $_smarty_tpl->tpl_vars['formItem']->value['name'];?>
</strong>&nbsp;|&nbsp;<?php echo $_smarty_tpl->tpl_vars['formItem']->value['value'];?>
&nbsp;&nbsp;<?php if (($_smarty_tpl->tpl_vars['formItem']->value['newLine'] == 1)) {?></td></tr><tr><?php }?>
						<?php }?>
					<?php }?>
				<?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
			</tr>
		</table>

	</body>
</html>
<?php }
}
