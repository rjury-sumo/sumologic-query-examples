# Parsers For Dropbox

**Dropbox/File Statistics/Geo Locations of File Operations**
```
_sourceCategory={{Logsdatasource}}  
| json "$['actor']['.tag']","$['actor']*['.tag']","$['actor']*['account_id']","$['actor']*['display_name']","$['actor']*['email']","$['actor']*['team_member_id']","$['event_type']['.tag']","$['event_type']['description']","details.app_info.display_name", "origin.geo_location.ip_address", "origin.geo_location.country","$['event_category']['.tag']","involve_non_team_member" as actor,actor_is_team_member,actor_account_id, actor_display_name, actor_email,actor_team_member_id, event_type, event_type_description, app_name,location,country, event_category,involve_non_team_member nodrop
| where actor matches"{{actor}}"
| where event_category matches"{{event_category}}"
| where country matches"{{country}}" or isNull(country)
| where involve_non_team_member matches "{{involve_non_team_member}}"
| where event_type matches"{{event_type}}"
| json field=actor_email "[0]" as email nodrop
| if(isNull(email),context.email,email) as email
| json field=actor_display_name "[0]" as name nodrop
```

**Dropbox/File Statistics/Recent File Operations**
```
_sourceCategory={{Logsdatasource}}  
| json "$['actor']['.tag']","$['actor']*['.tag']","$['actor']*['account_id']","$['actor']*['display_name']","$['actor']*['email']","$['actor']*['team_member_id']","$['event_type']['.tag']","$['event_type']['description']","details.app_info.display_name", "origin.geo_location.ip_address", "origin.geo_location.country","$['event_category']['.tag']","involve_non_team_member" as actor,actor_is_team_member,actor_account_id, actor_display_name, actor_email,actor_team_member_id, event_type, event_type_description, app_name,location,country, event_category,involve_non_team_member nodrop
| where actor matches"{{actor}}"
| where event_category matches"{{event_category}}"
| where country matches"{{country}}" or isNull(country)
| where involve_non_team_member matches "{{involve_non_team_member}}"
| where event_type matches"{{event_type}}"
| json field=actor_email "[0]" as email nodrop
| if(isNull(email),context.email,email) as email
| json field=actor_display_name "[0]" as name nodrop
| if(isNull(name),actor,name) as name
| where (!isNull(country))
| where (!isNull(email))
| json "$['assets'][*]['.tag']", "assets[*].path.contextual"as asset_tags, asset_path
```

**Dropbox/File Statistics/Top 10 Applications**
```
_sourceCategory={{Logsdatasource}}  
| json "$['actor']['.tag']","$['actor']*['.tag']","$['actor']*['account_id']","$['actor']*['display_name']","$['actor']*['email']","$['actor']*['team_member_id']","$['event_type']['.tag']","$['event_type']['description']","details.app_info.display_name", "origin.geo_location.ip_address", "origin.geo_location.country","$['event_category']['.tag']","involve_non_team_member" as actor,actor_is_team_member,actor_account_id, actor_display_name, actor_email,actor_team_member_id, event_type, event_type_description, app_name,location,country, event_category,involve_non_team_member nodrop
| where actor matches"{{actor}}"
| where event_category matches"{{event_category}}"
| where country matches"{{country}}" or isNull(country)
| where involve_non_team_member matches "{{involve_non_team_member}}"
| where event_type matches"{{event_type}}"
| json field=actor_email "[0]" as email nodrop
| if(isNull(email),context.email,email) as email
| json field=actor_display_name "[0]" as name nodrop
```

