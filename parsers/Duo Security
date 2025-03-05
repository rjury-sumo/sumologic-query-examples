# Parsers For Duo Security

## Parser:
```
| json field=_raw "eventtype" as eventtype   
```
### Use Cases:
Admin Actions - One Day Time Comparison, Admin Actions Over Time, Admin Activity, Admin Login Error, Authentication by Users - One Day Time Comparison, Authentication by Users Over Time, Breakdown by Action, Breakdown by Application, Breakdown by Country, State, City, Breakdown by Event Type, Breakdown by Factor, Breakdown by Failed Reason, Breakdown by Reason, Event Over Time, Event Type - One Day Time Comparison, Failed Authentications Events Table, Geo Location of Authentication Events, Geo Location of Failed Admin Logins, Geo Location of Success Admin Logins, Outlier - Failed Authentication Events, Outlier - Success Authentication Events, Reason for Failed Authentication, Success Admin Logins, Success Authentication Events Table, Threat Intel Analysis of Admin Events, Threat Intel Analysis of Authentication Events, Top 10 Active Users



## Parser:
```
| json field=_raw "eventtype" as eventtype   
| json field=_raw "action" as action 
| json field=_raw "object" as object 
| json field=_raw "timestamp" as time
| json field=_raw "username" as user_name
| json field=_raw "description" as description
```
### Use Cases:
Admin Actions - One Day Time Comparison, Admin Actions Over Time, Admin Activity, Admin Login Error, Authentication by Users - One Day Time Comparison, Authentication by Users Over Time, Breakdown by Action, Breakdown by Application, Breakdown by Country, State, City, Breakdown by Event Type, Breakdown by Factor, Breakdown by Failed Reason, Breakdown by Reason, Event Over Time, Event Type - One Day Time Comparison, Failed Authentications Events Table, Geo Location of Authentication Events, Geo Location of Failed Admin Logins, Geo Location of Success Admin Logins, Outlier - Failed Authentication Events, Outlier - Success Authentication Events, Reason for Failed Authentication, Success Admin Logins, Success Authentication Events Table, Threat Intel Analysis of Admin Events, Threat Intel Analysis of Authentication Events, Top 10 Active Users



## Parser:
```
| json field=_raw "eventtype" as eventtype   
| json field=_raw "object" as object 
| json field=_raw "timestamp" as time
| json field=_raw "username" as user_name
| json field=_raw "description" as description
| json field=_raw "action" as action
```
### Use Cases:
Admin Actions - One Day Time Comparison, Admin Actions Over Time, Admin Activity, Admin Login Error, Authentication by Users - One Day Time Comparison, Authentication by Users Over Time, Breakdown by Action, Breakdown by Application, Breakdown by Country, State, City, Breakdown by Event Type, Breakdown by Factor, Breakdown by Failed Reason, Breakdown by Reason, Event Over Time, Event Type - One Day Time Comparison, Failed Authentications Events Table, Geo Location of Authentication Events, Geo Location of Failed Admin Logins, Geo Location of Success Admin Logins, Outlier - Failed Authentication Events, Outlier - Success Authentication Events, Reason for Failed Authentication, Success Admin Logins, Success Authentication Events Table, Threat Intel Analysis of Admin Events, Threat Intel Analysis of Authentication Events, Top 10 Active Users



