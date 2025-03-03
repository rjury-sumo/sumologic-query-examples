# Sauce Labs
## Sumo Logic App For: Sauce Labs
Integrate your Sauce Labs test data with the Sumo Logic Analytics Platform to easily aggregate, visualize, and monitor all of your test data. Connect Sauce Labs data with other data sources for a comprehensive view of your development pipeline.
Docs Link: [Sauce Labs](https://docs.saucelabs.com/basics/integrations/sumo/)

## Searches

### Log Searches

- **Average runtime of VDC tests by date**: from Dashboard: Installed Apps/Sauce Labs/Sauce Labs - VDC 
- **Most recent failed VDC tests**: from Dashboard: Installed Apps/Sauce Labs/Sauce Labs - VDC 
- **Number of VDC tests by date**: from Dashboard: Installed Apps/Sauce Labs/Sauce Labs - VDC 
- **VDC Tests Browser/Os count**: from Dashboard: Installed Apps/Sauce Labs/Sauce Labs - VDC 
- **VDC Tests by framework**: from Dashboard: Installed Apps/Sauce Labs/Sauce Labs - VDC 
- **VDC Tests by status**: from Dashboard: Installed Apps/Sauce Labs/Sauce Labs - VDC 
- **VDC Tests errored**: from Dashboard: Installed Apps/Sauce Labs/Sauce Labs - VDC 
- **VDC Tests failed**: from Dashboard: Installed Apps/Sauce Labs/Sauce Labs - VDC 
- **VDC Tests failed and errored by browser/os count**: from Dashboard: Installed Apps/Sauce Labs/Sauce Labs - VDC 
- **VDC Tests failed and errored by team**: from Dashboard: Installed Apps/Sauce Labs/Sauce Labs - VDC 
- **VDC Tests passed**: from Dashboard: Installed Apps/Sauce Labs/Sauce Labs - VDC 
- **VDC Tests per status count**: from Dashboard: Installed Apps/Sauce Labs/Sauce Labs - VDC 
- **VDC Tests run total**: from Dashboard: Installed Apps/Sauce Labs/Sauce Labs - VDC

### Metric Searches


## Search Table

|app\_topic|search\_name|type|origin|search|
|:--|:--|:--|:--|:--|
|Sauce Labs|Average runtime of VDC tests by date|Logs|Installed Apps/Sauce Labs/Sauce Labs - VDC|\_sourceCategory={{Logsdatasource}}  <br />\| json field=\_raw "duration\_sec", "status", "data\_type" as duration, status, data\_type<br />\| where (status matches /complete\|errored\|passed\|failed/ and data\_type matches "vdc\_test")<br />\| timeslice 1h as \_timeslice<br />\| avg(duration) as avg\_duration by \_timeslice|
|Sauce Labs|Most recent failed VDC tests|Logs|Installed Apps/Sauce Labs/Sauce Labs - VDC|\_sourceCategory={{Logsdatasource}}  <br />\| json field=\_raw "id", "team\_name", "status", "data\_type", "modification\_time", "sl\_url" as job\_id, team\_name, status, data\_type, modification\_time, sl\_url<br />\| tourl(concat(sl\_url, "?utm\_source=sl\_sumo\_app"), "Job Details") as sl\_link<br />\| where (status matches /errored\|failed/ and data\_type matches "vdc\_test")<br />\| count by job\_id, team\_name, sl\_link, modification\_time<br />\| top 10 team\_name, job\_id, sl\_link by modification\_time|
|Sauce Labs|Number of VDC tests by date|Logs|Installed Apps/Sauce Labs/Sauce Labs - VDC|\_sourceCategory={{Logsdatasource}}  <br />\| json field=\_raw "id", "status", "data\_type" as job\_id, status, data\_type<br />\| where (status matches /complete\|errored\|passed\|failed/ and data\_type matches "vdc\_test")<br />\| timeslice 15m as \_timeslice <br />\| count(job\_id) by \_timeslice|
|Sauce Labs|VDC Tests Browser/Os count|Logs|Installed Apps/Sauce Labs/Sauce Labs - VDC|\_sourceCategory={{Logsdatasource}}  <br />\| json field=\_raw "browser\_name", "browser\_version", "data\_type", "os\_name", "os\_version", "status", "id" as browser, browserVersion, data\_type, os, osVersion, status, job\_id<br />\| where (status matches /complete\|errored\|passed\|failed/ and data\_type matches "vdc\_test")<br />\| concat (browser, " ", browserVersion, " ", os, " ", osVersion) as browserOs<br />\| timeslice 15m as \_timeslice<br />\| count(job\_id) by \_timeslice, browserOs<br />\| transpose row \_timeslice column browserOs|
|Sauce Labs|VDC Tests by framework|Logs|Installed Apps/Sauce Labs/Sauce Labs - VDC|\_sourceCategory={{Logsdatasource}}  <br />\| json field=\_raw "id", "status", "data\_type", "automation\_backend" as job\_id, status, data\_type, framework<br />\| where (status matches /complete\|errored\|passed\|failed/ and data\_type matches "vdc\_test")<br />\| timeslice 15m as \_timeslice<br />\| count(job\_id) by \_timeslice, framework<br />\| transpose row \_timeslice column framework|
|Sauce Labs|VDC Tests by status|Logs|Installed Apps/Sauce Labs/Sauce Labs - VDC|\_sourceCategory={{Logsdatasource}}  <br />\| json field=\_raw "id", "status", "data\_type" as job\_id, status, data\_type<br />\| where (status matches /complete\|errored\|passed\|failed/ and data\_type matches "vdc\_test")<br />\| count(job\_id) by status|
|Sauce Labs|VDC Tests errored|Logs|Installed Apps/Sauce Labs/Sauce Labs - VDC|\_sourceCategory={{Logsdatasource}}  <br />\| json field=\_raw "id", "status", "data\_type" as job\_id, status, data\_type<br />\| where (status matches /errored/ and data\_type matches "vdc\_test")<br />\| count(job\_id) |
|Sauce Labs|VDC Tests failed|Logs|Installed Apps/Sauce Labs/Sauce Labs - VDC|\_sourceCategory={{Logsdatasource}}  <br />\| json field=\_raw "id", "status", "data\_type" as job\_id, status, data\_type<br />\| where (status matches /failed/ and data\_type matches "vdc\_test")<br />\| count(job\_id) |
|Sauce Labs|VDC Tests failed and errored by browser/os count|Logs|Installed Apps/Sauce Labs/Sauce Labs - VDC|\_sourceCategory={{Logsdatasource}}  <br />\| json field=\_raw "browser\_name", "browser\_version", "data\_type", "os\_name", "os\_version", "status", "id" as browser, browserVersion, data\_type, os, osVersion, status, job\_id<br />\| where (status matches /errored\|failed/ and data\_type matches "vdc\_test")<br />\| concat (browser, " ", browserVersion, " ", os, " ", osVersion) as browserOs<br />\| count(job\_id) by browserOs|
|Sauce Labs|VDC Tests failed and errored by team|Logs|Installed Apps/Sauce Labs/Sauce Labs - VDC|\_sourceCategory={{Logsdatasource}}  <br />\| json field=\_raw "id", "status", "data\_type", "team\_name" as job\_id, status, data\_type, team\_name<br />\| where (status matches /errored\|failed/ and data\_type matches "vdc\_test")<br />\| count(job\_id) by team\_name|
|Sauce Labs|VDC Tests passed|Logs|Installed Apps/Sauce Labs/Sauce Labs - VDC|\_sourceCategory={{Logsdatasource}}  <br />\| json field=\_raw "id", "status", "data\_type" as job\_id, status, data\_type<br />\| where (status matches /passed/ and data\_type matches "vdc\_test")<br />\| count(job\_id) |
|Sauce Labs|VDC Tests per status count|Logs|Installed Apps/Sauce Labs/Sauce Labs - VDC|\_sourceCategory={{Logsdatasource}}  <br />\| json field=\_raw "id", "status", "data\_type" as job\_id, status, data\_type<br />\| where (status matches /complete\|errored\|passed\|failed/ and data\_type matches "vdc\_test")<br />\| timeslice 15m as \_timeslice <br />\| count(job\_id) by \_timeslice, status<br />\| transpose row \_timeslice column status|
|Sauce Labs|VDC Tests run total|Logs|Installed Apps/Sauce Labs/Sauce Labs - VDC|\_sourceCategory={{Logsdatasource}}  <br />\| json field=\_raw "id", "status", "data\_type" as job\_id, status, data\_type<br />\| where (status matches /complete\|errored\|passed\|failed/ and data\_type matches "vdc\_test")<br />\| count(job\_id)|

