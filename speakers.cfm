<cfscript>
	speakers = new com.Speakers();
	fn = new base.FNs();
	ret = speakers.getSpeakers( eventid=url.eventid );	
	if( ret.recordCount ){
		response = {
			'success' : true,
			'data' : {
				'speakers' : fn.queryToArray( ret )
			}
		};
	}else{
		response = {
			'success' : true,
			'data' : {
				'speakers' : []
			}
		};
	}
</cfscript>