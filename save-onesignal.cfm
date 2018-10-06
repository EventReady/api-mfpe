<cfscript>
	onesignal = new com.OneSignal();
	fn = new base.FNs();
	regid = 0;
	if( structKeyExists( url, "regid")){
		regid = url.regid;
	}else{
		regid = ToString( ToBinary( url.item ) );
	}
	onesignal.setPlayerId( regid, url.clientId, url.eventId, url.playerId, url.data );

	response = {
		"success" : true
	};
	
</cfscript>