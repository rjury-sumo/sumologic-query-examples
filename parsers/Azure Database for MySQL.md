# Parsers For Azure Database for MySQL

## Parser:
```
| JSON "category"
 
```
### Use Cases:
Connections  by Loction, Crash Recovery Attempts Over Time, Disconnection Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Error Details, Error Log Type Over Time, Errors by DB Instance, Errors Count, Log Reduce, Recent Delete Operations, Recent Disconnect Logs, Recent Write Operations, Requests by DB Instance, Requests by Error Code, Requests by Event Type, Server Start and Shutdown Events Over Time, Stopped Servers, Top 10 IPs, Top 10 operations that caused the most errors, Top Errors, Top Users with Excuted Queries, Top Warnings, Total Recommendation Events, Users / Applications by Operation type



## Parser:
```
| json "category" as category
 
```
### Use Cases:
Connections  by Loction, Crash Recovery Attempts Over Time, Disconnection Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Drop Database Statements, Drop Table Statements, Error Details, Error Log Type Over Time, Errors by DB Instance, Errors Count, Excessive  Slow Queries Over Time, Failed Policy Events, Log Reduce, Queries by IP, Recent Delete Operations, Recent Disconnect Logs, Recent Recommendation Events, Recent Write Operations, Requests by DB Instance, Requests by Error Code, Requests by Event Type, Server Start and Shutdown Events Over Time, Slow Queries Over Time, Stopped Servers, Top 10 Excessive Slow Queries by Frequency, Top 10 Hosts Firing Slow Queries, Top 10 IPs, Top 10 operations that caused the most errors, Top 10 Slow Queries by Average Execution Time, Top Errors, Top Users with Excuted Queries, Top Warnings, Total Failed Policy Events, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| JSON "category", "operationName", "resultType", "properties.recommendationName", "properties.recommendationCategory", "properties.recommendationImpact", "properties.recommendationResourceLink" as category, operationName, resultType, recommendationName, recommendationCategory, recommendationImpact, recommendationResourceLink 
| parse field=operationName "*/*/*/*" as provider, category, operation_name, action nodrop
 
```
### Use Cases:
Connections  by Loction, Crash Recovery Attempts Over Time, Disconnection Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Error Details, Error Log Type Over Time, Errors by DB Instance, Errors Count, Failed Policy Events, Log Reduce, Recent Delete Operations, Recent Disconnect Logs, Recent Recommendation Events, Recent Write Operations, Requests by DB Instance, Requests by Error Code, Requests by Event Type, Server Start and Shutdown Events Over Time, Stopped Servers, Top 10 IPs, Top 10 operations that caused the most errors, Top Errors, Top Users with Excuted Queries, Top Warnings, Total Failed Policy Events, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.db" as category, db
 
```
### Use Cases:
Connections  by Loction, Crash Recovery Attempts Over Time, Disconnection Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Error Log Type Over Time, Errors by DB Instance, Errors Count, Log Reduce, Recent Delete Operations, Recent Disconnect Logs, Recent Write Operations, Requests by DB Instance, Requests by Error Code, Server Start and Shutdown Events Over Time, Stopped Servers, Top 10 IPs, Top 10 operations that caused the most errors, Top Errors, Top Warnings, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.db", "properties.event_subclass" as category, db, event_subclass
 
```
### Use Cases:
Connections  by Loction, Crash Recovery Attempts Over Time, Disconnection Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Error Log Type Over Time, Errors by DB Instance, Errors Count, Log Reduce, Recent Delete Operations, Recent Disconnect Logs, Recent Write Operations, Server Start and Shutdown Events Over Time, Stopped Servers, Top 10 IPs, Top 10 operations that caused the most errors, Top Errors, Top Warnings, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.error_code", "properties.event_subclass" as category, error_code, event_subclass
 
```
### Use Cases:
Connections  by Loction, Crash Recovery Attempts Over Time, Disconnection Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Error Log Type Over Time, Errors by DB Instance, Errors Count, Log Reduce, Recent Delete Operations, Recent Disconnect Logs, Recent Write Operations, Requests by Error Code, Server Start and Shutdown Events Over Time, Stopped Servers, Top 10 IPs, Top 10 operations that caused the most errors, Top Errors, Top Warnings, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.event_subclass" as category, event_subclass
 
