//console.log("Loading assets/js/kuink_gridFunctions.js");
function kuink_loadApplicationContent(url, context, data){
		url = url+'&modal=onlyContent';
		console.log("Loading application content on " + url);
		$("#"+context+"_content_wrapper").kuinkSubmit({
			'url' 				: url,
			'id_context'		: context,
			'method' 			: 'post',
			'target'			: '#'+context+'_content_wrapper',
			'data'				: data
		});


}