**Dropbox/File Statistics/Top 10 File Operations**
```
_sourceCategory={{Logsdatasource}}  
| json "$['actor']['.tag']","$['actor']*['.tag']","$['actor']*['account_id']","$['actor']*['display_name']","$['actor']*['email']","$['actor']*['team_member_id']","$['event_type']['.tag']","$['event_type']['description']","details.app_info.display_name", "origin.geo_location.ip_address", "origin.geo_location.country","$['event_category']['.tag']","involve_non_team_member" as actor,actor_is_team_member,actor_account_id, actor_display_name, actor_email,actor_team_member_id, event_type, event_type_description, app_name,location,country, event_category,involve_non_team_member nodrop
| where actor matches"{{actor}}"
| where event_category matches"{{event_category}}"
| where country matches"{{country}}" or isNull(country)
| where involve_non_team_member matches "{{involve_non_team_member}}"
| where event_type matches"{{event_type}}"
| json field=actor_email "[0]" as email nodrop
| if(isNull(email),context.email,email) as email
| json field=actor_display_name "[0]" as name nodrop
```

**Dropbox/File Statistics/Top 10 Users Performing File Operations**
```
_sourceCategory={{Logsdatasource}}  
| json "$['actor']['.tag']","$['actor']*['.tag']","$['actor']*['account_id']","$['actor']*['display_name']","$['actor']*['email']","$['actor']*['team_member_id']","$['event_type']['.tag']","$['event_type']['description']","details.app_info.display_name", "origin.geo_location.ip_address", "origin.geo_location.country","$['event_category']['.tag']","involve_non_team_member" as actor,actor_is_team_member,actor_account_id, actor_display_name, actor_email,actor_team_member_id, event_type, event_type_description, app_name,location,country, event_category,involve_non_team_member nodrop
| where actor matches"{{actor}}"
| where event_category matches"{{event_category}}"
| where country matches"{{country}}" or isNull(country)
| where involve_non_team_member matches "{{involve_non_team_member}}"
| where event_type matches"{{event_type}}"
| json field=actor_email "[0]" as email nodrop
| if(isNull(email),context.email,email) as email
| json field=actor_display_name "[0]" as name nodrop
```

**Dropbox/File Statistics/User Activity for File Addition and Deletion**
```
_sourceCategory={{Logsdatasource}}  
| json "$['actor']['.tag']","$['actor']*['.tag']","$['actor']*['account_id']","$['actor']*['display_name']","$['actor']*['email']","$['actor']*['team_member_id']","$['event_type']['.tag']","$['event_type']['description']","details.app_info.display_name", "origin.geo_location.ip_address", "origin.geo_location.country","$['event_category']['.tag']","involve_non_team_member" as actor,actor_is_team_member,actor_account_id, actor_display_name, actor_email,actor_team_member_id, event_type, event_type_description, app_name,location,country, event_category,involve_non_team_member nodrop
| where actor matches"{{actor}}"
| where event_category matches"{{event_category}}"
| where country matches"{{country}}" or isNull(country)
| where involve_non_team_member matches "{{involve_non_team_member}}"
| where event_type matches"{{event_type}}"
| json field=actor_email "[0]" as email nodrop
| if(isNull(email),context.email,email) as email
| json field=actor_display_name "[0]" as name nodrop
```

**Dropbox/Logins, Devices & Sessions/Distribution of Team Linked Apps**
```
_sourceCategory={{Logsdatasource}}  
| json "$['actor']['.tag']","$['actor']*['.tag']","$['actor']*['account_id']","$['actor']*['display_name']","$['actor']*['email']","$['actor']*['team_member_id']","$['event_type']['.tag']","$['event_type']['description']","details.app_info.display_name", "origin.geo_location.ip_address", "origin.geo_location.country","$['event_category']['.tag']","involve_non_team_member" as actor,actor_is_team_member,actor_account_id, actor_display_name, actor_email,actor_team_member_id, event_type, event_type_description, app_name,location,country, event_category,involve_non_team_member nodrop
| where actor matches"{{actor}}"
| where event_category matches"{{event_category}}"
| where country matches"{{country}}" or isNull(country)
| where involve_non_team_member matches "{{involve_non_team_member}}"
| json field=actor_email "[0]" as email nodrop
| if(isNull(email),context.email,email) as email
| json field=actor_display_name "[0]" as name nodrop
```

