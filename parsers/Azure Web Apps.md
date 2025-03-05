# Parsers For Azure Web Apps

## Parser:
```
| JSON "category", "level", "resultSignature", 
```
### Use Cases:
400 and 500 Server Errors, Apps With IP Restrictions Enabled, Azure Web Apps - All HTTP Response Codes with their Count, Azure Web Apps - Client Errors (4xx response codes) per Day, Azure Web Apps - HTTP Status Code Summary over time, Azure Web Apps - Malicious URL Requests, Azure Web Apps - Slowest URLs by Average Time, Azure Web Apps - Time Taken to Serve Requests, Azure Web Apps - Top 404 URLs, Azure Web Apps - Top Browsers, Azure Web Apps - Top Clients, Azure Web Apps - Top Clients Causing Errors, Azure Web Apps - Top URLs by Count, Azure Web Apps - Traffic Volume Served per Day, Container Killed  Events, Container Started Events, Container Stopped Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Errors by Country, Events by Recommendation Category, Failed Policy Events, High Impact Recommendations, Latest Deployment Version By Site, Log Levels Over Time, Media Types Requested Over Time, Number of Containers Killed, Number of Containers Started, Number of Containers Stopped, OS Platform, OS Platform Breakdown, OS Platform Breakdown by Country, OSes and Browsers, Policy Events by Severity Level, Policy Events With Warning or Error, Recent Delete Operations, Recent Errors by App Name, Recent Failed Policy Events, Recent Policy Events With Warning or Error, Recent Recommendation Events, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Recommendations by Impact, Requests by action, Resource Health by  Status, Response Codes Over Time, Response Time and Data Volume, Scan Status by App Name, Server Errors by Site, Service Health by Incident Type, Start/ Restart Events by Web App, Stop Events by Web App, Top 10 Allowed IPs, Top 10 containers with errors, Top 10 Denied IPs, Top 10 Denied Reponses, Top 10 Infected FIles Names, Top 10 operations that caused the most errors, Top 10 Recent Scanning Error Messages, Top 10 Slowest Pages by Country, Top 10 URL With Highest Server Bytes Received, Top 10 URL With Highest Server Bytes Sent, Top 10 Web Apps by Infected FIles Count, Top Requested Documents, Top Requested Documents by Country, Total Files Scanned, Total Infected Files, Total Recommendations, Traffic Over Time, Traffic Over Time (Outlier), Users / Applications by Operation type, Visits by Allowed Source IPs, Visits by Country, Visits by Denied Source IPs, Write and Delete Operations



## Parser:
```
| JSON "category", "operationName", "time","level","resultType", "properties.incidentType", "properties.service", "properties.region", "properties.impactStartTime", "properties.impactMitigationTime", "properties.defaultLanguageTitle", "properties.stage" as category, operationName, time,level,resultType, incidentType, service, service_region, impactStartTime, impactMitigationTime, defaultLanguageTitle, stage nodrop
| parse field=operationName "*/*/*" as category, operation_name, action nodrop
```
### Use Cases:
400 and 500 Server Errors, Azure Web Apps - All HTTP Response Codes with their Count, Azure Web Apps - Client Errors (4xx response codes) per Day, Azure Web Apps - HTTP Status Code Summary over time, Azure Web Apps - Malicious URL Requests, Azure Web Apps - Slowest URLs by Average Time, Azure Web Apps - Time Taken to Serve Requests, Azure Web Apps - Top 404 URLs, Azure Web Apps - Top Browsers, Azure Web Apps - Top Clients, Azure Web Apps - Top Clients Causing Errors, Azure Web Apps - Top URLs by Count, Azure Web Apps - Traffic Volume Served per Day, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Errors by Country, Log Levels Over Time, Media Types Requested Over Time, OS Platform, OS Platform Breakdown, OS Platform Breakdown by Country, OSes and Browsers, Recent Delete Operations, Recent Errors by App Name, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Resource Health by  Status, Response Codes Over Time, Response Time and Data Volume, Scan Status by App Name, Server Errors by Site, Service Health by Incident Type, Start/ Restart Events by Web App, Stop Events by Web App, Top 10 Infected FIles Names, Top 10 operations that caused the most errors, Top 10 Recent Scanning Error Messages, Top 10 Slowest Pages by Country, Top 10 Web Apps by Infected FIles Count, Top Requested Documents, Top Requested Documents by Country, Total Files Scanned, Total Infected Files, Traffic Over Time, Traffic Over Time (Outlier), Users / Applications by Operation type, Visits by Country



## Parser:
```
| JSON "category", "operationName", "time","level","resultType", "properties.title", "properties.details", "properties.currentHealthStatus", "properties.type", "properties.cause" as category, operationName, time,level,resultType, title, details, currentHealthStatus, type, cause nodrop
| parse field=operationName "*/*/*" as category, operation_name, action nodrop
```
### Use Cases:
400 and 500 Server Errors, Azure Web Apps - All HTTP Response Codes with their Count, Azure Web Apps - Client Errors (4xx response codes) per Day, Azure Web Apps - HTTP Status Code Summary over time, Azure Web Apps - Malicious URL Requests, Azure Web Apps - Slowest URLs by Average Time, Azure Web Apps - Time Taken to Serve Requests, Azure Web Apps - Top 404 URLs, Azure Web Apps - Top Browsers, Azure Web Apps - Top Clients, Azure Web Apps - Top Clients Causing Errors, Azure Web Apps - Top URLs by Count, Azure Web Apps - Traffic Volume Served per Day, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Errors by Country, Log Levels Over Time, Media Types Requested Over Time, OS Platform, OS Platform Breakdown, OS Platform Breakdown by Country, OSes and Browsers, Recent Delete Operations, Recent Errors by App Name, Recent Resource Health Incidents, Recent Write Operations, Resource Health by  Status, Response Codes Over Time, Response Time and Data Volume, Scan Status by App Name, Server Errors by Site, Service Health by Incident Type, Stop Events by Web App, Top 10 Infected FIles Names, Top 10 operations that caused the most errors, Top 10 Recent Scanning Error Messages, Top 10 Slowest Pages by Country, Top 10 Web Apps by Infected FIles Count, Top Requested Documents, Top Requested Documents by Country, Total Files Scanned, Total Infected Files, Traffic Over Time, Traffic Over Time (Outlier), Users / Applications by Operation type, Visits by Country



## Parser:
```
| JSON "category", "properties.currentHealthStatus" as category, currentHealthStatus
```
### Use Cases:
400 and 500 Server Errors, Azure Web Apps - All HTTP Response Codes with their Count, Azure Web Apps - Client Errors (4xx response codes) per Day, Azure Web Apps - HTTP Status Code Summary over time, Azure Web Apps - Malicious URL Requests, Azure Web Apps - Slowest URLs by Average Time, Azure Web Apps - Time Taken to Serve Requests, Azure Web Apps - Top 404 URLs, Azure Web Apps - Top Browsers, Azure Web Apps - Top Clients, Azure Web Apps - Top Clients Causing Errors, Azure Web Apps - Top URLs by Count, Azure Web Apps - Traffic Volume Served per Day, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Errors by Country, Log Levels Over Time, Media Types Requested Over Time, OS Platform, OS Platform Breakdown, OS Platform Breakdown by Country, OSes and Browsers, Recent Delete Operations, Recent Errors by App Name, Recent Write Operations, Resource Health by  Status, Response Codes Over Time, Response Time and Data Volume, Scan Status by App Name, Server Errors by Site, Top 10 Infected FIles Names, Top 10 operations that caused the most errors, Top 10 Recent Scanning Error Messages, Top 10 Slowest Pages by Country, Top 10 Web Apps by Infected FIles Count, Top Requested Documents, Top Requested Documents by Country, Total Files Scanned, Total Infected Files, Traffic Over Time, Traffic Over Time (Outlier), Users / Applications by Operation type, Visits by Country



