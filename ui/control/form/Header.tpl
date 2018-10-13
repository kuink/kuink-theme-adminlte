{if $insideHeader == 1}
	</div>
{/if}

<div id="{$_guid}_{$fieldGuid}" name="{$_guid}_{$fieldName}" class="page-header" style="clear:both">
	{if $field['attributes']['collapsible'] == 'true'}
		<script>
			$(document).ready(function(){
				var showText = $("#showHide_{$_guid}_{$fieldGuid}").attr("showText");
				var hideText = $("#showHide_{$_guid}_{$fieldGuid}").attr("hideText");

				{if $field['attributes']['collapsed'] == 'true'}
					$("#showHide_{$_guid}_{$fieldGuid}").html(showText);
				{else}
					$("#showHide_{$_guid}_{$fieldGuid}").html(hideText);
				{/if}
			});

			function showHideHeader_{$_guid}_{$fieldGuid}() {
				var showText = $("#showHide_{$_guid}_{$fieldGuid}").attr("showText");
				var hideText = $("#showHide_{$_guid}_{$fieldGuid}").attr("hideText");

				if( $("#head_{$_guid}_{$fieldGuid}").css("display") == "block") {
					$("#showHide_{$_guid}_{$fieldGuid}").html(showText);
					$("#head_{$_guid}_{$fieldGuid}").fadeOut();
				} else {
					$("#showHide_{$_guid}_{$fieldGuid}").html(hideText);
					$("#head_{$_guid}_{$fieldGuid}").fadeIn("slow");
				}

			}
		</script>
	{/if}

	{$styleDisplay = 'block'}
	{if $field['attributes']['collapsed'] == 'true' && $field['attributes']['collapsible'] == 'true'}
		{$styleDisplay = 'none'}
	{/if}
	<h3>{$field['attributes']['label']} {if $field['attributes']['collapsible'] == 'true'}
		<small><a id="showHide_{$_guid}_{$fieldGuid}" showText="{translate app="framework"}show{/translate}" hideText="{translate app="framework"}hide{/translate}" href="javascript:void(0);" onmousedown='showHideHeader_{$_guid}_{$fieldGuid}();'></a></small>
	{/if}</h3>
</div>

<div id="head_{$_guid}_{$fieldGuid}" name="head_{$_guid}_{$fieldName}" style="display:{$styleDisplay}">
