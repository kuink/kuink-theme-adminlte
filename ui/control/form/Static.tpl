<label class="control-label" for="{$fieldName}">{$field['value']}</label>
<input id="{$fieldGuid}" name="{$fieldName}" type="hidden" value="{$field['original']}"/>

<script>
	__kuink_{$form['_guid']}_inputsNotSubmitted.push("{$fieldGuid}");
</script>
