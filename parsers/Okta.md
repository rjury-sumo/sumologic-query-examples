# Parsers For Okta

## Parser:
```
| json field=_raw "eventType" as event_type
| json field=_raw "outcome.result" as outcome_result
| json field=_raw "displayMessage" as display_message
| json field=_raw "published"
| json field=_raw "actor.displayName" as okta_user_name
| json field=_raw "actor.alternateId" as okta_user_id
| json field=_raw "actor.type"
| json field=_raw "severity" as severity 
| json field=_raw "client.userAgent.os" as os 
| json field=_raw "client.userAgent.browser" as browser
| json field=_raw "client.device" as device
| json field=_raw "client.ipAddress" as client_ip
| json field=_raw "client.geographicalContext.country" as country
| json field=_raw "client.geographicalContext.state" as state 
| json field=_raw "client.geographicalContext.city" as city
 
```
### Use Cases:
App Login, Application Created, Application Deleted, Application Events by Severity, Breakdown by Client Device and Browser, Breakdown by Client OS and Browser, Connect AD Agent to Okta, Deactivated Application, Events by Severity Over Time, Events by User, Geolocation of Application Events, Geolocation of Logins, Geolocation of User Activity, Login - Outlier, Login breakdown by Country and State, Logins Overtime, Okta Admin Access, Okta Login by User(s) in different countries within 3 hours, Password Reset Event, Password Update Event, Top 10 Active Users, Top 10 Users by Login Attempt Count, Top 10 Users by Login Count, User Account Lock, User Create Event, User Events Breakdown, User Events by Severity



## Parser:
```
| json field=_raw "eventType" as event_type
| json field=_raw "outcome.result" as outcome_result
| json field=_raw "displayMessage" as display_message
| json field=_raw "published" as published_time
| json field=_raw "actor.displayName" as okta_user_name
| json field=_raw "actor.alternateId" as okta_user_id
| json field=_raw "actor.type"
| json field=_raw "severity" as severity 
| json field=_raw "client.userAgent.os" as os 
| json field=_raw "client.userAgent.browser" as browser
| json field=_raw "client.device" as device
| json field=_raw "client.ipAddress" as client_ip
| json field=_raw "client.geographicalContext.city" as city 
| json field=_raw "client.geographicalContext.state" as state
| json field=_raw "client.geographicalContext.country" as country
| json field=_raw "client.geographicalContext.postalCode" as postal_code
 
```
### Use Cases:
App Login, Application Created, Application Deleted, Breakdown by Client Device and Browser, Breakdown by Client OS and Browser, Connect AD Agent to Okta, Events by Severity Over Time, Events by User, Geolocation of Logins, Geolocation of User Activity, Login - Outlier, Login breakdown by Country and State, Logins Overtime, Okta Login by User(s) in different countries within 3 hours, Password Reset Event, Password Update Event, Top 10 Active Users, Top 10 Users by Login Attempt Count, Top 10 Users by Login Count, User Account Lock, User Create Event, User Events Breakdown, User Events by Severity



## Parser:
```
| json field=_raw "eventType" as event_type
| json field=_raw "outcome.result" as outcome_result
| json field=_raw "displayMessage" as display_message
| json field=_raw "published" as published_time
| json field=_raw "actor.displayName" as okta_user_name
| json field=_raw "actor.alternateId" as okta_user_id
| json field=_raw "actor.type"
| json field=_raw "severity" as severity 
| json field=_raw "client.userAgent.os" as os 
| json field=_raw "client.userAgent.browser" as browser
| json field=_raw "client.device" as device 
| json field=_raw "client.ipAddress" as client_ip
| json field=_raw "client.geographicalContext.country" as country
| json field=_raw "client.geographicalContext.state" as state
| json field=_raw "client.geographicalContext.city" as city 
| json field=_raw "target[0].alternateId" as app_name
 
```
### Use Cases:
App Login, Application Created, Application Deleted, Application Events by Severity, Application Events by Severity Over Time, Breakdown by Client Device and Browser, Breakdown by Client OS and Browser, Breakdown by Events, Connect AD Agent to Okta, Deactivated Application, Events by Severity Over Time, Events by User, Failed Application Access by Users, Failed Application Access by Users over Time, Geolocation of Application Events, Geolocation of Application Logins, Geolocation of Logins, Geolocation of User Activity, Login - Outlier, Login breakdown by Country and State, Logins Overtime, Okta Admin Access, Okta Login by User(s) in different countries within 3 hours, Outlier in Failed Application Access by User, Outlier in Successful Application Access by User, Password Reset Event, Password Update Event, Successful Distinct Application Access by User, Top 10 Active users, Top 10 Active Users, Top 10 Applications, Top 10 Users by Login Attempt Count, Top 10 Users by Login Count, User Account Lock, User Create Event, User Events Breakdown, User Events by Severity



