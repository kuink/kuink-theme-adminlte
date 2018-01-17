
/**
 * Update hidden field with value for postdata
 */
function kuink_updateHiddenDateTime(fieldId, offset){
	var hiddenField = '#'+fieldId;
	var visibleField = '#'+fieldId+"_visible";
	var dateTimeStr = $(visibleField).val();
	if (dateTimeStr == ''){
		$(hiddenField).val('');
	}else{
		// user have defined a date
		var timestampUTC = ( moment.utc(dateTimeStr, "YYYY/MM/DD HH:mm").valueOf() / 1000.0 )-(offset);

		$(hiddenField).val(timestampUTC);

	}
	var dateTimeTS = $(hiddenField).attr('value',timestampUTC);
}

/**
 * Update hidden field with value for postdata
 */
function kuink_updateHiddenDate(fieldId, offset){
	var hiddenField = '#'+fieldId;
	var visibleField = '#'+fieldId+"_visible";
	var dateTimeStr = $(visibleField).val();
	if (dateTimeStr == ''){
		$(hiddenField).val('');
	}else{
		// user have defined a date

		var timestampUTC = ( moment.utc(dateTimeStr, "YYYY/MM/DD").valueOf() / 1000.0 )-(offset);

		$(hiddenField).val(timestampUTC);

	}
	var dateTimeTS = $(hiddenField).attr('value',timestampUTC);
}

/**
 * Update hidden field with value for postdata
 */
function kuink_updateHiddenTime(fieldId, offset){
	var hiddenField = '#'+fieldId;
	var visibleField = '#'+fieldId+"_visible";
	var dateTimeStr = $(visibleField).val();
	if (dateTimeStr == ''){
		$(hiddenField).val('');
	}else{
		$(hiddenField).val(dateTimeStr);
	}
	var dateTimeTS = $(hiddenField).attr('value',dateTimeStr);
}

/**
 * Update visible field with value for postdata
 */
function kuink_updateVisibleDateTime(fieldId, offset){
	var hiddenField = '#'+fieldId;
	var visibleField = '#'+fieldId+"_visible";
	var timestamp = $(hiddenField).attr('value');
	var date = (timestamp != '') ? moment.utc( (timestamp*1000) + ((offset)*1000) ) : moment.utc(moment.utc()+((offset)*1000)) ;
	var dateStr = date.format("YYYY/MM/DD");
	var timeStr = date.format("HH:mm");
	var dateTimeStr = dateStr + ' ' + timeStr;
	$(visibleField).val(dateTimeStr);
}

/**
 * Update visible field with value for postdata
 */
function kuink_updateVisibleDate(fieldId, offset){
	var hiddenField = '#'+fieldId;
	var visibleField = '#'+fieldId+"_visible";
	var timestamp = $(hiddenField).attr('value');
	var date = (timestamp != '') ? moment.utc( (timestamp*1000) + ((offset)*1000) ) : moment.utc(moment.utc()+((offset)*1000)) ;
	var dateStr = date.format("YYYY/MM/DD");
	var timeStr = date.format("HH:mm");
	var dateTimeStr = dateStr + ' ' + timeStr;
	$(visibleField).val(dateStr);
}

/**
 * Update visible field with value for postdata
 */
function kuink_updateVisibleTime(fieldId, offset){
	var hiddenField = '#'+fieldId;
	var visibleField = '#'+fieldId+"_visible";
	var timestamp = $(hiddenField).attr('value');
	$(visibleField).val(timestamp);
}
