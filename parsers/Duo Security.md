# Parsers For Duo Security

**Duo Security/Administrator Events/Admin Actions - One Day Time Comparison**
```
_sourceCategory={{Logsdatasource}}  administrator  
| json field=_raw "eventtype" as eventtype   
| where eventtype = "administrator" 
| json field=_raw "action" as action 
| json field=_raw "object" as object 
| json field=_raw "timestamp" as time
| time* 1000 as timemilli
| formatDate(fromMillis(toLong(timemilli)), "MM-dd-yyyy HH:mm:ss") as date_time
| json field=_raw "username" as user_name
| json field=_raw "description" as description
```

**Duo Security/Administrator Events/Admin Actions Over Time**
```
_sourceCategory={{Logsdatasource}}  administrator  
| json field=_raw "eventtype" as eventtype   
| where eventtype = "administrator" 
| json field=_raw "object" as object 
| json field=_raw "timestamp" as time
| time* 1000 as timemilli
| formatDate(fromMillis(toLong(timemilli)), "MM-dd-yyyy HH:mm:ss") as date_time
| json field=_raw "username" as user_name
| json field=_raw "description" as description
| json field=_raw "action" as action
```

**Duo Security/Administrator Events/Admin Activity**
```
_sourceCategory={{Logsdatasource}}  administrator  
| json field=_raw "eventtype" as eventtype   
| where eventtype = "administrator" 
| json field=_raw "object" as object 
| json field=_raw "timestamp" as time
| time* 1000 as timemilli
| formatDate(fromMillis(toLong(timemilli)), "MM-dd-yyyy HH:mm:ss") as date_time
| json field=_raw "username" as user_name
| json field=_raw "description" as description
| json field=_raw "action" as action
```

**Duo Security/Administrator Events/Admin Login Error**
```
_sourceCategory={{Logsdatasource}}  administrator  "admin_login_error"
| json field=_raw "eventtype" as eventtype nodrop   
| where eventtype = "administrator" 
| json field=_raw "action" as action nodrop
| where action = "admin_login_error"
| json field=_raw "timestamp" as time nodrop
| time* 1000 as timemilli
| formatDate(fromMillis(toLong(timemilli)), "MM-dd-yyyy HH:mm:ss") as date_time
| json field=_raw "username" as user_name nodrop
| json field=_raw "description" as description nodrop
| json field=description "error" as error nodrop
| json field=description "email" as email nodrop
| json field=description "ip_address" as ip_address nodrop
```

**Duo Security/Administrator Events/Breakdown by Action**
```
_sourceCategory={{Logsdatasource}}  administrator  
| json field=_raw "eventtype" as eventtype   
| where eventtype = "administrator" 
| json field=_raw "object" as object 
| json field=_raw "timestamp" as time
| time* 1000 as timemilli
| formatDate(fromMillis(toLong(timemilli)), "MM-dd-yyyy HH:mm:ss") as date_time
| json field=_raw "username" as user_name
| json field=_raw "description" as description
| json field=_raw "action" as action
```

**Duo Security/Administrator Events/Geo Location of Failed Admin Logins**
```
_sourceCategory={{Logsdatasource}}  administrator  "admin_login_error"
| json field=_raw "object" as object nodrop
| json field=_raw "eventtype" as eventtype nodrop  
| where eventtype = "administrator" 
| json field=_raw "action" as action nodrop
| where action = "admin_login_error"
| json field=_raw "timestamp" as time nodrop
| time* 1000 as timemilli
| formatDate(fromMillis(toLong(timemilli)), "MM-dd-yyyy HH:mm:ss") as date_time
| json field=_raw "username" as user_name nodrop
| json field=_raw "description" as description nodrop
| json field=description "error" as error nodrop
| json field=description "email" as email nodrop
| json field=description "ip_address" as ip_address nodrop
```