## Parser:
```
| json field=_raw "eventType" as event_type
| json field=_raw "outcome.result" as outcome_result
| json field=_raw "displayMessage" as display_message
| json field=_raw "published"as published_time
| json field=_raw "actor.displayName" as okta_user_name
| json field=_raw "actor.alternateId" as okta_user_id
| json field=_raw "actor.type" 
| json field=_raw "severity" as severity 
| json field=_raw "client.userAgent.os" as OS
| json field=_raw "client.userAgent.browser" as browser
| json field=_raw "client.userAgent.rawUserAgent" as user_agent
| json field=_raw "client.device" as device
| json field=_raw "client.ipAddress" as client_ip
| json field=_raw "client.geographicalContext.country" as country 
| json field=_raw "client.geographicalContext.state" as state
| json field=_raw "client.geographicalContext.city" as city 
| json field=_raw "target[0].displayName" as app_name
| json field=_raw "target[0].type" as app_type
 
```
### Use Cases:
App Login, Application Created, Application Deleted, Application Events by Severity, Application Events by Severity Over Time, Breakdown By Application, Breakdown by Client Device and Browser, Breakdown by Client OS and Browser, Breakdown by Events, Connect AD Agent to Okta, Deactivated Application, Events by Severity Over Time, Events by User, Failed Application Access by Users, Failed Application Access by Users over Time, Geolocation of Application Events, Geolocation of Application Logins, Geolocation of Logins, Geolocation of User Activity, Login - Outlier, Login breakdown by Country and State, Logins Overtime, Okta Admin Access, Okta Login by User(s) in different countries within 3 hours, Outlier in Failed Application Access by User, Outlier in Successful Application Access by User, Password Reset Event, Password Update Event, Successful Application Access Over Time, Successful Distinct Application Access by User, Top 10 Active Users, Top 10 Active users, Top 10 Applications, Top 10 Users by Login Attempt Count, Top 10 Users by Login Count, User Account Lock, User Create Event, User Events Breakdown, User Events by Severity



## Parser:
```
| json field=_raw "eventType" as event_type
| json field=_raw "outcome.result" as outcome_result
| json field=_raw "displayMessage" as display_message
| json field=_raw "published"as published_time
| json field=_raw "actor.displayName" as okta_user_name
| json field=_raw "actor.alternateId" as okta_user_id
| json field=_raw "actor.type" 
| json field=_raw "severity" as severity 
| json field=_raw "target[0].displayName" as app_name
| json field=_raw "target[0].type" as app_type
| json field=_raw "client.ipAddress" as client_ip
| json field=_raw "client.geographicalContext.city" as city 
| json field=_raw "client.geographicalContext.state" as state
| json field=_raw "client.geographicalContext.country" as country
| json field=_raw "client.geographicalContext.postalCode" as postal_code
 
```
### Use Cases:
App Login, Application Created, Application Deleted, Application Events by Severity, Breakdown by Client Device and Browser, Breakdown by Client OS and Browser, Connect AD Agent to Okta, Deactivated Application, Events by Severity Over Time, Events by User, Geolocation of Logins, Geolocation of User Activity, Login - Outlier, Login breakdown by Country and State, Logins Overtime, Okta Login by User(s) in different countries within 3 hours, Password Reset Event, Password Update Event, Top 10 Active Users, Top 10 Users by Login Attempt Count, Top 10 Users by Login Count, User Account Lock, User Create Event, User Events Breakdown, User Events by Severity



