<script type='text/javascript' src='lib/tools/fullcalendar/src/_loader.js'></script>

<script type='text/javascript'>

  $(document).ready(function() {

    var date = new Date();
    var d = date.getDate();
    var m = date.getMonth();
    var y = date.getFullYear();

    $('#calendar').fullCalendar({
      theme: true,
      header: {
        left: '',
        center: 'title',
        right: 'agendaWeek'
      },
      defaultView: 'agendaWeek',
      weekends: false,
      slotMinutes: 10,
      firstHour: 8,
      axisFormat: "H:mm",
      editable: false,
      eventColor: 'white',
      eventTextColor: 'blue',
      eventBackgroundColor: '#eeeeee',
      eventBorderColor: 'blue',
      events: [

            {*
              title: 'TESTE<br/><img src="pix/gplv3.png"/>aaa',
              start: new Date(y, m, d, 8, 0),
              end: new Date(y, m, d, 9, 0),
              allDay: false,
              url: 'http://www.cscm-lx.pt',
            *}


        {foreach $data as $data_bind}
          {foreach $data_bind as $data_row}
            {
              title: "{$data_row['value']->title|escape:javascript}",  
              start: new Date({$data_row->start_date}*1000 ),
              end: new Date({$data_row->end_date}*1000 ),
              allDay: false,
            },
          {/foreach}
        {/foreach}

        {
        }
      ],
        eventRender: function (event, element) {
            element.find('div.fc-event-title').html(element.find('div.fc-event-title').text());
        }
    });

  });

</script>
<style type='text/css'>
  #calendar {
    width: 90%;
    margin: 0 auto;
    }
    .fc-event-title {
      font-weight: bold;
    }
</style>

<div class="container-fluid">
    <div class="row-fluid">
        <div id='calendar'></div>
    </div>
</div>