**Dropbox/Logins, Devices & Sessions/Distribution of User Linked Apps**
```
_sourceCategory={{Logsdatasource}}  
| json "$['actor']['.tag']","$['actor']*['.tag']","$['actor']*['account_id']","$['actor']*['display_name']","$['actor']*['email']","$['actor']*['team_member_id']","$['event_type']['.tag']","$['event_type']['description']","details.app_info.display_name", "origin.geo_location.ip_address", "origin.geo_location.country","$['event_category']['.tag']","involve_non_team_member" as actor,actor_is_team_member,actor_account_id, actor_display_name, actor_email,actor_team_member_id, event_type, event_type_description, app_name,location,country, event_category,involve_non_team_member nodrop
| where actor matches"{{actor}}"
| where event_category matches"{{event_category}}"
| where country matches"{{country}}" or isNull(country)
| where involve_non_team_member matches "{{involve_non_team_member}}"
| json field=actor_email "[0]" as email nodrop
| if(isNull(email),context.email,email) as email
| json field=actor_display_name "[0]" as name nodrop
```

**Dropbox/Logins, Devices & Sessions/Failed Login Attempts**
```
_sourceCategory={{Logsdatasource}}  
| json "$['actor']['.tag']","$['actor']*['.tag']","$['actor']*['account_id']","$['actor']*['display_name']","$['actor']*['email']","$['actor']*['team_member_id']","$['event_type']['.tag']","$['event_type']['description']","details.app_info.display_name", "origin.geo_location.ip_address", "origin.geo_location.country","$['event_category']['.tag']","involve_non_team_member" as actor,actor_is_team_member,actor_account_id, actor_display_name, actor_email,actor_team_member_id, event_type, event_type_description, app_name,location,country, event_category,involve_non_team_member nodrop
| where actor matches"{{actor}}"
| where event_category matches"{{event_category}}"
| where country matches"{{country}}" or isNull(country)
| where involve_non_team_member matches "{{involve_non_team_member}}"
| json field=actor_email "[0]" as email nodrop
| if(isNull(email),context.email,email) as email
| json field=actor_display_name "[0]" as name nodrop
```

**Dropbox/Logins, Devices & Sessions/Login Events by Location**
```
_sourceCategory={{Logsdatasource}}  
| json "$['actor']['.tag']","$['actor']*['.tag']","$['actor']*['account_id']","$['actor']*['display_name']","$['actor']*['email']","$['actor']*['team_member_id']","$['event_type']['.tag']","$['event_type']['description']","details.app_info.display_name", "origin.geo_location.ip_address", "origin.geo_location.country","$['event_category']['.tag']","involve_non_team_member" as actor,actor_is_team_member,actor_account_id, actor_display_name, actor_email,actor_team_member_id, event_type, event_type_description, app_name,location,country, event_category,involve_non_team_member nodrop
| where actor matches"{{actor}}"
| where event_category matches"{{event_category}}"
| where country matches"{{country}}" or isNull(country)
| where involve_non_team_member matches "{{involve_non_team_member}}"
| json field=actor_email "[0]" as email nodrop
| if(isNull(email),context.email,email) as email
| json field=actor_display_name "[0]" as name nodrop
```

**Dropbox/Logins, Devices & Sessions/Sign-in From a High Risk Country**
```
_sourceCategory={{Logsdatasource}}  
| json "$['actor']['.tag']","$['actor']*['.tag']","$['actor']*['account_id']","$['actor']*['display_name']","$['actor']*['email']","$['actor']*['team_member_id']","$['event_type']['.tag']","$['event_type']['description']","details.app_info.display_name", "origin.geo_location.ip_address", "origin.geo_location.country","$['event_category']['.tag']","involve_non_team_member" as actor,actor_is_team_member,actor_account_id, actor_display_name, actor_email,actor_team_member_id, event_type, event_type_description, app_name,location,country, event_category,involve_non_team_member nodrop
| where actor matches"{{actor}}"
| where event_category matches"{{event_category}}"
| where country matches"{{country}}" or isNull(country)
| where involve_non_team_member matches "{{involve_non_team_member}}"
| json field=actor_email "[0]" as email nodrop
| if(isNull(email),context.email,email) as email
| json field=actor_display_name "[0]" as name nodrop
| if(isNull(name),actor,name) as name
| where event_category matches("*logins*")
| where event_type matches("login_success")
| count as frequency by location
| where isValidIPv4(location) or isValidIPv6(location)
| where !isEmpty(location)
| if(isValidIPv4(location), if(!isPrivateIP(location),true,false),true) as is_public
| where is_public
| lookup latitude, longitude, country_code from geo://location on ip = location 
| lookup country_code from https://sumologic-app-data.s3.amazonaws.com/riskycountries.csv on country_code=country_code 
```