## Parser:
```
| JSON "category", "properties.incidentType", "properties.service", "properties.region" as category, incidentType, service, service_region
```
### Use Cases:
400 and 500 Server Errors, Azure Web Apps - All HTTP Response Codes with their Count, Azure Web Apps - Client Errors (4xx response codes) per Day, Azure Web Apps - HTTP Status Code Summary over time, Azure Web Apps - Malicious URL Requests, Azure Web Apps - Slowest URLs by Average Time, Azure Web Apps - Time Taken to Serve Requests, Azure Web Apps - Top 404 URLs, Azure Web Apps - Top Browsers, Azure Web Apps - Top Clients, Azure Web Apps - Top Clients Causing Errors, Azure Web Apps - Top URLs by Count, Azure Web Apps - Traffic Volume Served per Day, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Errors by Country, Log Levels Over Time, Media Types Requested Over Time, OS Platform, OS Platform Breakdown, OS Platform Breakdown by Country, OSes and Browsers, Recent Delete Operations, Recent Errors by App Name, Recent Resource Health Incidents, Recent Write Operations, Resource Health by  Status, Response Codes Over Time, Response Time and Data Volume, Scan Status by App Name, Server Errors by Site, Service Health by Incident Type, Stop Events by Web App, Top 10 Infected FIles Names, Top 10 operations that caused the most errors, Top 10 Recent Scanning Error Messages, Top 10 Slowest Pages by Country, Top 10 Web Apps by Infected FIles Count, Top Requested Documents, Top Requested Documents by Country, Total Files Scanned, Total Infected Files, Traffic Over Time, Traffic Over Time (Outlier), Users / Applications by Operation type, Visits by Country



## Parser:
```
| json "Category", "Properties.ListOfInfectedFiles[*]", "ResourceId" as category, ListOfInfectedFiles, resource_id
| extract field=ListOfInfectedFiles "(?<InfectedFile>\w+)" multi
```
### Use Cases:
400 and 500 Server Errors, Azure Web Apps - All HTTP Response Codes with their Count, Azure Web Apps - Client Errors (4xx response codes) per Day, Azure Web Apps - HTTP Status Code Summary over time, Azure Web Apps - Malicious URL Requests, Azure Web Apps - Slowest URLs by Average Time, Azure Web Apps - Time Taken to Serve Requests, Azure Web Apps - Top 404 URLs, Azure Web Apps - Top Browsers, Azure Web Apps - Top Clients, Azure Web Apps - Top Clients Causing Errors, Azure Web Apps - Top URLs by Count, Azure Web Apps - Traffic Volume Served per Day, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Errors by Country, OS Platform Breakdown, OS Platform Breakdown by Country, Recent Delete Operations, Recent Write Operations, Response Time and Data Volume, Top 10 Infected FIles Names, Top 10 operations that caused the most errors, Top 10 Recent Scanning Error Messages, Total Files Scanned, Total Infected Files, Traffic Over Time, Traffic Over Time (Outlier), Users / Applications by Operation type, Visits by Country



## Parser:
```
| json "Category", "Properties.ScanStatus", "Properties.ErrorMessage", "ResourceId" as category, scan_status, error_message, resource_id
```
### Use Cases:
400 and 500 Server Errors, Azure Web Apps - All HTTP Response Codes with their Count, Azure Web Apps - Client Errors (4xx response codes) per Day, Azure Web Apps - HTTP Status Code Summary over time, Azure Web Apps - Malicious URL Requests, Azure Web Apps - Slowest URLs by Average Time, Azure Web Apps - Time Taken to Serve Requests, Azure Web Apps - Top 404 URLs, Azure Web Apps - Top Browsers, Azure Web Apps - Top Clients, Azure Web Apps - Top Clients Causing Errors, Azure Web Apps - Top URLs by Count, Azure Web Apps - Traffic Volume Served per Day, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Errors by Country, OS Platform Breakdown, OS Platform Breakdown by Country, Recent Delete Operations, Recent Write Operations, Response Time and Data Volume, Top 10 operations that caused the most errors, Top 10 Recent Scanning Error Messages, Total Infected Files, Traffic Over Time, Traffic Over Time (Outlier), Users / Applications by Operation type, Visits by Country



## Parser:
```
| JSON "category", "resultType", "level", "properties.message", "properties.resourceLocation", "properties.entity", "properties.policies" as category, resultType, level, message, location, entity, policies nodrop
```
### Use Cases:
400 and 500 Server Errors, Apps With IP Restrictions Enabled, Azure Web Apps - All HTTP Response Codes with their Count, Azure Web Apps - Client Errors (4xx response codes) per Day, Azure Web Apps - HTTP Status Code Summary over time, Azure Web Apps - Malicious URL Requests, Azure Web Apps - Slowest URLs by Average Time, Azure Web Apps - Time Taken to Serve Requests, Azure Web Apps - Top 404 URLs, Azure Web Apps - Top Browsers, Azure Web Apps - Top Clients, Azure Web Apps - Top Clients Causing Errors, Azure Web Apps - Top URLs by Count, Azure Web Apps - Traffic Volume Served per Day, Container Killed  Events, Container Started Events, Container Stopped Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Errors by Country, Events by Recommendation Category, Failed Policy Events, Latest Deployment Version By Site, Log Levels Over Time, Media Types Requested Over Time, Number of Containers Killed, Number of Containers Started, Number of Containers Stopped, OS Platform, OS Platform Breakdown, OS Platform Breakdown by Country, OSes and Browsers, Policy Events by Severity Level, Policy Events With Warning or Error, Recent Delete Operations, Recent Errors by App Name, Recent Failed Policy Events, Recent Policy Events With Warning or Error, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Recommendations by Impact, Requests by action, Resource Health by  Status, Response Codes Over Time, Response Time and Data Volume, Scan Status by App Name, Server Errors by Site, Service Health by Incident Type, Start/ Restart Events by Web App, Stop Events by Web App, Top 10 Allowed IPs, Top 10 containers with errors, Top 10 Denied IPs, Top 10 Denied Reponses, Top 10 Infected FIles Names, Top 10 operations that caused the most errors, Top 10 Recent Scanning Error Messages, Top 10 Slowest Pages by Country, Top 10 URL With Highest Server Bytes Received, Top 10 URL With Highest Server Bytes Sent, Top 10 Web Apps by Infected FIles Count, Top Requested Documents, Top Requested Documents by Country, Total Files Scanned, Total Infected Files, Total Recommendations, Traffic Over Time, Traffic Over Time (Outlier), Users / Applications by Operation type, Visits by Allowed Source IPs, Visits by Country, Visits by Denied Source IPs, Write and Delete Operations



