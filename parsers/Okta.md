# Parsers For Okta

**Okta/Administrative Actions/Application Created**
```
_sourceCategory={{Logsdatasource}}  "application.lifecycle.create"
| json field=_raw "eventType" as event_type
| where event_type matches "application*"
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

**Okta/Administrative Actions/Application Deleted**
```
_sourceCategory={{Logsdatasource}}  "application.lifecycle.delete"
| json field=_raw "eventType" as event_type
| where event_type = "application.lifecycle.delete"
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

**Okta/Administrative Actions/Application Events by Severity**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "eventType" as event_type
| where event_type matches "application*"
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

**Okta/Administrative Actions/Application Events by Severity Over Time**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "eventType" as event_type
| where event_type matches "application*"
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

**Okta/Administrative Actions/Breakdown by Events**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "eventType" as event_type
| where event_type matches "application*"
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

**Okta/Administrative Actions/Connect AD Agent to Okta**
```
_sourceCategory={{Logsdatasource}}  "system.agent.ad.connect"
| json field=_raw "eventType" as event_type
| where event_type = "system.agent.ad.connect"
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

**Okta/Administrative Actions/Deactivated Application**
```
_sourceCategory={{Logsdatasource}}  "application.lifecycle.deactivate"
| json field=_raw "eventType" as event_type
| where event_type matches "application*"
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

**Okta/Administrative Actions/Geolocation of Application Events**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "eventType" as event_type
| where event_type matches "application*"
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

**Okta/Administrative Actions/Okta Admin Access**
```
_sourceCategory={{Logsdatasource}}  "user.session.access_admin_app"
| json field=_raw "eventType" as event_type
| where event_type = "user.session.access_admin_app"
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

**Okta/Administrative Actions/User Create Event**
```
_sourceCategory={{Logsdatasource}}  "user.lifecycle.create"
| json field=_raw "eventType" as event_type
| where event_type = "user.lifecycle.create"
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

**Okta/Application Access/Breakdown By Application**
```
_sourceCategory={{Logsdatasource}}  "user.authentication.sso"
| json field=_raw "eventType" as event_type
| where event_type ="user.authentication.sso"
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

**Okta/Application Access/Failed Application Access by Users**
```
 _sourceCategory={{Logsdatasource}}  "app.generic.unauth_app_access_attempt" 
| json field=_raw "eventType" as event_type
| where event_type = "app.generic.unauth_app_access_attempt"
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

**Okta/Application Access/Failed Application Access by Users over Time**
```
 _sourceCategory={{Logsdatasource}}  "app.generic.unauth_app_access_attempt" 
| json field=_raw "eventType" as event_type
| where event_type = "app.generic.unauth_app_access_attempt"
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

**Okta/Application Access/Geolocation of Application Logins**
```
_sourceCategory={{Logsdatasource}}  "user.authentication.sso"
| json field=_raw "eventType" as event_type
| where event_type ="user.authentication.sso"
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

**Okta/Application Access/Outlier in Failed Application Access by User**
```
 _sourceCategory={{Logsdatasource}}  "app.generic.unauth_app_access_attempt" 
| json field=_raw "eventType" as event_type
| where event_type = "app.generic.unauth_app_access_attempt"
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

**Okta/Application Access/Outlier in Successful Application Access by User**
```
_sourceCategory={{Logsdatasource}}  "user.authentication.sso"
| json field=_raw "eventType" as event_type
| where event_type ="user.authentication.sso"
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

**Okta/Application Access/Successful Application Access Over Time**
```
_sourceCategory={{Logsdatasource}}  "user.authentication.sso"
| json field=_raw "eventType" as event_type
| where event_type ="user.authentication.sso"
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

**Okta/Application Access/Successful Distinct Application Access by User**
```
_sourceCategory={{Logsdatasource}}  "user.authentication.sso"
| json field=_raw "eventType" as event_type
| where event_type ="user.authentication.sso"
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

**Okta/Application Access/Top 10 Active users**
```
_sourceCategory={{Logsdatasource}}  "user.authentication.sso"
| json field=_raw "eventType" as event_type
| where event_type ="user.authentication.sso"
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

**Okta/Application Access/Top 10 Applications**
```
_sourceCategory={{Logsdatasource}}  "user.authentication.sso"
| json field=_raw "eventType" as event_type
| where event_type ="user.authentication.sso"
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

**Okta/Failed Login Activity - New/App Login**
```
 _sourceCategory = Labs/Okta "app.generic.unauth_app_access_attempt" 
| json field=_raw "eventType" as event_type
| where event_type = "app.generic.unauth_app_access_attempt"
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

**Okta/Failed Login Activity - New/Breakdown by Client Device and Browser**
```
_sourceCategory = Labs/Okta "user.session.start"
| json field=_raw "eventType" as event_type
| where event_type = "user.session.start"
| json field=_raw "outcome.result" as outcome_result
| where outcome_result ="FAILURE"
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

