{nocache}

<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<script type="text/javascript">
	google.load("visualization", "1", {ldelim}packages: ["corechart"]{rdelim});
</script>
<script type="text/javascript">

	function drawVisualization_{$name}() {
		// Create and populate the data table.
		var data = new google.visualization.DataTable();

		{$headers}
		{$rows}

		// Create and draw the visualization.
		new google.visualization.{$type}(document.getElementById("{$guid}")).
		//draw(data, {ldelim}backgroundColor: "{$properties['bgcolor']}"{rdelim});
		draw(data, { colors:['#0088CC','#BD362F','#F89406','#51A351'] , {$viewParams} } );
	}

	google.setOnLoadCallback(drawVisualization_{$name});
</script>

<h4>{translate}{$title}{/translate}</h4>
<div id="{$guid}" style="width: {$properties['width']}; height: {$properties['height']};"></div>

{if $exportable == 'true'}
	<div style="float:right; padding:3px">
		{foreach $exportTypes as $exportType}
			<a href="{$baseUrl}&action={$action}&exporttype={$exportType}&export={$name}"><span class="label label-info">{$exportType}</span></a>
		{/foreach}
	</div>
{/if}
{/nocache}