## Parser:
```
| json field=_raw "eventType" as event_type
| json field=_raw "outcome.result" as outcome_result
| json field=_raw "displayMessage" as display_msg
| json field=_raw "published"as published_time
| json field=_raw "actor.displayName" as okta_user_name
| json field=_raw "actor.alternateId" as okta_user_id
| json field=_raw "actor.type" 
| json field=_raw "severity" as severity 
| json field=_raw "client.device" as device
| json field=_raw "client.ipAddress" as client_ip
 
```
### Use Cases:
App Login, Application Created, Application Deleted, Application Events by Severity, Application Events by Severity Over Time, Breakdown By Application, Breakdown by Client Device and Browser, Breakdown by Client OS and Browser, Breakdown by Events, Connect AD Agent to Okta, Deactivated Application, Events by Severity Over Time, Events by User, Failed Application Access by Users, Failed Application Access by Users over Time, Geolocation of Application Events, Geolocation of Application Logins, Geolocation of Logins, Geolocation of User Activity, Login - Outlier, Login breakdown by Country and State, Logins Overtime, MFA Deactivate Event, Okta Admin Access, Okta Login by User(s) in different countries within 3 hours, Outlier in Failed Application Access by User, Outlier in Successful Application Access by User, Password Reset Event, Password Update Event, Successful Application Access Over Time, Successful Distinct Application Access by User, Top 10 Active Users, Top 10 Active users, Top 10 Applications, Top 10 Users by Login Attempt Count, Top 10 Users by Login Count, User Account Lock, User Authentication, User Authentication Activity, User Create Event, User Events Breakdown, User Events by Severity, User MFA Activity



## Parser:
```
| json field=_raw "eventType" as event_type
| json field=_raw "outcome.result" as outcome_result
| json field=_raw "displayMessage" as display_msg
| json field=_raw "published"as published_time
| json field=_raw "actor.displayName" as okta_user_name
| json field=_raw "actor.alternateId" as okta_user_id
| json field=_raw "actor.type" 
| json field=_raw "severity" as severity 
| json field=_raw "client.userAgent.browser" as browser
| json field=_raw "client.userAgent.rawUserAgent" as user_agent
| json field=_raw "client.device" as device
| json field=_raw "client.ipAddress" as client_ip
| json field=_raw "client.geographicalContext.country" as country 
| json field=_raw "client.geographicalContext.state" as state
| json field=_raw "client.geographicalContext.city" as city
 
```
### Use Cases:
App Login, Application Created, Application Deleted, Application Events by Severity, Application Events by Severity Over Time, Breakdown By Application, Breakdown by Client Device and Browser, Breakdown by Client OS and Browser, Breakdown by Events, Connect AD Agent to Okta, Deactivated Application, Events by Severity Over Time, Events by User, Failed Application Access by Users, Failed Application Access by Users over Time, Geolocation of Application Events, Geolocation of Application Logins, Geolocation of Logins, Geolocation of User Activity, Login - Outlier, Login breakdown by Country and State, Logins Overtime, MFA Deactivate Event, Okta Admin Access, Okta Login by User(s) in different countries within 3 hours, Outlier in Failed Application Access by User, Outlier in Successful Application Access by User, Password Reset Event, Password Update Event, Successful Application Access Over Time, Successful Distinct Application Access by User, Top 10 Active users, Top 10 Active Users, Top 10 Applications, Top 10 Users by Login Attempt Count, Top 10 Users by Login Count, User Account Lock, User Authentication Activity, User Create Event, User Events Breakdown, User Events by Severity



## Parser:
```
| json field=_raw "eventType" as event_type
| json field=_raw "outcome.result" as outcome_result
| json field=_raw "published"
| json field=_raw "actor.displayName" as user_name
| json field=_raw "actor.alternateId" as user_email
| json field=_raw "actor.type"
| json field=_raw "severity"
| json field=_raw "client.userAgent.os" as OS
| json field=_raw "client.userAgent.browser" as browser
| json field=_raw "client.device" as device
| json field=_raw "client.ipAddress" as client_ip
| json field=_raw "client.geographicalContext.country" as country 
| json field=_raw "client.geographicalContext.state" as state
| json field=_raw "client.geographicalContext.city"
 
```
### Use Cases:
App Login, Breakdown by Client Device and Browser, Breakdown by Client OS and Browser, Events by Severity Over Time, Events by User, Geolocation of Logins, Geolocation of User Activity, Login - Outlier, Login breakdown by Country and State, Logins Overtime, Okta Login by User(s) in different countries within 3 hours, Password Reset Event, Password Update Event, Top 10 Active Users, Top 10 Users by Login Attempt Count, Top 10 Users by Login Count, User Account Lock, User Events Breakdown, User Events by Severity



