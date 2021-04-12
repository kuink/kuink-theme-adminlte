<script>
function callAction_{$_guid}(location, action, actionvalue) {   
  $("#kuink_{$_guid}").kuinkSubmit({
    'url' 			: location+'&action='+action+'&actionvalue='+actionvalue+'&modal=embed',
    'idContext'	: '{$_idContext}',
    'method' 		: 'get',
    'processData': false,
    'contentType': false,
    'button_id' : null,
    'formGuid'	: '{$_guid}'
  });
}
</script>

<ol id="kuink_{$_guid}" class="breadcrumb">
{foreach $entries as $bindData}
{foreach $bindData as $entry}
    <li><a onclick="javascript: callAction_{$_guid}('{$baseUrl}', '{$action}', '{$entry[$actionvalueField]}');">{$entry[$labelField]}</a></li>
  {/foreach}
{/foreach}
</ol>

