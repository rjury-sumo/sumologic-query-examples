# Parsers For Google Cloud Storage

**Google Cloud Storage/Bucket Operations/Google Cloud Storage - Bucket Operations**
```
_sourceCategory={{Logsdatasource}}  logName principalEmail resource timestamp 
| json "message.data.resource.type" as type
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type="gcs_bucket" and log_name matches "projects/*/logs/cloudaudit.googleapis.com%2*"
| json "message.data" as data
| json field=data "timestamp", "severity", "resource.labels", "resource.labels.project_id", "resource.labels.bucket_name", "protoPayload.methodName", "protoPayload.authenticationInfo.principalEmail" as timestamp, severity, labels, project, bucket, method, user
```

**Google Cloud Storage/Buckets/Bucket Statistics**
```
_sourceCategory={{Logsdatasource}}  logName "\"type\":\"gcs_bucket\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2*"
| json "message.data.resource.labels", "message.data.protoPayload.resourceName", "nullField" as labels, name, null nodrop
| json field=labels "project_id", "bucket_name", "location" as project, bucket_name, location
| parse regex "\"methodName\":\"(?<resource_type>[^\"]+)\.(?<method>[^\"]+?)\""
```

**Google Cloud Storage/Buckets/Creations and Deletions**
```
_sourceCategory={{Logsdatasource}}  data logName resource "\"type\":\"gcs_bucket\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2*"
| json "message.data.resource.labels", "message.data.protoPayload.methodName" as labels, method
| where method matches "*create" or method matches "*delete"
| json field=labels "project_id", "bucket_name", "location" as project, bucket_name, location
```

**Google Cloud Storage/Buckets/Operations by Bucket - Outlier**
```
_sourceCategory={{Logsdatasource}}  data logName resource "\"type\":\"gcs_bucket\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2*"
| json "message.data.resource.labels" as labels
| json field=labels "project_id", "bucket_name", "location" as project, bucket_name, location
```

**Google Cloud Storage/Buckets/Operations by Bucket Over Time**
```
_sourceCategory={{Logsdatasource}}  data logName resource "\"type\":\"gcs_bucket\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2*"
| json "message.data.resource.labels" as labels
| json field=labels "project_id", "bucket_name", "location" as project, bucket_name, location
```

**Google Cloud Storage/Buckets/Operations Over Time**
```
_sourceCategory={{Logsdatasource}}  data logName resource "\"type\":\"gcs_bucket\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2*"
| json "message.data.resource.labels", "message.data.protoPayload.methodName" as labels, method
| json field=labels "project_id", "bucket_name", "location" as project, bucket_name, location
```

**Google Cloud Storage/Buckets/Request Location**
```
_sourceCategory={{Logsdatasource}}  data logName resource callerIp "\"type\":\"gcs_bucket\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2*"
| json "message.data.resource.labels", "message.data.protoPayload.requestMetadata.callerIp" as labels, caller_ip
| json field=labels "project_id", "bucket_name", "location" as project, bucket_name, location
```

**Google Cloud Storage/Overview/Operations**
```
_sourceCategory={{Logsdatasource}}  data logName resource "\"type\":\"gcs_bucket\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2*"
| json "message.data.resource.labels", "message.data.protoPayload.methodName" as labels, method
| json field=labels "project_id", "bucket_name", "location" as project, bucket_name, location
```

**Google Cloud Storage/Overview/Operations by Project**
```
_sourceCategory={{Logsdatasource}}  data logName resource "\"type\":\"gcs_bucket\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2*"
| json "message.data.resource.labels" as labels
| json field=labels "project_id", "bucket_name", "location" as project, bucket_name, location
```

**Google Cloud Storage/Overview/Request Location**
```
_sourceCategory={{Logsdatasource}}  data logName resource callerIp "\"type\":\"gcs_bucket\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2*"
| json "message.data.resource.labels", "message.data.protoPayload.requestMetadata.callerIp" as labels, caller_ip
| json field=labels "project_id", "bucket_name", "location" as project, bucket_name, location
```