## Parser:
```
| json field=_raw "eventType" as event_type
| json field=_raw "outcome.result" as outcome_result
| json field=_raw "published"
| json field=_raw "displayMessage" as display_message
| json field=_raw "actor.displayName" as actor
| json field=_raw "actor.alternateId" as actor_id
| json field=_raw "actor.type"
| json field=_raw "severity" as severity
| json field=_raw "client.userAgent.os" as OS
| json field=_raw "client.userAgent.browser" as browser
| json field=_raw "client.device" as device
| json field=_raw "client.ipAddress" as client_ip
| json field=_raw "client.geographicalContext.country" as country 
| json field=_raw "client.geographicalContext.state" as state
| json field=_raw "client.geographicalContext.city"
 
```
### Use Cases:
App Login, Application Created, Application Deleted, Application Events by Severity, Application Events by Severity Over Time, Breakdown By Application, Breakdown by Client Device and Browser, Breakdown by Client OS and Browser, Breakdown by Events, Connect AD Agent to Okta, Deactivated Application, Events by Severity Over Time, Events by User, Failed Application Access by Users, Failed Application Access by Users over Time, Geolocation of Application Events, Geolocation of Application Logins, Geolocation of Logins, Geolocation of User Activity, Login - Outlier, Login breakdown by Country and State, Logins Overtime, Okta Admin Access, Okta Login by User(s) in different countries within 3 hours, Outlier in Failed Application Access by User, Outlier in Successful Application Access by User, Password Reset Event, Password Update Event, Successful Application Access Over Time, Successful Distinct Application Access by User, Top 10 Active users, Top 10 Active Users, Top 10 Applications, Top 10 Users by Login Attempt Count, Top 10 Users by Login Count, User Account Lock, User Create Event, User Events Breakdown, User Events by Severity



## Parser:
```
| json field=_raw "eventType" as event_type
| json field=_raw "outcome.result" as outcome_result
| json field=_raw "published" as published_time
| json field=_raw "actor.displayName" as actor
| json field=_raw "actor.alternateId" as actor_id
| json field=_raw "actor.type"
| json field=_raw "severity" as severity
| json field=_raw "client.device" as device
| json field=_raw "client.ipAddress" as client_ip
| json field=_raw "client.geographicalContext.city" as city nodrop
| json field=_raw "client.geographicalContext.state" as state nodrop
| json field=_raw "client.geographicalContext.country" as country nodrop
| json field=_raw "client.geographicalContext.postalCode" as postal_code nodrop
| json field=_raw "target[0].displayName" as okta_user_name
| json field=_raw "target[0].alternateId" as okta_user_id
 
```
### Use Cases:
App Login, Breakdown by Client Device and Browser, Breakdown by Client OS and Browser, Events by Severity Over Time, Events by User, Geolocation of Logins, Geolocation of User Activity, Login - Outlier, Login breakdown by Country and State, Logins Overtime, Okta Login by User(s) in different countries within 3 hours, Password Reset Event, Password Update Event, Top 10 Active Users, Top 10 Users by Login Attempt Count, Top 10 Users by Login Count, User Account Lock, User Create Event, User Events Breakdown, User Events by Severity