**Okta/Failed Login Activity - New/Breakdown by Client OS and Browser**
```
_sourceCategory = Labs/Okta "user.session.start"
| json field=_raw "eventType" as event_type
| where event_type = "user.session.start"
| json field=_raw "outcome.result" as outcome_result
| where outcome_result ="FAILURE"
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

**Okta/Failed Login Activity - New/Geolocation of Logins**
```
_sourceCategory = Labs/Okta "user.session.start"
| json field=_raw "eventType" as event_type
| where event_type = "user.session.start"
| json field=_raw "outcome.result" as outcome_result
| where outcome_result ="FAILURE" 
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

**Okta/Failed Login Activity - New/Login - Outlier**
```
_sourceCategory = Labs/Okta "user.session.start"
| json field=_raw "eventType" as event_type
| where event_type = "user.session.start"
| json field=_raw "outcome.result" as outcome_result
| where outcome_result ="FAILURE"
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

**Okta/Failed Login Activity - New/Login breakdown by Country and State**
```
_sourceCategory = Labs/Okta "user.session.start"
| json field=_raw "eventType" as event_type
| where event_type = "user.session.start"
| json field=_raw "outcome.result" as outcome_result
| where outcome_result ="FAILURE"
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

**Okta/Failed Login Activity - New/Logins Overtime**
```
_sourceCategory = Labs/Okta "user.session.start"
| json field=_raw "eventType" as event_type
| where event_type = "user.session.start"
| json field=_raw "outcome.result" as outcome_result
| where outcome_result ="FAILURE"
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

**Okta/Failed Login Activity - New/Top 10 Users by Login Attempt Count**
```
_sourceCategory = Labs/Okta "user.session.start"
| json field=_raw "eventType" as event_type
| where event_type = "user.session.start"
| json field=_raw "outcome.result" as outcome_result
| where outcome_result ="FAILURE"
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

**Okta/Failed Login Activity/App Login**
```
 _sourceCategory={{Logsdatasource}}  "app.generic.unauth_app_access_attempt" 
| json field=_raw "eventType" as event_type
| where event_type = "app.generic.unauth_app_access_attempt"
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

**Okta/Failed Login Activity/Breakdown by Client Device and Browser**
```
_sourceCategory={{Logsdatasource}}  "user.session.start"
| json field=_raw "eventType" as event_type
| where event_type = "user.session.start"
| json field=_raw "outcome.result" as outcome_result
| where outcome_result ="FAILURE"
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

**Okta/Failed Login Activity/Breakdown by Client OS and Browser**
```
_sourceCategory={{Logsdatasource}}  "user.session.start"
| json field=_raw "eventType" as event_type
| where event_type = "user.session.start"
| json field=_raw "outcome.result" as outcome_result
| where outcome_result ="FAILURE"
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

**Okta/Failed Login Activity/Geolocation of Logins**
```
_sourceCategory={{Logsdatasource}}  "user.session.start"
| json field=_raw "eventType" as event_type
| where event_type = "user.session.start"
| json field=_raw "outcome.result" as outcome_result
| where outcome_result ="FAILURE" 
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

**Okta/Failed Login Activity/Login - Outlier**
```
_sourceCategory={{Logsdatasource}}  "user.session.start"
| json field=_raw "eventType" as event_type
| where event_type = "user.session.start"
| json field=_raw "outcome.result" as outcome_result
| where outcome_result ="FAILURE"
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

**Okta/Failed Login Activity/Login breakdown by Country and State**
```
_sourceCategory={{Logsdatasource}}  "user.session.start"
| json field=_raw "eventType" as event_type
| where event_type = "user.session.start"
| json field=_raw "outcome.result" as outcome_result
| where outcome_result ="FAILURE"
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

**Okta/Failed Login Activity/Logins Overtime**
```
_sourceCategory={{Logsdatasource}}  "user.session.start"
| json field=_raw "eventType" as event_type
| where event_type = "user.session.start"
| json field=_raw "outcome.result" as outcome_result
| where outcome_result ="FAILURE"
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

**Okta/Failed Login Activity/Top 10 Users by Login Attempt Count**
```
_sourceCategory={{Logsdatasource}}  "user.session.start"
| json field=_raw "eventType" as event_type
| where event_type = "user.session.start"
| json field=_raw "outcome.result" as outcome_result
| where outcome_result ="FAILURE"
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

