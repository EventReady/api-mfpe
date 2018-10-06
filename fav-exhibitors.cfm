<cfscript>
	exhibitors = new com.Exhibitors();
	fn = new base.FNs();
	regid = 0;
	if( structKeyExists( url, "regid")){
		regid = url.regid;
	}else{
		regid = ToString( ToBinary( url.item ) );
	}

	exhibitors.setFavExhibitor( url.eventId, regid, url.exhibid, url.set );	
	response = {
		'success' : true
	};
</cfscript>