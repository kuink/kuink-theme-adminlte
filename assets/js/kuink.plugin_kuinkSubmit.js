/**
 * Handle submissions between the client and the server
 * @usage
 */
(function($) {

    $.fn.kuinkSubmit = function(options) {

        // setting options defaults
        var settings = $.extend({
            // These are the defaults.
        	id_context : undefined,
            url : undefined,
            method: 'post',
            target: undefined,
            callback: undefined
        }, options);

        var doSubmit = function(){

        	//console.log("// Loading "+settings.url+' on '+settings.id_context + " context");
            $.ajax({
                url		: settings.url,
                type	: settings.method,
                data	: settings.data,
                processData: false,  // tell jQuery not to process the data
                contentType: false,   // tell jQuery not to set contentType
                beforeSend: function () {
                	if (settings.target != undefined){
                		$(settings.target).append('<div class="overlay"><i class="fa fa-refresh fa-spin loading-img"></i></div>');
                	} else {
                		$("#"+settings.id_context+"_wrapper").append('<div class="overlay" id="' + settings.id_context + '_loading"><i class="fa fa-refresh fa-spin loading-img"></i></div>');
                	}
                },
                success	: function (data, status) {
                	//console.log('SUCCESS');
                	//console.log(settings.id_context+"_loading_wrapper");
                	//console.log(settings.target );
                	//console.log(settings.url);
                	//console.log($("#"+settings.id_context+"_loading_wrapper"));
                	if (settings.target != undefined){
                		$(settings.target).html(data);
                	} else {
                		$("#"+settings.id_context+"_loading_wrapper").html(data);
                    $("#"+settings.id_context+"_loading").remove();

                	}
                	if (settings.callback != undefined){
                		settings.callback();
                	}
                }
            });
        }

        if (settings.id_context == undefined || settings.url == undefined){
        	//nothing
        }
        else {
        	var elem = this;
        	if (settings.confirm == 'true' || settings.confirm == true){

        		var confirmationMessage = 'Tem a certeza que deseja prosseguir?';
        		if (settings.confirm_message != '' && settings.confirm_message != undefined)
        			confirmationMessage = settings.confirm_message;

        		bootbox.dialog({
        			  message: confirmationMessage,
        			  title: "Confirmação",
        			  buttons: {
        			    success: {
        			      label: "Sim",
        			      className: "btn-success",
        			      callback: function() {
        			    	  doSubmit();
        			      }
        			    },
        			    main: {
        			      label: "Não",
        			      className: "btn-primary",
        			      callback: function() {
											// restore form buttons to previous state before submitting
											if(typeof __kuink_formButtonsBeforeSubmit != 'undefined' && __kuink_formButtonsBeforeSubmit instanceof Array) {
												$(__kuink_formButtonsBeforeSubmit).each(function() {
													$("#"+this.form).children().find("#"+this.key).attr('disabled', this.value != undefined ? true : false);
												});
											}
        			      }
        			    }
        			  }
        			});
        	}else{
        		doSubmit();
        	}

        }

        return false;
    };

}(jQuery));