**Dropbox/Logins, Devices & Sessions/Successful Device Links**
```
_sourceCategory={{Logsdatasource}}  
| json "$['actor']['.tag']","$['actor']*['.tag']","$['actor']*['account_id']","$['actor']*['display_name']","$['actor']*['email']","$['actor']*['team_member_id']","$['event_type']['.tag']","$['event_type']['description']","details.app_info.display_name", "origin.geo_location.ip_address", "origin.geo_location.country","$['event_category']['.tag']","involve_non_team_member" as actor,actor_is_team_member,actor_account_id, actor_display_name, actor_email,actor_team_member_id, event_type, event_type_description, app_name,location,country, event_category,involve_non_team_member nodrop
| where actor matches"{{actor}}"
| where event_category matches"{{event_category}}"
| where country matches"{{country}}" or isNull(country)
| where involve_non_team_member matches "{{involve_non_team_member}}"
| json field=actor_email "[0]" as email nodrop
| if(isNull(email),context.email,email) as email
| json field=actor_display_name "[0]" as name nodrop
```

**Dropbox/Logins, Devices & Sessions/Top 10 Users with Device IP Changes**
```
_sourceCategory={{Logsdatasource}}  
| json "$['actor']['.tag']","$['actor']*['.tag']","$['actor']*['account_id']","$['actor']*['display_name']","$['actor']*['email']","$['actor']*['team_member_id']","$['event_type']['.tag']","$['event_type']['description']","details.app_info.display_name", "origin.geo_location.ip_address", "origin.geo_location.country","$['event_category']['.tag']","involve_non_team_member" as actor,actor_is_team_member,actor_account_id, actor_display_name, actor_email,actor_team_member_id, event_type, event_type_description, app_name,location,country, event_category,involve_non_team_member nodrop
| where actor matches"{{actor}}"
| where event_category matches"{{event_category}}"
| where country matches"{{country}}" or isNull(country)
| where involve_non_team_member matches "{{involve_non_team_member}}"
| json field=actor_email "[0]" as email nodrop
| if(isNull(email),context.email,email) as email
| json field=actor_display_name "[0]" as name nodrop
```

**Dropbox/Overview/Active Team Members**
```
_sourceCategory={{Logsdatasource}}  
| json "$['actor']['.tag']","$['actor']*['.tag']","$['actor']*['account_id']","$['actor']*['display_name']","$['actor']*['email']","$['actor']*['team_member_id']","$['event_type']['.tag']","$['event_type']['description']","details.app_info.display_name", "origin.geo_location.ip_address", "origin.geo_location.country","$['event_category']['.tag']","involve_non_team_member" as actor,actor_is_team_member,actor_account_id, actor_display_name, actor_email,actor_team_member_id, event_type, event_type_description, app_name,location,country, event_category,involve_non_team_member nodrop
| where actor matches"{{actor}}"
| where event_category matches"{{event_category}}"
| where country matches"{{country}}" or isNull(country)
| where involve_non_team_member matches "{{involve_non_team_member}}"
| json field=actor_email "[0]" as email nodrop
| if(isNull(email),context.email,email) as email
| json field=actor_display_name "[0]" as name nodrop
| if(isNull(name),actor,name) as name
| json field=actor_is_team_member "[0]" as true_value_actor_is_team_member | where %"true_value_actor_is_team_member" = "team_member"
```

