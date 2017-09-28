{$fieldAttrs = $field['attributes']}

<div class="controls">
	<script type="text/javascript">
		/**
		* Action in javascript to submit this select
		**/
		function submit_{$fieldID}(){
			{$urlSuff = "&action={$fieldAttrs['action']}"}
			{if $fieldAttrs['event']!=''}
				{$urlSuff = "&event={$fieldAttrs['event']}"}
			{/if}

			setFormAction("{$form['_guid']}", '{$form["baseUrl"]|html_entity_decode}{$urlSuff}','', '', '');
			$("#{$form['_guid']}").submit();
		}
	</script>

	{if $fieldAttrs['searchable']=="dynamic" }
		{*Dinamycally call the api via ajax*}

			{assign var=datasourceParams value=","|explode:$fieldAttrs['datasource-params']}

      {$width = "100%"}

	<script type="text/javascript">
					jQuery(document).ready(function() {
					var kuinkFunctionRaw = "{$fieldAttrs['datasource']}";
					var kuinkFunction = kuinkFunctionRaw.replace("call:", "");

	$("#{$fieldID}").select2({
		placeholder: '{translate app="framework"}search{/translate}',
		allowClear: true,
		ajax: {
			url: "{$_apiCompleteUrl}"+kuinkFunction,
			dataType: 'json',
			delay: 250,
		quietMillis: 500,
			data: function (term, page) {
				return {
					{$datasourceParams[0]}: term
					{if isset($datasourceParams[1])}
					,pagesize: 10,
					{$datasourceParams[1]}: page-1
					{/if}
				};
			},
			results: function (data, page) {
				// parse the results into the format expected by Select2.
				// since we are using custom formatting functions we do not need to
				// alter the remote JSON data
				var results = [];
        var dataToProcess = data;

        if (typeof data.records != 'undefined')
          dataToProcess = data.records;

				 $.each(dataToProcess, function(index, item){
				 var bindresults = "{$fieldAttrs['bindresults']}";
				 var fields  = bindresults.split(',');
				 for (var i=0; i<fields.length; i++)
						fields[i] = item[fields[i].trim()];

						results.push({
							id: item.{$fieldAttrs['bindid']},
							text: item.{$fieldAttrs['bindvalue']}
							{if $fieldAttrs['bindimage']}
							,image: item.{$fieldAttrs['bindimage']}
							{/if}
							{if $fieldAttrs['bindresults']}
							,results: fields
							{/if}
						});
					});
					var more = (page * 10) < data.total; // whether or not there are more results available
				return {
					results: results
					{if isset($datasourceParams[1])}
					, more: more
					{/if}
				};
			},
			cache: true
		},
		minimumInputLength: 3,
		formatResult: formatData{$fieldID},
		initSelection: initSelection{$fieldID},
		width: "{$width}"
	});
					});

		function formatData{$fieldID} (data) {
			var markup = '<div class="clearfix">';

		if (data.image) {
			{if ($_imageUrl == '')}
				{$imageSrc = 'stream.php?type=photo&guid='}
			{else}
				{$imageSrc = $_photoUrl}
			{/if}

			markup += '<div class="">' +
			'<img src="{$imageSrc}' + data.image + {if ($_imageUrl != '')}'.jpg' + {/if}'" style="max-width: 30%" />' +
			'</div>';

		}

		if (data.results)
		{
				markup += '<div class="">' + '<div class="clearfix">';
				var arrayLength = data.results.length;
				for (var i=0; i<arrayLength; i++)
					markup += '<div class="">' + data.results[i] + '</div>';

				markup +='</div></div></div>';
		}
			else
			if (data.text)
				markup +=
				'<div class="">' +
				'<div class="clearfix">' +
				'<div class="">' + data.text + '</div>' +
				'</div></div></div>';

			return markup;
		}

				function initSelection{$fieldID}(element, callback)
				{
					var kuinkFunctionRaw = "{$fieldAttrs['datasource-initial']}";
					var kuinkFunction = kuinkFunctionRaw.replace("call:", "");
					var id = element.val();
					if(id !== "") {
					return $.getJSON("{$_apiCompleteUrl}"+kuinkFunction+"&{$fieldAttrs['bindid']}=" + element.val(), null, function(data) {
							return callback({ id:data.{$fieldAttrs['bindid']}, text: data.{$fieldAttrs['bindvalue']}});
					});
				}
			}

			</script>

      {$onchange=""}
      {if $fieldAttrs['action'] != ""}
        {$onchange="onchange=\"javascript: submit_{$fieldID}();\""}
      {/if}

			<input type="hidden" id="{$fieldID}" name="{$fieldID}" class="{$disabledClass} select2 select2-offscreen input-{$inputSize}" {$disabledAttr} {$onchange} value="{$field['value']}" />
	 {else}

		{if $fieldAttrs['searchable']=="true" || $fieldAttrs['searchable']=="static"}

		<!-- only run this code if attribute is setted -->
		<script type="text/javascript">
				jQuery(document).ready(function() {
						jQuery("#{$fieldID}").select2(
								{
										width: "100%"
								}
						);
				});
		</script>

	{* onclick="javascript: this.disabled=true; result = submit_form_{$form['_guid']}('{$buttonType}','{$form['_guid']}', '{$form['baseUrl']}', '{$buttonAttrs['action']}', '{$buttonAttrs['event']}'); this.disabled=result; return(result);" *}
	{if  $fieldAttrs['action'] != ""}
				<select id="{$fieldID}" name="{$fieldID}" class="{$disabledClass} select2 select2-offscreen input-{$inputSize} form-control" {$disabledAttr} onchange="javascript: submit_{$fieldID}();" {if $fieldRequired == true}data-bv-notempty data-bv-notempty-message="{translate app="framework"}requiredField{/translate}"{/if}>
	{else}
				<select id="{$fieldID}" name="{$fieldID}" class="{$disabledClass} select2 select2-offscreen input-{$inputSize} form-control" {$disabledAttr} {if $fieldRequired == true}data-bv-notempty data-bv-notempty-message="{translate app="framework"}requiredField{/translate}"{/if}>
	{/if}

{else}


	{* onclick="javascript: this.disabled=true; result = submit_form_{$form['_guid']}('{$buttonType}','{$form['_guid']}', '{$form['baseUrl']}', '{$buttonAttrs['action']}', '{$buttonAttrs['event']}'); this.disabled=result; return(result);" *}
	{if  $fieldAttrs['action'] != ""}
				<select id="{$fieldID}" name="{$fieldID}" class="{$disabledClass} form-control" {$disabledAttr} onchange="javascript: submit_{$fieldID}();" {if $fieldRequired == true}data-bv-notempty data-bv-notempty-message="{translate app="framework"}requiredField{/translate}"{/if}>
	{else}
				<select id="{$fieldID}" name="{$fieldID}" class="{$disabledClass} form-control" {$disabledAttr} {if $fieldRequired == true}data-bv-notempty data-bv-notempty-message="{translate app="framework"}requiredField{/translate}"{/if}>
	{/if}

{/if}
{* Handle options *}
{foreach $field['options'] as $optionValue => $optionLabel}
{if isset($field['value']) && $field['value'] != ""  && $field['value'] == $optionValue }
	<option value="{$optionValue}" selected>{$optionLabel}</option>
{else}
	<option value="{$optionValue}">{$optionLabel}</option>
{/if}
{/foreach}
</select>
{/if}


</div>