## Parser:
```
| JSON "category", "resultType", "level", "properties.resourceLocation", "properties.entity" as category, resultType, level, location, entity nodrop
```
### Use Cases:
400 and 500 Server Errors, Apps With IP Restrictions Enabled, Azure Web Apps - All HTTP Response Codes with their Count, Azure Web Apps - Client Errors (4xx response codes) per Day, Azure Web Apps - HTTP Status Code Summary over time, Azure Web Apps - Malicious URL Requests, Azure Web Apps - Slowest URLs by Average Time, Azure Web Apps - Time Taken to Serve Requests, Azure Web Apps - Top 404 URLs, Azure Web Apps - Top Browsers, Azure Web Apps - Top Clients, Azure Web Apps - Top Clients Causing Errors, Azure Web Apps - Top URLs by Count, Azure Web Apps - Traffic Volume Served per Day, Container Killed  Events, Container Started Events, Container Stopped Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Errors by Country, Events by Recommendation Category, Failed Policy Events, Latest Deployment Version By Site, Log Levels Over Time, Media Types Requested Over Time, Number of Containers Killed, Number of Containers Started, Number of Containers Stopped, OS Platform, OS Platform Breakdown, OS Platform Breakdown by Country, OSes and Browsers, Policy Events by Severity Level, Policy Events With Warning or Error, Recent Delete Operations, Recent Errors by App Name, Recent Policy Events With Warning or Error, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Recommendations by Impact, Requests by action, Resource Health by  Status, Response Codes Over Time, Response Time and Data Volume, Scan Status by App Name, Server Errors by Site, Service Health by Incident Type, Start/ Restart Events by Web App, Stop Events by Web App, Top 10 Allowed IPs, Top 10 containers with errors, Top 10 Denied IPs, Top 10 Denied Reponses, Top 10 Infected FIles Names, Top 10 operations that caused the most errors, Top 10 Recent Scanning Error Messages, Top 10 Slowest Pages by Country, Top 10 URL With Highest Server Bytes Received, Top 10 URL With Highest Server Bytes Sent, Top 10 Web Apps by Infected FIles Count, Top Requested Documents, Top Requested Documents by Country, Total Files Scanned, Total Infected Files, Total Recommendations, Traffic Over Time, Traffic Over Time (Outlier), Users / Applications by Operation type, Visits by Allowed Source IPs, Visits by Country, Visits by Denied Source IPs, Write and Delete Operations



## Parser:
```
| json "Properties.CIp", "Properties.Result", "Category", "ResourceId" as client_ip, result, category, resource_id
| parse field=client_ip "*:*" as client_ip, port
```
### Use Cases:
400 and 500 Server Errors, Apps With IP Restrictions Enabled, Azure Web Apps - All HTTP Response Codes with their Count, Azure Web Apps - Client Errors (4xx response codes) per Day, Azure Web Apps - HTTP Status Code Summary over time, Azure Web Apps - Malicious URL Requests, Azure Web Apps - Slowest URLs by Average Time, Azure Web Apps - Time Taken to Serve Requests, Azure Web Apps - Top 404 URLs, Azure Web Apps - Top Browsers, Azure Web Apps - Top Clients, Azure Web Apps - Top Clients Causing Errors, Azure Web Apps - Top URLs by Count, Azure Web Apps - Traffic Volume Served per Day, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Errors by Country, Log Levels Over Time, Media Types Requested Over Time, OS Platform, OS Platform Breakdown, OS Platform Breakdown by Country, OSes and Browsers, Recent Delete Operations, Recent Errors by App Name, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Requests by action, Resource Health by  Status, Response Codes Over Time, Response Time and Data Volume, Scan Status by App Name, Server Errors by Site, Service Health by Incident Type, Start/ Restart Events by Web App, Stop Events by Web App, Top 10 Allowed IPs, Top 10 Denied IPs, Top 10 Denied Reponses, Top 10 Infected FIles Names, Top 10 operations that caused the most errors, Top 10 Recent Scanning Error Messages, Top 10 Slowest Pages by Country, Top 10 Web Apps by Infected FIles Count, Top Requested Documents, Top Requested Documents by Country, Total Files Scanned, Total Infected Files, Traffic Over Time, Traffic Over Time (Outlier), Users / Applications by Operation type, Visits by Allowed Source IPs, Visits by Country, Visits by Denied Source IPs



## Parser:
```
| json "Properties.CIp", "Properties.Result", "Properties.Details", "Category", "Properties.CsHost" as client_ip, result, response, category, cs_host nodrop
| parse field=client_ip "*:*" as client_ip, port
```
### Use Cases:
400 and 500 Server Errors, Apps With IP Restrictions Enabled, Azure Web Apps - All HTTP Response Codes with their Count, Azure Web Apps - Client Errors (4xx response codes) per Day, Azure Web Apps - HTTP Status Code Summary over time, Azure Web Apps - Malicious URL Requests, Azure Web Apps - Slowest URLs by Average Time, Azure Web Apps - Time Taken to Serve Requests, Azure Web Apps - Top 404 URLs, Azure Web Apps - Top Browsers, Azure Web Apps - Top Clients, Azure Web Apps - Top Clients Causing Errors, Azure Web Apps - Top URLs by Count, Azure Web Apps - Traffic Volume Served per Day, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Errors by Country, Log Levels Over Time, Media Types Requested Over Time, OS Platform, OS Platform Breakdown, OS Platform Breakdown by Country, OSes and Browsers, Recent Delete Operations, Recent Errors by App Name, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Requests by action, Resource Health by  Status, Response Codes Over Time, Response Time and Data Volume, Scan Status by App Name, Server Errors by Site, Service Health by Incident Type, Start/ Restart Events by Web App, Stop Events by Web App, Top 10 Denied IPs, Top 10 Denied Reponses, Top 10 Infected FIles Names, Top 10 operations that caused the most errors, Top 10 Recent Scanning Error Messages, Top 10 Slowest Pages by Country, Top 10 Web Apps by Infected FIles Count, Top Requested Documents, Top Requested Documents by Country, Total Files Scanned, Total Infected Files, Traffic Over Time, Traffic Over Time (Outlier), Users / Applications by Operation type, Visits by Country, Visits by Denied Source IPs



## Parser:
```
| json "Properties.CIp", "Properties.Result", "Properties.Details", "Category", "Properties.CsHost", "ResourceId" as client_ip, result, response, category, cs_host, resource_id nodrop
| parse field=client_ip "*:*" as client_ip, port nodrop
```
### Use Cases:
400 and 500 Server Errors, Apps With IP Restrictions Enabled, Azure Web Apps - All HTTP Response Codes with their Count, Azure Web Apps - Client Errors (4xx response codes) per Day, Azure Web Apps - HTTP Status Code Summary over time, Azure Web Apps - Malicious URL Requests, Azure Web Apps - Slowest URLs by Average Time, Azure Web Apps - Time Taken to Serve Requests, Azure Web Apps - Top 404 URLs, Azure Web Apps - Top Browsers, Azure Web Apps - Top Clients, Azure Web Apps - Top Clients Causing Errors, Azure Web Apps - Top URLs by Count, Azure Web Apps - Traffic Volume Served per Day, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Errors by Country, Log Levels Over Time, Media Types Requested Over Time, OS Platform, OS Platform Breakdown, OS Platform Breakdown by Country, OSes and Browsers, Recent Delete Operations, Recent Errors by App Name, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Requests by action, Resource Health by  Status, Response Codes Over Time, Response Time and Data Volume, Scan Status by App Name, Server Errors by Site, Service Health by Incident Type, Start/ Restart Events by Web App, Stop Events by Web App, Top 10 Allowed IPs, Top 10 Denied IPs, Top 10 Denied Reponses, Top 10 Infected FIles Names, Top 10 operations that caused the most errors, Top 10 Recent Scanning Error Messages, Top 10 Slowest Pages by Country, Top 10 Web Apps by Infected FIles Count, Top Requested Documents, Top Requested Documents by Country, Total Files Scanned, Total Infected Files, Traffic Over Time, Traffic Over Time (Outlier), Users / Applications by Operation type, Visits by Country, Visits by Denied Source IPs



