<cfscript>
	notes = new com.Notes();
	fn = new base.FNs();
	regid = 0;
	if( structKeyExists( url, "regid")){
		regid = url.regid;
	}else{
		regid = ToString( ToBinary( url.item ) );
	}

	list = notes.deleteNote( regid, url.noteId );	
	response = {
		"success" : true
	};
	
</cfscript>