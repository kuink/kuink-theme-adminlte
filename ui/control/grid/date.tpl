<div id="{$id}{$multiSeparator}{$fieldAttrs['name']}CG" style="display:inline-block; white-space: nowrap;" >
	<input type="hidden" name="{$id}{$multiSeparator}{$fieldAttrs['name']}" id="{$id}{$multiSeparator}{$fieldAttrs['name']}" value="{$field['value']}"/>
	<div class='input-group date' id="datetimepicker__{$id}{$multiSeparator}{$fieldAttrs['name']}" data-date-format="YYYY/MM/DD">
		<input type='text' class="input-medium {$disabledClass}" {$disabledAttr} id="{$id}{$multiSeparator}{$fieldAttrs['name']}_visible" name="{$id}{$multiSeparator}{$fieldAttrs['name']}_visible"
		{if $field['attributes']['required']=='true'}
			data-bv-notempty="true" data-bv-notempty-message="{translate app="framework"}requiredField{/translate}"
		{/if} />
		<span class="input-group-addon">
			<span class="fa fa-calendar"></span>
		</span>
	</div>

<script type="text/javascript">

	$(function () {
		{if $field['attributes']['disabled'] != 'true'}
			$("#datetimepicker__{$id}{$multiSeparator}{$fieldAttrs['name']}").datetimepicker({
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
			$("#datetimepicker__{$id}{$multiSeparator}{$fieldAttrs['name']}").on("dp.change",function (e) {
				kuink_updateHiddenDate("{$id}{$multiSeparator}{$fieldAttrs['name']}",{$personTimeZoneOffset});
			});

			$("#{$id}{$multiSeparator}{$fieldAttrs['name']}_visible").change(function(){
				kuink_updateHiddenDate("{$id}{$multiSeparator}{$fieldAttrs['name']}",{$personTimeZoneOffset});
				$("#datetimepicker__{$id}{$multiSeparator}{$fieldAttrs['name']}").data("DateTimePicker").setDate($("#{$id}{$multiSeparator}{$fieldAttrs['name']}_visible").val());
			});

			$('#{$fieldID}_visible').inputmask('yyyy/mm/dd');
		{/if}

		{if $field['attributes']['now'] == 'true'}
			kuink_updateVisibleDate("{$id}{$multiSeparator}{$fieldAttrs['name']}",{$personTimeZoneOffset});
		{/if}

		{if $field['attributes']['disabled'] != 'true'}
			$("#datetimepicker__{$id}{$multiSeparator}{$fieldAttrs['name']}").data("DateTimePicker").setDate($("#{$id}{$multiSeparator}{$fieldAttrs['name']}_visible").val());
		{/if}
	});
</script>

</div>