## Parser:
```
| json "Properties.CIp", "Properties.Result", "Properties.Details", "Category", "ResourceId" as client_ip, result, response, category, resource_id
| parse field=client_ip "*:*" as client_ip, port
```
### Use Cases:
400 and 500 Server Errors, Azure Web Apps - All HTTP Response Codes with their Count, Azure Web Apps - Client Errors (4xx response codes) per Day, Azure Web Apps - HTTP Status Code Summary over time, Azure Web Apps - Malicious URL Requests, Azure Web Apps - Slowest URLs by Average Time, Azure Web Apps - Time Taken to Serve Requests, Azure Web Apps - Top 404 URLs, Azure Web Apps - Top Browsers, Azure Web Apps - Top Clients, Azure Web Apps - Top Clients Causing Errors, Azure Web Apps - Top URLs by Count, Azure Web Apps - Traffic Volume Served per Day, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Errors by Country, Log Levels Over Time, Media Types Requested Over Time, OS Platform, OS Platform Breakdown, OS Platform Breakdown by Country, OSes and Browsers, Recent Delete Operations, Recent Errors by App Name, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Resource Health by  Status, Response Codes Over Time, Response Time and Data Volume, Scan Status by App Name, Server Errors by Site, Service Health by Incident Type, Start/ Restart Events by Web App, Stop Events by Web App, Top 10 Denied Reponses, Top 10 Infected FIles Names, Top 10 operations that caused the most errors, Top 10 Recent Scanning Error Messages, Top 10 Slowest Pages by Country, Top 10 Web Apps by Infected FIles Count, Top Requested Documents, Top Requested Documents by Country, Total Files Scanned, Total Infected Files, Traffic Over Time, Traffic Over Time (Outlier), Users / Applications by Operation type, Visits by Country



## Parser:
```
| json "Properties.NumberOfInfectedFiles", "Category", "ResourceId" as NumberOfInfectedFiles, category, resource_id
```
### Use Cases:
400 and 500 Server Errors, Azure Web Apps - All HTTP Response Codes with their Count, Azure Web Apps - Client Errors (4xx response codes) per Day, Azure Web Apps - HTTP Status Code Summary over time, Azure Web Apps - Malicious URL Requests, Azure Web Apps - Slowest URLs by Average Time, Azure Web Apps - Time Taken to Serve Requests, Azure Web Apps - Top 404 URLs, Azure Web Apps - Top Browsers, Azure Web Apps - Top Clients, Azure Web Apps - Top Clients Causing Errors, Azure Web Apps - Top URLs by Count, Azure Web Apps - Traffic Volume Served per Day, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Errors by Country, OS Platform Breakdown, OS Platform Breakdown by Country, Recent Delete Operations, Recent Write Operations, Response Time and Data Volume, Top 10 operations that caused the most errors, Total Infected Files, Traffic Over Time, Traffic Over Time (Outlier), Users / Applications by Operation type, Visits by Country



## Parser:
```
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid" as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid nodrop
```
### Use Cases:
400 and 500 Server Errors, Azure Web Apps - All HTTP Response Codes with their Count, Azure Web Apps - Client Errors (4xx response codes) per Day, Azure Web Apps - HTTP Status Code Summary over time, Azure Web Apps - Malicious URL Requests, Azure Web Apps - Slowest URLs by Average Time, Azure Web Apps - Time Taken to Serve Requests, Azure Web Apps - Top 404 URLs, Azure Web Apps - Top Browsers, Azure Web Apps - Top Clients, Azure Web Apps - Top Clients Causing Errors, Azure Web Apps - Top URLs by Count, Azure Web Apps - Traffic Volume Served per Day, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Errors by Country, OS Platform Breakdown, OS Platform Breakdown by Country, Recent Delete Operations, Response Time and Data Volume, Top 10 operations that caused the most errors, Traffic Over Time, Traffic Over Time (Outlier), Users / Applications by Operation type, Visits by Country



## Parser:
```
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid", "$['identity']['claims']['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name']","$['identity']['claims']['http://schemas.microsoft.com/claims/authnmethodsreferences']"  as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid, identity_claims_name, authmethods nodrop
```
### Use Cases:
400 and 500 Server Errors, Azure Web Apps - All HTTP Response Codes with their Count, Azure Web Apps - Client Errors (4xx response codes) per Day, Azure Web Apps - HTTP Status Code Summary over time, Azure Web Apps - Malicious URL Requests, Azure Web Apps - Slowest URLs by Average Time, Azure Web Apps - Time Taken to Serve Requests, Azure Web Apps - Top 404 URLs, Azure Web Apps - Top Browsers, Azure Web Apps - Top Clients, Azure Web Apps - Top Clients Causing Errors, Azure Web Apps - Top URLs by Count, Azure Web Apps - Traffic Volume Served per Day, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Errors by Country, OS Platform Breakdown, OS Platform Breakdown by Country, Recent Delete Operations, Recent Write Operations, Response Time and Data Volume, Top 10 operations that caused the most errors, Traffic Over Time, Traffic Over Time (Outlier), Users / Applications by Operation type, Visits by Country



## Parser:
```
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid", "$['identity']['claims']['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name']","$['identity']['claims']['http://schemas.microsoft.com/claims/authnmethodsreferences']", "$['identity']['claims']['http://schemas.microsoft.com/identity/claims/objectidentifier']"  as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid, identity_claims_name, authmethods, objectIdentifier nodrop
```
### Use Cases:
400 and 500 Server Errors, Apps With IP Restrictions Enabled, Azure Web Apps - All HTTP Response Codes with their Count, Azure Web Apps - Client Errors (4xx response codes) per Day, Azure Web Apps - HTTP Status Code Summary over time, Azure Web Apps - Malicious URL Requests, Azure Web Apps - Slowest URLs by Average Time, Azure Web Apps - Time Taken to Serve Requests, Azure Web Apps - Top 404 URLs, Azure Web Apps - Top Browsers, Azure Web Apps - Top Clients, Azure Web Apps - Top Clients Causing Errors, Azure Web Apps - Top URLs by Count, Azure Web Apps - Traffic Volume Served per Day, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Errors by Country, Log Levels Over Time, Media Types Requested Over Time, OS Platform, OS Platform Breakdown, OS Platform Breakdown by Country, OSes and Browsers, Recent Delete Operations, Recent Errors by App Name, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Requests by action, Resource Health by  Status, Response Codes Over Time, Response Time and Data Volume, Scan Status by App Name, Server Errors by Site, Service Health by Incident Type, Start/ Restart Events by Web App, Stop Events by Web App, Top 10 Allowed IPs, Top 10 Denied IPs, Top 10 Denied Reponses, Top 10 Infected FIles Names, Top 10 operations that caused the most errors, Top 10 Recent Scanning Error Messages, Top 10 Slowest Pages by Country, Top 10 URL With Highest Server Bytes Received, Top 10 URL With Highest Server Bytes Sent, Top 10 Web Apps by Infected FIles Count, Top Requested Documents, Top Requested Documents by Country, Total Files Scanned, Total Infected Files, Traffic Over Time, Traffic Over Time (Outlier), Users / Applications by Operation type, Visits by Allowed Source IPs, Visits by Country, Visits by Denied Source IPs, Write and Delete Operations



