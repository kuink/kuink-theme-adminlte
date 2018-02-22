
function KuinkManager() {
	this.contexts = [];
	
	this.contextAdd = function(context) {
		if (!(context in this.contexts)) {
			this.contexts[context] = {};
			this.contexts[context].controls = [];
		}
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
};

class KuinkTools {
	static multilineString() {
	};
};



var __kuink = new KuinkManager();  //Global variable with kuink specific data