**Google Cloud Storage/Overview/Top 10 Buckets by Operations**
```
_sourceCategory={{Logsdatasource}}  logName "\"type\":\"gcs_bucket\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2*"
| json "message.data.resource.labels", "message.data.protoPayload.resourceName", "nullField" as labels, name, null nodrop
| json field=labels "project_id", "bucket_name", "location" as project, bucket_name, location
| parse regex "\"methodName\":\"(?<resource_type>[^\"]+)\.(?<method>[^\"]+?)\""
```

**Google Cloud Storage/Overview/Top 10 Locations by Operations**
```
_sourceCategory={{Logsdatasource}}  logName "\"type\":\"gcs_bucket\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2*"
| json "message.data.resource.labels", "message.data.protoPayload.resourceName", "nullField" as labels, name, null nodrop
| json field=labels "project_id", "bucket_name", "location" as project, bucket_name, location
| parse regex "\"methodName\":\"(?<resource_type>[^\"]+)\.(?<method>[^\"]+?)\""
```

**Google Cloud Storage/Overview/Top 10 Projects by Operations**
```
_sourceCategory={{Logsdatasource}}  logName "\"type\":\"gcs_bucket\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2*"
| json "message.data.resource.labels", "message.data.protoPayload.resourceName", "nullField" as labels, name, null nodrop
| json field=labels "project_id", "bucket_name", "location" as project, bucket_name, location
| parse regex "\"methodName\":\"(?<resource_type>[^\"]+)\.(?<method>[^\"]+?)\""
```

**Google Cloud Storage/Overview/Top 10 Users by Operations**
```
_sourceCategory={{Logsdatasource}}  logName principalEmail "\"type\":\"gcs_bucket\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2*"
| json "message.data.resource.labels", "message.data.protoPayload" as labels, payload
| json field=labels "project_id", "bucket_name", "location" as project, bucket_name, location
| json field=payload "authenticationInfo.principalEmail", "resourceName", "nothingIsHere" as user, name, null nodrop
| parse regex "\"methodName\":\"(?<resource_type>[^\"]+)\.(?<method>[^\"]+?)\""
```

**Google Cloud Storage/User Operations/Google Cloud Storage - User Operations**
```
_sourceCategory={{Logsdatasource}}  logName principalEmail resource timestamp 
| json "message.data.resource.type" as type
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where type="gcs_bucket" and log_name matches "projects/*/logs/cloudaudit.googleapis.com%2*"
| json "message.data" as data
| json field=data "timestamp", "severity", "resource.labels", "resource.labels.project_id", "resource.labels.bucket_name", "protoPayload.methodName", "protoPayload.authenticationInfo.principalEmail" as timestamp, severity, labels, project, bucket, method, user
```

**Google Cloud Storage/Users/Creations and Deletions by User**
```
_sourceCategory={{Logsdatasource}}  logName principalEmail "\"type\":\"gcs_bucket\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2*"
| json "message.data.resource.labels", "message.data.protoPayload.authenticationInfo.principalEmail" as labels, user
| json field=labels "project_id", "bucket_name", "location" as project, bucket_name, location
| parse regex "\"methodName\":\"(?<resource_type>[^\"]+)\.(?<method>[^\"]+?)\""
```

**Google Cloud Storage/Users/Errors by User Over Time**
```
_sourceCategory={{Logsdatasource}}  logName resource severity principalEmail "\"type\":\"gcs_bucket\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2*"
| json "message.data.resource.labels", "message.data.protoPayload.authenticationInfo.principalEmail", "message.data.severity" as labels, user, severity
| json field=labels "project_id", "bucket_name", "location" as project, bucket_name, location
```

**Google Cloud Storage/Users/Location of Users**
```
_sourceCategory={{Logsdatasource}}  callerIp logName principalEmail "\"type\":\"gcs_bucket\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2*"
| json "message.data.resource.labels", "message.data.protoPayload" as labels, payload
| json field=labels "project_id", "bucket_name", "location" as project, bucket_name, location
| json field=payload "authenticationInfo.principalEmail", "requestMetadata.callerIp" as user, caller_ip
```

