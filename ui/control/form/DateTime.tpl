<div class="form-control" style="border: none;padding: 0;">
	<input type="hidden" name="{$fieldID}" id="{$fieldID}" value="{$field['value']}"/>
	<div class='input-group date' id='datetimepicker__{$fieldID}' data-date-format="YYYY/MM/DD HH:mm">
		<input type='text' class="form-control {$disabledClass} _kuink_notSubmit" {$disabledAttr} id="{$fieldID}_visible" name="{$fieldID}_visible"
			{if $field['attributes']['required']=='true'}
				data-bv-notempty data-bv-notempty-message="{translate app="framework"}requiredField{/translate}"
			{/if}/>
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
		{if $field['attributes']['disabled'] != 'true'}
			$('#datetimepicker__{$fieldID}').datetimepicker({
				pickDate: true, 				// en/disables the date picker
				pickTime: true, 				// en/disables the time picker
				useMinutes: true, 			// en/disables the minutes picker
				useSeconds: false, 			// en/disables the seconds picker
				useCurrent: false, 			// when true, picker will set the value to the current date/time
				minuteStepping: 1, 			// set the minute stepping
				showTodayButton: false, // shows the today indicator
				language: 'pt', 				// sets language locale
				icons: {
					time: 'glyphicon glyphicon-time',
					//date: 'fa fa-calendar',
					today: 'glyphicon glyphicon-screenshot',
					up: 'glyphicon glyphicon-chevron-up',
					down: 'glyphicon glyphicon-chevron-down'
				},
				useStrict: false, 	// use "strict" when validating dates
				sideBySide: false, 	// show the date and time picker side by side
			});
			$('#datetimepicker__{$fieldID}').on("dp.change",function (e) {
				kuink_updateHiddenDateTime('{$fieldID}',{$personTimeZoneOffset});
			});

			$('#{$fieldID}_visible').change(function(){
				kuink_updateHiddenDateTime('{$fieldID}',{$personTimeZoneOffset});
				$('#datetimepicker__{$fieldID}').data("DateTimePicker").setDate($('#{$fieldID}_visible').val());
			});

		{/if}

		{if $field['attributes']['now'] == 'true' || $field['value']}
			kuink_updateVisibleDateTime('{$fieldID}',{$personTimeZoneOffset});
		{/if}

		{if $field['attributes']['disabled'] != 'true'}
			$('#datetimepicker__{$fieldID}').data("DateTimePicker").setDate($('#{$fieldID}_visible').val());
		{/if}

	});

</script>