**Duo Security/Administrator Events/Geo Location of Success Admin Logins**
```
_sourceCategory={{Logsdatasource}}  administrator  admin_login
| json field=_raw "object" as object nodrop
| json field=_raw "eventtype" as eventtype nodrop 
| where eventtype = "administrator" 
| json field=_raw "action" as action nodrop
| json field=_raw "timestamp" as time nodrop
| time* 1000 as timemilli
| formatDate(fromMillis(toLong(timemilli)), "MM-dd-yyyy HH:mm:ss") as date_time
| json field=_raw "username" as user_name nodrop
| json field=_raw "description" as description nodrop
| where action = "admin_login"
| json field=description "factor" as factor nodrop
| json field=description "saml_idp" as saml_idp nodrop
| json field=description "ip_address" as ip_address nodrop
| json field=description "primary_auth_method" as primary_auth_method nodrop
| json field=description "device" as device nodrop
```

**Duo Security/Administrator Events/Success Admin Logins**
```
_sourceCategory={{Logsdatasource}}  administrator  admin_login
| json field=_raw "eventtype" as eventtype nodrop
| where eventtype = "administrator" 
| json field=_raw "action" as action nodrop
| json field=_raw "timestamp" as time nodrop
| time* 1000 as timemilli
| formatDate(fromMillis(toLong(timemilli)), "MM-dd-yyyy HH:mm:ss") as date_time
| json field=_raw "username" as user_name nodrop
| json field=_raw "description" as description nodrop
| where action = "admin_login"
| json field=description "factor" as factor nodrop
| json field=description "saml_idp" as saml_idp nodrop
| json field=description "ip_address" as ip_address nodrop
| json field=description "primary_auth_method" as primary_auth_method nodrop
| json field=description "device" as device nodrop
```

**Duo Security/Failed Authentications/Authentication by Users - One Day Time Comparison**
```
_sourceCategory={{Logsdatasource}}  authentication denied
| json field=_raw "eventtype" as eventtype nodrop  
| where eventtype = "authentication"
| json field=_raw "result" as result 
| where result !="success" 
| json field=_raw "access_device.ip" as ip
| json field=_raw "access_device.location.city" as city
| json field=_raw "access_device.location.country" as country
| json field=_raw "access_device.location.state" as state
| json field=_raw "application.name" as application_name
| json field=_raw "factor" as factor
| json field=_raw "reason" as reason
| json field=_raw "result" as result 
| json field=_raw "timestamp" as time
| time* 1000 as timemilli
| formatDate(fromMillis(toLong(timemilli)), "MM-dd-yyyy HH:mm:ss") as date_time
| json field=_raw "user.name" as user_name
```

**Duo Security/Failed Authentications/Authentication by Users Over Time**
```
_sourceCategory={{Logsdatasource}}  authentication denied
| json field=_raw "eventtype" as eventtype nodrop  
| where eventtype = "authentication"
| json field=_raw "result" as result 
| where result !="success" 
| json field=_raw "access_device.ip" as ip
| json field=_raw "access_device.location.city" as city
| json field=_raw "access_device.location.country" as country
| json field=_raw "access_device.location.state" as state
| json field=_raw "application.name" as application_name
| json field=_raw "factor" as factor
| json field=_raw "reason" as reason
| json field=_raw "result" as result 
| json field=_raw "timestamp" as time
| time* 1000 as timemilli
| formatDate(fromMillis(toLong(timemilli)), "MM-dd-yyyy HH:mm:ss") as date_time
| json field=_raw "user.name" as user_name
```

**Duo Security/Failed Authentications/Breakdown by Application**
```
_sourceCategory={{Logsdatasource}}  authentication denied
| json field=_raw "eventtype" as eventtype nodrop  
| where eventtype = "authentication"
| json field=_raw "result" as result 
| where result !="success" 
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

**Duo Security/Failed Authentications/Breakdown by Country, State, City**
```
_sourceCategory={{Logsdatasource}}  authentication denied
| json field=_raw "eventtype" as eventtype nodrop  
| where eventtype = "authentication"
| json field=_raw "result" as result 
| where result !="success" 
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

