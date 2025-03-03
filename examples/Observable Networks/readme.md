# Observable Networks
## Sumo Logic App For: Observable Networks
The Sumo Logic App for Observable Networks allows you to monitor your Observable Networks deployment from Sumo Logic. The App’s Overview Dashboard provides insight to high-level data about your network. From Sumo Logic, you may also set up forwarding for log monitoring and authentication logs to Observable Networks.  IMPORTANT: Before you begin, your Observable Networks portal must be properly configured. Contact support@obsrvbl.com if you have any questions.
Docs Link: [Observable Networks](https://help.sumologic.com/?cid=6003)

## Searches

### Log Searches

- **Effective Session Count**: from Dashboard: Installed Apps/Observable Networks/Observable Networks Overview 
- **Observation Origins**: from Dashboard: Installed Apps/Observable Networks/Observable Networks Overview 
- **Observations by Time**: from Dashboard: Installed Apps/Observable Networks/Observable Networks Overview 
- **Recent Alert Updates**: from Dashboard: Installed Apps/Observable Networks/Observable Networks Overview 
- **Recent Flow Counts**: from Search: Installed Apps/Observable Networks/Recent Flow Counts 
- **Recent Observations**: from Dashboard: Installed Apps/Observable Networks/Observable Networks Overview 
- **Role History**: from Search: Installed Apps/Observable Networks/Role History 
- **Roles**: from Dashboard: Installed Apps/Observable Networks/Observable Networks Overview 
- **Top Observation Hosts**: from Search: Installed Apps/Observable Networks/Top Observation Hosts

### Metric Searches


## Search Table

|app\_topic|search\_name|type|origin|search|
|:--|:--|:--|:--|:--|
|Observable Networks|Effective Session Count|Logs|Installed Apps/Observable Networks/Observable Networks Overview|\_sourceCategory={{Logsdatasource}}  effective\_session\_count "\\"obsrvbl\_type\\": \\"session\_count\\""<br />\| json "effective\_session\_count" as session\_count<br />\| sum(session\_count)|
|Observable Networks|Observation Origins|Logs|Installed Apps/Observable Networks/Observable Networks Overview|\_sourceCategory={{Logsdatasource}}  "\\"obsrvbl\_type\\": \\"observation\\""<br />\| json auto keys "external\_ip", "connected\_ip", "remote\_ip" as ip, ip, ip<br />\| lookup latitude, longitude, country\_code, country\_name, region, city, postal\_code from geo://location on ip = ip<br />\| count by latitude, longitude, country\_code, country\_name, region, city, postal\_code|
|Observable Networks|Observations by Time|Logs|Installed Apps/Observable Networks/Observable Networks Overview|\_sourceCategory={{Logsdatasource}}  "\\"obsrvbl\_type\\": \\"observation\\""<br />\| json "observation\_name"<br />\| timeslice 10m<br />\|where if ("{{observation\_name}}" = "\*", true, observation\_name matches "{{observation\_name}}")<br />\|count by \_timeslice, observation\_name<br />\| transpose row \_timeslice column observation\_name|
|Observable Networks|Recent Alert Updates|Logs|Installed Apps/Observable Networks/Observable Networks Overview|\_sourceCategory={{Logsdatasource}}  "\\"obsrvbl\_type\\": \\"alert\\""<br />\| json "type", "url", "time"<br />\| withtime time<br />\| most\_recent(time\_withtime) by type, url<br />\| fields type, url|
|Observable Networks|Recent Flow Counts|Logs|Installed Apps/Observable Networks/Recent Flow Counts|\_sourceCategory={{Logsdatasource}} <br />\| json field=\_raw "obsrvbl\_type", "effective\_session\_count" as type, session\_count<br />\| where type="session\_count"<br />\| timeslice 10m<br />\| sum(session\_count) group by \_timeslice<br />\| order by \_timeslice|
|Observable Networks|Recent Observations|Logs|Installed Apps/Observable Networks/Observable Networks Overview|\_sourceCategory={{Logsdatasource}}  "\\"obsrvbl\_type\\": \\"observation\\""<br />\| json "observation\_name"<br />\|where if ("{{observation\_name}}" = "\*", true, observation\_name matches "{{observation\_name}}")<br />\|count by observation\_name<br />\| order by \_count|
|Observable Networks|Role History|Logs|Installed Apps/Observable Networks/Role History|\_sourceCategory={{Logsdatasource}} <br />\| json field=\_raw "obsrvbl\_type", "role", "source\_info.name" as type, role, name<br />\| where type="role"<br />\| timeslice 1h<br />\| count by role, \_timeslice<br />\| transpose row \_timeslice column role|
|Observable Networks|Roles|Logs|Installed Apps/Observable Networks/Observable Networks Overview|\_sourceCategory={{Logsdatasource}}  "\\"obsrvbl\_type\\": \\"role\\""<br />\| json "role" as role<br />\|where if ("{{role}}" = "\*", true, role matches "{{role}}")<br />\|count by role|
|Observable Networks|Top Observation Hosts|Logs|Installed Apps/Observable Networks/Top Observation Hosts|\_sourceCategory={{Logsdatasource}}  <br />\| json field=\_raw "obsrvbl\_type", "source\_info.name" as type, name<br />\| where type = "observation"<br />\| count by name<br />\| order by \_count desc|

