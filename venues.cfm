<cfscript>
	venues = new com.Venues();
	fn = new base.FNs();
	ret = venues.getVenues( argumentCollection=url );	
	if( ret.recordCount ){
		response = {
			'success' : true,
			'data' : {
				'venues' : fn.queryToArray( ret )
			}
		};
	}else{
		response = {
			'success' : true,
			'data' : {
				'venues' : []
			}
		};
	}
</cfscript>