**Google Cloud Storage/Users/Location of Users with Errors**
```
_sourceCategory={{Logsdatasource}}  callerIp logName principalEmail "\"type\":\"gcs_bucket\"" ("\"severity\":\"WARNING\"" or "\"severity\":\"ERROR\"" or "\"severity\":\"CRITICAL\"" or "\"severity\":\"ALERT\"" or "\"severity\":\"EMERGENCY\"")
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2*"
| json "message.data.resource.labels", "message.data.protoPayload" as labels, payload
| json field=labels "project_id", "bucket_name", "location" as project, bucket_name, location
| json field=payload "authenticationInfo.principalEmail", "requestMetadata.callerIp" as user, caller_ip
```

**Google Cloud Storage/Users/Operations by User - Outlier**
```
_sourceCategory={{Logsdatasource}}  data logName principalEmail "\"type\":\"gcs_bucket\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2*"
| json "message.data.resource.labels", "message.data.protoPayload.authenticationInfo.principalEmail" as labels, user
| json field=labels "project_id", "bucket_name", "location" as project, bucket_name, location
```

**Google Cloud Storage/Users/Recent Errors by User**
```
_sourceCategory={{Logsdatasource}}  logName principalEmail "\"type\":\"gcs_bucket\"" ("\"severity\":\"WARNING\"" or "\"severity\":\"ERROR\"" or "\"severity\":\"CRITICAL\"" or "\"severity\":\"ALERT\"" or "\"severity\":\"EMERGENCY\"")
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2*"
| json "message.data.resource.labels", "message.data.protoPayload", "message.data.timestamp", "message.data.severity" as labels, payload, timestamp, severity
| json field=labels "project_id", "bucket_name", "location" as project, bucket_name, location
| json field=payload "methodName", "authenticationInfo.principalEmail", "resourceName", "status.message" as method, user, resource, message nodrop
```

**Google Cloud Storage/Users/Recent Object Policy Updates by User**
```
_sourceCategory={{Logsdatasource}}  logName principalEmail "\"type\":\"gcs_bucket\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2*"
| json "message.data.resource.labels", "message.data.protoPayload.authenticationInfo.principalEmail" as labels, user
| json field=labels "project_id", "bucket_name", "location" as project, bucket_name, location
| parse regex "\"methodName\":\"(?<resource_type>[^\"]+)\.(?<method>[^\"]+?)\""
| where method = "update"
| json "message.data.protoPayload.serviceData.policyDelta" as policy_deltas
```

**Google Cloud Storage/Users/Top 10 Users by Errors**
```
_sourceCategory={{Logsdatasource}}  logName resource severity principalEmail "\"type\":\"gcs_bucket\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2*"
| json "message.data.resource.labels", "message.data.protoPayload", "message.data.severity" as labels, payload, severity
| json field=labels "project_id", "bucket_name", "location" as project, bucket_name, location
| json field=payload "methodName", "authenticationInfo.principalEmail" as method, user
```

**Google Cloud Storage/Users/User Operations Over Time**
```
_sourceCategory={{Logsdatasource}}  logName resource  "\"type\":\"gcs_bucket\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2*"
| json "message.data.resource.labels", "message.data.protoPayload.authenticationInfo.principalEmail" as labels, user
| json field=labels "project_id", "bucket_name", "location" as project, bucket_name, location
```

**Google Cloud Storage/Users/User Statistics**
```
_sourceCategory={{Logsdatasource}}  logName principalEmail "\"type\":\"gcs_bucket\""
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| where log_name matches "projects/*/logs/cloudaudit.googleapis.com%2*"
| json "message.data.resource.labels", "message.data.protoPayload" as labels, payload
| json field=labels "project_id", "bucket_name", "location" as project, bucket_name, location
| json field=payload "authenticationInfo.principalEmail", "resourceName", "nothingIsHere" as user, name, null nodrop
| parse regex "\"methodName\":\"(?<resource_type>[^\"]+)\.(?<method>[^\"]+?)\""
```


