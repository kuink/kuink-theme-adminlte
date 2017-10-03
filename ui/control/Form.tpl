

<script type="text/javascript">

	function setFormAction(guid, actionUrl, confirm, buttonType, buttonId){
		$("#"+guid).attr('action', actionUrl);

		var hasConfirm = false;
		var confirmMessage = '';
		if (confirm!='' && confirm!='false'){
			hasConfirm = true;
			// get all buttons and store their states
			let formButtons = $("#"+buttonId).parent().children();
			__kuink_buttonsBeforeSubmit = [];
			$(formButtons).each(function() {
				__kuink_buttonsBeforeSubmit.push({
					key: $(this).attr('id'),
					value: $(this).attr('disabled')
				});
			});
			if (confirm!='true')
				confirmMessage = confirm;
		}

		$("#"+guid).attr('kuink-data-confirm', hasConfirm);
		$("#"+guid).attr('kuink-data-confirm-message', confirmMessage);
		$("#"+guid).attr('kuink-data-button-pressed', buttonType);
		$("#"+guid).attr('kuink-data-button-pressed-id', buttonId);
	};

	// variable to store button's state before submitting
	var __kuink_buttonsBeforeSubmit = [];

	var __kuink_{$form['_guid']}_fieldFunctions = [];

	$(document).ready(function() {
			$("#{$form['_guid']}").bootstrapValidator({
				onError: function(e) {
					var buttonType = $("#{$form['_guid']}").attr('kuink-data-button-pressed');
					var url = $("#{$form['_guid']}").attr('action');
					if(buttonType=='cancel') {
						$.ajax({
								url		: url+'&modal=widget',
								type	: 'post',
								beforeSend: function () {
										$("#{$_idContext}_wrapper").append('<div class="overlay" id="{$_idContext}_loading"><i class="fa fa-refresh fa-spin loading-img"></i></div>');
								},
								success	: function (data, status) {
										$("#{$_idContext}_loading_wrapper").html(data);
										$("#{$_idContext}_loading").remove();
								}
						});
					}
				},
			onSuccess: function(e) {
				// Call kuink submit center
				var url = $("#{$form['_guid']}").attr('action');
				var confirm = $("#{$form['_guid']}").attr('kuink-data-confirm');
				var confirm_message = $("#{$form['_guid']}").attr('kuink-data-confirm-message');
				var buttonId = $("#{$form['_guid']}").attr('kuink-data-button-pressed-id');

				if (confirm!='' && confirm!='false')
					if (confirm!='true')
						confirmMessage = confirm;
					else
						confirm = true;

				// before getting form data, run all fields internal functions
				$.each(__kuink_{$form['_guid']}_fieldFunctions, function( index, fieldFunction ) {
  				fieldFunction();
				});

				// get form data
				var formData = new FormData(document.querySelector("form"));

				// disable pressed button
				$("#"+buttonId).attr('disabled', true);

				$("#{$form['_guid']}").kuinkSubmit({
					'url' 			: url+'&modal=widget',
					'id_context'	: '{$_idContext}',
					'method' 		: 'post',
					processData: false, contentType: false,
					'data'			: formData,//$("#{$form['_guid']}").serialize(),
					'confirm'		: confirm,
					'confirm_message'	: confirm_message,
					'button_id' : buttonId
				});
				e.preventDefault();
			}
		});

		$("#{$form['_guid']}").submit(function(e){
			return false;
		});

	});

	function formActionField(confirm, confirm_message, location, button_id) {

		//Call kuink submit center
		$("#{$form['_guid']}").kuinkSubmit({
			'url' : location+'&modal=widget',
			'id_context' : '{$_idContext}',
			'method' : 'post',
			'data' : $("#{$form['_guid']}").serialize(),
			'confirm'	: confirm,
			'confirm_message'	: confirm_message,
			'button_id' : button_id
		});
	}

	//Applying rules to the form
	var rules_{$form['_guid']} = {$jsonDynamicRules};

	/** generic apply rules **/
	function applyRule(field, attr, attrValue) {
		//console.log(attr);
		if  (attr=='disabled') {
				if (attrValue == 'true')
						$("#"+field).attr('disabled','disabled');
				else
						$("#"+field).removeAttr('disabled');
			} else if (attr=='visible') {
				if (attrValue == 'true') {
					$("#"+field).removeAttr('disabled');
					$("#"+field+"CG").fadeIn('slow');
			} else if (attr == 'value'){

			}else {
					$("#"+field+"CG").fadeOut();
					$("#"+field).attr('disabled','disabled');
			}
			}
			return;
	}


	/**
	 * Handle {$form['_guid']} rules
	 **/
	function handle_{$form['_guid']}_rules( changedId ){

		$(rules_{$form['_guid']}).each(function(i,obj){
					if (obj.datasource!=''){
						var apiUrl = obj.datasource;
						var apiParams = obj.datasourceparams;

						/** Verify if the modified parameter is in this datasource params **/
						var makeCall = false;
						//console.log("Api params length: " + Object.keys(apiParams).length);
						if (Object.keys(apiParams).length == 0){
							makeCall = true;
						}
						for(var param in apiParams) {
							//console.log(param);
							if (param==changedId && makeCall==false){
								makeCall=true;
							}
						}
						if (makeCall == true){

									for(var param in apiParams) {
										var paramValue = $("#{$form['_guid']}").find('#'+param).val();
										param = '$'+param;
										while (apiUrl.search('\\'+param)!=-1){
											apiUrl = apiUrl.replace(param,paramValue);
										}
									}
									//console.log(apiUrl);
									$.ajax({
										url: apiUrl,
										type: 'get',
										success: function (data, status) {

											//console.log('Success Ajax data= ' + data);
											$("#{$form['_guid']}").find('#'+obj.field).find('option').remove().end();
											$("#{$form['_guid']}").find('#'+obj.field).find('option').remove().end();
											$("#{$form['_guid']}").find('#'+obj.field).append('<option></option>');
											$.each(data, function (index, value) {
											$("#{$form['_guid']}").find('#'+obj.field).append('<option value="'+value[obj.bindid]+'">'+value[obj.bindvalue]+'</option>');

											if (data.length == 1) {
												$("#{$form['_guid']}").find('#'+obj.field).prop('selectedIndex', 1);
											}

											if (obj.field != changedId)
												handle_{$form['_guid']}_rules(obj.field);

									});

									},
									error: function (xhr, err) {
										//console.log(xhr);
										console.debug("Desc: " + err);
									}
							});

						}

					/** continue with condition rules **/
					} else if (eval(obj.condition)){
							//console.log("#"+obj.field+" "+obj.attr+"="+obj.value_true);
							//$("#"+obj.field).attr('disabled',obj.value_true);


							applyRule(obj.field, obj.attr, obj.value_true);
					}else{
							//console.log("#"+obj.field+" "+obj.attr+"="+obj.value_false);
							//$("#"+obj.field).attr('disabled',obj.value_false);
							applyRule(obj.field, obj.attr, obj.value_false);
					}
			});
	 }

	 /** make magic things happen **/
	 $(document).ready(function(){
		//when form is loaded
		handle_{$form['_guid']}_rules();

		//when  form is changed
		$({$form['_guid']}).change(function(event){
			 var changedId = event.target.id;
				handle_{$form['_guid']}_rules(changedId);
		 });
	 });

		//Place a copy of default button in first place in a position outside of visible screen
		$(function(){
				$({$form['_guid']}).each(function () {
						var thisform = $(this);
						thisform.prepend(thisform.find('button.default').clone().css({
								position: 'absolute',
								left: '-999px',
								top: '-999px',
								height: 0,
								width: 0
						}));
				});
		});

	function processClientAction(clientAction) {
		switch(clientAction)
		{
		case 'print':
			window.print();
			break;
		default:
			alert('Client side action ' + clientAction + ' not defined.');
		}
	}