```
### Use Cases:
Connections  by Loction, Crash Recovery Attempts Over Time, Disconnection Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Error Details, Error Log Type Over Time, Errors by DB Instance, Errors Count, Log Reduce, Recent Delete Operations, Recent Disconnect Logs, Recent Write Operations, Requests by DB Instance, Requests by Error Code, Requests by Event Type, Server Start and Shutdown Events Over Time, Stopped Servers, Top 10 IPs, Top 10 operations that caused the most errors, Top Errors, Top Users with Excuted Queries, Top Warnings, Users / Applications by Operation type



## Parser:
```
| JSON "category", "properties.event_time", "properties.error_code", "properties.ip", "properties.user", "properties.sql_text" as category, event_time, error_code, request_ip, user, sql_text
 
```
### Use Cases:
Connections  by Loction, Crash Recovery Attempts Over Time, Disconnection Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Drop Database Statements, Drop Table Statements, Error Details, Error Log Type Over Time, Errors by DB Instance, Errors Count, Failed Policy Events, Log Reduce, Recent Delete Operations, Recent Disconnect Logs, Recent Recommendation Events, Recent Write Operations, Requests by DB Instance, Requests by Error Code, Requests by Event Type, Server Start and Shutdown Events Over Time, Stopped Servers, Top 10 IPs, Top 10 operations that caused the most errors, Top Errors, Top Users with Excuted Queries, Top Warnings, Total Failed Policy Events, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.host" as category, host
 
```
### Use Cases:
Connections  by Loction, Crash Recovery Attempts Over Time, Disconnection Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Drop Database Statements, Drop Table Statements, Error Details, Error Log Type Over Time, Errors by DB Instance, Errors Count, Excessive  Slow Queries Over Time, Failed Policy Events, Log Reduce, Queries by IP, Recent Delete Operations, Recent Disconnect Logs, Recent Recommendation Events, Recent Write Operations, Requests by DB Instance, Requests by Error Code, Requests by Event Type, Server Start and Shutdown Events Over Time, Stopped Servers, Top 10 Excessive Slow Queries by Frequency, Top 10 Hosts Firing Slow Queries, Top 10 IPs, Top 10 operations that caused the most errors, Top 10 Slow Queries by Average Execution Time, Top Errors, Top Users with Excuted Queries, Top Warnings, Total Failed Policy Events, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.host" as category, host
| parse field=host "*[*] @  [*]" as db_user1, db_user2, request_ip
 
```
### Use Cases:
Connections  by Loction, Crash Recovery Attempts Over Time, Disconnection Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Drop Database Statements, Drop Table Statements, Error Details, Error Log Type Over Time, Errors by DB Instance, Errors Count, Excessive  Slow Queries Over Time, Excessive Slow Queries by Host, Failed Policy Events, Log Reduce, Queries by IP, Recent Delete Operations, Recent Disconnect Logs, Recent Recommendation Events, Recent Write Operations, Requests by DB Instance, Requests by Error Code, Requests by Event Type, Server Start and Shutdown Events Over Time, Slow Queries Over Time, Stopped Servers, Top 10 Excessive Slow Queries by Frequency, Top 10 Hosts Firing Slow Queries, Top 10 IPs, Top 10 IPs Firing Slow Queries, Top 10 operations that caused the most errors, Top 10 Slow Queries by Average Execution Time, Top 10 Users Firing Slow Queries, Top Errors, Top Users with Excuted Queries, Top Warnings, Total Failed Policy Events, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.host", "properties.query_time" as category, host, query_time
 
```
### Use Cases:
Connections  by Loction, Crash Recovery Attempts Over Time, Disconnection Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Drop Database Statements, Drop Table Statements, Error Details, Error Log Type Over Time, Errors by DB Instance, Errors Count, Excessive  Slow Queries Over Time, Excessive Slow Queries by Host, Failed Policy Events, Log Reduce, Queries by IP, Recent Delete Operations, Recent Disconnect Logs, Recent Recommendation Events, Recent Write Operations, Requests by DB Instance, Requests by Error Code, Requests by Event Type, Server Start and Shutdown Events Over Time, Slow Queries Over Time, Stopped Servers, Top 10 Excessive Slow Queries by Frequency, Top 10 Hosts Firing Slow Queries, Top 10 IPs, Top 10 operations that caused the most errors, Top 10 Slow Queries by Average Execution Time, Top Errors, Top Users with Excuted Queries, Top Warnings, Total Failed Policy Events, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.ip" as category, IP
 