## Parser:
```
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid", "properties.entity", "$['identity']['claims']['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name']","$['identity']['claims']['http://schemas.microsoft.com/claims/authnmethodsreferences']" as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid, entity, identity_claims_name, authmethods nodrop
```
### Use Cases:
400 and 500 Server Errors, Azure Web Apps - All HTTP Response Codes with their Count, Azure Web Apps - Client Errors (4xx response codes) per Day, Azure Web Apps - HTTP Status Code Summary over time, Azure Web Apps - Malicious URL Requests, Azure Web Apps - Slowest URLs by Average Time, Azure Web Apps - Time Taken to Serve Requests, Azure Web Apps - Top 404 URLs, Azure Web Apps - Top Browsers, Azure Web Apps - Top Clients, Azure Web Apps - Top Clients Causing Errors, Azure Web Apps - Top URLs by Count, Azure Web Apps - Traffic Volume Served per Day, Errors by Country, OS Platform Breakdown, OS Platform Breakdown by Country, Recent Delete Operations, Response Time and Data Volume, Top 10 operations that caused the most errors, Traffic Over Time, Traffic Over Time (Outlier), Visits by Country



## Parser:
```
| json "Properties.TotalFilesScanned", "Category", "ResourceId" as TotalFilesScanned, category, resource_id
```
### Use Cases:
400 and 500 Server Errors, Azure Web Apps - All HTTP Response Codes with their Count, Azure Web Apps - Client Errors (4xx response codes) per Day, Azure Web Apps - HTTP Status Code Summary over time, Azure Web Apps - Malicious URL Requests, Azure Web Apps - Slowest URLs by Average Time, Azure Web Apps - Time Taken to Serve Requests, Azure Web Apps - Top 404 URLs, Azure Web Apps - Top Browsers, Azure Web Apps - Top Clients, Azure Web Apps - Top Clients Causing Errors, Azure Web Apps - Top URLs by Count, Azure Web Apps - Traffic Volume Served per Day, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Errors by Country, OS Platform Breakdown, OS Platform Breakdown by Country, Recent Delete Operations, Recent Write Operations, Response Time and Data Volume, Top 10 operations that caused the most errors, Top 10 Recent Scanning Error Messages, Total Files Scanned, Total Infected Files, Traffic Over Time, Traffic Over Time (Outlier), Users / Applications by Operation type, Visits by Country



## Parser:
```
| json "Properties", "Category", "ResourceId" as properties, category, resource_id
```
### Use Cases:
400 and 500 Server Errors, Azure Web Apps - All HTTP Response Codes with their Count, Azure Web Apps - Client Errors (4xx response codes) per Day, Azure Web Apps - HTTP Status Code Summary over time, Azure Web Apps - Malicious URL Requests, Azure Web Apps - Slowest URLs by Average Time, Azure Web Apps - Time Taken to Serve Requests, Azure Web Apps - Top 404 URLs, Azure Web Apps - Top Browsers, Azure Web Apps - Top Clients, Azure Web Apps - Top Clients Causing Errors, Azure Web Apps - Top URLs by Count, Azure Web Apps - Traffic Volume Served per Day, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Errors by Country, OS Platform Breakdown, OS Platform Breakdown by Country, Recent Delete Operations, Recent Write Operations, Response Time and Data Volume, Scan Status by App Name, Top 10 Infected FIles Names, Top 10 operations that caused the most errors, Top 10 Recent Scanning Error Messages, Total Files Scanned, Total Infected Files, Traffic Over Time, Traffic Over Time (Outlier), Users / Applications by Operation type, Visits by Country



## Parser:
```
| json "properties", "category", "resourceId" as properties, category, resource_id
| parse field=resource_id "*/SITES/*" as _, resource_name
```
### Use Cases:
400 and 500 Server Errors, Apps With IP Restrictions Enabled, Azure Web Apps - All HTTP Response Codes with their Count, Azure Web Apps - Client Errors (4xx response codes) per Day, Azure Web Apps - HTTP Status Code Summary over time, Azure Web Apps - Malicious URL Requests, Azure Web Apps - Slowest URLs by Average Time, Azure Web Apps - Time Taken to Serve Requests, Azure Web Apps - Top 404 URLs, Azure Web Apps - Top Browsers, Azure Web Apps - Top Clients, Azure Web Apps - Top Clients Causing Errors, Azure Web Apps - Top URLs by Count, Azure Web Apps - Traffic Volume Served per Day, Container Killed  Events, Container Started Events, Container Stopped Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Errors by Country, Events by Recommendation Category, Failed Policy Events, High Impact Recommendations, Latest Deployment Version By Site, Log Levels Over Time, Media Types Requested Over Time, Number of Containers Killed, Number of Containers Started, Number of Containers Stopped, OS Platform, OS Platform Breakdown, OS Platform Breakdown by Country, OSes and Browsers, Policy Events by Severity Level, Policy Events With Warning or Error, Recent Delete Operations, Recent Errors by App Name, Recent Failed Policy Events, Recent Policy Events With Warning or Error, Recent Recommendation Events, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Recommendations by Impact, Requests by action, Requests by Hostname - Trend, Resource Health by  Status, Response Codes Over Time, Response Time and Data Volume, Scan Status by App Name, Server Errors by Site, Service Health by Incident Type, Start/ Restart Events by Web App, Stop Events by Web App, Top 10 Allowed IPs, Top 10 containers with errors, Top 10 Denied IPs, Top 10 Denied Reponses, Top 10 Infected FIles Names, Top 10 operations that caused the most errors, Top 10 Recent Scanning Error Messages, Top 10 Slowest Pages by Country, Top 10 URL With Highest Server Bytes Received, Top 10 URL With Highest Server Bytes Sent, Top 10 Web Apps by Infected FIles Count, Top Requested Documents, Top Requested Documents by Country, Total Files Scanned, Total Infected Files, Total Recommendations, Traffic Over Time, Traffic Over Time (Outlier), Users / Applications by Operation type, Visits by Allowed Source IPs, Visits by Country, Visits by Denied Source IPs, Write and Delete Operations



## Parser:
```
| json "Properties", "Category", "ResourceId" as properties, category, resource_id
| parse field=resource_id "*/SITES/*" as _, site_name
```
### Use Cases:
400 and 500 Server Errors, Azure Web Apps - All HTTP Response Codes with their Count, Azure Web Apps - Client Errors (4xx response codes) per Day, Azure Web Apps - HTTP Status Code Summary over time, Azure Web Apps - Malicious URL Requests, Azure Web Apps - Slowest URLs by Average Time, Azure Web Apps - Time Taken to Serve Requests, Azure Web Apps - Top 404 URLs, Azure Web Apps - Top Browsers, Azure Web Apps - Top Clients, Azure Web Apps - Top Clients Causing Errors, Azure Web Apps - Top URLs by Count, Azure Web Apps - Traffic Volume Served per Day, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Errors by Country, OS Platform Breakdown, OS Platform Breakdown by Country, Recent Delete Operations, Recent Write Operations, Response Time and Data Volume, Scan Status by App Name, Top 10 Infected FIles Names, Top 10 operations that caused the most errors, Top 10 Recent Scanning Error Messages, Top 10 Web Apps by Infected FIles Count, Total Files Scanned, Total Infected Files, Traffic Over Time, Traffic Over Time (Outlier), Users / Applications by Operation type, Visits by Country



