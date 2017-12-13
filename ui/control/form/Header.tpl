{if $insideHeader == 1}
	</div>
{/if}

{if $field['attributes']['collapsible'] == 'true'}
	<script>
		$(document).ready(function(){
			var showText = $("#showHide_{$form['_guid']}_{$fieldGuid}").attr("showText");
			var hideText = $("#showHide_{$form['_guid']}_{$fieldGuid}").attr("hideText");

			{if $field['attributes']['collapsed'] == 'true'}
				$("#showHide_{$form['_guid']}_{$fieldGuid}").html(showText);
			{else}
				$("#showHide_{$form['_guid']}_{$fieldGuid}").html(hideText);
			{/if}
		});

		function showHideHeader_{$form['_guid']}_{$fieldGuid}() {
			var showText = $("#showHide_{$form['_guid']}_{$fieldGuid}").attr("showText");
			var hideText = $("#showHide_{$form['_guid']}_{$fieldGuid}").attr("hideText");

			if( $("#head_{$form['_guid']}_{$fieldGuid}").css("display") == "block") {
				$("#showHide_{$form['_guid']}_{$fieldGuid}").html(showText);
				$("#head_{$form['_guid']}_{$fieldGuid}").fadeOut();
			} else {
				$("#showHide_{$form['_guid']}_{$fieldGuid}").html(hideText);
				$("#head_{$form['_guid']}_{$fieldGuid}").fadeIn("slow");
			}

		}
	</script>
{/if}

{$styleDisplay = 'block'}
{if $field['attributes']['collapsed'] == 'true' && $field['attributes']['collapsible'] == 'true'}
	{$styleDisplay = 'none'}
{/if}

<div id="{$form['_guid']}_{$fieldGuid}" name="{$form['_guid']}_{$fieldName}" class="page-header">
		<h2>{$field['attributes']['label']} {if $field['attributes']['collapsible'] == 'true'}
			<small><a id="showHide_{$form['_guid']}_{$fieldGuid}" showText="{translate app="framework"}show{/translate}" hideText="{translate app="framework"}hide{/translate}" href="javascript:void(0);" onmousedown='showHideHeader_{$form['_guid']}_{$fieldGuid}();'></a></small>
		{/if}</h2>
</div>
<div id="head_{$form['_guid']}_{$fieldGuid}" name="head_{$form['_guid']}_{$fieldName}" style="display:{$styleDisplay}">
