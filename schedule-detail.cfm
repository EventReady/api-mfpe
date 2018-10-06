<cfscript>
	schedule = new com.Schedule();
	fn = new base.FNs();
	schedule_detail = fn.queryToArray( schedule.getScheduleDetail( url.scheduleid, url.isSession, url.isAgenda, url.isActivity ) );
	
	response = {
		"success" : true,
		"schedule" : schedule_detail
	};
	
</cfscript>