

<script type="text/javascript">
	//Add this control to the manager
	__kuink.controlAdd('{$_idContext}', '{$_guid}');

	function setFormAction_{$_guid}(actionUrl, confirmMessage, buttonType, buttonId, clearFormData){
		//set the action in the form
		$("#{$_guid}").attr('action', actionUrl);
		confirmMessage = __kuink.controlGetKey('{$_idContext}','{$_guid}', '{$buttonAttrs['id']}', 'confirm', 'false');

		// get all buttons and store their states
		//Bootstrap will disable all buttons, so we need the previous state to restore if the 
		formButtons = $("#{$_guid}").find("button").parent().children();
		$(formButtons).each(function() {
			if (this.id != '') {
				__kuink.controlAddKey('{$_idContext}', '{$_guid}', this.id, 'disabled', $(this).attr('disabled'));
			}
		});

		__kuink.controlAddKey('{$_idContext}', '{$_guid}', '_buttonPressed', 'type', buttonType);
		__kuink.controlAddKey('{$_idContext}', '{$_guid}', '_buttonPressed', 'id', buttonId);
		
		$("#{$_guid}").attr('kuink-data-button-pressed', buttonType);
		$("#{$_guid}").attr('kuink-data-button-pressed-id', buttonId);
		$("#{$_guid}").attr('kuink-data-actionGroup-clear', (clearFormData == undefined)?false :  clearFormData);
	};

	$(document).ready(function() {
			$("#{$_guid}").bootstrapValidator({
				onError: function(e) {
					var buttonType = $("#{$_guid}").attr('kuink-data-button-pressed');
					var url = $("#{$_guid}").attr('action');
					var buttonId = __kuink.controlGetKey('{$_idContext}', '{$_guid}', '_buttonPressed', 'id');
					
					if(buttonType=='cancel') {
						$("#{$_guid}").kuinkSubmit({
							'url' 						: url + '&modal=embed',
							'idContext'			: '{$_idContext}',
							'method' 					: 'get',
							'button_id' 			: buttonId,
							'formGuid' 			  : '{$_guid}'
						});					
					}
				},
			onSuccess: function(e) {
				// Call kuink submit center
				var url = $("#{$_guid}").attr('action');
				var buttonId = __kuink.controlGetKey('{$_idContext}', '{$_guid}', '_buttonPressed', 'id');
				
				var clearFormData = $("#{$_guid}").attr('kuink-data-actionGroup-clear');

				if (confirm!='' && confirm!='false')
					if (confirm!='true')
						confirmMessage = confirm;
					else
						confirm = true;
					
				$("#{$_guid}").kuinkSubmit({
					'url' 						: url + '&modal=embed',
					'idContext'				: '{$_idContext}',
					'method' 					: 'post',
					//'target'					: '{$_idContext}_wrapper',
					'processData'			: false,
					'contentType'			: false,
					'button_id' 			: buttonId,
					'formGuid' 			  : '{$_guid}'
				});

				e.preventDefault();
			}
		});

		$("#{$_guid}").submit(function(e){
			return false;
		});

	});

	function formActionField_{$_guid}(confirm, confirm_message, location, button_id) {

		var notSubmit = $("._kuink_notSubmit");
			$.each(notSubmit, function(index, value) {
			value.disabled = 'true';
		});
		var formData = new FormData(document.querySelector("#{$_guid}"));


		//Call kuink submit center
		$("#{$_guid}").kuinkSubmit({
			'url' 						: location + '&modal=embed',
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
	var rules_{$_guid} = {$jsonDynamicRules};

	/** generic apply rules **/
	function applyRule_{$_guid}(field, attr, attrValue) {
		if (attr=='disabled') {
			if (attrValue == 'true') {
				$("#{$_guid}").find("#"+field).attr('disabled','disabled');

				// Added because of datetime pickers (2024.10.11)
				var datetimepicker = $("#{$_guid}").find("#datetimepicker__" + field);
				if (datetimepicker.length && datetimepicker.data("DateTimePicker"))
    				datetimepicker.data("DateTimePicker").disable();
			} else {
				$("#{$_guid}").find("#"+field).removeAttr('disabled');
				
				// Added because of datetime pickers (2024.10.11)
				var datetimepicker = $("#{$_guid}").find("#datetimepicker__" + field);
				if (datetimepicker.length && datetimepicker.data("DateTimePicker"))
    				datetimepicker.data("DateTimePicker").enable();
			}
		} else if (attr=='visible') {
			if (attrValue == 'true') {
				$("#{$_guid}").find("#"+field).removeAttr('disabled');
				$("#{$_guid}").find("#"+field+"CG").fadeIn('slow');
			} else {
				$("#{$_guid}").find("#"+field+"CG").fadeOut();
				$("#{$_guid}").find("#"+field).attr('disabled','disabled');
			}
		} else if (attr=='value') {
			if(attrValue != '' && attrValue != null) {
				if(attrValue == '__kuink_clear'){
					$("#{$_guid}").find("#"+field).val('');
				}
				else {
					$("#{$_guid}").find("#"+field).val(attrValue);
				}
			}
		}
		return;
	}


	/**
	 * Handle {$_guid} rules
	 **/
	function handle_{$_guid}_rules( changedId ){

		$(rules_{$_guid}).each(function(i,obj){
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
										var paramValue = $("#{$_guid}").find("#"+param).val();
										param = '$'+param;
										while (apiUrl.search('\\'+param)!=-1){
											apiUrl = apiUrl.replace(param,paramValue);
										}
									}
									
									//TODO:Ugly hack find the source of this problem... probably in Form.php
									apiUrl = apiUrl.replace('mod/kuink/','');
									apiUrl = apiUrl.replace('mod/neon/','');
									console.log(apiUrl);
									$.ajax({
										url: apiUrl,
										type: 'get',
										success: function (data, status) {

											$("#{$_guid}").find("#"+obj.field).find('option').remove().end();
											$("#{$_guid}").find("#"+obj.field).find('option').remove().end();
											$("#{$_guid}").find("#"+obj.field).append('<option></option>');
											$.each(data, function (index, value) {
											$("#{$_guid}").find("#"+obj.field).append('<option value="'+value[obj.bindid]+'">'+value[obj.bindvalue]+'</option>');

											if (data.length == 1) {
												$("#{$_guid}").find("#"+obj.field).prop('selectedIndex', 1);
											}

											if (obj.field != changedId)
												handle_{$_guid}_rules(obj.field);

									});

									},
									error: function (xhr, err) {
										console.debug("Desc: " + err);
									}
							});

						}

					/** continue with condition rules **/
					} else if (eval(obj.condition)){
							applyRule_{$_guid}(obj.field, obj.attr, obj.value_true);
					}else{
							applyRule_{$_guid}(obj.field, obj.attr, obj.value_false);
					}
			});
	 }

	 /** make magic things happen **/
	 $(document).ready(function(){
		//when form is loaded
		handle_{$_guid}_rules();

		//when  form is changed
		$("#{$_guid}").change(function(event){
			 var changedId = event.target.id;
				handle_{$_guid}_rules(changedId);
		 });
	 });

		//Place a copy of default button in first place in a position outside of visible screen
		$(function(){
				$("#{$_guid}").each(function () {
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

	function processClientAction_{$_guid}(clientAction) {
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

{if (($buttonActions != null) && (count($buttonActions) > 0)) || ($form['title'] != '') || (count($fields) > 0)}
<div class="box">
	{if !isset($hasRequiredFields)}
		{assign var=hasRequiredFields value=false}
	{/if}

	<!-- /.box-header -->
	<!-- form start -->
	<form role="form" id="{$_guid}" class="kuink-control"
			action="{$form['baseUrl']}"
			method="post" enctype="multipart/form-data"
			data-bv-message="{translate app="framework"}requiredField{/translate}"
			data-bv-feedbackicons-valid=""
			data-bv-feedbackicons-invalid=""
			data-bv-feedbackicons-validating=""
			data-bv-live="enabled"
			data-disable="false">

			{*check if this form has a title*}
			{if $form['title'] != ''}
			<div class="box-header">
				<i class="fa fa-th-large">&nbsp;</i>
				<h3 class="box-title">{$form['title']}</h3>
				{if ($buttonsPosition == 'top' || $buttonsPosition == 'both')}
					<script>
						$(document).ready(function(){
							var html = $("#{$_guid}").find(".btn-group").html();
							$("#firstButtonGroup{$_guid}").html(html);
							$("#firstButtonGroup{$_guid}").addClass("btn-group");
							$("#firstButtonGroup{$_guid}").addClass("btn-group-top");
							{if ($buttonsPosition == 'top')}
								//Hide the buttom buttongroup if it's only top
								//Find all btn-group class that are not btn-group-top, this was a way to get this right
								$("#{$_guid}").find(".btn-group").not(".btn-group-top").hide();
							{/if}
							
						})
					</script>
					<div id="firstButtonGroup{$_guid}" style="float: right;"></div>
				{/if}
			</div>
			{/if}

			{if count($fields) > 0}
				<div class="box-body ">
				{$insideColumn = 0}
				{$insideHeader = 0}
				{$currentColumnGroup = 0}
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
						{$currentColumnGroup = 0} {*Restart the column group of the tab*}					
						{if $insideTab == 0}
							{if $hasTabs == 1}
								{*build the ul for tabs*}
								<div class="tabbable tabs-{$tabsPosition}" id="{$_guid}Tab">
									<ul id="{$_guid}TabList" class="nav nav-tabs" style="margin-bottom:10px;">
									{$firstTab = 1}
									{foreach $tabs as $key=>$tab}
										{if $key != -1}
											{$tabClass = ''}
											{if $firstTab == 1}
												{$tabClass = 'active'}
											{/if}
											<li class="{$tabClass}"><a href="#{$tab['id']}" data-toggle="tab">{$tab['label']}</a></li>
											{$firstTab = 0}
										{/if}
									{/foreach}
									</ul>

									<div id="{$_guid}TabContent" class="tab-content">
							{/if}
						{/if}
					{/if}
					{if $field['attributes']['close']=='true'}
						{$currentColumnGroup = $currentColumnGroup + 1}
					{/if}					

					{* Render the form field *}
					{include './Form_HandleField.tpl'}

					{if $field['type'] == 'Header'}
						{$insideHeader = 1}
					{/if}
					{if $field['type'] == 'Column'}
						{if $insideHeader == 1}
							{$insideHeader = 0}
						{/if}
						{if $field['attributes']['close']=='false'}
							{$insideColumn = 1}
						{else}
							{$insideColumn = 0}
							{$currentColumnGroup = $currentColumnGroup + 1}
						{/if}
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
		{if $buttonActions != null}
			{if count($buttonActions) > 0}
				<div style="clear:both"></div>
				<div class="box-footer">
					<div class="btn-group {if ($buttonsAlign=='right')}pull-right{/if}" style="{if ($buttonsAlign=='center')}display: flex; justify-content: center; align-items: center;{/if}">
						{foreach $buttonActions as $buttonID=>$button}
							{include './Form_HandleActionButtons.tpl'}
						{/foreach}
					</div>
				</div>
			{/if}
		{/if}
	</form>
</div>
{/if}
