<cfscript>
	obj = new com.WhatsOn();
	fn = new base.FNs();
	list = obj.getWhatsOn( url.locationId );	
	response = {
		"success" : true,
		"list" : fn.queryToArray( list )
	};
	
</cfscript>