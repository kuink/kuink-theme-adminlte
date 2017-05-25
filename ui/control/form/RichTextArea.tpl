
{if $fieldAttrs['theme'] == 'simple'}
	{literal}
		<script type="text/javascript">
		tinyMCE.init({
		        mode : "textareas",
		        theme : "simple",
		        editor_selector : "mceSimple"
		});
		</script>
	{/literal}
	{$mceClass = mceSimple}
{/if}

{if $fieldAttrs['theme'] == 'advanced'}
	{literal}
		<script type="text/javascript">
		tinyMCE.init({
		        mode : "textareas",
		        theme : "advanced",
		        editor_selector : "mceAdvanced"        
        		});
		</script>
	{/literal}
	{$mceClass = mceAdvanced}
{/if}

{if $fieldAttrs['theme'] == 'custom1'}
	{literal}
		<script type="text/javascript">
		tinyMCE.init({
		        mode : "textareas",
		        theme : "advanced",
		        editor_selector : "mceAdvanced",
		        
		        plugins : "autolink,lists,spellchecker,pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template",
		        
				theme_advanced_buttons1 : "bold,italic,underline,charmap,sub,sup,",
		        theme_advanced_toolbar_location : "top",
		        theme_advanced_toolbar_align : "left",
		        theme_advanced_statusbar_location : "bottom",
		        theme_advanced_resizing : true,
        
        		});
		</script>
	{/literal}
	{$mceClass = mceAdvanced}
{/if}



<div class="controls">
  <textarea class="input-{$inputSize} {$disabledClass} {$mceClass}" id="{$fieldID}" name="{$fieldID}" rows="{$fieldAttrs['rows']}" cols="{$fieldAttrs['cols']}" {$disabledAttr}>{$field['value']}</textarea>
</div>