## Parser:
```
| json field=_raw "eventType" as event_type
| json field=_raw "outcome.result" as outcome_result
| json field=_raw "published" as published_time
| json field=_raw "actor.displayName" as actor
| json field=_raw "actor.alternateId" as actor_id
| json field=_raw "actor.type"
| json field=_raw "severity" as severity
| json field=_raw "client.userAgent.os" as OS
| json field=_raw "client.userAgent.browser" as browser
| json field=_raw "client.device" as device
| json field=_raw "client.ipAddress" as client_ip
| json field=_raw "client.geographicalContext.country" as country 
| json field=_raw "client.geographicalContext.state" as state
| json field=_raw "client.geographicalContext.city" as city 
| json field=_raw "target[0].displayName" as okta_user_name
| json field=_raw "target[0].alternateId" as okta_user_id
 
```
### Use Cases:
App Login, Application Created, Application Deleted, Application Events by Severity, Application Events by Severity Over Time, Breakdown By Application, Breakdown by Client Device and Browser, Breakdown by Client OS and Browser, Breakdown by Events, Connect AD Agent to Okta, Deactivated Application, Events by Severity Over Time, Events by User, Failed Application Access by Users, Failed Application Access by Users over Time, Geolocation of Application Events, Geolocation of Application Logins, Geolocation of Logins, Geolocation of User Activity, Login - Outlier, Login breakdown by Country and State, Logins Overtime, MFA Deactivate Event, Okta Admin Access, Okta Login by User(s) in different countries within 3 hours, Outlier in Failed Application Access by User, Outlier in Successful Application Access by User, Password Reset Event, Password Update Event, Successful Application Access Over Time, Successful Distinct Application Access by User, Top 10 Active users, Top 10 Active Users, Top 10 Applications, Top 10 Users by Login Attempt Count, Top 10 Users by Login Count, User Account Lock, User Authentication Activity, User Create Event, User Events Breakdown, User Events by Severity, User MFA Activity



## Parser:
```
| json field=_raw "eventType" as event_type
| json field=_raw "outcome.result" as outcome_result
| json field=_raw "published" as published_time
| json field=_raw "actor.displayName" as actor
| json field=_raw "actor.alternateId" as actor_id
| json field=_raw "actor.type"
| json field=_raw "severity" as severity
| json field=_raw "client.userAgent.os" as OS
| json field=_raw "client.userAgent.browser" as browser
| json field=_raw "client.userAgent.rawUserAgent" as user_agent
| json field=_raw "client.device" as device
| json field=_raw "client.ipAddress" as client_ip
| json field=_raw "client.geographicalContext.country" as country 
| json field=_raw "client.geographicalContext.state" as state
| json field=_raw "client.geographicalContext.city" as city 
| json field=_raw "target[0].displayName" as okta_user_name
| json field=_raw "target[0].alternateId" as okta_user_id
 
```
### Use Cases:
App Login, Application Created, Application Deleted, Application Events by Severity, Application Events by Severity Over Time, Breakdown By Application, Breakdown by Client Device and Browser, Breakdown by Client OS and Browser, Breakdown by Events, Connect AD Agent to Okta, Deactivated Application, Events by Severity Over Time, Events by User, Failed Application Access by Users, Failed Application Access by Users over Time, Geolocation of Application Events, Geolocation of Application Logins, Geolocation of Logins, Geolocation of User Activity, Login - Outlier, Login breakdown by Country and State, Logins Overtime, Okta Admin Access, Okta Login by User(s) in different countries within 3 hours, Outlier in Failed Application Access by User, Outlier in Successful Application Access by User, Password Reset Event, Password Update Event, Successful Application Access Over Time, Successful Distinct Application Access by User, Top 10 Active users, Top 10 Active Users, Top 10 Applications, Top 10 Users by Login Attempt Count, Top 10 Users by Login Count, User Account Lock, User Create Event, User Events Breakdown, User Events by Severity



## Parser:
```
| json field=_raw "eventType" as event_type
| json field=_raw "outcome.result" as outcome_result
| json field=_raw "published"as published_time
| json field=_raw "actor.displayName" as okta_user_name
| json field=_raw "actor.alternateId" as okta_user_id
| json field=_raw "actor.type" 
| json field=_raw "severity" as severity 
| json field=_raw "client.userAgent.os" as OS
| json field=_raw "client.userAgent.browser" as browser
| json field=_raw "client.userAgent.rawUserAgent" as user_agent
| json field=_raw "client.device" as device
| json field=_raw "client.ipAddress" as client_ip
| json field=_raw "client.geographicalContext.country" as country 
| json field=_raw "client.geographicalContext.state" as state
| json field=_raw "client.geographicalContext.city" as city
 
```
### Use Cases:
App Login, Application Created, Application Deleted, Application Events by Severity, Application Events by Severity Over Time, Breakdown By Application, Breakdown by Client Device and Browser, Breakdown by Client OS and Browser, Breakdown by Events, Connect AD Agent to Okta, Deactivated Application, Events by Severity Over Time, Events by User, Failed Application Access by Users, Failed Application Access by Users over Time, Geolocation of Application Events, Geolocation of Application Logins, Geolocation of Logins, Geolocation of User Activity, Login - Outlier, Login breakdown by Country and State, Logins Overtime, Okta Admin Access, Okta Login by User(s) in different countries within 3 hours, Outlier in Failed Application Access by User, Outlier in Successful Application Access by User, Password Reset Event, Password Update Event, Successful Application Access Over Time, Successful Distinct Application Access by User, Top 10 Active Users, Top 10 Active users, Top 10 Applications, Top 10 Users by Login Attempt Count, Top 10 Users by Login Count, User Account Lock, User Create Event, User Events Breakdown, User Events by Severity