**Dropbox/Overview/Actors Performing Actions**
```
_sourceCategory={{Logsdatasource}}  
| json "$['actor']['.tag']","$['actor']*['.tag']","$['actor']*['account_id']","$['actor']*['display_name']","$['actor']*['email']","$['actor']*['team_member_id']","$['event_type']['.tag']","$['event_type']['description']","details.app_info.display_name", "origin.geo_location.ip_address", "origin.geo_location.country","$['event_category']['.tag']","involve_non_team_member" as actor,actor_is_team_member,actor_account_id, actor_display_name, actor_email,actor_team_member_id, event_type, event_type_description, app_name,location,country, event_category,involve_non_team_member nodrop
| where actor matches"{{actor}}"
| where event_category matches"{{event_category}}"
| where country matches"{{country}}" or isNull(country)
| where involve_non_team_member matches "{{involve_non_team_member}}"
| json field=actor_email "[0]" as email nodrop
| if(isNull(email),context.email,email) as email
| json field=actor_display_name "[0]" as name nodrop
```

**Dropbox/Overview/Events Category Distribution**
```
_sourceCategory={{Logsdatasource}}  
| json "$['actor']['.tag']","$['actor']*['.tag']","$['actor']*['account_id']","$['actor']*['display_name']","$['actor']*['email']","$['actor']*['team_member_id']","$['event_type']['.tag']","$['event_type']['description']","details.app_info.display_name", "origin.geo_location.ip_address", "origin.geo_location.country","$['event_category']['.tag']","involve_non_team_member" as actor,actor_is_team_member,actor_account_id, actor_display_name, actor_email,actor_team_member_id, event_type, event_type_description, app_name,location,country, event_category,involve_non_team_member nodrop
| where actor matches"{{actor}}"
| where event_category matches"{{event_category}}"
| where country matches"{{country}}" or isNull(country)
| where involve_non_team_member matches "{{involve_non_team_member}}" 
| json field=actor_email "[0]" as email nodrop
| if(isNull(email),context.email,email) as email
| json field=actor_display_name "[0]" as name nodrop
```

**Dropbox/Overview/Geo Locations of Events**
```
_sourceCategory={{Logsdatasource}}  
| json "$['actor']['.tag']","$['actor']*['.tag']","$['actor']*['account_id']","$['actor']*['display_name']","$['actor']*['email']","$['actor']*['team_member_id']","$['event_type']['.tag']","$['event_type']['description']","details.app_info.display_name", "origin.geo_location.ip_address", "origin.geo_location.country","$['event_category']['.tag']","involve_non_team_member" as actor,actor_is_team_member,actor_account_id, actor_display_name, actor_email,actor_team_member_id, event_type, event_type_description, app_name,location,country, event_category,involve_non_team_member nodrop
| where actor matches"{{actor}}"
| where event_category matches"{{event_category}}"
| where country matches"{{country}}" or isNull(country)
| where involve_non_team_member matches "{{involve_non_team_member}}"
| json field=actor_email "[0]" as email nodrop
| if(isNull(email),context.email,email) as email
| json field=actor_display_name "[0]" as name nodrop
```

**Dropbox/Overview/Linked Apps**
```
_sourceCategory={{Logsdatasource}}  
| json "$['actor']['.tag']","$['actor']*['.tag']","$['actor']*['account_id']","$['actor']*['display_name']","$['actor']*['email']","$['actor']*['team_member_id']","$['event_type']['.tag']","$['event_type']['description']","details.app_info.display_name", "origin.geo_location.ip_address", "origin.geo_location.country","$['event_category']['.tag']","involve_non_team_member" as actor,actor_is_team_member,actor_account_id, actor_display_name, actor_email,actor_team_member_id, event_type, event_type_description, app_name,location,country, event_category,involve_non_team_member nodrop
| where actor matches"{{actor}}"
| where event_category matches"{{event_category}}"
| where country matches"{{country}}" or isNull(country)
| where involve_non_team_member matches "{{involve_non_team_member}}"
| json field=actor_email "[0]" as email nodrop
| if(isNull(email),context.email,email) as email
| json field=actor_display_name "[0]" as name nodrop
```

