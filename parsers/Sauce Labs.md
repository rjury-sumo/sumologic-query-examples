# Parsers For Sauce Labs

## Parser:
```
| json field=_raw "browser_name", "browser_version", "data_type", "os_name", "os_version", "status", "id" as browser, browserVersion, data_type, os, osVersion, status, job_id
 
```
### Use Cases:
Average runtime of VDC tests by date, Most recent failed VDC tests, VDC Tests Browser/Os count, VDC Tests by framework, VDC Tests by status, VDC Tests errored, VDC Tests failed, VDC Tests failed and errored by browser/os count, VDC Tests failed and errored by team, VDC Tests passed, VDC Tests run total



## Parser:
```
| json field=_raw "duration_sec", "status", "data_type" as duration, status, data_type
 
```
### Use Cases:
Average runtime of VDC tests by date, VDC Tests by framework, VDC Tests by status, VDC Tests errored, VDC Tests failed, VDC Tests failed and errored by browser/os count, VDC Tests failed and errored by team, VDC Tests passed, VDC Tests run total



## Parser:
```
| json field=_raw "id", "status", "data_type" as job_id, status, data_type
 
```
### Use Cases:
Average runtime of VDC tests by date, Most recent failed VDC tests, Number of VDC tests by date, VDC Tests Browser/Os count, VDC Tests by framework, VDC Tests by status, VDC Tests errored, VDC Tests failed, VDC Tests failed and errored by browser/os count, VDC Tests failed and errored by team, VDC Tests passed, VDC Tests per status count, VDC Tests run total



## Parser:
```
| json field=_raw "id", "status", "data_type", "automation_backend" as job_id, status, data_type, framework
 
```
### Use Cases:
VDC Tests by framework, VDC Tests by status, VDC Tests errored, VDC Tests failed, VDC Tests failed and errored by browser/os count, VDC Tests run total



## Parser:
```
| json field=_raw "id", "status", "data_type", "team_name" as job_id, status, data_type, team_name
 
```
### Use Cases:
VDC Tests by framework, VDC Tests by status, VDC Tests errored, VDC Tests failed, VDC Tests failed and errored by browser/os count, VDC Tests failed and errored by team, VDC Tests run total



## Parser:
```
| json field=_raw "id", "team_name", "status", "data_type", "modification_time", "sl_url" as job_id, team_name, status, data_type, modification_time, sl_url
 
```
### Use Cases:
Average runtime of VDC tests by date, Most recent failed VDC tests, VDC Tests by framework, VDC Tests by status, VDC Tests errored, VDC Tests failed, VDC Tests failed and errored by browser/os count, VDC Tests failed and errored by team, VDC Tests passed, VDC Tests run total