## Parser:
```
| json "properties", "category", "resourceId" as properties, category, resource_id
| parse field=resource_id "*/SITES/*" as _, site_name
```
### Use Cases:
400 and 500 Server Errors, Apps With IP Restrictions Enabled, Azure Web Apps - All HTTP Response Codes with their Count, Azure Web Apps - Client Errors (4xx response codes) per Day, Azure Web Apps - HTTP Status Code Summary over time, Azure Web Apps - Malicious URL Requests, Azure Web Apps - Slowest URLs by Average Time, Azure Web Apps - Time Taken to Serve Requests, Azure Web Apps - Top 404 URLs, Azure Web Apps - Top Browsers, Azure Web Apps - Top Clients, Azure Web Apps - Top Clients Causing Errors, Azure Web Apps - Top URLs by Count, Azure Web Apps - Traffic Volume Served per Day, Container Killed  Events, Container Started Events, Container Stopped Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Errors by Country, Events by Recommendation Category, Failed Policy Events, High Impact Recommendations, Latest Deployment Version By Site, Log Levels Over Time, Media Types Requested Over Time, Number of Containers Killed, Number of Containers Started, Number of Containers Stopped, OS Platform, OS Platform Breakdown, OS Platform Breakdown by Country, OSes and Browsers, Policy Events by Severity Level, Policy Events With Warning or Error, Recent Delete Operations, Recent Errors by App Name, Recent Failed Policy Events, Recent Policy Events With Warning or Error, Recent Recommendation Events, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Recommendations by Impact, Requests by action, Requests by App, Requests by Hostname - Distribution, Requests by Hostname - Trend, Requests Count by Method, Requests Count by Referer, Requests Count by Username, Resource Health by  Status, Response Codes Over Time, Response Throughput, Response Time and Data Volume, Response Time Histogram, Scan Status by App Name, Server Errors by Site, Service Health by Incident Type, Start/ Restart Events by Web App, Stop Events by Web App, Top 10 Allowed IPs, Top 10 containers with errors, Top 10 Denied IPs, Top 10 Denied Reponses, Top 10 Infected FIles Names, Top 10 operations that caused the most errors, Top 10 Recent Scanning Error Messages, Top 10 Slowest Pages, Top 10 Slowest Pages by Country, Top 10 URL With Highest Server Bytes Received, Top 10 URL With Highest Server Bytes Sent, Top 10 Web Apps by Infected FIles Count, Top Clients IPs, Top Requested Documents, Top Requested Documents by Country, Total Files Scanned, Total Infected Files, Total Recommendations, Traffic Over Time, Traffic Over Time (Outlier), US Visits by State, Users / Applications by Operation type, Visits by Allowed Source IPs, Visits by Country, Visits by Denied Source IPs, Write and Delete Operations



## Parser:
```
| json "properties", "category", "resourceId" as properties, category, resource_id
| parse field=resource_id "*/SITES/*" as _, site_name
| json field = properties  "UserAgent","ScStatus","CsUsername", "SPort", "CsMethod", "CsBytes", "CIp", "CsUriStem", "ScBytes","Referer","CsHost", "Cookie", "TimeTaken" as cs_user_agent, sc_status, src_user, src_port, cs_method, cs_bytes, client_ip, cs_uri_stem, sc_bytes, cs_referrer, cs_host, cs_cookie, time_taken
```
### Use Cases:
400 and 500 Server Errors, Apps With IP Restrictions Enabled, Azure Web Apps - All HTTP Response Codes with their Count, Azure Web Apps - Client Errors (4xx response codes) per Day, Azure Web Apps - HTTP Status Code Summary over time, Azure Web Apps - Malicious URL Requests, Azure Web Apps - Slowest URLs by Average Time, Azure Web Apps - Time Taken to Serve Requests, Azure Web Apps - Top 404 URLs, Azure Web Apps - Top Browsers, Azure Web Apps - Top Clients, Azure Web Apps - Top Clients Causing Errors, Azure Web Apps - Top URLs by Count, Azure Web Apps - Traffic Volume Served per Day, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Errors by Country, Log Levels Over Time, Media Types Requested Over Time, OS Platform, OS Platform Breakdown, OS Platform Breakdown by Country, OSes and Browsers, Recent Delete Operations, Recent Errors by App Name, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Requests by action, Resource Health by  Status, Response Codes Over Time, Response Time and Data Volume, Scan Status by App Name, Server Errors by Site, Service Health by Incident Type, Start/ Restart Events by Web App, Stop Events by Web App, Top 10 Allowed IPs, Top 10 Denied IPs, Top 10 Denied Reponses, Top 10 Infected FIles Names, Top 10 operations that caused the most errors, Top 10 Recent Scanning Error Messages, Top 10 Slowest Pages by Country, Top 10 URL With Highest Server Bytes Received, Top 10 URL With Highest Server Bytes Sent, Top 10 Web Apps by Infected FIles Count, Top Requested Documents, Top Requested Documents by Country, Total Files Scanned, Total Infected Files, Traffic Over Time, Traffic Over Time (Outlier), Users / Applications by Operation type, Visits by Allowed Source IPs, Visits by Country, Visits by Denied Source IPs



## Parser:
```
| json "properties", "category", "resourceId" as properties, category, resource_id
| parse field=resource_id "*/SITES/*" as _, site_name
| parse regex field=cs_uri_stem "/(?<app>[^\./]+)/"
```
### Use Cases:
400 and 500 Server Errors, Apps With IP Restrictions Enabled, Azure Web Apps - All HTTP Response Codes with their Count, Azure Web Apps - Client Errors (4xx response codes) per Day, Azure Web Apps - HTTP Status Code Summary over time, Azure Web Apps - Malicious URL Requests, Azure Web Apps - Slowest URLs by Average Time, Azure Web Apps - Time Taken to Serve Requests, Azure Web Apps - Top 404 URLs, Azure Web Apps - Top Browsers, Azure Web Apps - Top Clients, Azure Web Apps - Top Clients Causing Errors, Azure Web Apps - Top URLs by Count, Azure Web Apps - Traffic Volume Served per Day, Container Killed  Events, Container Started Events, Container Stopped Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Errors by Country, Events by Recommendation Category, Failed Policy Events, High Impact Recommendations, Latest Deployment Version By Site, Log Levels Over Time, Media Types Requested Over Time, Number of Containers Killed, Number of Containers Started, Number of Containers Stopped, OS Platform, OS Platform Breakdown, OS Platform Breakdown by Country, OSes and Browsers, Policy Events by Severity Level, Policy Events With Warning or Error, Recent Delete Operations, Recent Errors by App Name, Recent Failed Policy Events, Recent Policy Events With Warning or Error, Recent Recommendation Events, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Recommendations by Impact, Requests by action, Requests by App, Requests by Hostname - Distribution, Requests by Hostname - Trend, Requests Count by Method, Requests Count by Referer, Requests Count by Username, Resource Health by  Status, Response Codes Over Time, Response Throughput, Response Time and Data Volume, Response Time Histogram, Scan Status by App Name, Server Errors by Site, Service Health by Incident Type, Start/ Restart Events by Web App, Stop Events by Web App, Top 10 Allowed IPs, Top 10 containers with errors, Top 10 Denied IPs, Top 10 Denied Reponses, Top 10 Infected FIles Names, Top 10 operations that caused the most errors, Top 10 Recent Scanning Error Messages, Top 10 Slowest Pages, Top 10 Slowest Pages by Country, Top 10 URL With Highest Server Bytes Received, Top 10 URL With Highest Server Bytes Sent, Top 10 Web Apps by Infected FIles Count, Top Clients IPs, Top Requested Documents, Top Requested Documents by Country, Total Files Scanned, Total Infected Files, Total Recommendations, Traffic Over Time, Traffic Over Time (Outlier), US Visits by State, Users / Applications by Operation type, Visits by Allowed Source IPs, Visits by Country, Visits by Denied Source IPs, Write and Delete Operations