```
### Use Cases:
Connections  by Loction, Crash Recovery Attempts Over Time, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Error Log Type Over Time, Errors Count, Log Reduce, Recent Delete Operations, Recent Disconnect Logs, Recent Write Operations, Server Start and Shutdown Events Over Time, Stopped Servers, Top 10 IPs, Top 10 operations that caused the most errors, Top Errors, Top Warnings, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.ip", "properties.event_class" as category, request_ip, event_class
 
```
### Use Cases:
Connections  by Loction, Crash Recovery Attempts Over Time, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Error Log Type Over Time, Errors Count, Log Reduce, Recent Delete Operations, Recent Disconnect Logs, Recent Write Operations, Server Start and Shutdown Events Over Time, Stopped Servers, Top 10 operations that caused the most errors, Top Errors, Top Warnings, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.ip", "properties.sql_text", "properties.event_class" as category, request_ip, sql_text, event_class
 
```
### Use Cases:
Connections  by Loction, Crash Recovery Attempts Over Time, Disconnection Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Drop Database Statements, Drop Table Statements, Error Details, Error Log Type Over Time, Errors by DB Instance, Errors Count, Failed Policy Events, Log Reduce, Queries by IP, Recent Delete Operations, Recent Disconnect Logs, Recent Recommendation Events, Recent Write Operations, Requests by DB Instance, Requests by Error Code, Requests by Event Type, Server Start and Shutdown Events Over Time, Stopped Servers, Top 10 IPs, Top 10 operations that caused the most errors, Top Errors, Top Users with Excuted Queries, Top Warnings, Total Failed Policy Events, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.ip", "properties.user", "properties.db", "properties.host", "properties.event_subclass" as category, request_ip, request_user, request_db, host, event_subclass
 
```
### Use Cases:
Crash Recovery Attempts Over Time, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Error Log Type Over Time, Errors Count, Log Reduce, Recent Delete Operations, Recent Disconnect Logs, Recent Write Operations, Server Start and Shutdown Events Over Time, Stopped Servers, Top 10 operations that caused the most errors, Top Errors, Top Warnings, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.query_time" as category, query_time
 
```
### Use Cases:
Connections  by Loction, Crash Recovery Attempts Over Time, Disconnection Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Drop Database Statements, Drop Table Statements, Error Details, Error Log Type Over Time, Errors by DB Instance, Errors Count, Excessive  Slow Queries Over Time, Failed Policy Events, Log Reduce, Queries by IP, Recent Delete Operations, Recent Disconnect Logs, Recent Recommendation Events, Recent Write Operations, Requests by DB Instance, Requests by Error Code, Requests by Event Type, Server Start and Shutdown Events Over Time, Stopped Servers, Top 10 Excessive Slow Queries by Frequency, Top 10 IPs, Top 10 operations that caused the most errors, Top 10 Slow Queries by Average Execution Time, Top Errors, Top Users with Excuted Queries, Top Warnings, Total Failed Policy Events, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.query_time", "properties.sql_text" as category, query_time, sql_text
 
```
### Use Cases:
Connections  by Loction, Crash Recovery Attempts Over Time, Disconnection Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Drop Database Statements, Drop Table Statements, Error Details, Error Log Type Over Time, Errors by DB Instance, Errors Count, Failed Policy Events, Log Reduce, Queries by IP, Recent Delete Operations, Recent Disconnect Logs, Recent Recommendation Events, Recent Write Operations, Requests by DB Instance, Requests by Error Code, Requests by Event Type, Server Start and Shutdown Events Over Time, Stopped Servers, Top 10 Excessive Slow Queries by Frequency, Top 10 IPs, Top 10 operations that caused the most errors, Top 10 Slow Queries by Average Execution Time, Top Errors, Top Users with Excuted Queries, Top Warnings, Total Failed Policy Events, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.user", "properties.sql_text" as category, request_user, sql_text
 