## Parser:
```
| json field=_raw "eventtype" as eventtype nodrop
| json field=_raw "action" as action nodrop
| json field=_raw "timestamp" as time nodrop
| json field=_raw "username" as user_name nodrop
| json field=_raw "description" as description nodrop
| json field=description "factor" as factor nodrop
| json field=description "saml_idp" as saml_idp nodrop
| json field=description "ip_address" as ip_address nodrop
| json field=description "primary_auth_method" as primary_auth_method nodrop
| json field=description "device" as device nodrop
```
### Use Cases:
Admin Actions - One Day Time Comparison, Admin Actions Over Time, Admin Activity, Admin Login Error, Authentication by Users - One Day Time Comparison, Authentication by Users Over Time, Breakdown by Action, Breakdown by Application, Breakdown by Country, State, City, Breakdown by Event Type, Breakdown by Factor, Breakdown by Failed Reason, Breakdown by Reason, Event Over Time, Event Type - One Day Time Comparison, Failed Authentications Events Table, Geo Location of Authentication Events, Geo Location of Failed Admin Logins, Geo Location of Success Admin Logins, Outlier - Failed Authentication Events, Outlier - Success Authentication Events, Reason for Failed Authentication, Success Admin Logins, Success Authentication Events Table, Threat Intel Analysis of Admin Events, Threat Intel Analysis of Authentication Events, Top 10 Active Users



## Parser:
```
| json field=_raw "eventtype" as eventtype nodrop
| json field=_raw "result" as result  nodrop 
| json field=_raw "access_device.ip" as ip  nodrop
| json field=_raw "access_device.location.city" as city  nodrop
| json field=_raw "access_device.location.country" as country  nodrop
| json field=_raw "access_device.location.state" as state  nodrop
| json field=_raw "application.name" as application_name  nodrop
| json field=_raw "factor" as factor  nodrop
| json field=_raw "reason" as reason  nodrop
| json field=_raw "result" as result  nodrop
| json field=_raw "timestamp" as time  nodrop
| json field=_raw "user.name" as user_name  nodrop
```
### Use Cases:
Admin Actions - One Day Time Comparison, Admin Actions Over Time, Admin Activity, Admin Login Error, Authentication by Users - One Day Time Comparison, Authentication by Users Over Time, Breakdown by Action, Breakdown by Application, Breakdown by Country, State, City, Breakdown by Event Type, Breakdown by Factor, Breakdown by Failed Reason, Breakdown by Reason, Event Over Time, Event Type - One Day Time Comparison, Failed Authentications Events Table, Geo Location of Authentication Events, Geo Location of Failed Admin Logins, Geo Location of Success Admin Logins, Outlier - Failed Authentication Events, Outlier - Success Authentication Events, Reason for Failed Authentication, Success Admin Logins, Success Authentication Events Table, Threat Intel Analysis of Admin Events, Threat Intel Analysis of Authentication Events, Top 10 Active Users



## Parser:
```
| json field=_raw "eventtype" as eventtype nodrop  
| json field=_raw "result" as result 
| json field=_raw "access_device.ip" as ip
| json field=_raw "access_device.location.city" as city
| json field=_raw "access_device.location.country" as country
| json field=_raw "access_device.location.state" as state
| json field=_raw "application.name" as application_name
| json field=_raw "factor" as factor
| json field=_raw "reason" as reason
| json field=_raw "result" as result 
| json field=_raw "timestamp" as time
```
### Use Cases:
Admin Actions - One Day Time Comparison, Admin Actions Over Time, Admin Activity, Admin Login Error, Authentication by Users - One Day Time Comparison, Authentication by Users Over Time, Breakdown by Action, Breakdown by Application, Breakdown by Country, State, City, Breakdown by Event Type, Breakdown by Factor, Breakdown by Failed Reason, Breakdown by Reason, Event Over Time, Event Type - One Day Time Comparison, Failed Authentications Events Table, Geo Location of Authentication Events, Geo Location of Failed Admin Logins, Geo Location of Success Admin Logins, Outlier - Failed Authentication Events, Outlier - Success Authentication Events, Reason for Failed Authentication, Success Admin Logins, Success Authentication Events Table, Threat Intel Analysis of Admin Events, Threat Intel Analysis of Authentication Events, Top 10 Active Users



