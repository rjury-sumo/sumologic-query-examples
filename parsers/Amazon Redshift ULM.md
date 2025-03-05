# Parsers For Amazon Redshift ULM

## Parser:
```
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop | json "requestParameters.clusterIdentifier" as clusterIdentifier1 nodrop | json "responseElements.clusters" as clusters nodrop | parse regex "clusterIdentifier\":\"(?<clusterIdentifier2>[^\"]*)\"" nodrop
 
```
### Use Cases:
90%ile Session Duration by User, Alter User Events, Authentication Failures, Authentication Method Used, Authentication Method Used - Trend, Authentication Status, Authentication Status Trend, Connection Session Stats, Create User Events, Drop User Events, Event Status, Event Status Trend, Event Trend, Events, Events by AccountId, Events by Regions, Events by User, Events by User Agents, Events Trend by Event Name, Failed Event Locations, Failed Events, Recent Failed Event Details, Recent Successful Event Details, Recent User Related Events, Session Duration Stats, SQL Command Execution Trend, SSL Cipher Used, SSL Used, Successful Event Locations, Successful Events, Top Alter Command Execution, Top Applications, Top Cluster Identifiers, Top Create Command Execution, Top Databases, Top Delete Command Execution, Top Drop Command Execution, Top Error Codes, Top Events, Top Grant Command Execution, Top Remote Hosts, Top Revoke Command Execution, Top SQL Commands, Top SQL Statements, Top Successful Events, Top Truncate Command Execution, Top Users, Top Users by Type, Top Vacuum Command Execution, User Type Trend



## Parser:
```
| parse regex "^(?<event>[\w]+[\w\s]*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
 
```
### Use Cases:
90%ile Session Duration by User, Alter User Events, Authentication Failures, Authentication Method Used, Authentication Method Used - Trend, Authentication Status, Authentication Status Trend, Authentication Success, Connection Session Stats, Connection Sessions, Create User Events, Drop User Events, Event Status, Event Status Trend, Event Trend, Events, Events by AccountId, Events by Regions, Events by User, Events by User Agents, Events Trend by Event Name, Failed Event Locations, Failed Events, Recent Failed Event Details, Recent Successful Event Details, Recent User Related Events, Session Duration Stats, SQL Command Execution Trend, SSL Cipher Used, SSL Used, Successful Event Locations, Successful Events, Top Alter Command Execution, Top Applications, Top Cluster Identifiers, Top Create Command Execution, Top Databases, Top Delete Command Execution, Top Drop Command Execution, Top Error Codes, Top Events, Top Grant Command Execution, Top Remote Hosts, Top Revoke Command Execution, Top SQL Commands, Top SQL Statements, Top Successful Events, Top Truncate Command Execution, Top Users, Top Users by Type, Top Vacuum Command Execution, User Type Trend



## Parser:
```
| parse regex "^(?<event>[\w]+[\w\s]*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
| parse regex field = dbname "(?<dbname>[^\s]+)\s*" nodrop
 
```
### Use Cases:
90%ile Session Duration by User, Authentication Failures, Authentication Method Used, Authentication Method Used - Trend, Authentication Status, Authentication Status Trend, Connection Session Stats, Event Trend, Session Duration Stats, SSL Cipher Used, SSL Used, Top Applications, Top Databases, Top Events, Top Remote Hosts, Top Users



## Parser:
```
| parse regex "^(?<event>[\w]+[\w\s\']*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
 
```
### Use Cases:
90%ile Session Duration by User, Alter User Events, Authentication Failures, Authentication Method Used, Authentication Method Used - Trend, Authentication Status, Authentication Status Trend, Authentication Success, Connection Session Stats, Connection Sessions, Create User Events, Drop User Events, Event Status, Event Status Trend, Event Trend, Events, Events by AccountId, Events by Regions, Events by User, Events by User Agents, Events Trend by Event Name, Failed Event Locations, Failed Events, Recent Failed Event Details, Recent Successful Event Details, Recent User Related Events, Session Duration Stats, SQL Command Execution Trend, SSL Cipher Used, SSL Used, Successful Event Locations, Successful Events, Top Alter Command Execution, Top Applications, Top Cluster Identifiers, Top Create Command Execution, Top Databases, Top Delete Command Execution, Top Drop Command Execution, Top Error Codes, Top Events, Top Grant Command Execution, Top Remote Hosts, Top Revoke Command Execution, Top SQL Commands, Top SQL Statements, Top Successful Events, Top Truncate Command Execution, Top Users, Top Users by Type, Top Vacuum Command Execution, User Type Trend



## Parser:
```
| parse regex "^(?<event>[\w]+[\w\s\']*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
| parse regex field = dbname "(?<dbname>[^\s]+)\s*" nodrop
 
```
### Use Cases:
90%ile Session Duration by User, Alter User Events, Authentication Failures, Authentication Method Used, Authentication Method Used - Trend, Authentication Status, Authentication Status Trend, Authentication Success, Connection Session Stats, Connection Sessions, Create User Events, Drop User Events, Event Status, Event Status Trend, Event Trend, Events, Events by AccountId, Events by Regions, Events by User, Events by User Agents, Events Trend by Event Name, Failed Event Locations, Failed Events, Recent Failed Event Details, Recent Successful Event Details, Recent User Related Events, Session Duration Stats, SQL Command Execution Trend, SSL Cipher Used, SSL Used, Successful Event Locations, Successful Events, Top Alter Command Execution, Top Applications, Top Cluster Identifiers, Top Create Command Execution, Top Databases, Top Delete Command Execution, Top Drop Command Execution, Top Error Codes, Top Events, Top Grant Command Execution, Top Remote Hosts, Top Revoke Command Execution, Top SQL Commands, Top SQL Statements, Top Successful Events, Top Truncate Command Execution, Top Users, Top Users by Type, Top Vacuum Command Execution, User Type Trend



## Parser:
```
| parse regex "^\'(?<time>\d+\-\d+\-\d+T\d+:\d+:\d+Z \w+)\s+\[\s*(?<parameters>[^\]]+)\]\'\s+LOG:\s+(?<sqlstatement>[^;]*)"
| parse field=parameters "db=* user=* pid=* userid=* xid=*" as dbName, username, pid, userid, xid nodrop
| parse regex field = sqlstatement "^/\*(?:.|[\r\n])*?\*/\s+(?<command>\w+)\s*" nodrop
| parse regex field = sqlstatement "^(?<command>\w+)\s*" nodrop
 
```
### Use Cases:
90%ile Session Duration by User, Alter User Events, Authentication Failures, Authentication Method Used, Authentication Method Used - Trend, Authentication Status, Authentication Status Trend, Authentication Success, Connection Session Stats, Connection Sessions, Create User Events, Drop User Events, Event Status, Event Status Trend, Event Trend, Events, Events by AccountId, Events by Regions, Events by User, Events by User Agents, Events Trend by Event Name, Failed Event Locations, Failed Events, Recent Failed Event Details, Recent Successful Event Details, Recent User Related Events, Session Duration Stats, SQL Command Execution Trend, SSL Cipher Used, SSL Used, Successful Event Locations, Successful Events, Top Alter Command Execution, Top Applications, Top Cluster Identifiers, Top Create Command Execution, Top Databases, Top Delete Command Execution, Top Drop Command Execution, Top Error Codes, Top Events, Top Grant Command Execution, Top Remote Hosts, Top Revoke Command Execution, Top SQL Commands, Top SQL Statements, Top Successful Events, Top Truncate Command Execution, Top Users, Top Users by Type, Top Vacuum Command Execution, User Type Trend