</script>

<div class="box">
	{*check if this form has a title*}
	{if $form['title'] != ''}
	<div class="box-header">
		<i class="fa fa-th-large">&nbsp;</i>
		<h3 class="box-title">{$form['title']}</h3>
	</div>
	{/if}
	{if !isset($hasRequiredFields)}
		{assign var=hasRequiredFields value=false}
	{/if}

	<!-- /.box-header -->
	<!-- form start -->
	<form role="form" id="{$form['_guid']}" class="kuink-control"
			action="{$form['baseUrl']}"
			method="post" enctype="multipart/form-data"
			data-bv-message="{translate app="framework"}requiredField{/translate}"
			data-bv-feedbackicons-valid=""
			data-bv-feedbackicons-invalid=""
			data-bv-feedbackicons-validating=""
			data-bv-live="enabled"
			data-disable="false">
		<div class="box-body ">
			{foreach from=$fields item="field" name="handleFieldForEach"}
				{include './Form_HandleField.tpl'}
				{if $smarty.foreach.handleFieldForEach.last}
					{if isset($notFirstHeader)}
								</fieldset>
							</div>
						</div>
					{/if}
				{/if}
			{/foreach}
		</div>
		{if $hasRequiredFields == true}
			<span class="badge">{translate app="framework"}requiredFieldsMessage{/translate} {$sRequiredString}</span>
		{/if}
		<!-- /.box-body -->
		<div style="clear:both"></div>
		<div class="box-footer">
			<div class="btn-group">
			{foreach $buttonActions as $buttonID=>$button}
				{include './Form_HandleActionButtons.tpl'}
			{/foreach}
		</div>
		</div>
	</form>
</div>