## Parser:
```
| json field=_raw "eventtype" as eventtype nodrop  
| json field=_raw "result" as result 
| json field=_raw "access_device.ip" as ip
| json field=_raw "access_device.location.city" as city
| json field=_raw "access_device.location.country" as country
| json field=_raw "access_device.location.state" as state
| json field=_raw "application.name" as application_name
| json field=_raw "factor" as factor
| json field=_raw "reason" as reason
| json field=_raw "result" as result 
| json field=_raw "timestamp" as time
| json field=_raw "user.name" as user_name
```
### Use Cases:
Admin Actions - One Day Time Comparison, Admin Actions Over Time, Admin Activity, Admin Login Error, Authentication by Users - One Day Time Comparison, Authentication by Users Over Time, Breakdown by Action, Breakdown by Application, Breakdown by Country, State, City, Breakdown by Event Type, Breakdown by Factor, Breakdown by Failed Reason, Breakdown by Reason, Event Over Time, Event Type - One Day Time Comparison, Failed Authentications Events Table, Geo Location of Authentication Events, Geo Location of Failed Admin Logins, Geo Location of Success Admin Logins, Outlier - Failed Authentication Events, Outlier - Success Authentication Events, Reason for Failed Authentication, Success Admin Logins, Success Authentication Events Table, Threat Intel Analysis of Admin Events, Threat Intel Analysis of Authentication Events, Top 10 Active Users



## Parser:
```
| json field=_raw "eventtype" as eventtype nodrop  
| json field=_raw "result" as result nodrop
| json field=_raw "access_device.ip" as ip nodrop
| json field=_raw "access_device.location.city" as city nodrop
| json field=_raw "access_device.location.country" as country nodrop
| json field=_raw "access_device.location.state" as state nodrop
| json field=_raw "application.name" as application_name nodrop
| json field=_raw "factor" as factor nodrop
| json field=_raw "reason" as reason nodrop
| json field=_raw "result" as result nodrop
| json field=_raw "timestamp" as time nodrop
| json field=_raw "user.name" as user_name nodrop
```
### Use Cases:
Admin Actions - One Day Time Comparison, Admin Actions Over Time, Admin Activity, Admin Login Error, Authentication by Users - One Day Time Comparison, Authentication by Users Over Time, Breakdown by Action, Breakdown by Application, Breakdown by Country, State, City, Breakdown by Factor, Breakdown by Failed Reason, Failed Authentications Events Table, Geo Location of Authentication Events, Geo Location of Failed Admin Logins, Geo Location of Success Admin Logins, Success Admin Logins, Threat Intel Analysis of Authentication Events, Top 10 Active Users



## Parser:
```
| json field=_raw "eventtype" as eventtype nodrop  
| json field=_raw "result" as result nodrop
| json field=_raw "access_device.ip" as ip nodrop
| json field=_raw "access_device.location.city" as city nodrop
| json field=_raw "access_device.location.country" as country nodrop
| json field=_raw "access_device.location.state" as state nodrop
| json field=_raw "application.name" as application_name nodrop
| json field=_raw "factor" as factor nodrop
| json field=_raw "reason" as reason nodrop
| json field=_raw "result" as result nodrop
| json field=_raw "timestamp" as time nodrop
| json field=_raw "user.name" as user_name nodrop
| json field=raw "labels[*].name" as label_name nodrop
```
### Use Cases:
Admin Actions - One Day Time Comparison, Admin Actions Over Time, Admin Activity, Admin Login Error, Authentication by Users - One Day Time Comparison, Authentication by Users Over Time, Breakdown by Action, Breakdown by Application, Breakdown by Country, State, City, Breakdown by Event Type, Breakdown by Factor, Breakdown by Failed Reason, Breakdown by Reason, Event Over Time, Event Type - One Day Time Comparison, Failed Authentications Events Table, Geo Location of Authentication Events, Geo Location of Failed Admin Logins, Geo Location of Success Admin Logins, Outlier - Failed Authentication Events, Outlier - Success Authentication Events, Reason for Failed Authentication, Success Admin Logins, Success Authentication Events Table, Threat Intel Analysis of Admin Events, Threat Intel Analysis of Authentication Events, Top 10 Active Users