## Parser:
```
| json field=_raw "eventType" as event_type
| json field=_raw "outcome.result" as outcome_result
| json field=_raw "published"as published_time
| json field=_raw "actor.displayName" as okta_user_name
| json field=_raw "actor.alternateId" as okta_user_id
| json field=_raw "actor.type" 
| json field=_raw "severity" as severity 
| json field=_raw "client.userAgent.os" as OS
| json field=_raw "client.userAgent.browser" as browser
| json field=_raw "client.userAgent.rawUserAgent" as user_agent
| json field=_raw "client.device" as device
| json field=_raw "client.ipAddress" as client_ip
| json field=_raw "client.geographicalContext.country" as country 
| json field=_raw "client.geographicalContext.state" as state
| json field=_raw "client.geographicalContext.city" as city 
 
```
### Use Cases:
App Login, Application Created, Application Deleted, Application Events by Severity, Application Events by Severity Over Time, Breakdown By Application, Breakdown by Client Device and Browser, Breakdown by Client OS and Browser, Breakdown by Events, Connect AD Agent to Okta, Deactivated Application, Events by Severity Over Time, Events by User, Failed Application Access by Users, Failed Application Access by Users over Time, Geolocation of Application Events, Geolocation of Application Logins, Geolocation of Logins, Geolocation of User Activity, Login - Outlier, Login breakdown by Country and State, Logins Overtime, Okta Admin Access, Okta Login by User(s) in different countries within 3 hours, Outlier in Failed Application Access by User, Outlier in Successful Application Access by User, Password Reset Event, Password Update Event, Successful Application Access Over Time, Successful Distinct Application Access by User, Top 10 Active users, Top 10 Active Users, Top 10 Applications, Top 10 Users by Login Attempt Count, Top 10 Users by Login Count, User Account Lock, User Create Event, User Events Breakdown, User Events by Severity



## Parser:
```
| json field=_raw "eventType" as event_type
| json field=_raw "outcome.result" as outcome_result
| json field=_raw "published"as published_time
| json field=_raw "actor.displayName" as okta_user_name
| json field=_raw "actor.alternateId" as okta_user_id
| json field=_raw "actor.type" 
| json field=_raw "severity" as severity 
| json field=_raw "client.userAgent.os" as OS
| json field=_raw "client.userAgent.browser" as browser
| json field=_raw "client.userAgent.rawUserAgent" as user_agent
| json field=_raw "client.device" as device
| json field=_raw "client.ipAddress" as client_ip
| json field=_raw "client.geographicalContext.country" as country 
| json field=_raw "client.geographicalContext.state" as state
| json field=_raw "client.geographicalContext.city" as city 
| json field=_raw "target[0].displayName" as app_name
| json field=_raw "target[0].type" as app_type
| json field=_raw "target[1].alternateId" as app_user_id
| json field=_raw "target[1].displayName" as app_user_name
 
```
### Use Cases:
App Login, Application Created, Application Deleted, Application Events by Severity, Application Events by Severity Over Time, Breakdown By Application, Breakdown by Client Device and Browser, Breakdown by Client OS and Browser, Breakdown by Events, Connect AD Agent to Okta, Deactivated Application, Events by Severity Over Time, Events by User, Failed Application Access by Users, Failed Application Access by Users over Time, Geolocation of Application Events, Geolocation of Application Logins, Geolocation of Logins, Geolocation of User Activity, Login - Outlier, Login breakdown by Country and State, Logins Overtime, Okta Admin Access, Okta Login by User(s) in different countries within 3 hours, Outlier in Failed Application Access by User, Outlier in Successful Application Access by User, Password Reset Event, Password Update Event, Successful Application Access Over Time, Successful Distinct Application Access by User, Top 10 Active users, Top 10 Active Users, Top 10 Applications, Top 10 Users by Login Attempt Count, Top 10 Users by Login Count, User Account Lock, User Create Event, User Events Breakdown, User Events by Severity



