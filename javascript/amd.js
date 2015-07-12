(function(root,factory){
	if(typeof module != "undefined" && module.exports){
		module.exports = factory();
	}else if( typeof define === "function" && define.amd){
		define("APPNAME",[],factory);
	}else{
		root.APPNAME = factory();
	}
})(this,function() {});
