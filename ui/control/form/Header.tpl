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

				//update head summary
				var headerResume=[]; 
				//checkboxList
				$("#head_{$_guid}_{$fieldGuid} input:checkbox").each( function(index){ if ($(this).attr('checked')) headerResume.push( $(this).parent().text().trim() ) }); 
				//selects
				$("#head_{$_guid}_{$fieldGuid} select").each( function(index){ 
					var selectLabel = $("label[for='" + $(this).attr('id') + "']");
					if ( $(this).children("option:selected").text().trim() != '')
						headerResume.push( selectLabel.text() + ':' + $(this).children("option:selected").text().trim()); 
				});				

 				var headerValue = headerResume.join('').trim();
				//console.log('HEADER VALUE(' + headerValue + ')');
				if (headerValue != '')
					$("#head_{$_guid}_{$fieldGuid}_summary").text('['+headerResume.join(' | ')+']');				
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
	<h{if $field['attributes']['size'] == ''}3{else}{$field['attributes']['size']}{/if}>
		{$field['attributes']['label']} {if $field['attributes']['collapsible'] == 'true'}
		<small><a id="showHide_{$_guid}_{$fieldGuid}" showText="{translate app="framework"}show{/translate}" hideText="{translate app="framework"}hide{/translate}" href="javascript:void(0);" onmousedown='showHideHeader_{$_guid}_{$fieldGuid}();'></a></small>
		<span><small id="head_{$_guid}_{$fieldGuid}_summary"></small></span>
	{/if}
	</h{if $field['attributes']['size'] == ''}3{else}{$field['attributes']['size']}{/if}>
</div>

<div id="head_{$_guid}_{$fieldGuid}" name="head_{$_guid}_{$fieldName}" style="display:{$styleDisplay}">