## Parser:
```
| json field=_raw "eventtype" as eventtype nodrop  
| json field=_raw "result" as result nodrop  
| json field=_raw "access_device.ip" as ip nodrop  
| json field=_raw "access_device.location.city" as city nodrop  
| json field=_raw "access_device.location.country" as country nodrop  
| json field=_raw "access_device.location.state" as state nodrop  
| json field=_raw "application.name" as application_name nodrop  
| json field=_raw "factor" as factor nodrop  
| json field=_raw "reason" as reason nodrop  
| json field=_raw "result" as result  nodrop  
| json field=_raw "timestamp" as time  nodrop  
| json field=_raw "user.name" as user_name nodrop  
```
### Use Cases:
Admin Actions - One Day Time Comparison, Admin Actions Over Time, Admin Activity, Admin Login Error, Authentication by Users - One Day Time Comparison, Authentication by Users Over Time, Breakdown by Action, Breakdown by Application, Breakdown by Country, State, City, Breakdown by Event Type, Breakdown by Factor, Breakdown by Failed Reason, Breakdown by Reason, Event Over Time, Event Type - One Day Time Comparison, Failed Authentications Events Table, Geo Location of Authentication Events, Geo Location of Failed Admin Logins, Geo Location of Success Admin Logins, Outlier - Failed Authentication Events, Outlier - Success Authentication Events, Reason for Failed Authentication, Success Admin Logins, Success Authentication Events Table, Threat Intel Analysis of Admin Events, Threat Intel Analysis of Authentication Events, Top 10 Active Users



## Parser:
```
| json field=_raw "eventtype" as eventtype nodrop   
| json field=_raw "action" as action nodrop
| json field=_raw "object" as object nodrop
| json field=_raw "timestamp" as time nodrop
| json field=_raw "username" as user_name nodrop
| json field=_raw "description" as description nodrop
| json field=description "ip_address" as ip_address nodrop
```
### Use Cases:
Admin Actions - One Day Time Comparison, Admin Actions Over Time, Admin Activity, Admin Login Error, Authentication by Users - One Day Time Comparison, Authentication by Users Over Time, Breakdown by Action, Breakdown by Application, Breakdown by Country, State, City, Breakdown by Factor, Breakdown by Failed Reason, Failed Authentications Events Table, Geo Location of Authentication Events, Geo Location of Failed Admin Logins, Geo Location of Success Admin Logins, Outlier - Failed Authentication Events, Outlier - Success Authentication Events, Success Admin Logins, Threat Intel Analysis of Admin Events, Threat Intel Analysis of Authentication Events, Top 10 Active Users



## Parser:
```
| json field=_raw "eventtype" as eventtype nodrop   
| json field=_raw "action" as action nodrop
| json field=_raw "object" as object nodrop
| json field=_raw "timestamp" as time nodrop
| json field=_raw "username" as user_name nodrop
| json field=_raw "description" as description nodrop
| json field=description "ip_address" as ip_address nodrop
| json field=raw "labels[*].name" as label_name nodrop
```
### Use Cases:
Admin Actions - One Day Time Comparison, Admin Actions Over Time, Admin Activity, Admin Login Error, Authentication by Users - One Day Time Comparison, Authentication by Users Over Time, Breakdown by Action, Breakdown by Application, Breakdown by Country, State, City, Breakdown by Event Type, Breakdown by Factor, Breakdown by Failed Reason, Breakdown by Reason, Event Over Time, Event Type - One Day Time Comparison, Failed Authentications Events Table, Geo Location of Authentication Events, Geo Location of Failed Admin Logins, Geo Location of Success Admin Logins, Outlier - Failed Authentication Events, Outlier - Success Authentication Events, Reason for Failed Authentication, Success Admin Logins, Success Authentication Events Table, Threat Intel Analysis of Admin Events, Threat Intel Analysis of Authentication Events, Top 10 Active Users