**Okta/Okta Login by User(s) in different countries within 3 hours/Okta Login by User(s) in different countries within 3 hours**
```
_sourceCategory={{Logsdatasource}}  "user.session.start"
| json field=_raw "eventType" as event_type
| where event_type = "user.session.start"
| json field=_raw "outcome.result" as outcome_result
| where outcome_result ="SUCCESS"
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

**Okta/Successful Login Activity - New/App Login**
```
_sourceCategory = Labs/Okta "user.authentication.sso"
| json field=_raw "eventType" as event_type
| where event_type ="user.authentication.sso"
| json field=_raw "outcome.result" as outcome_result
| where outcome_result ="SUCCESS"
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

**Okta/Successful Login Activity - New/Breakdown by Client Device and Browser**
```
_sourceCategory = Labs/Okta "user.session.start"
| json field=_raw "eventType" as event_type
| where event_type = "user.session.start"
| json field=_raw "outcome.result" as outcome_result
| where outcome_result ="SUCCESS"
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

**Okta/Successful Login Activity - New/Breakdown by Client OS and Browser**
```
_sourceCategory = Labs/Okta "user.session.start"
| json field=_raw "eventType" as event_type
| where event_type = "user.session.start"
| json field=_raw "outcome.result" as outcome_result
| where outcome_result ="SUCCESS"
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

**Okta/Successful Login Activity - New/Geolocation of Logins**
```
_sourceCategory = Labs/Okta "user.session.start"
| json field=_raw "eventType" as event_type
| where event_type = "user.session.start"
| json field=_raw "outcome.result" as outcome_result
| where outcome_result ="SUCCESS"
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

**Okta/Successful Login Activity - New/Login - Outlier**
```
_sourceCategory = Labs/Okta "user.session.start"
| json field=_raw "eventType" as event_type
| where event_type = "user.session.start"
| json field=_raw "outcome.result" as outcome_result
| where outcome_result ="SUCCESS"
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

**Okta/Successful Login Activity - New/Login breakdown by Country and State**
```
_sourceCategory = Labs/Okta "user.session.start"
| json field=_raw "eventType" as event_type
| where event_type = "user.session.start"
| json field=_raw "outcome.result" as outcome_result
| where outcome_result ="SUCCESS"
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

**Okta/Successful Login Activity - New/Logins Overtime**
```
_sourceCategory = Labs/Okta "user.session.start"
| json field=_raw "eventType" as event_type
| where event_type = "user.session.start"
| json field=_raw "outcome.result" as outcome_result
| where outcome_result ="SUCCESS"
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

**Okta/Successful Login Activity - New/Top 10 Users by Login Count**
```
_sourceCategory = Labs/Okta "user.session.start"
| json field=_raw "eventType" as event_type
| where event_type = "user.session.start"
| json field=_raw "outcome.result" as outcome_result
| where outcome_result ="SUCCESS"
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

**Okta/Successful Login Activity/App Login**
```
_sourceCategory={{Logsdatasource}}  "user.authentication.sso"
| json field=_raw "eventType" as event_type
| where event_type ="user.authentication.sso"
| json field=_raw "outcome.result" as outcome_result
| where outcome_result ="SUCCESS"
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

**Okta/Successful Login Activity/Breakdown by Client Device and Browser**
```
_sourceCategory={{Logsdatasource}}  "user.session.start"
| json field=_raw "eventType" as event_type
| where event_type = "user.session.start"
| json field=_raw "outcome.result" as outcome_result
| where outcome_result ="SUCCESS"
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

**Okta/Successful Login Activity/Breakdown by Client OS and Browser**
```
_sourceCategory={{Logsdatasource}}  "user.session.start"
| json field=_raw "eventType" as event_type
| where event_type = "user.session.start"
| json field=_raw "outcome.result" as outcome_result
| where outcome_result ="SUCCESS"
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

**Okta/Successful Login Activity/Geolocation of Logins**
```
_sourceCategory={{Logsdatasource}}  "user.session.start"
| json field=_raw "eventType" as event_type
| where event_type = "user.session.start"
| json field=_raw "outcome.result" as outcome_result
| where outcome_result ="SUCCESS"
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

**Okta/Successful Login Activity/Login - Outlier**
```
_sourceCategory={{Logsdatasource}}  "user.session.start"
| json field=_raw "eventType" as event_type
| where event_type = "user.session.start"
| json field=_raw "outcome.result" as outcome_result
| where outcome_result ="SUCCESS"
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

**Okta/Successful Login Activity/Login breakdown by Country and State**
```
_sourceCategory={{Logsdatasource}}  "user.session.start"
| json field=_raw "eventType" as event_type
| where event_type = "user.session.start"
| json field=_raw "outcome.result" as outcome_result
| where outcome_result ="SUCCESS"
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

**Okta/Successful Login Activity/Logins Overtime**
```
_sourceCategory={{Logsdatasource}}  "user.session.start"
| json field=_raw "eventType" as event_type
| where event_type = "user.session.start"
| json field=_raw "outcome.result" as outcome_result
| where outcome_result ="SUCCESS"
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

