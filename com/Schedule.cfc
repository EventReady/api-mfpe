<cfcomponent extends="base.Schedule">
	<cffunction name="getScheduleList" access="public" output="no">
		<cfargument name="day" />
		<cfargument name="start" required="yes" default="0" />
		<cfargument name="end" required="yes" default="0" />
		<cfargument name="term" required="no" default="" />
		
		<cfset formatted_days = {
			1 : "2018-10-18 00:00:00.000",
			2 : "2018-10-19 00:00:00.000"
		} />
		<Cfset FN = new FNs() />
		<cfquery name="q" dataSource="#request.dsn#">
			WITH list AS(
				select *, 
				ROW_NUMBER() OVER (ORDER BY session_name) AS 'RowNumber'
				from dbo.Loc_Sessions 
				where start_date = <cfqueryparam value="#formatted_days[day]#" />
			) 
			SELECT *, 1 as session, 0 as agenda, 0 as activity 
			FROM list
			<Cfif !len(arguments.term)>		
			WHERE RowNumber BETWEEN <cfqueryparam value="#arguments.start#" /> AND <cfqueryparam value="#arguments.end#" />
			<cfelseif len(arguments.term)>
				where session_name like <cfqueryparam value="%#arguments.term#%" /> 
				or room like <cfqueryparam value="%#arguments.term#%" />
				or start_time like <cfqueryparam value="%#arguments.term#%" />
			</cfif>
			order by start_date asc, start_time asc
		</cfquery>
		<Cfreturn FN.queryToArray( q ) />
	</cffunction>

</cfcomponent>