## Parser:
```
| json "properties", "category", "resourceId" as properties, category, resource_id
| parse field=resource_id "*/SITES/*" as _, site_name
| parse regex field=cs_uri_stem "\.(?<media_type>[A-Za-z]+)$" | timeslice 5m
```
### Use Cases:
400 and 500 Server Errors, Azure Web Apps - All HTTP Response Codes with their Count, Azure Web Apps - Client Errors (4xx response codes) per Day, Azure Web Apps - HTTP Status Code Summary over time, Azure Web Apps - Malicious URL Requests, Azure Web Apps - Slowest URLs by Average Time, Azure Web Apps - Time Taken to Serve Requests, Azure Web Apps - Top 404 URLs, Azure Web Apps - Top Browsers, Azure Web Apps - Top Clients, Azure Web Apps - Top Clients Causing Errors, Azure Web Apps - Top URLs by Count, Azure Web Apps - Traffic Volume Served per Day, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Errors by Country, Media Types Requested Over Time, OS Platform Breakdown, OS Platform Breakdown by Country, Recent Delete Operations, Recent Write Operations, Response Time and Data Volume, Scan Status by App Name, Top 10 Infected FIles Names, Top 10 operations that caused the most errors, Top 10 Recent Scanning Error Messages, Top 10 Slowest Pages by Country, Top 10 Web Apps by Infected FIles Count, Total Files Scanned, Total Infected Files, Traffic Over Time, Traffic Over Time (Outlier), Users / Applications by Operation type, Visits by Country



## Parser:
```
| json "properties", "category", "resourceId" as properties, category, resource_id
| parse regex field=properties "message\":\"(?<message>[^\"]+)"
| parse regex field=properties "containerName\":\"(?<containerName>[^\"]+)"
```
### Use Cases:
400 and 500 Server Errors, Apps With IP Restrictions Enabled, Azure Web Apps - All HTTP Response Codes with their Count, Azure Web Apps - Client Errors (4xx response codes) per Day, Azure Web Apps - HTTP Status Code Summary over time, Azure Web Apps - Malicious URL Requests, Azure Web Apps - Slowest URLs by Average Time, Azure Web Apps - Time Taken to Serve Requests, Azure Web Apps - Top 404 URLs, Azure Web Apps - Top Browsers, Azure Web Apps - Top Clients, Azure Web Apps - Top Clients Causing Errors, Azure Web Apps - Top URLs by Count, Azure Web Apps - Traffic Volume Served per Day, Container Killed  Events, Container Started Events, Container Stopped Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Errors by Country, Latest Deployment Version By Site, Log Levels Over Time, Media Types Requested Over Time, Number of Containers Killed, Number of Containers Started, Number of Containers Stopped, OS Platform, OS Platform Breakdown, OS Platform Breakdown by Country, OSes and Browsers, Recent Delete Operations, Recent Errors by App Name, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Requests by action, Resource Health by  Status, Response Codes Over Time, Response Time and Data Volume, Scan Status by App Name, Server Errors by Site, Service Health by Incident Type, Start/ Restart Events by Web App, Stop Events by Web App, Top 10 Allowed IPs, Top 10 Denied IPs, Top 10 Denied Reponses, Top 10 Infected FIles Names, Top 10 operations that caused the most errors, Top 10 Recent Scanning Error Messages, Top 10 Slowest Pages by Country, Top 10 URL With Highest Server Bytes Received, Top 10 URL With Highest Server Bytes Sent, Top 10 Web Apps by Infected FIles Count, Top Requested Documents, Top Requested Documents by Country, Total Files Scanned, Total Infected Files, Traffic Over Time, Traffic Over Time (Outlier), Users / Applications by Operation type, Visits by Allowed Source IPs, Visits by Country, Visits by Denied Source IPs, Write and Delete Operations



## Parser:
```
| json "properties", "category", "resourceId" as properties, category, resource_id nodrop
| parse regex field=properties "message\":\"(?<message>[^\"]+)"
```
### Use Cases:
400 and 500 Server Errors, Apps With IP Restrictions Enabled, Azure Web Apps - All HTTP Response Codes with their Count, Azure Web Apps - Client Errors (4xx response codes) per Day, Azure Web Apps - HTTP Status Code Summary over time, Azure Web Apps - Malicious URL Requests, Azure Web Apps - Slowest URLs by Average Time, Azure Web Apps - Time Taken to Serve Requests, Azure Web Apps - Top 404 URLs, Azure Web Apps - Top Browsers, Azure Web Apps - Top Clients, Azure Web Apps - Top Clients Causing Errors, Azure Web Apps - Top URLs by Count, Azure Web Apps - Traffic Volume Served per Day, Container Killed  Events, Container Started Events, Container Stopped Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Errors by Country, Latest Deployment Version By Site, Log Levels Over Time, Media Types Requested Over Time, Number of Containers Killed, Number of Containers Started, Number of Containers Stopped, OS Platform, OS Platform Breakdown, OS Platform Breakdown by Country, OSes and Browsers, Recent Delete Operations, Recent Errors by App Name, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Requests by action, Resource Health by  Status, Response Codes Over Time, Response Time and Data Volume, Scan Status by App Name, Server Errors by Site, Service Health by Incident Type, Start/ Restart Events by Web App, Stop Events by Web App, Top 10 Allowed IPs, Top 10 containers with errors, Top 10 Denied IPs, Top 10 Denied Reponses, Top 10 Infected FIles Names, Top 10 operations that caused the most errors, Top 10 Recent Scanning Error Messages, Top 10 Slowest Pages by Country, Top 10 URL With Highest Server Bytes Received, Top 10 URL With Highest Server Bytes Sent, Top 10 Web Apps by Infected FIles Count, Top Requested Documents, Top Requested Documents by Country, Total Files Scanned, Total Infected Files, Traffic Over Time, Traffic Over Time (Outlier), Users / Applications by Operation type, Visits by Allowed Source IPs, Visits by Country, Visits by Denied Source IPs, Write and Delete Operations



## Parser:
```
| json "properties", "category", "resourceId", "time" as properties, category, resource_id, time nodrop
| parse regex field=properties "message\":\"(?<message>[^\"]+)"
| parse regex field=properties "containerName\":\"(?<containerName>[^\"]+)"
| parse field=message "Site is running with deployment version: *" as version
```
### Use Cases:
400 and 500 Server Errors, Apps With IP Restrictions Enabled, Azure Web Apps - All HTTP Response Codes with their Count, Azure Web Apps - Client Errors (4xx response codes) per Day, Azure Web Apps - HTTP Status Code Summary over time, Azure Web Apps - Malicious URL Requests, Azure Web Apps - Slowest URLs by Average Time, Azure Web Apps - Time Taken to Serve Requests, Azure Web Apps - Top 404 URLs, Azure Web Apps - Top Browsers, Azure Web Apps - Top Clients, Azure Web Apps - Top Clients Causing Errors, Azure Web Apps - Top URLs by Count, Azure Web Apps - Traffic Volume Served per Day, Container Killed  Events, Container Started Events, Container Stopped Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Errors by Country, Latest Deployment Version By Site, Log Levels Over Time, Media Types Requested Over Time, OS Platform, OS Platform Breakdown, OS Platform Breakdown by Country, OSes and Browsers, Recent Delete Operations, Recent Errors by App Name, Recent Resource Health Incidents, Recent Service Health Incidents, Recent Write Operations, Requests by action, Resource Health by  Status, Response Codes Over Time, Response Time and Data Volume, Scan Status by App Name, Server Errors by Site, Service Health by Incident Type, Start/ Restart Events by Web App, Stop Events by Web App, Top 10 Allowed IPs, Top 10 Denied IPs, Top 10 Denied Reponses, Top 10 Infected FIles Names, Top 10 operations that caused the most errors, Top 10 Recent Scanning Error Messages, Top 10 Slowest Pages by Country, Top 10 URL With Highest Server Bytes Received, Top 10 URL With Highest Server Bytes Sent, Top 10 Web Apps by Infected FIles Count, Top Requested Documents, Top Requested Documents by Country, Total Files Scanned, Total Infected Files, Traffic Over Time, Traffic Over Time (Outlier), Users / Applications by Operation type, Visits by Allowed Source IPs, Visits by Country, Visits by Denied Source IPs, Write and Delete Operations