**Okta/Successful Login Activity/Top 10 Users by Login Count**
```
_sourceCategory={{Logsdatasource}}  "user.session.start"
| json field=_raw "eventType" as event_type
| where event_type = "user.session.start"
| json field=_raw "outcome.result" as outcome_result
| where outcome_result ="SUCCESS"
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

**Okta/User Activity - New/Events by Severity Over Time**
```
_sourceCategory = Labs/Okta 
| json field=_raw "eventType" as event_type
| where event_type matches "user*"
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

**Okta/User Activity - New/Events by User**
```
_sourceCategory = Labs/Okta 
| json field=_raw "eventType" as event_type
| where event_type matches "user*"
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

**Okta/User Activity - New/Geolocation of User Activity**
```
_sourceCategory = Labs/Okta 
| json field=_raw "eventType" as event_type
| where event_type matches "user*"
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

**Okta/User Activity - New/Password Reset Event**
```
_sourceCategory = Labs/Okta "user.account.reset_password"
| json field=_raw "eventType" as event_type
| where event_type = "user.account.reset_password"
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

**Okta/User Activity - New/Password Update Event**
```
_sourceCategory = Labs/Okta "user.account.update_password"
| json field=_raw "eventType" as event_type
| where event_type = "user.account.update_password"
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

**Okta/User Activity - New/Top 10 Active Users**
```
_sourceCategory = Labs/Okta 
| json field=_raw "eventType" as event_type
| where event_type matches "user*"
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

**Okta/User Activity - New/User Account Lock**
```
_sourceCategory = Labs/Okta "user.account.lock"
| json field=_raw "eventType" as event_type
| where event_type = "user.account.lock"
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

**Okta/User Activity - New/User Events Breakdown**
```
_sourceCategory = Labs/Okta 
| json field=_raw "eventType" as event_type
| where event_type matches "user*"
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

**Okta/User Activity - New/User Events by Severity**
```
_sourceCategory = Labs/Okta 
| json field=_raw "eventType" as event_type
| where event_type matches "user*"
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

**Okta/User Activity/Events by Severity Over Time**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "eventType" as event_type
| where event_type matches "user*"
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

**Okta/User Activity/Events by User**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "eventType" as event_type
| where event_type matches "user*"
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

**Okta/User Activity/Geolocation of User Activity**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "eventType" as event_type
| where event_type matches "user*"
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

**Okta/User Activity/Password Reset Event**
```
_sourceCategory={{Logsdatasource}}  "user.account.reset_password"
| json field=_raw "eventType" as event_type
| where event_type = "user.account.reset_password"
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

**Okta/User Activity/Password Update Event**
```
_sourceCategory={{Logsdatasource}}  "user.account.update_password"
| json field=_raw "eventType" as event_type
| where event_type = "user.account.update_password"
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

**Okta/User Activity/Top 10 Active Users**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "eventType" as event_type
| where event_type matches "user*"
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

**Okta/User Activity/User Account Lock**
```
_sourceCategory={{Logsdatasource}}  "user.account.lock"
| json field=_raw "eventType" as event_type
| where event_type = "user.account.lock"
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

**Okta/User Activity/User Events Breakdown**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "eventType" as event_type
| where event_type matches "user*"
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

**Okta/User Activity/User Events by Severity**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "eventType" as event_type
| where event_type matches "user*"
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

**Okta/User Authentication and MFA/MFA Deactivate Event**
```
_sourceCategory={{Logsdatasource}}  "user.mfa.factor.deactivate"
| json field=_raw "eventType" as event_type
| where event_type = "user.mfa.factor.deactivate"
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

**Okta/User Authentication and MFA/User Authentication**
```
_sourceCategory={{Logsdatasource}}  !(user.authentication.auth_via_mfa)
| json field=_raw "eventType" as event_type
| where event_type matches "user.auth*"
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

**Okta/User Authentication and MFA/User Authentication Activity**
```
_sourceCategory={{Logsdatasource}}  "user.authentication.auth_via_AD_agent"
| json field=_raw "eventType" as event_type
| where event_type matches "user.auth*"
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

**Okta/User Authentication and MFA/User Authentication via MFA**
```
_sourceCategory={{Logsdatasource}}  (user.authentication.auth_via_mfa)
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

**Okta/User Authentication and MFA/User MFA Activity**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "eventType" as event_type
| where event_type matches "user.mfa.*"
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

**Okta/User Authentication and MFA/User MFA Events Over Time**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "eventType" as event_type
| where event_type matches "user.mfa*"
| json field=_raw "severity"  as severity
| json field=_raw "actor.displayName" as okta_user_name
| json field=_raw "actor.alternateId" as okta_user_id
```


