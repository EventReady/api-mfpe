<cfscript>
try{
		
	dashboard = new com.Dashboard();
	
	fn = new base.FNs();
	callout = dashboard.getCallout( url.eventId );	
	spotlight = dashboard.getSpotlight( url.eventId );	
	if( !callout.recordCount ){
		callout = {};
	}else{
		callout = fn.QueryToStruct( callout )[1];
	}

	if( !spotlight.recordCount ){
		spotlight = {};
	}else{
		spotlight = fn.QueryToStruct( spotlight )[1];

	}
	response = {
		'success' : true,
		'callout' : callout,			
		'spotlight' : spotlight		
	};
	
}catch(any e){
	writedump(e);abort;	
}
	
</cfscript>