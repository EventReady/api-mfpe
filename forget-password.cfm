<cfscript>
	auth = new com.Auth();
	fn = new base.FNs();
	auth.resetPassword( argumentCollection=app_request );	
	response = {
		'success' : true
	};
</cfscript>