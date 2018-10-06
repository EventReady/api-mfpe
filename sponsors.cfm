<cfscript>
	sponsors = new com.Sponsors();
	fn = new base.FNs();
	sponsorsList = sponsors.getSponsors( url.clientId, url.eventId );	
	if( sponsorsList.recordCount ){
		response = {
			'success' : true,
			'data' : {
				'sponsors' : fn.queryToArray( sponsorsList )
			}
		};
	}else{
		response = {
			'success' : true,
			'data' : {
				'sponsors' : []
			}
		};
	}
	
</cfscript>