## Parser:
```
| json "resourceId", "resultDescription" as resourceid, resultDescription nodrop
```
### Use Cases:
400 and 500 Server Errors, Azure Web Apps - All HTTP Response Codes with their Count, Azure Web Apps - Client Errors (4xx response codes) per Day, Azure Web Apps - HTTP Status Code Summary over time, Azure Web Apps - Malicious URL Requests, Azure Web Apps - Slowest URLs by Average Time, Azure Web Apps - Time Taken to Serve Requests, Azure Web Apps - Top 404 URLs, Azure Web Apps - Top Browsers, Azure Web Apps - Top Clients, Azure Web Apps - Top Clients Causing Errors, Azure Web Apps - Top URLs by Count, Azure Web Apps - Traffic Volume Served per Day, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Errors by Country, Log Levels Over Time, Media Types Requested Over Time, OS Platform, OS Platform Breakdown, OS Platform Breakdown by Country, OSes and Browsers, Recent Delete Operations, Recent Errors by App Name, Recent Write Operations, Response Time and Data Volume, Scan Status by App Name, Top 10 Infected FIles Names, Top 10 operations that caused the most errors, Top 10 Recent Scanning Error Messages, Top 10 Slowest Pages by Country, Top 10 Web Apps by Infected FIles Count, Top Requested Documents, Top Requested Documents by Country, Total Files Scanned, Total Infected Files, Traffic Over Time, Traffic Over Time (Outlier), Users / Applications by Operation type, Visits by Country



## Parser:
```
| json "resultDescription", "category", "resourceId" as resultDescription, category, resource_id
```
### Use Cases:
400 and 500 Server Errors, Azure Web Apps - All HTTP Response Codes with their Count, Azure Web Apps - Client Errors (4xx response codes) per Day, Azure Web Apps - HTTP Status Code Summary over time, Azure Web Apps - Malicious URL Requests, Azure Web Apps - Slowest URLs by Average Time, Azure Web Apps - Time Taken to Serve Requests, Azure Web Apps - Top 404 URLs, Azure Web Apps - Top Browsers, Azure Web Apps - Top Clients, Azure Web Apps - Top Clients Causing Errors, Azure Web Apps - Top URLs by Count, Azure Web Apps - Traffic Volume Served per Day, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Errors by Country, Log Levels Over Time, Media Types Requested Over Time, OS Platform, OS Platform Breakdown, OS Platform Breakdown by Country, OSes and Browsers, Recent Delete Operations, Recent Errors by App Name, Recent Resource Health Incidents, Recent Write Operations, Resource Health by  Status, Response Codes Over Time, Response Time and Data Volume, Scan Status by App Name, Server Errors by Site, Service Health by Incident Type, Start/ Restart Events by Web App, Stop Events by Web App, Top 10 Infected FIles Names, Top 10 operations that caused the most errors, Top 10 Recent Scanning Error Messages, Top 10 Slowest Pages by Country, Top 10 Web Apps by Infected FIles Count, Top Requested Documents, Top Requested Documents by Country, Total Files Scanned, Total Infected Files, Traffic Over Time, Traffic Over Time (Outlier), Users / Applications by Operation type, Visits by Country



## Parser:
```
| json "resultDescription", "category", "resourceId", "level" as description, category, resource_id, log_level
```
### Use Cases:
400 and 500 Server Errors, Azure Web Apps - All HTTP Response Codes with their Count, Azure Web Apps - Client Errors (4xx response codes) per Day, Azure Web Apps - HTTP Status Code Summary over time, Azure Web Apps - Malicious URL Requests, Azure Web Apps - Slowest URLs by Average Time, Azure Web Apps - Time Taken to Serve Requests, Azure Web Apps - Top 404 URLs, Azure Web Apps - Top Browsers, Azure Web Apps - Top Clients, Azure Web Apps - Top Clients Causing Errors, Azure Web Apps - Top URLs by Count, Azure Web Apps - Traffic Volume Served per Day, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Errors by Country, Log Levels Over Time, Media Types Requested Over Time, OS Platform, OS Platform Breakdown, OS Platform Breakdown by Country, OSes and Browsers, Recent Delete Operations, Recent Write Operations, Response Time and Data Volume, Scan Status by App Name, Top 10 Infected FIles Names, Top 10 operations that caused the most errors, Top 10 Recent Scanning Error Messages, Top 10 Slowest Pages by Country, Top 10 Web Apps by Infected FIles Count, Top Requested Documents, Top Requested Documents by Country, Total Files Scanned, Total Infected Files, Traffic Over Time, Traffic Over Time (Outlier), Users / Applications by Operation type, Visits by Country



## Parser:
```
| json "resultType", "category", "operationName", "resourceId" as resultType, category, operationName, resourceid
```
### Use Cases:
400 and 500 Server Errors, Azure Web Apps - All HTTP Response Codes with their Count, Azure Web Apps - Client Errors (4xx response codes) per Day, Azure Web Apps - HTTP Status Code Summary over time, Azure Web Apps - Malicious URL Requests, Azure Web Apps - Slowest URLs by Average Time, Azure Web Apps - Time Taken to Serve Requests, Azure Web Apps - Top 404 URLs, Azure Web Apps - Top Browsers, Azure Web Apps - Top Clients, Azure Web Apps - Top Clients Causing Errors, Azure Web Apps - Top URLs by Count, Azure Web Apps - Traffic Volume Served per Day, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Errors by Country, OS Platform Breakdown, OS Platform Breakdown by Country, Recent Delete Operations, Response Time and Data Volume, Top 10 operations that caused the most errors, Traffic Over Time, Traffic Over Time (Outlier), Visits by Country



## Parser:
```
| json "resultType", "operationName", "properties.statusMessage", "category"  as resultType, operationName, failureMessage, category
```
### Use Cases:
400 and 500 Server Errors, Azure Web Apps - All HTTP Response Codes with their Count, Azure Web Apps - Client Errors (4xx response codes) per Day, Azure Web Apps - HTTP Status Code Summary over time, Azure Web Apps - Malicious URL Requests, Azure Web Apps - Slowest URLs by Average Time, Azure Web Apps - Time Taken to Serve Requests, Azure Web Apps - Top 404 URLs, Azure Web Apps - Top Browsers, Azure Web Apps - Top Clients, Azure Web Apps - Top Clients Causing Errors, Azure Web Apps - Top URLs by Count, Azure Web Apps - Traffic Volume Served per Day, Errors by Country, OS Platform Breakdown, OS Platform Breakdown by Country, Response Time and Data Volume, Top 10 operations that caused the most errors, Traffic Over Time, Traffic Over Time (Outlier), Visits by Country


