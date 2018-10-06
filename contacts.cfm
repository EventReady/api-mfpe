<cfscript>
	auth = new com.Contacts();
	fn = new base.FNs();
	contacts = auth.getContacts( argumentCollection=url );	
	if( contacts.recordCount ){
		response = {
			'success' : true,
			'data' : {
				'contacts' : fn.queryToArray( contacts )
			}
		};
	}else{
		response = {
			'success' : false,
			'message' : "invalid"
		};
	}
</cfscript>