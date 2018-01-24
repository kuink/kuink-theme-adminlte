

<script type="text/javascript">

	function setFormAction_{$form['_guid']}(actionUrl, confirm, buttonType, buttonId, clearFormData){
		$("#{$form['_guid']}").attr('action', actionUrl);
		let hasConfirm = false;
		let confirmMessage = '';
		if (confirm!='' && confirm!='false'){
			hasConfirm = true;
			// get all buttons and store their states
			let formButtons = $("#{$form['_guid']}").find("button").parent().children();
			__kuink_{$form['_guid']}_formButtonsBeforeSubmit = [];
			$(formButtons).each(function() {
				let button = $("#{$form['_guid']}").children().find("#"+this.id);
				__kuink_{$form['_guid']}_formButtonsBeforeSubmit.push({
					button,
					value: $(this).attr('disabled')
				});
			});
			if (confirm!='true')
				confirmMessage = confirm;
		}

		$("#{$form['_guid']}").attr('kuink-data-confirm', hasConfirm);
		$("#{$form['_guid']}").attr('kuink-data-confirm-message', confirmMessage);
		$("#{$form['_guid']}").attr('kuink-data-button-pressed', buttonType);
		$("#{$form['_guid']}").attr('kuink-data-button-pressed-id', buttonId);
		$("#{$form['_guid']}").attr('kuink-data-actionGroup-clear', (clearFormData == undefined)?false :  clearFormData);
		
	};

	// variable to store button's state before submitting
	if (typeof __kuink_{$form['_guid']}_formButtonsBeforeSubmit === 'undefined') {
		var __kuink_{$form['_guid']}_formButtonsBeforeSubmit = [];
	}

	// variable to store field's functions to run
		var __kuink_{$form['_guid']}_fieldFunctions = [];

	// variable to store the inputs not to be submitted
		var __kuink_{$form['_guid']}_inputsNotSubmitted = [];

	$(document).ready(function() {
			$("#{$form['_guid']}").bootstrapValidator({
				onError: function(e) {
				console.log('ERROR');
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
				var clearFormData = $("#{$form['_guid']}").attr('kuink-data-actionGroup-clear');

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
				if (clearFormData == 'false') {
					var formData = new FormData(document.querySelector("#{$form['_guid']}"));
					// delete from formData all inputs that are not to be submitted
					for (var key of __kuink_{$form['_guid']}_inputsNotSubmitted) {
						formData.delete(key);
					}			
				} else {
					var formData = new FormData();
				}
				
				/*console.log(clearFormData);				
				for (var pair of formData.entries()) {
    			console.log(pair[0]+ ', ' + pair[1]); 
				}*/

				// disable pressed button
				if(buttonId!='')
					$("#{$form['_guid']}").find("#"+buttonId).attr('disabled', true);
				$("#{$form['_guid']}").kuinkSubmit({
					'url' 						: url + '&modal=widget',
					'id_context'			: '{$_idContext}',
					'method' 					: 'post',
					'processData'			: false,
					'contentType'			: false,
					'data'						: formData,
					'confirm'					: confirm,
					'confirm_message'	: confirm_message,
					'button_id' 			: buttonId
				});

				e.preventDefault();
			}
		});

		$("#{$form['_guid']}").submit(function(e){
			return false;
		});

	});

	function formActionField_{$form['_guid']}(confirm, confirm_message, location, button_id) {

		var formData = new FormData(document.querySelector("#{$form['_guid']}"));

		for (var key of __kuink_{$form['_guid']}_inputsNotSubmitted) {
			formData.delete(key);
		}

		//Call kuink submit center
		$("#{$form['_guid']}").kuinkSubmit({
			'url' 						: location + '&modal=widget',
			'id_context' 			: '{$_idContext}',
			'method' 					: 'post',
			'processData'			: false,
			'contentType'			: false,
			'data' 						: formData,
			'confirm'					: confirm,
			'confirm_message'	: confirm_message,
			'button_id' 			: button_id
		});
	}

	//Applying rules to the form
	var rules_{$form['_guid']} = {$jsonDynamicRules};

	/** generic apply rules **/
	function applyRule_{$form['_guid']}(field, attr, attrValue) {
		if (attr=='disabled') {
			if (attrValue == 'true')
				$("#{$form['_guid']}").find("#"+field).attr('disabled','disabled');
			else
				$("#{$form['_guid']}").find("#"+field).removeAttr('disabled');
		} else if (attr=='visible') {
			if (attrValue == 'true') {
				$("#{$form['_guid']}").find("#"+field).removeAttr('disabled');
				$("#{$form['_guid']}").find("#"+field+"CG").fadeIn('slow');
			} else {
				$("#{$form['_guid']}").find("#"+field+"CG").fadeOut();
				$("#{$form['_guid']}").find("#"+field).attr('disabled','disabled');
			}
		} else if (attr=='value') {
			if(attrValue != '' && attrValue != null) {
				if(attrValue == '__kuink_clear'){
					$("#{$form['_guid']}").find("#"+field).val('');
				}
				else {
					$("#{$form['_guid']}").find("#"+field).val(attrValue);
				}
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
						if (Object.keys(apiParams).length == 0){
							makeCall = true;
						}
						for(var param in apiParams) {
							if (param==changedId && makeCall==false){
								makeCall=true;
							}
						}
						if (makeCall == true){

									for(var param in apiParams) {
										var paramValue = $("#{$form['_guid']}").find("#"+param).val();
										param = '$'+param;
										while (apiUrl.search('\\'+param)!=-1){
											apiUrl = apiUrl.replace(param,paramValue);
										}
									}
									$.ajax({
										url: apiUrl,
										type: 'get',
										success: function (data, status) {

											$("#{$form['_guid']}").find("#"+obj.field).find('option').remove().end();
											$("#{$form['_guid']}").find("#"+obj.field).find('option').remove().end();
											$("#{$form['_guid']}").find("#"+obj.field).append('<option></option>');
											$.each(data, function (index, value) {
											$("#{$form['_guid']}").find("#"+obj.field).append('<option value="'+value[obj.bindid]+'">'+value[obj.bindvalue]+'</option>');

											if (data.length == 1) {
												$("#{$form['_guid']}").find("#"+obj.field).prop('selectedIndex', 1);
											}

											if (obj.field != changedId)
												handle_{$form['_guid']}_rules(obj.field);

									});

									},
									error: function (xhr, err) {
										console.debug("Desc: " + err);
									}
							});

						}

					/** continue with condition rules **/
					} else if (eval(obj.condition)){
							applyRule_{$form['_guid']}(obj.field, obj.attr, obj.value_true);
					}else{
							applyRule_{$form['_guid']}(obj.field, obj.attr, obj.value_false);
					}
			});
	 }

	 /** make magic things happen **/
	 $(document).ready(function(){
		//when form is loaded
		handle_{$form['_guid']}_rules();

		//when  form is changed
		$("#{$form['_guid']}").change(function(event){
			 var changedId = event.target.id;
				handle_{$form['_guid']}_rules(changedId);
		 });
	 });

		//Place a copy of default button in first place in a position outside of visible screen
		$(function(){
				$("#{$form['_guid']}").each(function () {
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

	function processClientAction_{$form['_guid']}(clientAction) {
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

{if (count($buttonActions) > 0) || ($form['title'] != '') || (count($fields) > 0)}
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
			{if count($fields) > 0}
				<div class="box-body ">

				{assign var="insideColumn" value="0"}
				{assign var="insideHeader" value="0"}
				{$insideTab = 0}
				{$prevFieldAttrs = null}
				{$fieldIndex = 0} {*Current index*}
				{$fieldsIndexedArray = null} {*To get prev and next fields*}
				{foreach $fields as $fieldID=>$field} {* display fields *}
					{$fieldsIndexedArray[]=$field['attributes']}
				{/foreach}
				{$tabIndex = -1}
				{foreach from=$fields item="field" name="handleFieldForEach"}
					{assign var=fieldAttrs value=$field['attributes']}
					{if $fieldIndex > 0}
						{assign var=prevFieldAttrs value=$fieldsIndexedArray[$fieldIndex-1]}
					{/if}
					{if $fieldIndex < count($fields)}
						{assign var=nextFieldAttrs value=$fieldsIndexedArray[$fieldIndex+1]}
					{/if}
					{if $field['type'] == 'Tab'}
						{if $insideTab == 0}
							{if $hasTabs}
								{*build the ul for tabs*}
								<div class="tabbable tabs-{$tabsPosition}" id="{$form['_guid']}Tab">
									<ul id="{$form['_guid']}TabList" class="nav nav-tabs" style="margin-bottom:10px;">
									{$firstTab = 1}
									{foreach $tabs as $tab}
										{$tabClass = ''}
										{if $firstTab == 1}
											{$tabClass = 'active'}
										{/if}
										<li class="{$tabClass}"><a href="#{$tab['id']}" data-toggle="tab">{$tab['label']}</a></li>
										{$firstTab = 0}
									{/foreach}
									</ul>

									<div id="{$form['_guid']}TabContent" class="tab-content">
							{/if}
						{/if}
					{/if}
					{include './Form_HandleField.tpl'}
					{if $field['type'] == 'Header'}
						{$insideHeader = 1}
					{/if}
					{if $field['type'] == 'Column'}
						{if $insideHeader == 1}
							{$insideHeader = 0}
						{/if}
						{$insideColumn = 1}
					{/if}
					{if $field['type'] == 'Tab'}
						{if $insideHeader == 1}
							{$insideHeader = 0}
						{/if}
						{if $insideColumn == 1}
							{$insideColumn = 0}
						{/if}
						{$tabIndex = $tabIndex + 1}
						{$insideTab = 1}
					{/if}
					{$fieldIndex = $fieldIndex+1}
				{/foreach}
				<input type="hidden" name="_FORM_LIST_FIELDS" id="_FORM_LIST_FIELDS" value="{$listFormFields}"/>
				{if $insideHeader == 1}
					</div>
				{/if}
				{if $insideColumn == 1}
						</div>
					</div>
				{/if}
				{if $insideTab == 1}
						</div>
					</div>
				{/if}
			</div>
			{if $hasRequiredFields == true}
				<span class="badge">{translate app="framework"}requiredFieldsMessage{/translate} {$sRequiredString}</span>
			{/if}
		{/if}
		<!-- /.box-body -->
		{if count($buttonActions) > 0}
			<div style="clear:both"></div>
			<div class="box-footer">
				<div class="btn-group">
					{foreach $buttonActions as $buttonID=>$button}
						{include './Form_HandleActionButtons.tpl'}
					{/foreach}
				</div>
			</div>
		{/if}
	</form>
</div>
{/if}

