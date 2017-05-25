{foreach $userMessages as $message}
	              {$messageClass = "alert-info"}
				  {$messageIcon = 'info'}
	              {if $message['type'] == "error"}
	                {$messageClass = "alert-danger"}
					{$messageIcon = 'ban'}
	              {elseif $message['type'] == "information" }
	                {$messageClass = "alert-info"}
					{$messageIcon = 'info'}
	              {elseif $message['type'] == "success" }
	                {$messageClass = "alert-success"}
					{$messageIcon = 'check'}
	              {elseif $message['type'] == "warning" }
	                {$messageClass = "alert-warning"}
					{$messageIcon = 'warning'}
	              {elseif $message['type'] == "exception" }
	                {$messageClass = "alert-error"}
					{$messageIcon = 'danger'}
	              {/if}


	<div class="alert {$messageClass} alert-dismissable">
		<i class="fa fa-{$messageIcon}"></i>
		<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
		{$message['text']}
	</div>
{/foreach}