**Dropbox/Overview/List of Assets Shared with External Members**
```

_sourceCategory={{Logsdatasource}}  
| json "$['actor']['.tag']","$['actor']*['.tag']","$['actor']*['account_id']","$['actor']*['display_name']","$['actor']*['email']","$['actor']*['team_member_id']","$['event_type']['.tag']","$['event_type']['description']","details.app_info.display_name", "origin.geo_location.ip_address", "origin.geo_location.country","$['event_category']['.tag']","involve_non_team_member" as actor,actor_is_team_member,actor_account_id, actor_display_name, actor_email,actor_team_member_id, event_type, event_type_description, app_name,location,country, event_category,involve_non_team_member nodrop
| where actor matches"{{actor}}"
| where event_category matches"{{event_category}}"
| where country matches"{{country}}" or isNull(country)
| where involve_non_team_member matches "{{involve_non_team_member}}"
| json field=actor_email "[0]" as email nodrop
| if(isNull(email),context.email,email) as email
| json field=actor_display_name "[0]" as name nodrop
| if(isNull(name),actor,name) as name
| where (!isNull(country))
| where (!isNull(email))
| json "$['assets'][*]['.tag']", "assets[*].path.contextual", "participants[*].user.email" as asset_tags, asset_path, external_email
```

**Dropbox/Overview/List of Assets Shared with Non Members**
```

_sourceCategory={{Logsdatasource}}  
| json "$['actor']['.tag']","$['actor']*['.tag']","$['actor']*['account_id']","$['actor']*['display_name']","$['actor']*['email']","$['actor']*['team_member_id']","$['event_type']['.tag']","$['event_type']['description']","details.app_info.display_name", "origin.geo_location.ip_address", "origin.geo_location.country","$['event_category']['.tag']","involve_non_team_member" as actor,actor_is_team_member,actor_account_id, actor_display_name, actor_email,actor_team_member_id, event_type, event_type_description, app_name,location,country, event_category,involve_non_team_member nodrop
| where actor matches"{{actor}}"
| where event_category matches"{{event_category}}"
| where country matches"{{country}}" or isNull(country)
| where involve_non_team_member matches "{{involve_non_team_member}}"
| json field=actor_email "[0]" as email nodrop
| if(isNull(email),context.email,email) as email
| json field=actor_display_name "[0]" as name nodrop
| if(isNull(name),actor,name) as name
| json "$['assets'][*]['.tag']", "assets[*].path.contextual"as asset_tags, asset_path
```

**Dropbox/Overview/Login Activity By Time**
```
_sourceCategory={{Logsdatasource}}  
| json "$['actor']['.tag']","$['actor']*['.tag']","$['actor']*['account_id']","$['actor']*['display_name']","$['actor']*['email']","$['actor']*['team_member_id']","$['event_type']['.tag']","$['event_type']['description']","details.app_info.display_name", "origin.geo_location.ip_address", "origin.geo_location.country","$['event_category']['.tag']","involve_non_team_member" as actor,actor_is_team_member,actor_account_id, actor_display_name, actor_email,actor_team_member_id, event_type, event_type_description, app_name,location,country, event_category,involve_non_team_member nodrop
| where actor matches"{{actor}}"
| where event_category matches"{{event_category}}"
| where country matches"{{country}}" or isNull(country)
| where involve_non_team_member matches "{{involve_non_team_member}}"
| json field=actor_email "[0]" as email nodrop
| if(isNull(email),context.email,email) as email
| json field=actor_display_name "[0]" as name nodrop
```

