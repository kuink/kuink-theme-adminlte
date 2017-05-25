
	
	<div id="{$_guid}_wrapper" class="box" style="padding: 0px 5px;">

		<script>
			
		</script>

		<div class="box-header" style="cursor: move;">
	        <!-- tools box -->
	        <div class="pull-right box-tools">
	            <button class="btn btn-danger btn-sm" data-widget="collapse" data-toggle="tooltip" title="" data-original-title="Toggle Collapse"><i class="fa fa-minus"></i></button>
	        </div><!-- /. tools -->
	        <i class="fa fa-cube"></i>
	        <h3 class="box-title">{$_name}</h3>
    	</div>
		
		{if $userMessages|@count > 0}
			<div class="kuink-user-messages">
				{include 'UserMessages.tpl'}
			</div>
		{/if}
    	<div id="{$_guid}_loading_wrapper" class="box-body">
			{* include the template *}
			
			<script>
				$(function(){
					
					$("#{$_guid}_wrapper").kuinkSubmit({
						'url' 			: '{$url}&idcontext={$_guid}&modal=widget',
						'id_context'	: '{$_guid}',
						'target'    :'#{$_guid}_loading_wrapper',
						'method' 		: 'get',
						'data'			: undefined,
						'callback'		: undefined
					});
				
				});
			</script>	    
		</div>
		
		<div class="box-footer">
	        <div class="row">
	        </div><!-- /.row -->
	    </div>
	</div> 