**Duo Security/Failed Authentications/Breakdown by Factor**
```
_sourceCategory={{Logsdatasource}}  authentication denied
| json field=_raw "eventtype" as eventtype nodrop  
| where eventtype = "authentication"
| json field=_raw "result" as result 
| where result !="success" 
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

**Duo Security/Failed Authentications/Breakdown by Failed Reason**
```
_sourceCategory={{Logsdatasource}}  authentication denied
| json field=_raw "eventtype" as eventtype nodrop  
| where eventtype = "authentication"
| json field=_raw "result" as result 
| where result !="success" 
| json field=_raw "access_device.ip" as ip
| json field=_raw "access_device.location.city" as city
| json field=_raw "access_device.location.country" as country
| json field=_raw "access_device.location.state" as state
| json field=_raw "application.name" as application_name
| json field=_raw "factor" as factor
| json field=_raw "reason" as reason
| json field=_raw "result" as result 
| json field=_raw "timestamp" as time
| time* 1000 as timemilli
| formatDate(fromMillis(toLong(timemilli)), "MM-dd-yyyy HH:mm:ss") as date_time
| json field=_raw "user.name" as user_name
```

**Duo Security/Failed Authentications/Failed Authentications Events Table**
```
_sourceCategory={{Logsdatasource}}  authentication denied
| json field=_raw "eventtype" as eventtype nodrop  
| where eventtype = "authentication"
| json field=_raw "result" as result 
| where result !="success" 
| json field=_raw "access_device.ip" as ip
| json field=_raw "access_device.location.city" as city
| json field=_raw "access_device.location.country" as country
| json field=_raw "access_device.location.state" as state
| json field=_raw "application.name" as application_name
| json field=_raw "factor" as factor
| json field=_raw "reason" as reason
| json field=_raw "result" as result 
| json field=_raw "timestamp" as time
| time* 1000 as timemilli
| formatDate(fromMillis(toLong(timemilli)), "MM-dd-yyyy HH:mm:ss") as date_time
| json field=_raw "user.name" as user_name
```

**Duo Security/Failed Authentications/Geo Location of Authentication Events**
```
_sourceCategory={{Logsdatasource}}  authentication denied
| json field=_raw "eventtype" as eventtype nodrop  
| where eventtype = "authentication"
| json field=_raw "result" as result 
| where result !="success" 
| json field=_raw "access_device.ip" as ip
| json field=_raw "access_device.location.city" as city
| json field=_raw "access_device.location.country" as country
| json field=_raw "access_device.location.state" as state
| json field=_raw "application.name" as application_name
| json field=_raw "factor" as factor
| json field=_raw "reason" as reason
| json field=_raw "result" as result 
| json field=_raw "timestamp" as time
| time* 1000 as timemilli
| formatDate(fromMillis(toLong(timemilli)), "MM-dd-yyyy HH:mm:ss") as date_time
| json field=_raw "user.name" as user_name
```

**Duo Security/Failed Authentications/Top 10 Active Users**
```
_sourceCategory={{Logsdatasource}}  authentication denied
| json field=_raw "eventtype" as eventtype nodrop  
| where eventtype = "authentication"
| json field=_raw "result" as result 
| where result !="success" 
| json field=_raw "access_device.ip" as ip
| json field=_raw "access_device.location.city" as city
| json field=_raw "access_device.location.country" as country
| json field=_raw "access_device.location.state" as state
| json field=_raw "application.name" as application_name
| json field=_raw "factor" as factor
| json field=_raw "reason" as reason
| json field=_raw "result" as result 
| json field=_raw "timestamp" as time
| time* 1000 as timemilli
| formatDate(fromMillis(toLong(timemilli)), "MM-dd-yyyy HH:mm:ss") as date_time
| json field=_raw "user.name" as user_name
```

**Duo Security/Outliers and Threat Analysis/Outlier - Failed Authentication Events**
```
_sourceCategory={{Logsdatasource}}  authentication denied 
| json field=_raw "eventtype" as eventtype nodrop
| where eventtype = "authentication"
| json field=_raw "result" as result  nodrop 
| where result !="success" 
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