**Dropbox/Overview/Recently Added Members**
```
_sourceCategory={{Logsdatasource}}  
| json "$['actor']['.tag']","$['actor']*['.tag']","$['actor']*['account_id']","$['actor']*['display_name']","$['actor']*['email']","$['actor']*['team_member_id']","$['event_type']['.tag']","$['event_type']['description']","details.app_info.display_name", "origin.geo_location.ip_address", "origin.geo_location.country","$['event_category']['.tag']","involve_non_team_member" as actor,actor_is_team_member,actor_account_id, actor_display_name, actor_email,actor_team_member_id, event_type, event_type_description, app_name,location,country, event_category,involve_non_team_member nodrop
| where actor matches"{{actor}}"
| where event_category matches"{{event_category}}"
| where country matches"{{country}}" or isNull(country)
| where involve_non_team_member matches "{{involve_non_team_member}}"
| json field=actor_email "[0]" as email nodrop
| if(isNull(email),context.email,email) as email
| json field=actor_display_name "[0]" as name nodrop
| if(isNull(name),actor,name) as name
| where (!isNull(country)) and (!isNull(email))
| where event_type matches ("*member_change_status*")
| json field=_raw "$['details']['new_value']['.tag']" as new_value | where %"new_value" = "active"
```

**Dropbox/Overview/Share Events with Member**
```
_sourceCategory={{Logsdatasource}}  
| json "$['actor']['.tag']","$['actor']*['.tag']","$['actor']*['account_id']","$['actor']*['display_name']","$['actor']*['email']","$['actor']*['team_member_id']","$['event_type']['.tag']","$['event_type']['description']","details.app_info.display_name", "origin.geo_location.ip_address", "origin.geo_location.country","$['event_category']['.tag']","involve_non_team_member" as actor,actor_is_team_member,actor_account_id, actor_display_name, actor_email,actor_team_member_id, event_type, event_type_description, app_name,location,country, event_category,involve_non_team_member nodrop
| where actor matches"{{actor}}"
| where event_category matches"{{event_category}}"
| where country matches"{{country}}" or isNull(country)
| where involve_non_team_member matches "{{involve_non_team_member}}"
| json field=actor_email "[0]" as email nodrop
| if(isNull(email),context.email,email) as email
| json field=actor_display_name "[0]" as name nodrop
```

**Dropbox/Overview/Share Events with Non Members**
```
_sourceCategory={{Logsdatasource}}  
| json "$['actor']['.tag']","$['actor']*['.tag']","$['actor']*['account_id']","$['actor']*['display_name']","$['actor']*['email']","$['actor']*['team_member_id']","$['event_type']['.tag']","$['event_type']['description']","details.app_info.display_name", "origin.geo_location.ip_address", "origin.geo_location.country","$['event_category']['.tag']","involve_non_team_member" as actor,actor_is_team_member,actor_account_id, actor_display_name, actor_email,actor_team_member_id, event_type, event_type_description, app_name,location,country, event_category,involve_non_team_member nodrop
| where actor matches"{{actor}}"
| where event_category matches"{{event_category}}"
| where country matches"{{country}}" or isNull(country)
| where involve_non_team_member matches "{{involve_non_team_member}}"
| json field=actor_email "[0]" as email nodrop
| if(isNull(email),context.email,email) as email
| json field=actor_display_name "[0]" as name nodrop
```

**Dropbox/Overview/Top 10 Login & Session Event Types**
```
_sourceCategory={{Logsdatasource}}  
| json "$['actor']['.tag']","$['actor']*['.tag']","$['actor']*['account_id']","$['actor']*['display_name']","$['actor']*['email']","$['actor']*['team_member_id']","$['event_type']['.tag']","$['event_type']['description']","details.app_info.display_name", "origin.geo_location.ip_address", "origin.geo_location.country","$['event_category']['.tag']","involve_non_team_member" as actor,actor_is_team_member,actor_account_id, actor_display_name, actor_email,actor_team_member_id, event_type, event_type_description, app_name,location,country, event_category,involve_non_team_member nodrop
| where actor matches"{{actor}}"
| where event_category matches"{{event_category}}"
| where country matches"{{country}}" or isNull(country)
| where involve_non_team_member matches "{{involve_non_team_member}}"
| json field=actor_email "[0]" as email nodrop
| if(isNull(email),context.email,email) as email
| json field=actor_display_name "[0]" as name nodrop
```

