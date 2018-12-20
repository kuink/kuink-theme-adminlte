<!--script type='text/javascript' src='lib/tools/fullcalendar/src/_loader.js'></script-->
<link rel="stylesheet" href="../../assets/vendor/almaseed2010/adminlte/bower_components/fullcalendar/dist/fullcalendar.min.css">
<link rel="stylesheet" href="../../assets/vendor/almaseed2010/adminlte/bower_components/fullcalendar/dist/fullcalendar.print.min.css" media="print">

<script src="../../bower_components/moment/moment.js"></script>
<script src="../../assets/vendor/almaseed2010/adminlte/bower_components/fullcalendar/dist/fullcalendar.min.js"></script>

<script type='text/javascript'>

	$(document).ready(function() {

		var date = new Date();
		var d = date.getDate();
		var m = date.getMonth();
		var y = date.getFullYear();

		$('#calendar').fullCalendar({

			header: {
				left: '',
				center: 'title',
				right: '{$calendarOptions['headerViews']}'
			},
			defaultView: "{$calendarOptions['defaultView']}",
			weekends: {$calendarOptions['weekends']},
			slotMinutes: {$calendarOptions['slotMinutes']},
			firstHour: {$calendarOptions['firstHour']},
			axisFormat: "{$calendarOptions['axisFormat']}",
			editable: {$calendarOptions['editable']},
			eventColor: '{$calendarOptions['eventColor']}',
			eventTextColor: '{$calendarOptions['eventTextColor']}',
			eventBackgroundColor: '{$calendarOptions['eventBackgroundColor']}',
			eventBorderColor: '{$calendarOptions['eventBorderColor']}',
			monthNames: ['{translate app="framework"}january{/translate}', '{translate app="framework"}february{/translate}',  '{translate app="framework"}march{/translate}', '{translate app="framework"}april{/translate}', '{translate app="framework"}may{/translate}', '{translate app="framework"}june{/translate}',  '{translate app="framework"}july{/translate}',  '{translate app="framework"}august{/translate}',  '{translate app="framework"}september{/translate}', '{translate app="framework"}october{/translate}', '{translate app="framework"}november{/translate}',  '{translate app="framework"}december{/translate}'],
			monthNamesShort: ['{translate app="framework"}januaryShort{/translate}',  '{translate app="framework"}februaryShort{/translate}', '{translate app="framework"}marchShort{/translate}',  '{translate app="framework"}aprilShort{/translate}',  '{translate app="framework"}mayShort{/translate}',  '{translate app="framework"}juneShort{/translate}', '{translate app="framework"}julyShort{/translate}', '{translate app="framework"}augustShort{/translate}', '{translate app="framework"}septemberShort{/translate}',  '{translate app="framework"}octoberShort{/translate}',  '{translate app="framework"}novemberShort{/translate}', '{translate app="framework"}decemberShort{/translate}'],
			dayNames: [ '{translate app="framework"}sunday{/translate}','{translate app="framework"}monday{/translate}','{translate app="framework"}tuesday{/translate}','{translate app="framework"}wednesday{/translate}','{translate app="framework"}thursday{/translate}','{translate app="framework"}friday{/translate}','{translate app="framework"}saturday{/translate}' ],
			dayNamesShort: ['{translate app="framework"}sundayShort{/translate}','{translate app="framework"}mondayShort{/translate}','{translate app="framework"}tuesdayShort{/translate}','{translate app="framework"}wednesdayShort{/translate}','{translate app="framework"}thursdayShort{/translate}','{translate app="framework"}fridayShort{/translate}','{translate app="framework"}saturdayShort{/translate}'],
			buttonText: {
				today: '{translate app="framework"}today{/translate}',
				month: '{translate app="framework"}month{/translate}',
				week: '{translate app="framework"}week{/translate}',
				day: '{translate app="framework"}day{/translate}'
			},
			events: [

			{*
				{
					title: 'TESTE<br/><img src="pix/gplv3.png"/>aaa',
					start: new Date(y, m, d, 8, 0),
					end: new Date(y, m, d, 9, 0),
					allDay: false,
					url: 'http://www.cscm-lx.pt',
				},
			*}

			{foreach $data as $data_bind}
				{foreach $data_bind as $data_row}
					{
						title: "{$data_row[$titleField]['value']}",
						start: new Date({$data_row[{$startDateField}]['value']}*1000 ),
						end: new Date({$data_row[{$endDateField}]['value']}*1000 ),
						allDay: false,
					},
				{/foreach}
			{/foreach}

			{
				}
			],
			eventRender: function (event, element) {
				element.find('div.fc-event-title').html(element.find('div.fc-event-title').text());
				element.find('span.fc-event-title').html(element.find('span.fc-event-title').text());
			}
		});
	});

</script>

<!-- style type='text/css'>
	#calendar {
		width: 90%;
		margin: 0 auto;
	}
	.fc-event-title {
		font-weight: bold;
	}
</style -->

<div class="container-fluid">
	<div class="row-fluid">
		<div id='calendar'></div>
	</div>
</div>