## Parser:
```
| json field=_raw "eventType" as event_type
| json field=_raw "outcome.result" as outcome_result
| json field=_raw "published"as published_time
| json field=_raw "actor.displayName" as okta_user_name
| json field=_raw "actor.alternateId" as okta_user_id
| json field=_raw "actor.type" 
| json field=_raw "severity" as severity 
| json field=_raw "target[0].displayName" as app_name
| json field=_raw "target[0].type" as app_type
| json field=_raw "client.ipAddress" as client_ip
| json field=_raw "client.geographicalContext.city" as city 
| json field=_raw "client.geographicalContext.state" as state
| json field=_raw "client.geographicalContext.country" as country
| json field=_raw "client.geographicalContext.postalCode" as postal_code
 
```
### Use Cases:
App Login, Application Created, Application Deleted, Application Events by Severity, Application Events by Severity Over Time, Breakdown by Client Device and Browser, Breakdown by Client OS and Browser, Breakdown by Events, Connect AD Agent to Okta, Deactivated Application, Events by Severity Over Time, Events by User, Geolocation of Application Events, Geolocation of Logins, Geolocation of User Activity, Login - Outlier, Login breakdown by Country and State, Logins Overtime, Okta Admin Access, Okta Login by User(s) in different countries within 3 hours, Password Reset Event, Password Update Event, Top 10 Active Users, Top 10 Users by Login Attempt Count, Top 10 Users by Login Count, User Account Lock, User Create Event, User Events Breakdown, User Events by Severity



## Parser:
```
| json field=_raw "eventType" as event_type
| json field=_raw "outcome.result" as outcome_result
| json field=_raw "published"as published_time
| json field=_raw "actor.displayName" as okta_user_name
| json field=_raw "actor.alternateId" as okta_user_id
| json field=_raw "actor.type" 
| json field=_raw "severity" as severity 
| json field=_raw "target[0].displayName" as app_name
| json field=_raw "target[0].type" as app_type
| json field=_raw "client.ipAddress" as client_ip
| json field=_raw "client.geographicalContext.city" as city 
| json field=_raw "client.geographicalContext.state" as state
| json field=_raw "client.geographicalContext.country" as country
| json field=_raw "client.geographicalContext.postalCode" as postal_code
| json field=_raw "severity"
 
```
### Use Cases:
App Login, Application Created, Application Deleted, Application Events by Severity, Breakdown by Client Device and Browser, Breakdown by Client OS and Browser, Breakdown by Events, Connect AD Agent to Okta, Deactivated Application, Events by Severity Over Time, Events by User, Geolocation of Application Events, Geolocation of Logins, Geolocation of User Activity, Login - Outlier, Login breakdown by Country and State, Logins Overtime, Okta Admin Access, Okta Login by User(s) in different countries within 3 hours, Password Reset Event, Password Update Event, Top 10 Active Users, Top 10 Users by Login Attempt Count, Top 10 Users by Login Count, User Account Lock, User Create Event, User Events Breakdown, User Events by Severity



## Parser:
```
| json field=_raw "eventType" as event_type
| json field=_raw "published"as published_time
| json field=_raw "outcome.result" as outcome_result
| json field=_raw "actor.displayName" as okta_user_name
| json field=_raw "actor.alternateId" as okta_user_id
| json field=_raw "actor.type" 
| json field=_raw "severity" as severity 
| json field=_raw "client.userAgent.os" as OS
| json field=_raw "client.userAgent.browser" as browser
| json field=_raw "client.userAgent.rawUserAgent" as user_agent
| json field=_raw "client.device" as device
| json field=_raw "client.ipAddress" as client_ip
| json field=_raw "client.geographicalContext.country" as country 
| json field=_raw "client.geographicalContext.state" as state
| json field=_raw "client.geographicalContext.city" as city
 
```
### Use Cases:
App Login, Application Created, Application Deleted, Application Events by Severity, Application Events by Severity Over Time, Breakdown By Application, Breakdown by Client Device and Browser, Breakdown by Client OS and Browser, Breakdown by Events, Connect AD Agent to Okta, Deactivated Application, Events by Severity Over Time, Events by User, Failed Application Access by Users, Failed Application Access by Users over Time, Geolocation of Application Events, Geolocation of Application Logins, Geolocation of Logins, Geolocation of User Activity, Login - Outlier, Login breakdown by Country and State, Logins Overtime, Okta Admin Access, Okta Login by User(s) in different countries within 3 hours, Outlier in Failed Application Access by User, Outlier in Successful Application Access by User, Password Reset Event, Password Update Event, Successful Application Access Over Time, Successful Distinct Application Access by User, Top 10 Active Users, Top 10 Active users, Top 10 Applications, Top 10 Users by Login Attempt Count, Top 10 Users by Login Count, User Account Lock, User Create Event, User Events Breakdown, User Events by Severity



