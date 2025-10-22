# Parsers For Sauce Labs

**Sauce Labs/VDC/Average runtime of VDC tests by date**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "duration_sec", "status", "data_type" as duration, status, data_type
```

**Sauce Labs/VDC/Most recent failed VDC tests**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "id", "team_name", "status", "data_type", "modification_time", "sl_url" as job_id, team_name, status, data_type, modification_time, sl_url
```

**Sauce Labs/VDC/Number of VDC tests by date**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "id", "status", "data_type" as job_id, status, data_type
```

**Sauce Labs/VDC/Os count**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "browser_name", "browser_version", "data_type", "os_name", "os_version", "status", "id" as browser, browserVersion, data_type, os, osVersion, status, job_id
```

**Sauce Labs/VDC/VDC Tests by framework**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "id", "status", "data_type", "automation_backend" as job_id, status, data_type, framework
```

**Sauce Labs/VDC/VDC Tests by status**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "id", "status", "data_type" as job_id, status, data_type
```

**Sauce Labs/VDC/VDC Tests errored**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "id", "status", "data_type" as job_id, status, data_type
```

**Sauce Labs/VDC/VDC Tests failed**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "id", "status", "data_type" as job_id, status, data_type
```

**Sauce Labs/VDC/VDC Tests failed and errored by team**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "id", "status", "data_type", "team_name" as job_id, status, data_type, team_name
```

**Sauce Labs/VDC/VDC Tests passed**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "id", "status", "data_type" as job_id, status, data_type
```

**Sauce Labs/VDC/VDC Tests per status count**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "id", "status", "data_type" as job_id, status, data_type
```

**Sauce Labs/VDC/VDC Tests run total**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "id", "status", "data_type" as job_id, status, data_type
```


