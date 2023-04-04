
function KuinkManager() {
	this.contexts = [];
	this.focusIdControl = '';
	this.ajaxExecuteFunctionsBeforeLoad = []; //Functions to execute before the load of ajax
	this.ajaxExecuteFunctionsAfterLoad = []; //Functions to execute after the load of ajax
	this.apiUrl = '';  //Internal api Url to be set


	/*
		Some functions must be executed before content has been loaded in ajax
	*/
	this.executeBeforeLoadFunctions = function() {
		console.log('Executing before functions...');
		$.each(this.ajaxExecuteFunctionsBeforeLoad, function( index, fieldFunction ) {
			fieldFunction();
		});
		//Clear the functions
		this.ajaxExecuteFunctionsBeforeLoad = [];		
	};

	/*
		Some functions must be executed after content has been loaded in ajax
	*/
	this.executeAfterLoadFunctions = function() {
		console.log('Executing after functions...');		
		$.each(this.ajaxExecuteFunctionsAfterLoad, function( index, fieldFunction ) {
			fieldFunction();
		});
		
		//Set the focus automatically to the selected control
		if ((this.focusIdControl != '') && ($('#'+this.focusIdControl).length) ) {
			console.log("Setting focus to: " + this.focusIdControl);
			$('html, body').animate({
				scrollTop: $('#'+this.focusIdControl).offset().top
			}, 'fast');
		}

		//Clear the functions
		this.ajaxExecuteFunctionsAfterLoad = [];
	};

	this.contextAdd = function(context) {
		if (!(context in this.contexts)) {
			this.contexts[context] = {};
			this.contexts[context].controls = [];
		}
	};

	this.setFocusToControl = function(idControl) {
		if (idControl != '')
			this.focusIdControl = idControl;
	};	

	//Launch application in a Modal (floating applications)
	/* 
	this.launchApplication = function($baseUrl, $idContext, $formGuid, $process, $event) {
		//The target will be the modal from now on
		$('#kuinkModal').modal('show'); 
		__kuink.modalOpen();
		//QuickFix. Launch a new context with _ prefix so it will not interfere with the previous one and the underscore will set it to temporary
		$("#kuink_"+$formGuid).kuinkSubmit({
		'url' 			: $baseUrl+'&startuc='+$process+'&event='+$event+'&modal=embed',
		'idContext'	: '_'+$idContext, //temporary context starts with an underscore
		'method' 		: 'get',
		'processData': false,
		'contentType': false,
		'button_id' : null,
		'target' : 'kuinkModalContainer',
		'formGuid'	: 'kuink_'+$formGuid
		});
	};
	*/

	this.launchApplication = function($baseUrl, $idContext, $formGuid, $process, $event) {
		//The target will be the modal from now on
		__kuink.modalOpen();
		var $appData = '';
		if ($process != '')
			$appData = '&startuc='+$process+'&event='+$event;
		$baseUrl = $baseUrl.replace("modal=embed", "modal=onlyContent"); 
		console.log($baseUrl);
		
		//QuickFix. Launch a new context with _ prefix so it will not interfere with the previous one and the underscore will set it to temporary
		$("#kuink_"+$formGuid).kuinkSubmit({
		'url' 		 : $baseUrl+$appData,
		'idContext'	 : '_'+$idContext, //temporary context starts with an underscore
		'method' 	 : 'get',
		'processData': false,
		'contentType': false,
		'button_id'  : null,
		'target' 	 : 'kuinkModalContainer',
		'formGuid'	 : 'kuink_'+$formGuid
		});
	};

	//Is kuink running in modal mode?
	this.modalOpen = function() {
		this.modal=true;
	};

	//Is kuink running in modal mode?
	this.modalClose = function() {
		this.modal=false;
	};

	this.controlAdd = function(context, guid) {
		//console.log('Adding controls');
		this.contextAdd(context);
		
		if ((guid != '') && (!(guid in this.contexts[context].controls))) 
			this.contexts[context].controls[guid] = [];
	};
	
	this.controlAddKey = function(context, guid, action, key, value) {
		//console.log('AddKey | context:'+context+' guid:'+guid+' action:'+action+' key:'+key+' value:'+value);
		//Try to add the control if not set
		this.controlAdd(context, guid);
		
		if (!(action in this.contexts[context].controls[guid]))
			this.contexts[context].controls[guid][action] = [];
		
		this.contexts[context].controls[guid][action][key] = value;
	};
	
	this.controlGetKey = function(context, guid, action, key, defaultValue='') {
		//console.log('GetKey | context:'+context+' guid:'+guid+' action:'+action+' key:'+key);
		
		if (context == '' || guid == '' || action == '' || key == '')
			return defaultValue;
		if (!(context in this.contexts) || !this.contexts)
			return defaultValue;
		if (!(guid in this.contexts[context].controls))
			return defaultValue;
		if (!(action in this.contexts[context].controls[guid]))
			return defaultValue;
		if (!(key in this.contexts[context].controls[guid][action]))
			return defaultValue;
		return (this.contexts[context].controls[guid][action][key]);
	};
	
	this.contextClear = function(context) {
		if (context in this.contexts) {
			delete this.contexts[context];
		}
	};

	//Calls a kuink api and returns the json object
	this.callApi = function(api, params, callback) {
		//build the url params
		var urlParams;
		urlParams = '';
		for (const [key, value] of Object.entries(params)) {
			urlParams = urlParams+'&'+key+'='+value;
		}
		var urlComplete = this.apiUrl+api+urlParams;
		console.log('calling API: ' + urlComplete);

		$.ajax({
			url: urlComplete,
			type: "GET",
			dataType: "json",
			contentType: "application/json; charset=utf-8",                
			success: function (result) {
				console.log("success");
				//console.log('result:', result);
				callback(result);
			},
			error: function (result) {
				console.log("error");
			}
		});

	};
};

class KuinkTools {
	static multilineString() {
	};
};