## Parser:
```
| json field=_raw "eventType" as event_type
| json field=_raw "severity"  as severity
| json field=_raw "actor.displayName" as okta_user_name
| json field=_raw "actor.alternateId" as okta_user_id
 
```
### Use Cases:
App Login, Application Created, Application Deleted, Application Events by Severity, Application Events by Severity Over Time, Breakdown By Application, Breakdown by Client Device and Browser, Breakdown by Client OS and Browser, Breakdown by Events, Connect AD Agent to Okta, Deactivated Application, Events by Severity Over Time, Events by User, Failed Application Access by Users, Failed Application Access by Users over Time, Geolocation of Application Events, Geolocation of Application Logins, Geolocation of Logins, Geolocation of User Activity, Login - Outlier, Login breakdown by Country and State, Logins Overtime, MFA Deactivate Event, Okta Admin Access, Okta Login by User(s) in different countries within 3 hours, Outlier in Failed Application Access by User, Outlier in Successful Application Access by User, Password Reset Event, Password Update Event, Successful Application Access Over Time, Successful Distinct Application Access by User, Top 10 Active Users, Top 10 Active users, Top 10 Applications, Top 10 Users by Login Attempt Count, Top 10 Users by Login Count, User Account Lock, User Authentication, User Authentication Activity, User Authentication via MFA, User Create Event, User Events Breakdown, User Events by Severity, User MFA Activity, User MFA Events Over Time



## Parser:
```
| json field=_raw "eventType" as event_type
| json field=_raw "severity" as severity 
| json field=_raw "actor.detailEntry.factor" as factor 
| json field=_raw "client.userAgent.rawUserAgent" as user_agent
| json field=_raw "outcome.result" as outcome_result
| json field=_raw "displayMessage" as display_message
| json field=_raw "published" as published_time
| json field=_raw "actor.displayName" as okta_user_name
| json field=_raw "actor.alternateId" as okta_user_id
| json field=_raw "actor.type"
| json field=_raw "severity" as severity 
| json field=_raw "client.userAgent.os" as os 
| json field=_raw "client.userAgent.browser" as browser
| json field=_raw "client.device" as device
| json field=_raw "client.ipAddress" as client_ip
| json field=_raw "client.geographicalContext.country" as country
| json field=_raw "client.geographicalContext.state" as state
| json field=_raw "client.geographicalContext.city" as city
 
```
### Use Cases:
App Login, Application Created, Application Deleted, Application Events by Severity, Application Events by Severity Over Time, Breakdown By Application, Breakdown by Client Device and Browser, Breakdown by Client OS and Browser, Breakdown by Events, Connect AD Agent to Okta, Deactivated Application, Events by Severity Over Time, Events by User, Failed Application Access by Users, Failed Application Access by Users over Time, Geolocation of Application Events, Geolocation of Application Logins, Geolocation of Logins, Geolocation of User Activity, Login - Outlier, Login breakdown by Country and State, Logins Overtime, MFA Deactivate Event, Okta Admin Access, Okta Login by User(s) in different countries within 3 hours, Outlier in Failed Application Access by User, Outlier in Successful Application Access by User, Password Reset Event, Password Update Event, Successful Application Access Over Time, Successful Distinct Application Access by User, Top 10 Active Users, Top 10 Active users, Top 10 Applications, Top 10 Users by Login Attempt Count, Top 10 Users by Login Count, User Account Lock, User Authentication, User Authentication Activity, User Authentication via MFA, User Create Event, User Events Breakdown, User Events by Severity, User MFA Activity


