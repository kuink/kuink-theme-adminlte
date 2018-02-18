<!-- <label class="control-label" for="{$fieldName}">{$field['value']}</label> -->
<span>{$field['value']}</span>
<input id="{$fieldGuid}" name="{$fieldName}" type="hidden" disabled="true" value="{$field['original']}"/>

<script>
	//__kuink_{$_guid}_inputsNotSubmitted.push("{$fieldGuid}");
</script>
