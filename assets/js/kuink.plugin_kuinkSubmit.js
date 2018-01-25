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
			id_context	: undefined,
			url 				: undefined,
			method			: 'post',
			target			: undefined,
			callback		: undefined
		}, options);

		var doSubmitHttpRequest = function() {
			console.log("// Loading "+settings.url+' on '+settings.id_context + " context using "+settings.method+" on target "+settings.target+" with callback: "+settings.callback);
			xhr = new XMLHttpRequest();

			xhr.open(settings.method, settings.url);
			if (settings.method.toUpperCase() == 'GET')
				xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
				// xhr.setRequestHeader('Content-Type', 'multipart/form-data');
			xhr.onload = function() {
				if (xhr.status === 200) {
					// console.log(xhr.responseText);
					var contentType = xhr.getResponseHeader("Content-Type");

					if (contentType.indexOf("html") != -1) {
						// The response is html
						reader = new FileReader();
						var text='';
						
						reader.onload = function() {
							text = reader.result;
							$("#"+settings.id_context+"_loading_wrapper").html(text);
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
					$("#"+settings.id_context+"_loading").remove();
				} else if (xhr.status !== 200) {
					console.log('Request failed.  Returned status of ' + xhr.status);
					$("#"+settings.id_context+"_loading").remove();
				}
				if (settings.callback != undefined){
					settings.callback();
				}
			};
			xhr.responseType = 'blob';

			if (settings.target != undefined){
				$(settings.target).append('<div class="overlay" style="position:fixed;" ><i class="fa fa-refresh fa-spin loading-img"></i></div>');
			} else {
				$("#"+settings.id_context+"_wrapper").append('<div class="overlay" style="position:fixed;" id="' + settings.id_context + '_loading"><i class="fa fa-refresh fa-spin loading-img"></i></div>');
			}

			if (settings.method.toUpperCase() == 'GET') {
				// This is a GET
				xhr.send(null);
			} else {
				//This is a POST
				xhr.send(settings.data);

			}
		}

		<!-- This function is deprecated -->
		/*
		 * var doSubmit = function(){
		 *
		 * console.log("// Loading "+settings.url+' on '+settings.id_context + "
		 * context"); $.ajax({ url : settings.url, type : settings.method, data :
		 * settings.data, processData: false, // tell jQuery not to process the
		 * data contentType: false, // tell jQuery not to set contentType
		 * beforeSend: function () { if (settings.target != undefined){
		 * $(settings.target).append('<div class="overlay"><i class="fa
		 * fa-refresh fa-spin loading-img"></i></div>'); } else {
		 * $("#"+settings.id_context+"_wrapper").append('<div class="overlay"
		 * id="' + settings.id_context + '_loading"><i class="fa fa-refresh
		 * fa-spin loading-img"></i></div>'); } }, success : function (data,
		 * status) { console.log('SUCCESS');
		 * console.log(settings.id_context+"_loading_wrapper");
		 * console.log(settings.target ); //console.log(settings.url);
		 * //console.log($("#"+settings.id_context+"_loading_wrapper")); if
		 * (settings.target != undefined){ $(settings.target).html(data); } else {
		 * $("#"+settings.id_context+"_loading_wrapper").html(data);
		 * $("#"+settings.id_context+"_loading").remove();
		 *  } if (settings.callback != undefined){ settings.callback(); } } }); }
		 */

		if (settings.id_context == undefined || settings.url == undefined){
			// nothing
		} else {
			var elem = this;
			if (settings.confirm == 'true' || settings.confirm == true){
				var confirmationMessage = 'Tem a certeza que deseja prosseguir?';
				if (settings.confirm_message != '' && settings.confirm_message != undefined)
					confirmationMessage = settings.confirm_message;

				bootbox.dialog({
					message	: confirmationMessage,
					title		: "Confirmação",
					buttons	: {
						success	: {
							label			: "Sim",
							className	: "btn-success",
							callback	: function() {
								// doSubmit();
								doSubmitHttpRequest();
							}
						},
						main		: {
							label			: "Não",
							className	: "btn-primary",
							callback	: function() {
								// restore form buttons to previous state before
								// submitting
								if(typeof __kuink_formButtonsBeforeSubmit != 'undefined' && __kuink_formButtonsBeforeSubmit instanceof Array) {
									$(__kuink_formButtonsBeforeSubmit).each(function() {
										$(this.button).attr('disabled', this.value != undefined ? true : false);
									});
								}
							}
						}
					}
				});
			} else {
				// doSubmit();
				doSubmitHttpRequest();
			}

		}
		return false;
	};

}(jQuery));
