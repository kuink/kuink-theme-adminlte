<?php
/* Smarty version 3.1.30, created on 2018-12-03 12:58:35
  from "/opt/moodle/mod/kuink/theme/adminlte/ui/control/Grid__chart_v2.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.30',
  'unifunc' => 'content_5c05287bb4a8e1_92724452',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '70fe585826cda67bfee6572d2db4655489276cd6' => 
    array (
      0 => '/opt/moodle/mod/kuink/theme/adminlte/ui/control/Grid__chart_v2.tpl',
      1 => 1528124293,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5c05287bb4a8e1_92724452 (Smarty_Internal_Template $_smarty_tpl) {
?>

<?php echo '<script'; ?>
>

	function isInteger(string) {
		return parseFloat(string) == parseInt(string, 10); // always explicitly set radix to 10!
	}



	function draw_chart_<?php echo $_smarty_tpl->tpl_vars['name']->value;?>
(){

		var name = '<?php echo $_smarty_tpl->tpl_vars['name']->value;?>
';
		var dataJson = '<?php echo json_encode($_smarty_tpl->tpl_vars['jsonData']->value);?>
';
		

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
    
    var yAxisMin = (dataObj.yAxisMin == "null") ? null : dataObj.yAxisMin;
    
    var yAxisMax = (dataObj.yAxisMax == "null") ? null : dataObj.yAxisMax;
    var yAxisTickInterval = (dataObj.yAxisTickInterval == "null") ? null : dataObj.yAxisTickInterval;
    var yAxisAllowDecimals = (dataObj.yAxisAllowDecimals == "true") ? true : false;


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

		

	}
	$(function(){
		draw_chart_<?php echo $_smarty_tpl->tpl_vars['name']->value;?>
();
	})
<?php echo '</script'; ?>
>
<div id="chart_<?php echo $_smarty_tpl->tpl_vars['name']->value;?>
" style="width:<?php echo $_smarty_tpl->tpl_vars['width']->value;?>
; height:<?php echo $_smarty_tpl->tpl_vars['height']->value;?>
"></div>

<?php }
}
