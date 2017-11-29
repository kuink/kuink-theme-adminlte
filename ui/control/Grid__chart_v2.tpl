{nocache}
<script>

function isInteger(string) {
    return parseFloat(string) == parseInt(string, 10); // always explicitly set radix to 10!
}


function draw_chart_{$name}(){literal}{{/literal}

    var name = '{$name}';
    var dataJson = '{$jsonData|@json_encode}';
    {literal}

    var dataObj = jQuery.parseJSON(dataJson);

    /** get series names **/
    var seriesNames = dataObj.series;

    /** set chartSeries **/
    var chartSeries = new Array();


    /** set chartCategories **/
    var chartCategories = new Array();


    /** set chartTitle and subtitle **/
    var chartTitle = dataObj.title;
    var chartSubtitle = dataObj.subtitle;

    var chartXAxisTitle = dataObj.xAxisTitle;
    var chartYAxisTitle = dataObj.yAxisTitle;

    var chartType = dataObj.type;

    var stacked = dataObj.stacked;
    if (stacked=='true'){
        stacked = 'normal';
    } else {
        stacked = '';
    }


    jQuery(seriesNames).each(function(i, serieName){
        var _serie = new Object();
        _serie.name = serieName;
        _serie.data = new Array();

        jQuery(dataObj.data).each(function(j, dataSet){
            var value = undefined;
            if (isInteger(dataSet.values[serieName])){
                _serie.data.push( parseInt(dataSet.values[serieName]) );
            } else {
                _serie.data.push( parseFloat(dataSet.values[serieName]) );
            }

           if (chartCategories.indexOf(dataSet.name) == -1){
               chartCategories.push(dataSet.name);
           }
        });
        chartSeries.push(_serie);
    });

    jQuery('#chart_'+name).highcharts({
        chart: {
            type: chartType

        },
        title: {
            text: chartTitle
        },
        subtitle: {
            text: chartSubtitle
        },
        yAxis: {
            title: {
                text: chartYAxisTitle
            }
        },
        xAxis: {
            categories: chartCategories,
            title: {
                text: chartXAxisTitle
            }
        },
        plotOptions: {
            column: {
                    stacking: stacked,
                    dataLabels: {
                        enabled: false
                    }
                }
            },
            series: chartSeries
    });

{/literal}

{literal}}{/literal}
$(function(){
    draw_chart_{$name}();
})
 </script>
<div id="chart_{$name}" style="width:{$width}; height:{$height}"></div>
{/nocache}
