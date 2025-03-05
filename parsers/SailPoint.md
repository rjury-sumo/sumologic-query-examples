# Parsers For SailPoint

## Parser:
```
| json field=_raw "created", "type", "technicalName", "status","operation","actor.name", "action", "name", "target.name", "attributes.sourceName" as created, event_type, technical_name_in_search, event_status, operation, user_name, action, event_desc, target_name, source_name
| json "org" as org 
```
### Use Cases:
Action Trend, Authentication Events - Outlier, Authentication Events by Country and City, Authentication Events Overtime, Event Status, Event Summary, Event Type, Events Trend, Geolocation of Authentication Events, Geolocation of Source Deletions, Operation Trend, Operations, Source Delete Summary, Sources Deleted, Top 10 Users by Authentication Attempt Count



## Parser:
```
| json field=_raw "created", "type", "technicalName", "status","operation","actor.name", "action", "name", "target.name", "attributes.sourceName" as created, event_type, technical_name_in_search, event_status, operation, user_name, action, event_desc, target_name, source_name
| json "org" as org 
| json field=_raw "ipAddress" as client_ip
```
### Use Cases:
Action Trend, Authentication Events - Outlier, Authentication Events by Country and City, Authentication Events Overtime, Event Status, Event Summary, Event Type, Events Trend, Geolocation of Authentication Events, Geolocation of Source Deletions, Operation Trend, Operations, Source Delete Summary, Sources Deleted, Top 10 Users by Authentication Attempt Count



## Parser:
```
| json field=_raw "created", "type", "technicalName", "status","operation","actor.name", "action", "name", "target.name", "attributes.sourceName" as created, event_type, technical_name_in_search, event_status, operation, user_name, action, event_desc, target_name, source_name
| json "org" as org 
| json field=_raw "ipAddress" as client_ip | lookup latitude, longitude, country_code, country_name, region, city, postal_code from geo://location on ip = client_ip
```
### Use Cases:
Action Trend, Authentication Events - Outlier, Authentication Events by Country and City, Authentication Events Overtime, Event Status, Event Summary, Event Type, Events Trend, Geolocation of Authentication Events, Geolocation of Source Deletions, Operation Trend, Operations, Source Delete Summary, Sources Deleted, Top 10 Users by Authentication Attempt Count



## Parser:
```
| json field=_raw "created", "type", "technicalName", "status","operation","actor.name", "action", "name", "target.name", "attributes.sourceName" as created, event_type, technical_name_in_search, event_status, operation, user_name, action, event_desc, target_name, source_name 
| json "org" as org 
```
### Use Cases:
Action Trend, Authentication Events - Outlier, Authentication Events by Country and City, Authentication Events Overtime, Event Status, Event Summary, Event Type, Events Trend, Geolocation of Authentication Events, Geolocation of Source Deletions, Operation Trend, Operations, Source Delete Summary, Sources Deleted, Top 10 Users by Authentication Attempt Count



## Parser:
```
| json field=_raw "created", "type", "technicalName", "status","operation","actor.name", "action", "name", "target.name", "attributes.sourceName" as created, event_type, technical_name_in_search, event_status, operation, user_name, action, event_desc, target_name, source_name  | json "org" as org 
```
### Use Cases:
Action Trend, Authentication Events - Outlier, Authentication Events by Country and City, Authentication Events Overtime, Event Status, Event Summary, Event Type, Events Trend, Geolocation of Authentication Events, Geolocation of Source Deletions, Operation Trend, Operations, Source Delete Summary, Sources Deleted, Top 10 Users by Authentication Attempt Count



## Parser:
```
| json field=_raw "created", "type", "technicalName", "status","operation","actor.name", "action", "name", "target.name", "attributes.sourceName" as created, event_type, technical_name_in_search, event_status, operation, user_name, action, event_desc, target_name, source_name | json "org" as org | where technical_name_in_search matches "{{event_technical_name}}" and org matches "{{org}}"
```
### Use Cases:
Action Trend, Authentication Events - Outlier, Authentication Events by Country and City, Authentication Events Overtime, Event Status, Event Summary, Event Type, Events Trend, Geolocation of Authentication Events, Geolocation of Source Deletions, Operation Trend, Operations, Source Delete Summary, Sources Deleted, Top 10 Users by Authentication Attempt Count