**Duo Security/Outliers and Threat Analysis/Outlier - Success Authentication Events**
```
_sourceCategory={{Logsdatasource}}  authentication success 
| json field=_raw "eventtype" as eventtype nodrop  
| where eventtype = "authentication"
| json field=_raw "result" as result nodrop  
| where result ="success" 
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

**Duo Security/Outliers and Threat Analysis/Threat Intel Analysis of Admin Events**
```
_sourceCategory={{Logsdatasource}}  administrator  
| json field=_raw "eventtype" as eventtype nodrop   
| where eventtype = "administrator" 
| json field=_raw "action" as action nodrop
| json field=_raw "object" as object nodrop
| json field=_raw "timestamp" as time nodrop
| time* 1000 as timemilli
| formatDate(fromMillis(toLong(timemilli)), "MM-dd-yyyy HH:mm:ss") as date_time
| json field=_raw "username" as user_name nodrop
| json field=_raw "description" as description nodrop
| json field=description "ip_address" as ip_address nodrop
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=ip_address
| where type="ip_address" and malicious_confidence = "high"
| json field=raw "labels[*].name" as label_name nodrop
```

**Duo Security/Outliers and Threat Analysis/Threat Intel Analysis of Authentication Events**
```
_sourceCategory={{Logsdatasource}}  authentication 
| json field=_raw "eventtype" as eventtype nodrop  
| where eventtype = "authentication"
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
| time* 1000 as timemilli
| formatDate(fromMillis(toLong(timemilli)), "MM-dd-yyyy HH:mm:ss") as date_time
| json field=_raw "user.name" as user_name nodrop
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=ip
| where type="ip_address"  and malicious_confidence = "high"
| json field=raw "labels[*].name" as label_name nodrop
```

**Duo Security/Overview - New/Admin Activity**
```
_sourceCategory = Labs/duo administrator  
| json field=_raw "eventtype" as eventtype   
| where eventtype = "administrator" 
| json field=_raw "object" as object 
| json field=_raw "timestamp" as time
| time* 1000 as timemilli
| formatDate(fromMillis(toLong(timemilli)), "MM-dd-yyyy HH:mm:ss") as date_time
| json field=_raw "username" as user_name
| json field=_raw "description" as description
| json field=_raw "action" as action
```

**Duo Security/Overview - New/Breakdown by Event Type**
```
_sourceCategory = Labs/duo   
| json field=_raw "eventtype" as eventtype   
```

**Duo Security/Overview - New/Event Over Time**
```
_sourceCategory = Labs/duo   
| json field=_raw "eventtype" as eventtype   
```

**Duo Security/Overview - New/Event Type - One Day Time Comparison**
```
_sourceCategory = Labs/duo   
| json field=_raw "eventtype" as eventtype   
```

**Duo Security/Overview - New/Geo Location of Authentication Events**
```
_sourceCategory = Labs/duo authentication 
| json field=_raw "eventtype" as eventtype nodrop  
| where eventtype = "authentication"
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
| time* 1000 as timemilli
| formatDate(fromMillis(toLong(timemilli)), "MM-dd-yyyy HH:mm:ss") as date_time
| json field=_raw "user.name" as user_name
```

**Duo Security/Overview - New/Reason for Failed Authentication**
```
_sourceCategory = Labs/duo authentication denied
| json field=_raw "eventtype" as eventtype nodrop  
| where eventtype = "authentication"
| json field=_raw "result" as result 
| where result !="success" 
| json field=_raw "access_device.ip" as ip
| json field=_raw "access_device.location.city" as city
| json field=_raw "access_device.location.country" as country
| json field=_raw "access_device.location.state" as state
| json field=_raw "application.name" as application_name
| json field=_raw "factor" as factor
| json field=_raw "reason" as reason
| json field=_raw "result" as result 
| json field=_raw "timestamp" as time
| time* 1000 as timemilli
| formatDate(fromMillis(toLong(timemilli)), "MM-dd-yyyy HH:mm:ss") as date_time
| json field=_raw "user.name" as user_name
```

**Duo Security/Overview/Admin Activity**
```
_sourceCategory={{Logsdatasource}}  administrator  
| json field=_raw "eventtype" as eventtype   
| where eventtype = "administrator" 
| json field=_raw "object" as object 
| json field=_raw "timestamp" as time
| time* 1000 as timemilli
| formatDate(fromMillis(toLong(timemilli)), "MM-dd-yyyy HH:mm:ss") as date_time
| json field=_raw "username" as user_name
| json field=_raw "description" as description
| json field=_raw "action" as action
```

**Duo Security/Overview/Breakdown by Event Type**
```
_sourceCategory={{Logsdatasource}}    
| json field=_raw "eventtype" as eventtype   
```

**Duo Security/Overview/Event Over Time**
```
_sourceCategory={{Logsdatasource}}    
| json field=_raw "eventtype" as eventtype   
```

**Duo Security/Overview/Event Type - One Day Time Comparison**
```
_sourceCategory={{Logsdatasource}}    
| json field=_raw "eventtype" as eventtype   
```

**Duo Security/Overview/Geo Location of Authentication Events**
```
_sourceCategory={{Logsdatasource}}  authentication 
| json field=_raw "eventtype" as eventtype nodrop  
| where eventtype = "authentication"
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
| time* 1000 as timemilli
| formatDate(fromMillis(toLong(timemilli)), "MM-dd-yyyy HH:mm:ss") as date_time
| json field=_raw "user.name" as user_name
```

**Duo Security/Overview/Reason for Failed Authentication**
```
_sourceCategory={{Logsdatasource}}  authentication denied
| json field=_raw "eventtype" as eventtype nodrop  
| where eventtype = "authentication"
| json field=_raw "result" as result 
| where result !="success" 
| json field=_raw "access_device.ip" as ip
| json field=_raw "access_device.location.city" as city
| json field=_raw "access_device.location.country" as country
| json field=_raw "access_device.location.state" as state
| json field=_raw "application.name" as application_name
| json field=_raw "factor" as factor
| json field=_raw "reason" as reason
| json field=_raw "result" as result 
| json field=_raw "timestamp" as time
| time* 1000 as timemilli
| formatDate(fromMillis(toLong(timemilli)), "MM-dd-yyyy HH:mm:ss") as date_time
| json field=_raw "user.name" as user_name
```

**Duo Security/Success Authentications/Authentication by Users - One Day Time Comparison**
```
_sourceCategory={{Logsdatasource}}  authentication 
| json field=_raw "eventtype" as eventtype nodrop  
| where eventtype = "authentication"
| json field=_raw "result" as result 
| where result ="success" 
| json field=_raw "access_device.ip" as ip
| json field=_raw "access_device.location.city" as city
| json field=_raw "access_device.location.country" as country
| json field=_raw "access_device.location.state" as state
| json field=_raw "application.name" as application_name
| json field=_raw "factor" as factor
| json field=_raw "reason" as reason
| json field=_raw "result" as result 
| json field=_raw "timestamp" as time
| time* 1000 as timemilli
| formatDate(fromMillis(toLong(timemilli)), "MM-dd-yyyy HH:mm:ss") as date_time
| json field=_raw "user.name" as user_name
```

**Duo Security/Success Authentications/Authentication by Users Over Time**
```
_sourceCategory={{Logsdatasource}}  authentication 
| json field=_raw "eventtype" as eventtype nodrop  
| where eventtype = "authentication"
| json field=_raw "result" as result 
| where result ="success" 
| json field=_raw "access_device.ip" as ip
| json field=_raw "access_device.location.city" as city
| json field=_raw "access_device.location.country" as country
| json field=_raw "access_device.location.state" as state
| json field=_raw "application.name" as application_name
| json field=_raw "factor" as factor
| json field=_raw "reason" as reason
| json field=_raw "result" as result 
| json field=_raw "timestamp" as time
| time* 1000 as timemilli
| formatDate(fromMillis(toLong(timemilli)), "MM-dd-yyyy HH:mm:ss") as date_time
| json field=_raw "user.name" as user_name
```

**Duo Security/Success Authentications/Breakdown by Application**
```
_sourceCategory={{Logsdatasource}}  authentication 
| json field=_raw "eventtype" as eventtype nodrop  
| where eventtype = "authentication"
| json field=_raw "result" as result 
| where result ="success" 
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

