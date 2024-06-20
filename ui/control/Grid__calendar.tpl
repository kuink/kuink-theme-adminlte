
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
			__kuink.controlAddKey('{$_idContext}','{$_guid}', button_id, 'confirm', confirm_message);

							
		$("#{$_guid}").kuinkSubmit({
			'url' 			: location+'&modal=embed',
			'idContext'	: '{$_idContext}',
			'method' 		: {if $freeze=='false'}'post'{else}'get'{/if},
			'processData': false,
			'contentType': false,
			'button_id' : button_id,
			'formGuid'	: '{$_guid}'
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
    };

    init_events($('#external-events div.external-event'));


		/* 
		 * Function to adapt the events to the fullcalendar object 
		 */
		function transformCalendarEvents{$_guid}(events) {
			transformedEvents = [];
			for (const [eventKey, eventValue] of Object.entries(events)) {
				startDate = new Date(Object.getOwnPropertyDescriptor(eventValue, '{$calendarOptions['startDate']}').value*1000);
				endDate = new Date(Object.getOwnPropertyDescriptor(eventValue, '{$calendarOptions['endDate']}').value*1000);
				
				//Apply the correct names to this Object
				eventValue['start'] = startDate;
				eventValue['end'] = endDate;
				eventValue['title'] = Object.getOwnPropertyDescriptor(eventValue, '{$calendarOptions['title']}').value;
				eventValue['id'] = Object.getOwnPropertyDescriptor(eventValue, '{$calendarOptions['id']}').value;

				transformedEvents.push(eventValue);
			}
			return transformedEvents;
		}	
		function filter (node) {
        return (node.tagName !== 'i');
      }

	  {*
	   * To print calendar on print button click. Uses html2canva to convert html fullCalendar to an image,
	   * which is placed on a new window to be printed.
	   *}
	    {*$(document).on("submit", "#{$_guid}-printCalendar", function(e)*}
		$('#{$_guid}-prinst-calendar').click(function(){	
			var title = prompt("Introduza um título para o calendário:" , "{$printTitle}");

			var newWindow = window.open();

			
			var titleElement = '';
			if (!(title.trim() === ''))
				titleElement = `<p class="title">` + title + '</p>';

			$('#{$_guid}').css('width', '20cm');//.trigger('resize');
			$('#{$_guid} tbody .fc-row').css('height', '145px');
			//$(window).trigger('resize');
			$(".fc-left, .fc-right, #{$_guid}-print-calendar").hide(); // Hide buttons

			
			$('#{$_guid} .fc-widget-content.fc-today').css('background', '#fff'); // Remove background from today

			html2canvas(document.querySelector("#{$_guid}"), { scale: 1 }).then(canvas => {
				$('#{$_guid}').css('width', '');
				$('#{$_guid} tbody .fc-row').css('height', '');
				$(".fc-left, .fc-right, #{$_guid}-print-calendar").show();
				$('#{$_guid} .fc-widget-content.fc-today').css('background', '');
	
				var imageData = canvas.toDataURL('image/svg+xml');
                newWindow.document.write('<div style="margin-top: 40px"/>' + titleElement + 
									'<img src="' + imageData + '" style="display: block; margin-left: auto; margin-right: auto; width: 18cm"/>' +
									'<div style="margin-top: 100px"/>');

				

				var style = newWindow.document.createElement('style');
				style.textContent = `
				@media print {
					@page { size: auto;	margin-top: 0;  margin-bottom: 0; }
					header, footer { display: none; }
				}
				.title {
					font-family: 'Source Sans Pro', sans-serif;
					font-size: 24px;
					font-weight: bold;
					text-align: center;
					margin-bottom: 10px;
				}`;

				newWindow.document.head.appendChild(style);
				$(window).trigger('resize');
				newWindow.print();
				newWindow.close();
				
			});

			
		});

		$(document).ready(function () {


				$(document).on("submit", "#{$_guid}-printCalendar", function(e){
					e.preventDefault();

					var newWindow = window.open();

					var title = $('#{$_guid}-printCalendar #title').val();
					var titleElement = '';
					if (!(title.trim() === ''))
						titleElement = `<p class="title">` + title + '</p>';
					
					$('#{$_guid}').css('width', '21cm');
					$('#{$_guid} tbody .fc-row').each(function() {
						if ($(this).prop('scrollHeight') <= 80)
							$(this).css('height', '80px');
						else
							$(this).css('height', 'auto');
					});
					$(".fc-left, .fc-right, #{$_guid}-print-calendar").hide(); // Hide buttons
					$('#{$_guid} .fc-widget-content.fc-today').css('background', '#fff'); // Remove background from today

					html2canvas(document.querySelector("#{$_guid}"), { scale: 2 }).then(canvas => {
						$('#{$_guid}').css('width', '');
						$('#{$_guid} tbody .fc-row').css('height', '');
						$(".fc-left, .fc-right, #{$_guid}-print-calendar").show();
						$('#{$_guid} .fc-widget-content.fc-today').css('background', '');
			
						var imageData = canvas.toDataURL('image/svg+xml');
						newWindow.document.write('<div style="margin-top: 30px"/>' + titleElement + 
											'<img src="' + imageData + '" style="display: block; margin-left: auto; margin-right: auto; max-height:26cm; max-width: 18cm;"/>' +
											'<div style="margin-top: 90px"/>');


						var style = newWindow.document.createElement('style');
						style.textContent = `
						@media print {
							@page { size: auto;	margin-top: 0;  margin-bottom: 0; }
							header, footer { display: none; }
						}
						.title {
							font-family: 'Source Sans Pro', sans-serif;
							font-size: 24px;
							font-weight: bold;
							text-align: center;
							margin-bottom: 10px;
						}`;

						newWindow.document.head.appendChild(style);
						$('#{$_guid}-printCalendarTool').modal("hide");
						$(window).trigger('resize');
						$(newWindow.document).ready(function () {
							newWindow.print();
							newWindow.close();
						});
					});
				});
				$("#{$_guid}-printCalendarTool").on('hidden.bs.modal', function(){
					$('#{$_guid}-printCalendar').get(0).reset();
				});

			});


	$('#{$_guid}').fullCalendar({
		header: {
			{if $calendarOptions['headerLeft'] != ''}
						left: '{$calendarOptions['headerLeft']}',
			{/if}
			{if $calendarOptions['headerCenter'] != ''}
						center: '{$calendarOptions['headerCenter']}',
			{/if}
			{if $calendarOptions['headerRight'] != ''}
						right: '{$calendarOptions['headerRight']}',
			{/if}
		},
		{if $calendarOptions['defaultView'] != ''}
			defaultView: '{$calendarOptions['defaultView']}',
		{/if}
		{if $calendarOptions['allDaySlot'] != ''}
			allDaySlot: {$calendarOptions['allDaySlot']},
		{/if}
		{if $calendarOptions['slotLabelFormat'] != ''}
			slotLabelFormat: '{$calendarOptions['slotLabelFormat']}',
		{/if}
		{if $calendarOptions['locale'] != ''}
			locale: '{$calendarOptions['locale']}',
		{/if}
		{if $calendarOptions['minTime'] != ''}
			minTime: '{$calendarOptions['minTime']}',
		{/if}
		{if $calendarOptions['maxTime'] != ''}
			maxTime: '{$calendarOptions['maxTime']}',
		{/if}
		{if $calendarOptions['maxTime'] != ''}
			maxTime: '{$calendarOptions['maxTime']}',
		{/if}
		{if $calendarOptions['slotDuration'] != ''}
			slotDuration: '{$calendarOptions['slotDuration']}',
		{/if}
		{if $calendarOptions['slotLabelInterval'] != ''}
			slotLabelInterval: '{$calendarOptions['slotLabelInterval']}',
		{/if}
		{if $calendarOptions['weekends'] != ''}
			weekends: {$calendarOptions['weekends']},
		{/if}
		{if $calendarOptions['editable'] != ''}
			editable: {$calendarOptions['editable']},
		{/if}
		{if $calendarOptions['contentHeight'] != ''}
			contentHeight: '{$calendarOptions['contentHeight']}',
		{/if}						

		eventClick: function(eventObj) {
			gridActionField_{$_guid}(false, '', '{$baseUrl}{$calendarOptions['action']}'+'&actionvalue='+Object.getOwnPropertyDescriptor(eventObj, '{$calendarOptions['actionValue']}').value, {$calendarOptions['action']});			
		},
		eventRender: function(event, element, view) {
    		$(element).tooltip({literal}{{/literal}title: event.tooltip{literal}}{/literal});
		},

		{* If there's an API defined use a function to fetch the events dynamically *}
		{if $calendarOptions['api'] != ''}
			events: function(start, end, timezone, callback) {
				view = $('#{$_guid}').fullCalendar('getView');
				apiCompleteUrl = '{$_apiCompleteUrl}{$calendarOptions['api']}&{$calendarOptions['apiParamStart']}='+start.unix()+'&{$calendarOptions['apiParamEnd']}='+end.unix();

				$.ajax({
					url: apiCompleteUrl,
					type: "GET",
					dataType: "json",
					contentType: "application/json; charset=utf-8",                
					success: function (result) {
						console.log("success");
						transformedEvents = transformCalendarEvents{$_guid}(result);
						console.log('ajax transformedEvents:', transformedEvents);
						callback( transformedEvents );
					},
					error: function (result) {
						console.log("error");
					}
				});			
			},		
		{else}
			{* Else, use the bind events *}
			events: [
				{foreach $data as $data_bind}
					{foreach $data_bind as $data_row}
					{literal}{{/literal}
							title: "{$data_row[$calendarOptions['title']]['value']|escape:javascript}",
							start: new Date({$data_row[$calendarOptions['startDate']]['value']}*1000 ),
							end: new Date({$data_row[$calendarOptions['endDate']]['value']}*1000 ),
							id: "{$data_row[$calendarOptions['id']]['value']}",
							{if $calendarOptions['color'] != '' }
								color: "{$data_row[$calendarOptions['color']]['value']}",
							{/if}
							timeFormat: "H:mm",
						{literal}},{/literal}
					{/foreach}
				{/foreach}		
			]
		{/if}
	});

	
	});

	
</script>
<div class="container-fluid">
	<button data-toggle="modal" href="#" data-target="#{$_guid}-printCalendarTool" type="print" style="margin-top: 15px; margin-left: 5px; padding-top: 4px; padding-bottom: 4px;" class="btn-flat btn btn-info pull-right" id="{$_guid}-print-calendar">
		<i class="fa fa-print" aria-hidden="true"></i>
	</button>

	<div class="row-fluid">
		<div id='{$_guid}'></div>
	</div>

	<div id="svg">
	</div>
</div>

<!-- Modal PRINT CALENDAR -->
<div id="{$_guid}-printCalendarTool" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content" style="border-radius: 6px;">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">{translate app="framework"}printCalendar{/translate}</h4>
			</div>
			<div class="modal-body">
				<form id="{$_guid}-printCalendar" class="form-group">
					<label for="title" class="form-label">{translate app="framework"}title{/translate}</label>
					<input id="title" name="title" class="form-control" value="{$printTitle}"></input>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">{translate app="framework"}close{/translate}</button>
				<button type="submit" form="{$_guid}-printCalendar" class="btn btn-primary">{translate app="framework"}print{/translate}</button>
			</div>
		</div>
	</div>
</div>

{* 
	EXPERIMENTAL THINGS

	function addCalendarEvent{$_guid}(id, start, end, title) {
		console.log('Adding event:', id, start, end, title);
		eventObject = {
			id: id,
			start: start,
			end: end,
			title: title
		};
		$('#{$_guid}').fullCalendar('renderEvent', eventObject, true);
	}	

	$('#addEvent').on('click', function() {
		var id = Math.random().toString(26).substring(2, 7); // Random event id for demo...
		addCalendarEvent{$_guid}( id, '2021-02-16 09:30', '2021-02-16 10:00', 'An added event ' + id);
	});

	<input id='addEvent' type="button" value='Add Event' />	

*}


