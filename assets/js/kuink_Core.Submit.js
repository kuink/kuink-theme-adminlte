/**
 * Handle submissions between the client and the server
 *
 * @usage
 */
(function($) {

	$.fn.kuinkSubmit = function(options) {

		// setting options defaults
		var settings = $.extend({
			// These are the defaults.
			data				: undefined,
			idContext		: undefined,
			url 				: undefined,
			method			: 'post',
			target			: undefined,
			callback		: undefined,
			formGuid		: undefined,
			button_id		: undefined
		}, options);

		var decodeEntities = (function() {
			// this prevents any overhead from creating the object each time
			var element = document.createElement('div');
		
			function decodeHTMLEntities (str) {
				if(str && typeof str === 'string') {
					// strip script/html tags
					str = str.replace(/<script[^>]*>([\S\s]*?)<\/script>/gmi, '');
					str = str.replace(/<\/?\w(?:[^"'>]|"[^"]*"|'[^']*')*>/gmi, '');
					element.innerHTML = str;
					str = element.textContent;
					element.textContent = '';
				}
		
				return str;
			}
		
			return decodeHTMLEntities;
		})();

		var doSubmitHttpRequest = function() {
			var decodedUrl = decodeEntities(settings.url);
			//settings.url = settings.url.replace(/amp%3B/g, '');			
			//settings.url = settings.url.replace(/&amp;/g, '&');
			console.log("// Loading "+decodedUrl+' on '+settings.idContext + " context using "+settings.method+" on target "+settings.target+" with callback: "+settings.callback);
			//console.log(settings.url);
			__kuink.executeBeforeLoadFunctions(); //Execute the pushed functions before the submit

			xhr = new XMLHttpRequest();

			xhr.open(settings.method, decodedUrl);
			if (settings.method.toUpperCase() == 'GET')
				xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
				// xhr.setRequestHeader('Content-Type', 'multipart/form-data');
			xhr.onload = function() {
				if (xhr.status === 200) {
					// console.log(xhr.responseText);
					var contentType = xhr.getResponseHeader("Content-Type");
					console.log(contentType);
					if (contentType.indexOf("html") != -1) {
						// The response is html
						reader = new FileReader();
						var text='';
						
						reader.onload = function() {
							text = reader.result;
							//console.log(text);
							//$("#"+settings.idContext+"_loading_wrapper").html(text);
							//console.log("Loading Result: "+settings.target);
							//$("#"+settings.idContext+"_wrapper").html(text);
							$("#"+settings.idContext+"_wrapper").replaceWith(text).promise().done(function(elem){
								setTimeout(function (){
									//This must be delayed because it can only run after the content is loaded in the document
									//We must delay 1000 ms to achieve this
									__kuink.executeAfterLoadFunctions(); //Execute the pushed functions to run after the submit			
								}, 1000);
							});

							window.scrollTo(0, 0);
						};
						reader.readAsText(xhr.response);
					} else {
						var filename = "";
						var disposition = xhr.getResponseHeader('Content-Disposition');
						
						if (disposition && disposition.indexOf('filename') !== -1) {
							var filenameRegex = /filename[^;=\n]*=((['"]).*?\2|[^;\n]*)/;
							var matches = filenameRegex.exec(disposition);
							if (matches != null && matches[1]) filename = matches[1].replace(/['"]/g, '');
						}
						var fileBlob = new Blob([xhr.response]);
						a = document.createElement('a');
						a.href = window.URL.createObjectURL(xhr.response);
						// Give filename you wish to download
						a.download = filename;
						a.style.display = 'none';
						document.body.appendChild(a);
						a.click();

					}
					$("#"+settings.idContext+"_loading").remove();
				} else if (xhr.status !== 200) {
					console.log('Request failed.  Returned status of ' + xhr.status);
					$("#"+settings.idContext+"_loading").remove();
				}
				if (settings.callback != undefined){
					settings.callback();
				}
			};
			xhr.responseType = 'blob';
			console.log('target:' + settings.target);
			//if (settings.target != undefined){
			//	$(settings.target).append('<div class="overlay" style="position:fixed;" ><i class="fa fa-refresh fa-spin loading-img"></i></div>');
			//} else {
			$("#"+settings.idContext+"_wrapper").append('<div class="overlay" style="position:fixed;" id="' + settings.idContext + '_loading"><i class="fa fa-refresh fa-spin loading-img"></i></div>');
			//}

			if (settings.method.toUpperCase() == 'GET') {
				// This is a GET
				//clear the context data in the __kuink global object
				__kuink.contextClear(settings.idContext);
				xhr.send(null);
			} else {
				console.log('Posting data...');
				if (settings.data == undefined && settings.method.toUpperCase() != 'GET') {
					//If the data to be sent is not defined, then build the FormData object
					//console.log('settings.data empty. Building FormData...');
					settings.data = new FormData();
					clearFormData = $("#"+settings.formGuid).attr('kuink-data-actionGroup-clear');
					//console.log(clearFormData);
					//Disable the fields that should not be submited
					if (clearFormData == 'false' || clearFormData == undefined) {
						var notSubmit = $('#'+settings.formGuid+" ._kuink_notSubmit");
						$.each(notSubmit, function(index, value) {
							value.disabled = 'true';
						});

						settings.data = new FormData(document.querySelector("#"+settings.formGuid));
					}
				}
				//This is a POST
				//clear the context data in the __kuink global object
				__kuink.contextClear(settings.idContext);
				xhr.send(settings.data);
			}
			//Restore form buttons to previous state before
			var formButtons = $("#"+settings.formGuid).find("button").parent().children();
			console.log('Restoring Button states');
			$(formButtons).each(function() {
				if (this.id != '') {
					var disabled = __kuink.controlGetKey(settings.idContext, settings.formGuid, this.id, 'disabled','false');
					console.log(this.id + '->' + disabled);
					$(this).attr('disabled', disabled == 'true' ? true : false);
				}
			});			
			
		} //end function
		if (settings.idContext == undefined || settings.url == undefined){
			// nothing
		} else {
			var elem = this;
			//console.log(settings);
			var confirmMessage = __kuink.controlGetKey(settings.idContext, settings.formGuid, settings.button_id, 'confirm', 'false');
			if (confirmMessage != 'false'){
				bootbox.dialog({
					message	: confirmMessage,
					title		: "Confirmação",
					closeButton: false,
					buttons	: {
						success	: {
							label			: "Sim",
							className	: "btn-success",
							callback	: function() {
								doSubmitHttpRequest();
							}
						},
						main		: {
							label			: "Não",
							className	: "btn-primary",
							callback	: function() {
								//Restore form buttons to previous state before
								var formButtons = $("#"+settings.formGuid).find("button").parent().children();
								console.log('Restoring Button states');
								$(formButtons).each(function() {
									if (this.id != '') {
										var disabled = __kuink.controlGetKey(settings.idContext, settings.formGuid, this.id, 'disabled','true');
										$(this).attr('disabled', disabled != undefined ? true : false);
									}
								});
								//Restore the disabled of fields that should not be submited 
								var notSubmit = $("._kuink_notSubmit");
								$.each(notSubmit, function(index, value) {
									$(value).removeAttr('disabled');
								});
							}
						}
					}
				});
			} else {
				doSubmitHttpRequest();
			}

		}
		return false;
	};

}(jQuery));