**Duo Security/Success Authentications/Breakdown by Country, State, City**
```
_sourceCategory={{Logsdatasource}}  authentication 
| json field=_raw "eventtype" as eventtype nodrop  
| where eventtype = "authentication"
| json field=_raw "result" as result 
| where result ="success" 
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

**Duo Security/Success Authentications/Breakdown by Factor**
```
_sourceCategory={{Logsdatasource}}  authentication 
| json field=_raw "eventtype" as eventtype nodrop  
| where eventtype = "authentication"
| json field=_raw "result" as result 
| where result ="success" 
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

**Duo Security/Success Authentications/Breakdown by Reason**
```
_sourceCategory={{Logsdatasource}}  authentication 
| json field=_raw "eventtype" as eventtype nodrop  
| where eventtype = "authentication"
| json field=_raw "result" as result 
| where result ="success" 
| json field=_raw "access_device.ip" as ip
| json field=_raw "access_device.location.city" as city
| json field=_raw "access_device.location.country" as country
| json field=_raw "access_device.location.state" as state
| json field=_raw "application.name" as application_name
| json field=_raw "factor" as factor
| json field=_raw "reason" as reason
| json field=_raw "result" as result 
| json field=_raw "timestamp" as time
| time* 1000 as timemilli
| formatDate(fromMillis(toLong(timemilli)), "MM-dd-yyyy HH:mm:ss") as date_time
| json field=_raw "user.name" as user_name
```

