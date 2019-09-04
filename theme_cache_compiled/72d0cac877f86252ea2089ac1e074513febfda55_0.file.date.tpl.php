<?php
/* Smarty version 3.1.33, created on 2019-07-11 11:10:10
  from '/opt/moodle/mod/kuink/theme/adminlte/ui/control/grid/date.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5d270b0236c288_19600836',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '72d0cac877f86252ea2089ac1e074513febfda55' => 
    array (
      0 => '/opt/moodle/mod/kuink/theme/adminlte/ui/control/grid/date.tpl',
      1 => 1516901840,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5d270b0236c288_19600836 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_checkPlugins(array(0=>array('file'=>'/opt/kuink-dev/kuink-core/lib/tools/smarty/plugins/block.translate.php','function'=>'smarty_block_translate',),));
?>
<div id="<?php echo $_smarty_tpl->tpl_vars['id']->value;
echo $_smarty_tpl->tpl_vars['multiSeparator']->value;
echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['name'];?>
CG" style="display:inline-block; white-space: nowrap;" onclick="<?php echo $_smarty_tpl->tpl_vars['onChange']->value;?>
">
	<input type="hidden" name="<?php echo $_smarty_tpl->tpl_vars['id']->value;
echo $_smarty_tpl->tpl_vars['multiSeparator']->value;
echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['name'];?>
" id="<?php echo $_smarty_tpl->tpl_vars['id']->value;
echo $_smarty_tpl->tpl_vars['multiSeparator']->value;
echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['name'];?>
" value="<?php echo $_smarty_tpl->tpl_vars['value']->value['value'];?>
"/>
	<div class='input-group date' id="datetimepicker__<?php echo $_smarty_tpl->tpl_vars['id']->value;
echo $_smarty_tpl->tpl_vars['multiSeparator']->value;
echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['name'];?>
" data-date-format="YYYY/MM/DD">
		<input type='text' class="input-medium <?php echo $_smarty_tpl->tpl_vars['disabledClass']->value;?>
 _kuink_notSubmit" <?php echo $_smarty_tpl->tpl_vars['disabledAttr']->value;?>
 id="<?php echo $_smarty_tpl->tpl_vars['id']->value;
echo $_smarty_tpl->tpl_vars['multiSeparator']->value;
echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['name'];?>
_visible" name="<?php echo $_smarty_tpl->tpl_vars['id']->value;
echo $_smarty_tpl->tpl_vars['multiSeparator']->value;
echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['name'];?>
_visible"
		<?php if ($_smarty_tpl->tpl_vars['field']->value['attributes']['required'] == 'true') {?>
			data-bv-notempty data-bv-notempty-message="<?php $_smarty_tpl->smarty->_cache['_tag_stack'][] = array('translate', array('app'=>"framework"));
$_block_repeat=true;
echo smarty_block_translate(array('app'=>"framework"), null, $_smarty_tpl, $_block_repeat);
while ($_block_repeat) {
ob_start();?>requiredField<?php $_block_repeat=false;
echo smarty_block_translate(array('app'=>"framework"), ob_get_clean(), $_smarty_tpl, $_block_repeat);
}
array_pop($_smarty_tpl->smarty->_cache['_tag_stack']);?>"
		<?php }?> />
		<span class="input-group-addon">
			<span class="fa fa-calendar" onclick="<?php echo $_smarty_tpl->tpl_vars['onChange']->value;?>
"></span>
		</span>
	</div>
</div>

<?php echo '<script'; ?>
 type="text/javascript">
	$(function () {
		<?php if ($_smarty_tpl->tpl_vars['fieldAttrs']->value['disabled'] != 'true') {?>
			$("#datetimepicker__<?php echo $_smarty_tpl->tpl_vars['id']->value;
echo $_smarty_tpl->tpl_vars['multiSeparator']->value;
echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['name'];?>
").datetimepicker({
				pickDate: true, 		// disables the date picker
				pickTime: false, 		// disables the time picker
				useMinutes: false, 	// disables the minutes picker
				useSeconds: false, 	// disables the seconds picker
				useCurrent: false, 	// when true, picker will set the value to the current date/time
				minuteStepping: 1, 	// set the minute stepping
				showToday: true, 		// shows the today indicator
				language: 'pt', 		// sets language locale
				defaultDate: "", 		// sets a default date, accepts js dates, strings and moment objects
				disabledDates: [], 	// an array of dates that cannot be selected
				enabledDates: [], 	// an array of dates that can be selected
				icons: {
					time: 'glyphicon glyphicon-time',
					date: 'glyphicon glyphicon-calendar',
					up:   'glyphicon glyphicon-chevron-up',
					down: 'glyphicon glyphicon-chevron-down'
				},
				useStrict: false, 			//use "strict" when validating dates
				sideBySide: true, 			//show the date and time picker side by side
				daysOfWeekDisabled: [] 	//for example use daysOfWeekDisabled: [0,6] to disable weekends
			});
			$("#datetimepicker__<?php echo $_smarty_tpl->tpl_vars['id']->value;
echo $_smarty_tpl->tpl_vars['multiSeparator']->value;
echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['name'];?>
").on("dp.change",function (e) {
				kuink_updateHiddenDate("<?php echo $_smarty_tpl->tpl_vars['id']->value;
echo $_smarty_tpl->tpl_vars['multiSeparator']->value;
echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['name'];?>
",<?php echo $_smarty_tpl->tpl_vars['personTimeZoneOffset']->value;?>
);
			});

			$("#<?php echo $_smarty_tpl->tpl_vars['id']->value;
echo $_smarty_tpl->tpl_vars['multiSeparator']->value;
echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['name'];?>
_visible").change(function(){
				kuink_updateHiddenDate("<?php echo $_smarty_tpl->tpl_vars['id']->value;
echo $_smarty_tpl->tpl_vars['multiSeparator']->value;
echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['name'];?>
",<?php echo $_smarty_tpl->tpl_vars['personTimeZoneOffset']->value;?>
);
				$("#datetimepicker__<?php echo $_smarty_tpl->tpl_vars['id']->value;
echo $_smarty_tpl->tpl_vars['multiSeparator']->value;
echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['name'];?>
").data("DateTimePicker").setDate($("#<?php echo $_smarty_tpl->tpl_vars['id']->value;
echo $_smarty_tpl->tpl_vars['multiSeparator']->value;
echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['name'];?>
_visible").val());
			});

			$('#<?php echo $_smarty_tpl->tpl_vars['fieldID']->value;?>
_visible').inputmask('yyyy/mm/dd');
		<?php }?>


		<?php if ($_smarty_tpl->tpl_vars['fieldAttrs']->value['now'] == 'true' || $_smarty_tpl->tpl_vars['value']->value['value']) {?>
			kuink_updateVisibleDate("<?php echo $_smarty_tpl->tpl_vars['id']->value;
echo $_smarty_tpl->tpl_vars['multiSeparator']->value;
echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['name'];?>
",<?php echo $_smarty_tpl->tpl_vars['personTimeZoneOffset']->value;?>
);
		<?php }?>

		<?php if ($_smarty_tpl->tpl_vars['fieldAttrs']->value['disabled'] != 'true') {?>
			$("#datetimepicker__<?php echo $_smarty_tpl->tpl_vars['id']->value;
echo $_smarty_tpl->tpl_vars['multiSeparator']->value;
echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['name'];?>
").data("DateTimePicker").setDate($("#<?php echo $_smarty_tpl->tpl_vars['id']->value;
echo $_smarty_tpl->tpl_vars['multiSeparator']->value;
echo $_smarty_tpl->tpl_vars['fieldAttrs']->value['name'];?>
_visible").val());
		<?php }?>

	});
<?php echo '</script'; ?>
>
<?php }
}
