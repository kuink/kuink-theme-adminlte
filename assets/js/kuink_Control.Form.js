class KuinkForm {
	
	
	/********************************************
	 * NOT IN USE YET (PMT)
	 ********************************************
	 */
	
	
  /**
   * Sets a form action and prepare for submit. This function will be called on button click
   *
   * @param {String} idContext - .
   * @param {String} formGuid - .
   * @param {String} actionUrl - .
   * @param {String} confirmMessage - 
   * @param {String} buttonType - .
   * @param {String} confirmMessage - .
   * @param {Boolean} clearFormData - .
   * 
   */	
	static setFormAction(idContext, formGuid, actionUrl, confirmMessage, buttonType, buttonId, clearFormData) {
		$("#"+formGuid).attr('action', actionUrl);
		confirmMessage = __kuink.controlGetKey(idContext, formGuid, buttonId, 'confirm', 'false');

		//Get all buttons and store their states
		//Bootstrap will disable all buttons, so we need the previous state to restore if the 
		formButtons = $("#"+formGuid).find("button").parent().children();
		$(formButtons).each(function() {
			if (this.id != '') {
				__kuink.controlAddKey(idContext, formGuid, this.id, 'disabled', $(this).attr('disabled'));
			}
		});

		__kuink.controlAddKey(idContext, formGuid, '_buttonPressed', 'type', buttonType);
		__kuink.controlAddKey(idContext, formGuid, '_buttonPressed', 'id', buttonId);
		__kuink.controlAddKey(idContext, formGuid, '_buttonPressed', 'clearFormData', clearFormData);
		
		$("#"+formGuid).attr('kuink-data-actionGroup-clear', (clearFormData == undefined)?false :  clearFormData);		
	}
	
}