**Duo Security/Success Authentications/Geo Location of Authentication Events**
```
_sourceCategory={{Logsdatasource}}  authentication 
| json field=_raw "eventtype" as eventtype nodrop  
| where eventtype = "authentication"
| json field=_raw "result" as result 
| where result ="success" 
| json field=_raw "access_device.ip" as ip
| json field=_raw "access_device.location.city" as city
| json field=_raw "access_device.location.country" as country
| json field=_raw "access_device.location.state" as state
| json field=_raw "application.name" as application_name
| json field=_raw "factor" as factor
| json field=_raw "reason" as reason
| json field=_raw "result" as result 
| json field=_raw "timestamp" as time
| time* 1000 as timemilli
| formatDate(fromMillis(toLong(timemilli)), "MM-dd-yyyy HH:mm:ss") as date_time
| json field=_raw "user.name" as user_name
```

**Duo Security/Success Authentications/Success Authentication Events Table**
```
_sourceCategory={{Logsdatasource}}  authentication 
| json field=_raw "eventtype" as eventtype nodrop  
| where eventtype = "authentication"
| json field=_raw "result" as result 
| where result ="success" 
| json field=_raw "access_device.ip" as ip
| json field=_raw "access_device.location.city" as city
| json field=_raw "access_device.location.country" as country
| json field=_raw "access_device.location.state" as state
| json field=_raw "application.name" as application_name
| json field=_raw "factor" as factor
| json field=_raw "reason" as reason
| json field=_raw "result" as result 
| json field=_raw "timestamp" as time
| time* 1000 as timemilli
| formatDate(fromMillis(toLong(timemilli)), "MM-dd-yyyy HH:mm:ss") as date_time
| json field=_raw "user.name" as user_name
```

**Duo Security/Success Authentications/Top 10 Active Users**
```
_sourceCategory={{Logsdatasource}}  authentication 
| json field=_raw "eventtype" as eventtype nodrop  
| where eventtype = "authentication"
| json field=_raw "result" as result 
| where result ="success" 
| json field=_raw "access_device.ip" as ip
| json field=_raw "access_device.location.city" as city
| json field=_raw "access_device.location.country" as country
| json field=_raw "access_device.location.state" as state
| json field=_raw "application.name" as application_name
| json field=_raw "factor" as factor
| json field=_raw "reason" as reason
| json field=_raw "result" as result 
| json field=_raw "timestamp" as time
| time* 1000 as timemilli
| formatDate(fromMillis(toLong(timemilli)), "MM-dd-yyyy HH:mm:ss") as date_time
| json field=_raw "user.name" as user_name
```