```
### Use Cases:
Connections  by Loction, Crash Recovery Attempts Over Time, Disconnection Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Error Details, Error Log Type Over Time, Errors by DB Instance, Errors Count, Log Reduce, Recent Delete Operations, Recent Disconnect Logs, Recent Write Operations, Requests by DB Instance, Requests by Error Code, Server Start and Shutdown Events Over Time, Stopped Servers, Top 10 IPs, Top 10 operations that caused the most errors, Top Errors, Top Users with Excuted Queries, Top Warnings, Users / Applications by Operation type



## Parser:
```
| JSON "category", "resultType" as category, resultType
 
```
### Use Cases:
Connections  by Loction, Crash Recovery Attempts Over Time, Disconnection Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Error Details, Error Log Type Over Time, Errors by DB Instance, Errors Count, Failed Policy Events, Log Reduce, Recent Delete Operations, Recent Disconnect Logs, Recent Recommendation Events, Recent Write Operations, Requests by DB Instance, Requests by Error Code, Requests by Event Type, Server Start and Shutdown Events Over Time, Stopped Servers, Top 10 IPs, Top 10 operations that caused the most errors, Top Errors, Top Users with Excuted Queries, Top Warnings, Total Failed Policy Events, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| JSON "category", "resultType", "properties.message", "properties.resourceLocation", "properties.entity", "properties.policies" as category, resultType, message, resourceLocation, entity, policies
 
```
### Use Cases:
Connections  by Loction, Crash Recovery Attempts Over Time, Disconnection Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Error Details, Error Log Type Over Time, Errors by DB Instance, Errors Count, Failed Policy Events, Log Reduce, Recent Delete Operations, Recent Disconnect Logs, Recent Write Operations, Requests by DB Instance, Requests by Error Code, Requests by Event Type, Server Start and Shutdown Events Over Time, Stopped Servers, Top 10 IPs, Top 10 operations that caused the most errors, Top Errors, Top Users with Excuted Queries, Top Warnings, Total Failed Policy Events, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| JSON "category", "resultType", "properties.message", "properties.resourceLocation", "properties.entity", "properties.policies" as category, resultType, message, resourceLocation, entity, policies
| parse field=entity "/subscriptions/*/resourceGroups/*/providers/*/*/*" as subscription_id, resource_group, providers, virtualMachineScaleSets, aks nodrop
 
```
### Use Cases:
Connections  by Loction, Crash Recovery Attempts Over Time, Disconnection Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Error Details, Error Log Type Over Time, Errors by DB Instance, Errors Count, Log Reduce, Recent Delete Operations, Recent Disconnect Logs, Recent Write Operations, Requests by DB Instance, Requests by Error Code, Requests by Event Type, Server Start and Shutdown Events Over Time, Stopped Servers, Top 10 IPs, Top 10 operations that caused the most errors, Top Errors, Top Users with Excuted Queries, Top Warnings, Total Recommendation Events, Total Success Policy Events, Users / Applications by Operation type



## Parser:
```
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
 
```
### Use Cases:
Log Reduce



## Parser:
```
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)"
 
```
### Use Cases:
Crash Recovery Attempts Over Time, Errors Count, Log Reduce, Server Start and Shutdown Events Over Time, Stopped Servers



## Parser:
```
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)"
| parse field=ErrorMsg "[*] [*] *" as err_code, subsystem, error_message nodrop
 
```
### Use Cases:
Crash Recovery Attempts Over Time, Error Log Type Over Time, Errors Count, Log Reduce, Server Start and Shutdown Events Over Time, Stopped Servers, Top Errors, Top Warnings



## Parser:
```
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)"
| parse field=ErrorMsg "[*] [*] *" as err_code, subsystem, ErrorMessage nodrop
 
```
### Use Cases:
Crash Recovery Attempts Over Time, Errors Count, Log Reduce, Server Start and Shutdown Events Over Time, Stopped Servers, Top Warnings



## Parser:
```
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "\[(?<ErrorLogtype>[^\]]*)][\:]*\s(?<ErrorMsg>.*)" nodrop
 
