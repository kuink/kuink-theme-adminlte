
<script src="{$_themeRoot}theme/{$THEME}/assets/vendor/almasaeed2010/adminlte/bower_components/moment/moment.js"></script>
<script src="{$_themeRoot}theme/{$THEME}/assets/vendor/almasaeed2010/adminlte/bower_components/fullcalendar/dist/fullcalendar.min.js"></script>
<script src="{$_themeRoot}theme/{$THEME}/assets/vendor/almasaeed2010/adminlte/bower_components/fullcalendar/dist/locale-all.js"></script>

<script>
	//Add this control to the manager
	__kuink.controlAdd('{$_idContext}', '{$_guid}');


	function validateRequiredFields_{$_guid}() {
	}

	function gridActionField_{$_guid}(confirm, confirm_message, location, button_id, extraParams='') {
		if (confirm == 'true' || confirm == true)
			__kuink.controlAddKey('{$_idContext}','kuink_{$_guid}', button_id, 'confirm', confirm_message);

							
		$("#kuink_{$_guid}").kuinkSubmit({
			'url' 			: location+'&modal=embed',
			'idContext'	: '{$_idContext}',
			'method' 		: {if $freeze=='false'}'post'{else}'get'{/if},
			'processData': false,
			'contentType': false,
			'button_id' : button_id,
			'formGuid'	: 'kuink_{$_guid}'
		});
	}

</script>

<script type='text/javascript'>

	$(document).ready(function() {

    /* initialize the external events
     -----------------------------------------------------------------*/
    function init_events(ele) {
      ele.each(function () {

        // create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
        // it doesn't need to have a start or end
        var eventObject = {
          title: $.trim($(this).text()) // use the element's text as the event title
        }

        // store the Event Object in the DOM element so we can get to it later
        $(this).data('eventObject', eventObject)

        // make the event draggable using jQuery UI
        $(this).draggable({
          zIndex        : 1070,
          revert        : true, // will cause the event to go back to its
          revertDuration: 0  //  original position after the drag
        })

      })
    }

    init_events($('#external-events div.external-event'))

	var date = new Date();
	var d = date.getDate();
	var m = date.getMonth();
	var y = date.getFullYear();

	$('#{$_guid}').fullCalendar({
		eventClick: function(eventObj) {
			console.log(eventObj);
			console.log('{$baseUrl}'+eventObj.action);
			gridActionField_{$_guid}(false, '', '{$baseUrl}'+eventObj.action+'&actionvalue='+eventObj.idfull, eventObj.action);			
		},
		header: {
			left: 'today prev,next',
			center: 'title',
			right: 'agendaWeek, agendaDay'
		},
		defaultView: 'agendaWeek',
		allDaySlot: false,
		axisFormat: 'H:mm',
		locale: 'pt',
		events: [
		{foreach $data as $data_bind}
			{foreach $data_bind as $data_row}
			{literal}{{/literal}
					title: "{$data_row['subject']['value']}",
					description: "{$data_row['subject']['value']}",
					start: new Date({$data_row['start_date']['value']}*1000 ),
					end: new Date({$data_row['end_date']['value']}*1000 ),
					color: "{$data_row['color']['value']}",
					type: "{$data_row['type']['value']}",
					action: "{$data_row['action']['value']}",
					id: "{$data_row['id']['value']}",
					idfull: "{$data_row['type']['value']}:{$data_row['id']['value']}",
					allDay: false,
					timeFormat: "H:mm",
				{literal}},{/literal}
			{/foreach}
		{/foreach}		
		]
	});

	});

</script>


<div class="container-fluid">
	<div class="row-fluid">
		<div class="testing"  id='{$_guid}'></div>
	</div>
</div>

