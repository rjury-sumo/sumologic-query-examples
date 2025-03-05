# Parsers For Google Cloud Storage

## Parser:
```
| json "message.data.resource.type" as type
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data" as data
| json field=data "timestamp", "severity", "resource.labels", "resource.labels.project_id", "resource.labels.bucket_name", "protoPayload.methodName", "protoPayload.authenticationInfo.principalEmail" as timestamp, severity, labels, project, bucket, method, user
 
```
### Use Cases:
Google Cloud Storage - Bucket Operations, Google Cloud Storage - User Operations



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels" as labels
| json field=labels "project_id", "bucket_name", "location" as project, bucket_name, location
 
```
### Use Cases:
Bucket Statistics, Creations and Deletions, Google Cloud Storage - Bucket Operations, Google Cloud Storage - User Operations, Operations, Operations by Bucket - Outlier, Operations by Bucket Over Time, Operations by Project, Operations Over Time, Request Location, Top 10 Buckets by Operations, Top 10 Locations by Operations, Top 10 Projects by Operations, Top 10 Users by Operations



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.protoPayload.authenticationInfo.principalEmail" as labels, user
| json field=labels "project_id", "bucket_name", "location" as project, bucket_name, location
 
```
### Use Cases:
Bucket Statistics, Creations and Deletions, Creations and Deletions by User, Errors by User Over Time, Google Cloud Storage - Bucket Operations, Google Cloud Storage - User Operations, Location of Users, Operations, Operations by Bucket - Outlier, Operations by Bucket Over Time, Operations by Project, Operations by User - Outlier, Operations Over Time, Recent Errors by User, Recent Object Policy Updates by User, Request Location, Top 10 Buckets by Operations, Top 10 Locations by Operations, Top 10 Projects by Operations, Top 10 Users by Errors, Top 10 Users by Operations, User Operations Over Time, User Statistics



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.protoPayload.authenticationInfo.principalEmail" as labels, user
| json field=labels "project_id", "bucket_name", "location" as project, bucket_name, location
| parse regex "\"methodName\":\"(?<resource_type>[^\"]+)\.(?<method>[^\"]+?)\""
 
```
### Use Cases:
Bucket Statistics, Creations and Deletions, Creations and Deletions by User, Errors by User Over Time, Google Cloud Storage - Bucket Operations, Google Cloud Storage - User Operations, Operations, Operations by Bucket - Outlier, Operations by Bucket Over Time, Operations by Project, Operations by User - Outlier, Operations Over Time, Recent Object Policy Updates by User, Request Location, Top 10 Buckets by Operations, Top 10 Locations by Operations, Top 10 Projects by Operations, Top 10 Users by Operations



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.protoPayload.authenticationInfo.principalEmail" as labels, user
| json field=labels "project_id", "bucket_name", "location" as project, bucket_name, location
| parse regex "\"methodName\":\"(?<resource_type>[^\"]+)\.(?<method>[^\"]+?)\""
| json "message.data.protoPayload.serviceData.policyDelta" as policy_deltas
 
```
### Use Cases:
Bucket Statistics, Creations and Deletions, Google Cloud Storage - Bucket Operations, Google Cloud Storage - User Operations, Operations, Operations by Bucket - Outlier, Operations by Bucket Over Time, Operations by Project, Operations Over Time, Recent Object Policy Updates by User, Request Location, Top 10 Buckets by Operations, Top 10 Locations by Operations, Top 10 Projects by Operations, Top 10 Users by Operations



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.protoPayload.authenticationInfo.principalEmail", "message.data.severity" as labels, user, severity
| json field=labels "project_id", "bucket_name", "location" as project, bucket_name, location
 
```
### Use Cases:
Bucket Statistics, Creations and Deletions, Errors by User Over Time, Google Cloud Storage - Bucket Operations, Google Cloud Storage - User Operations, Operations, Operations by Bucket - Outlier, Operations by Bucket Over Time, Operations by Project, Operations by User - Outlier, Operations Over Time, Recent Object Policy Updates by User, Request Location, Top 10 Buckets by Operations, Top 10 Locations by Operations, Top 10 Projects by Operations, Top 10 Users by Operations



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.protoPayload.methodName" as labels, method
| json field=labels "project_id", "bucket_name", "location" as project, bucket_name, location
 
```
### Use Cases:
Bucket Statistics, Creations and Deletions, Google Cloud Storage - Bucket Operations, Google Cloud Storage - User Operations, Operations, Operations by Bucket - Outlier, Operations by Bucket Over Time, Operations Over Time, Request Location, Top 10 Locations by Operations, Top 10 Users by Operations



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.protoPayload.requestMetadata.callerIp" as labels, caller_ip
| json field=labels "project_id", "bucket_name", "location" as project, bucket_name, location
 