```
### Use Cases:
Crash Recovery Attempts Over Time, Error Log Type Over Time, Errors Count, Log Reduce, Server Start and Shutdown Events Over Time, Stopped Servers, Top Warnings



## Parser:
```
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid" as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid nodrop
 
```
### Use Cases:
Crash Recovery Attempts Over Time, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Error Log Type Over Time, Errors Count, Log Reduce, Recent Delete Operations, Server Start and Shutdown Events Over Time, Stopped Servers, Top 10 operations that caused the most errors, Top Errors, Top Warnings, Users / Applications by Operation type



## Parser:
```
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid", "$['identity']['claims']['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name']","$['identity']['claims']['http://schemas.microsoft.com/claims/authnmethodsreferences']"  as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid, identity_claims_name, authmethods nodrop
 
```
### Use Cases:
Crash Recovery Attempts Over Time, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Error Log Type Over Time, Errors Count, Log Reduce, Recent Delete Operations, Recent Write Operations, Server Start and Shutdown Events Over Time, Stopped Servers, Top 10 operations that caused the most errors, Top Errors, Top Warnings, Users / Applications by Operation type



## Parser:
```
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid", "properties.entity", "$['identity']['claims']['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name']","$['identity']['claims']['http://schemas.microsoft.com/claims/authnmethodsreferences']" as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid, entity, identity_claims_name, authmethods nodrop
 
```
### Use Cases:
Crash Recovery Attempts Over Time, Error Log Type Over Time, Errors Count, Log Reduce, Recent Delete Operations, Server Start and Shutdown Events Over Time, Stopped Servers, Top 10 operations that caused the most errors, Top Errors, Top Warnings



## Parser:
```
| json "resultType", "category" as resultType, category
 
```
### Use Cases:
Crash Recovery Attempts Over Time, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Error Log Type Over Time, Errors Count, Log Reduce, Recent Delete Operations, Server Start and Shutdown Events Over Time, Stopped Servers, Top 10 operations that caused the most errors, Top Errors, Top Warnings, Users / Applications by Operation type



## Parser:
```
| json "resultType", "category", "operationName", "resourceId" as resultType, category, operationName, resourceid
 
```
### Use Cases:
Crash Recovery Attempts Over Time, Distribution  by Operation Type (Read, Write and Delete), Error Log Type Over Time, Errors Count, Log Reduce, Recent Delete Operations, Server Start and Shutdown Events Over Time, Stopped Servers, Top 10 operations that caused the most errors, Top Errors, Top Warnings



## Parser:
```
| json "resultType", "category", "operationName", "resourceId" as resultType, category, operationName, resourceid
| parse field=operationName "*/*/*" as provider_name, resource_type, operation_name
 
```
### Use Cases:
Crash Recovery Attempts Over Time, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Error Log Type Over Time, Errors Count, Log Reduce, Recent Delete Operations, Server Start and Shutdown Events Over Time, Stopped Servers, Top 10 operations that caused the most errors, Top Errors, Top Warnings



## Parser:
```
| json "resultType", "operationName", "properties.statusMessage", "category"  as resultType, operationName, failureMessage, category nodrop
| parse field=operationname "*/*/*" as provider_name, resource_type, operation nodrop
 
```
### Use Cases:
Crash Recovery Attempts Over Time, Error Log Type Over Time, Errors Count, Log Reduce, Server Start and Shutdown Events Over Time, Stopped Servers, Top 10 operations that caused the most errors, Top Errors, Top Warnings



## Parser:
```
| json "time", "category", "properties.event_class", "properties.replication_set_role", "properties.event_subclass", "properties.user", "properties.db", "properties.is_aad_auth", "properties.error_code" as time, category,
 
```
### Use Cases:
Connections  by Loction, Crash Recovery Attempts Over Time, Disconnection Events, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Error Details, Error Log Type Over Time, Errors by DB Instance, Errors Count, Log Reduce, Recent Delete Operations, Recent Disconnect Logs, Recent Write Operations, Requests by DB Instance, Requests by Error Code, Server Start and Shutdown Events Over Time, Stopped Servers, Top 10 IPs, Top 10 operations that caused the most errors, Top Errors, Top Warnings, Users / Applications by Operation type