**Dropbox/Team Admin Actions/Admin Actions by Location**
```
_sourceCategory={{Logsdatasource}}  
| json "$['actor']['.tag']","$['actor']*['.tag']","$['actor']*['account_id']","$['actor']*['display_name']","$['actor']*['email']","$['actor']*['team_member_id']","$['event_type']['.tag']","$['event_type']['description']","details.app_info.display_name", "origin.geo_location.ip_address", "origin.geo_location.country","$['event_category']['.tag']","involve_non_team_member" as actor,actor_is_team_member,actor_account_id, actor_display_name, actor_email,actor_team_member_id, event_type, event_type_description, app_name,location,country, event_category,involve_non_team_member nodrop
| where actor matches"{{actor}}"
| where event_category matches"{{event_category}}"
| where country matches"{{country}}" or isNull(country)
| where involve_non_team_member matches "{{involve_non_team_member}}"
| json field=actor_email "[0]" as email nodrop
| if(isNull(email),context.email,email) as email
| json field=actor_display_name "[0]" as name nodrop
```

**Dropbox/Team Admin Actions/Recent Admin Actions**
```
_sourceCategory={{Logsdatasource}}  
| json "$['actor']['.tag']","$['actor']*['.tag']","$['actor']*['account_id']","$['actor']*['display_name']","$['actor']*['email']","$['actor']*['team_member_id']","$['event_type']['.tag']","$['event_type']['description']","details.app_info.display_name", "origin.geo_location.ip_address", "origin.geo_location.country","$['event_category']['.tag']","involve_non_team_member" as actor,actor_is_team_member,actor_account_id, actor_display_name, actor_email,actor_team_member_id, event_type, event_type_description, app_name,location,country, event_category,involve_non_team_member nodrop
| where actor matches"{{actor}}"
| where event_category matches"{{event_category}}"
| where country matches"{{country}}" or isNull(country)
| where involve_non_team_member matches "{{involve_non_team_member}}"
| json field=actor_email "[0]" as email nodrop
| if(isNull(email),context.email,email) as email
| json field=actor_display_name "[0]" as name nodrop
```

**Dropbox/Team Admin Actions/Top 10 Active Admins**
```
_sourceCategory={{Logsdatasource}}  
| json "$['actor']['.tag']","$['actor']*['.tag']","$['actor']*['account_id']","$['actor']*['display_name']","$['actor']*['email']","$['actor']*['team_member_id']","$['event_type']['.tag']","$['event_type']['description']","details.app_info.display_name", "origin.geo_location.ip_address", "origin.geo_location.country","$['event_category']['.tag']","involve_non_team_member" as actor,actor_is_team_member,actor_account_id, actor_display_name, actor_email,actor_team_member_id, event_type, event_type_description, app_name,location,country, event_category,involve_non_team_member nodrop
| where actor matches"{{actor}}"
| where event_category matches"{{event_category}}"
| where country matches"{{country}}" or isNull(country)
| where involve_non_team_member matches "{{involve_non_team_member}}"
| json field=actor_email "[0]" as email nodrop
| if(isNull(email),context.email,email) as email
| json field=actor_display_name "[0]" as name nodrop
```

**Dropbox/Team Admin Actions/Top 10 Admin Actions**
```
_sourceCategory={{Logsdatasource}}  
| json "$['actor']['.tag']","$['actor']*['.tag']","$['actor']*['account_id']","$['actor']*['display_name']","$['actor']*['email']","$['actor']*['team_member_id']","$['event_type']['.tag']","$['event_type']['description']","details.app_info.display_name", "origin.geo_location.ip_address", "origin.geo_location.country","$['event_category']['.tag']","involve_non_team_member" as actor,actor_is_team_member,actor_account_id, actor_display_name, actor_email,actor_team_member_id, event_type, event_type_description, app_name,location,country, event_category,involve_non_team_member nodrop
| where actor matches"{{actor}}"
| where event_category matches"{{event_category}}"
| where country matches"{{country}}" or isNull(country)
| where involve_non_team_member matches "{{involve_non_team_member}}"
| json field=actor_email "[0]" as email nodrop
| if(isNull(email),context.email,email) as email
| json field=actor_display_name "[0]" as name nodrop
```