```
### Use Cases:
Bucket Statistics, Creations and Deletions, Google Cloud Storage - Bucket Operations, Google Cloud Storage - User Operations, Operations by Bucket - Outlier, Operations by Bucket Over Time, Operations Over Time, Request Location



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.protoPayload.resourceName", "nullField" as labels, name, null nodrop
| json field=labels "project_id", "bucket_name", "location" as project, bucket_name, location
| parse regex "\"methodName\":\"(?<resource_type>[^\"]+)\.(?<method>[^\"]+?)\""
 
```
### Use Cases:
Bucket Statistics, Creations and Deletions, Google Cloud Storage - Bucket Operations, Google Cloud Storage - User Operations, Operations, Operations by Bucket - Outlier, Operations by Bucket Over Time, Operations Over Time, Request Location, Top 10 Buckets by Operations, Top 10 Locations by Operations, Top 10 Projects by Operations, Top 10 Users by Operations



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.protoPayload" as labels, payload
| json field=labels "project_id", "bucket_name", "location" as project, bucket_name, location
| json field=payload "authenticationInfo.principalEmail", "requestMetadata.callerIp" as user, caller_ip
 
```
### Use Cases:
Bucket Statistics, Creations and Deletions, Creations and Deletions by User, Errors by User Over Time, Google Cloud Storage - Bucket Operations, Google Cloud Storage - User Operations, Location of Users, Location of Users with Errors, Operations, Operations by Bucket - Outlier, Operations by Bucket Over Time, Operations by Project, Operations by User - Outlier, Operations Over Time, Recent Errors by User, Recent Object Policy Updates by User, Request Location, Top 10 Buckets by Operations, Top 10 Locations by Operations, Top 10 Projects by Operations, Top 10 Users by Errors, Top 10 Users by Operations, User Operations Over Time, User Statistics



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.protoPayload" as labels, payload
| json field=labels "project_id", "bucket_name", "location" as project, bucket_name, location
| json field=payload "authenticationInfo.principalEmail", "resourceName", "nothingIsHere" as user, name, null nodrop
| parse regex "\"methodName\":\"(?<resource_type>[^\"]+)\.(?<method>[^\"]+?)\""
 
```
### Use Cases:
Bucket Statistics, Creations and Deletions, Creations and Deletions by User, Errors by User Over Time, Google Cloud Storage - Bucket Operations, Google Cloud Storage - User Operations, Operations, Operations by Bucket - Outlier, Operations by Bucket Over Time, Operations by Project, Operations by User - Outlier, Operations Over Time, Recent Object Policy Updates by User, Request Location, Top 10 Buckets by Operations, Top 10 Locations by Operations, Top 10 Projects by Operations, Top 10 Users by Operations, User Statistics



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.protoPayload", "message.data.severity" as labels, payload, severity
| json field=labels "project_id", "bucket_name", "location" as project, bucket_name, location
| json field=payload "methodName", "authenticationInfo.principalEmail" as method, user
 
```
### Use Cases:
Bucket Statistics, Creations and Deletions, Creations and Deletions by User, Errors by User Over Time, Google Cloud Storage - Bucket Operations, Google Cloud Storage - User Operations, Location of Users, Operations, Operations by Bucket - Outlier, Operations by Bucket Over Time, Operations by Project, Operations by User - Outlier, Operations Over Time, Recent Object Policy Updates by User, Request Location, Top 10 Buckets by Operations, Top 10 Locations by Operations, Top 10 Projects by Operations, Top 10 Users by Errors, Top 10 Users by Operations, User Statistics



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.protoPayload", "message.data.timestamp", "message.data.severity" as labels, payload, timestamp, severity
| json field=labels "project_id", "bucket_name", "location" as project, bucket_name, location
| json field=payload "methodName", "authenticationInfo.principalEmail", "resourceName", "status.message" as method, user, resource, message nodrop
 
```
### Use Cases:
Bucket Statistics, Creations and Deletions, Creations and Deletions by User, Errors by User Over Time, Google Cloud Storage - Bucket Operations, Google Cloud Storage - User Operations, Location of Users, Operations, Operations by Bucket - Outlier, Operations by Bucket Over Time, Operations by Project, Operations by User - Outlier, Operations Over Time, Recent Errors by User, Recent Object Policy Updates by User, Request Location, Top 10 Buckets by Operations, Top 10 Locations by Operations, Top 10 Projects by Operations, Top 10 Users by Errors, Top 10 Users by Operations, User Statistics