## Parser:
```
| json field=_raw "eventtype" as eventtype nodrop   
| json field=_raw "action" as action nodrop
| json field=_raw "timestamp" as time nodrop
| json field=_raw "username" as user_name nodrop
| json field=_raw "description" as description nodrop
| json field=description "error" as error nodrop
| json field=description "email" as email nodrop
| json field=description "ip_address" as ip_address nodrop
```
### Use Cases:
Admin Actions - One Day Time Comparison, Admin Actions Over Time, Admin Activity, Admin Login Error, Authentication by Users - One Day Time Comparison, Authentication by Users Over Time, Breakdown by Action, Breakdown by Application, Breakdown by Country, State, City, Breakdown by Event Type, Breakdown by Factor, Breakdown by Failed Reason, Breakdown by Reason, Event Over Time, Event Type - One Day Time Comparison, Failed Authentications Events Table, Geo Location of Authentication Events, Geo Location of Failed Admin Logins, Geo Location of Success Admin Logins, Outlier - Failed Authentication Events, Outlier - Success Authentication Events, Reason for Failed Authentication, Success Admin Logins, Success Authentication Events Table, Threat Intel Analysis of Admin Events, Threat Intel Analysis of Authentication Events, Top 10 Active Users



## Parser:
```
| json field=_raw "object" as object nodrop
| json field=_raw "eventtype" as eventtype nodrop 
| json field=_raw "action" as action nodrop
| json field=_raw "timestamp" as time nodrop
| json field=_raw "username" as user_name nodrop
| json field=_raw "description" as description nodrop
| json field=description "factor" as factor nodrop
| json field=description "saml_idp" as saml_idp nodrop
| json field=description "ip_address" as ip_address nodrop
| json field=description "primary_auth_method" as primary_auth_method nodrop
| json field=description "device" as device nodrop
```
### Use Cases:
Admin Actions - One Day Time Comparison, Admin Actions Over Time, Admin Activity, Admin Login Error, Authentication by Users - One Day Time Comparison, Authentication by Users Over Time, Breakdown by Action, Breakdown by Application, Breakdown by Country, State, City, Breakdown by Event Type, Breakdown by Factor, Breakdown by Failed Reason, Breakdown by Reason, Event Over Time, Event Type - One Day Time Comparison, Failed Authentications Events Table, Geo Location of Authentication Events, Geo Location of Failed Admin Logins, Geo Location of Success Admin Logins, Outlier - Failed Authentication Events, Outlier - Success Authentication Events, Reason for Failed Authentication, Success Admin Logins, Success Authentication Events Table, Threat Intel Analysis of Admin Events, Threat Intel Analysis of Authentication Events, Top 10 Active Users



## Parser:
```
| json field=_raw "object" as object nodrop
| json field=_raw "eventtype" as eventtype nodrop  
| json field=_raw "action" as action nodrop
| json field=_raw "timestamp" as time nodrop
| json field=_raw "username" as user_name nodrop
| json field=_raw "description" as description nodrop
| json field=description "error" as error nodrop
| json field=description "email" as email nodrop
| json field=description "ip_address" as ip_address nodrop
```
### Use Cases:
Admin Actions - One Day Time Comparison, Admin Actions Over Time, Admin Activity, Admin Login Error, Authentication by Users - One Day Time Comparison, Authentication by Users Over Time, Breakdown by Action, Breakdown by Application, Breakdown by Country, State, City, Breakdown by Event Type, Breakdown by Factor, Breakdown by Failed Reason, Breakdown by Reason, Event Over Time, Event Type - One Day Time Comparison, Failed Authentications Events Table, Geo Location of Authentication Events, Geo Location of Failed Admin Logins, Geo Location of Success Admin Logins, Outlier - Failed Authentication Events, Outlier - Success Authentication Events, Reason for Failed Authentication, Success Admin Logins, Success Authentication Events Table, Threat Intel Analysis of Admin Events, Threat Intel Analysis of Authentication Events, Top 10 Active Users


