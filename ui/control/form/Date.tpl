<div class="form-control" style="border: none;padding: 0;">
	<input type="hidden" name="{$fieldID}" id="{$fieldID}" value="{$field['value']}"/>
	<div class='input-group date' id='datetimepicker__{$fieldID}' data-date-format="YYYY/MM/DD">
		<input type='text' class="form-control {*{$disabledClass}*} _kuink_notSubmit"  {*{$disabledAttr}*} id="{$fieldID}_visible" name="{$fieldID}_visible"
		{if $field['attributes']['required']=='true'}
			data-bv-notempty data-bv-notempty-message="{translate app="framework"}requiredField{/translate}"
		{/if} />	
		<span class="input-group-addon">
			<span class="fa fa-calendar"></span>
		</span>
		<span class="input-group-addon">
			<span class="glyphicon glyphicon-globe" data-toggle="{$fieldID}Tooltip" data-placement="bottom" title="{$personTimeZone} GMT{if $personTimeZoneOffset < 0 }-{else}+{/if}{$personTimeZoneOffset/3600}"></span>
		</span>
	</div>
	
</div>

<script type="text/javascript">
	$(function () {
	  $('[data-toggle="{$fieldID}Tooltip"]').tooltip()
	})

	$(function () {
		{*{if $field['attributes']['disabled'] != 'true'}*}
			$('#datetimepicker__{$fieldID}').datetimepicker({
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
			$('#datetimepicker__{$fieldID}').on("dp.change",function (e) {
				kuink_updateHiddenDate('{$fieldID}',{$personTimeZoneOffset});
			});

			$('#{$fieldID}_visible').change(function(){
				kuink_updateHiddenDate('{$fieldID}',{$personTimeZoneOffset});
				$('#datetimepicker__{$fieldID}').data("DateTimePicker").setDate($('#{$fieldID}_visible').val());
			});

			$('#{$fieldID}_visible').inputmask('yyyy/mm/dd');
		{*{/if}*}
		{if $field['attributes']['now'] == 'true' || $field['value']}
			kuink_updateVisibleDate('{$fieldID}',{$personTimeZoneOffset});
		{/if}

		{*{if $field['attributes']['disabled'] != 'true'}*}
			$('#datetimepicker__{$fieldID}').data("DateTimePicker").setDate($('#{$fieldID}_visible').val());
		{*{/if}*}

		{* Changes to make use of the appropriate functions to enable/disable and allow to do this dynamically, according rules. 2024.10.11 *}
		{if $field['attributes']['disabled'] == 'true'}
			$('#datetimepicker__{$fieldID}').data("DateTimePicker").disable();
		{/if}
	});
</script>
