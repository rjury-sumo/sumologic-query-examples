# Parsers For Amazon S3 Audit

**Amazon S3 Audit/Details/5xx Status Codes by S3 Bucket**
```
_sourceCategory={{S3ServerAccessLogsSource}}   
| parse "* * [*] * * * * * \"* HTTP/1.1\" * * * * * * * \"*\" *" as bucket_owner, bucket, time, remoteIP, requester, request_ID, operation, key, request_URI, status_code, error_code, bytes_sent, object_size, total_time, turn_time, referrer, user_agent, version_ID
```

**Amazon S3 Audit/Details/Average Latency in Milliseconds by S3 Bucket**
```
_sourceCategory={{S3ServerAccessLogsSource}}   
| parse "* * [*] * * * * * \"* HTTP/1.1\" * * * * * * * \"*\" *" as bucket_owner, bucket, time, remoteIP, requester, request_ID, operation, key, request_URI, status_code, error_code, bytes_sent, object_size, total_time, turn_time, referrer, user_agent, version_ID
```

**Amazon S3 Audit/Details/Data Added to S3 Bucket**
```
_sourceCategory={{S3ServerAccessLogsSource}}  PUT| parse "* * [*] * * * * * \"* HTTP/1.1\" * * * * * * * \"*\" *" as bucket_owner, bucket, time, remoteIP, requester, request_ID, operation, key, request_URI, status_code, error_code, bytes_sent, object_size, total_time, turn_time, referrer, user_agent, version_ID 
```

**Amazon S3 Audit/Details/Data Volume Sent in MB by S3 Bucket**
```
_sourceCategory={{S3ServerAccessLogsSource}}   | parse "* * [*] * * * * * \"* HTTP/1.1\" * * * * * * * \"*\" *" as bucket_owner, bucket, time, remoteIP, requester, request_ID, operation, key, request_URI, status_code, error_code, bytes_sent, object_size, total_time, turn_time, referrer, user_agent, version_ID
```

**Amazon S3 Audit/Details/Geolocation of Clients**
```
_sourceCategory={{S3ServerAccessLogsSource}}   | parse "* * [*] * * * * * \"* HTTP/1.1\" * * * * * * * \"*\" *" as bucket_owner, bucket, time, remoteIP, requester, request_ID, operation, key, request_URI, status_code, error_code, bytes_sent, object_size, total_time, turn_time, referrer, user_agent, version_ID
```

**Amazon S3 Audit/Details/Requests by Operation**
```
_sourceCategory={{S3ServerAccessLogsSource}}   
| parse "* * [*] * * * * * \"* HTTP/1.1\" * * * * * * * \"*\" *" as bucket_owner, bucket, time, remoteIP, requester, request_ID, operation, key, request_URI, status_code, error_code, bytes_sent, object_size, total_time, turn_time, referrer, user_agent, version_ID 
| where bucket matches "{{S3_Bucket}}"
| parse regex field=operation "[A-Z]+\.(?<operation>[\w.]+)" 
```

**Amazon S3 Audit/Details/Total Requests by S3 Bucket**
```
_sourceCategory={{S3ServerAccessLogsSource}}   | parse "* * [*] * * * * * \"* HTTP/1.1\" * * * * * * * \"*\" *" as bucket_owner, bucket, time, remoteIP, requester, request_ID, operation, key, request_URI, status_code, error_code, bytes_sent, object_size, total_time, turn_time, referrer, user_agent, version_ID
```

**Amazon S3 Audit/Overview/Data Volume Sent in MB by S3 Bucket**
```
_sourceCategory={{S3ServerAccessLogsSource}}   
| parse "* * [*] * * * * * \"* HTTP/1.1\" * * * * * * * \"*\" *" as bucket_owner, bucket, time, remoteIP, requester, request_ID, operation, key, request_URI, status_code, error_code, bytes_sent, object_size, total_time, turn_time, referrer, user_agent, version_ID
```

**Amazon S3 Audit/Overview/Geolocation of Clients**
```
_sourceCategory={{S3ServerAccessLogsSource}}   
| parse "* * [*] * * * * * \"* HTTP/1.1\" * * * * * * * \"*\" *" as bucket_owner, bucket, time, remoteIP, requester, request_ID, operation, key, request_URI, status_code, error_code, bytes_sent, object_size, total_time, turn_time, referrer, user_agent, version_ID
```

**Amazon S3 Audit/Overview/Requests by Operation**
```
_sourceCategory={{S3ServerAccessLogsSource}}   
| parse "* * [*] * * * * * \"* HTTP/1.1\" * * * * * * * \"*\" *" as bucket_owner, bucket, time, remoteIP, requester, request_ID, operation, key, request_URI, status_code, error_code, bytes_sent, object_size, total_time, turn_time, referrer, user_agent, version_ID 
| where bucket matches "{{S3_Bucket}}"
| parse regex field=operation "[A-Z]+\.(?<operation>[\w.]+)" 
```

**Amazon S3 Audit/Overview/Total Requests by S3 Bucket**
```
_sourceCategory={{S3ServerAccessLogsSource}}   
| parse "* * [*] * * * * * \"* HTTP/1.1\" * * * * * * * \"*\" *" as bucket_owner, bucket, time, remoteIP, requester, request_ID, operation, key, request_URI, status_code, error_code, bytes_sent, object_size, total_time, turn_time, referrer, user_agent, version_ID
```

**Amazon S3 Audit/Threat Intel/Highly Malicious Threat Table**
```
_sourceCategory={{S3ServerAccessLogsSource}}   
| parse "* * [*] * * * * * \"* HTTP/1.1\" * * * * * * * \"*\" *" as bucket_owner, bucket, time, remoteIP, requester, request_ID, operation, key, request_URI, status_code, error_code, bytes_sent, object_size, total_time, turn_time, referrer, user_agent, version_ID
| where bucket matches "{{S3_Bucket}}"
| count remoteIP, bucket, operation, requester, status_code, user_agent
| where !isPrivateIP(remoteIP)
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=remoteIP 
| where malicious_confidence matches "high"
| json field=raw "labels[*].name" as label_name
```

**Amazon S3 Audit/Threat Intel/Threat by Actors**
```
_sourceCategory={{S3ServerAccessLogsSource}}   
| parse "* * [*] * * * * * \"* HTTP/1.1\" * * * * * * * \"*\" *" as bucket_owner, bucket, time, remoteIP, requester, request_ID, operation, key, request_URI, status_code, error_code, bytes_sent, object_size, total_time, turn_time, referrer, user_agent, version_ID
| where bucket matches "{{S3_Bucket}}"
| count by remoteIP
| where !isPrivateIP(remoteIP)
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=remoteIP 
| where malicious_confidence matches "{{malicious_confidence}}"
| json field=raw "labels[*].name" as label_name
```

**Amazon S3 Audit/Threat Intel/Threat by Malicious Confidence**
```
_sourceCategory={{S3ServerAccessLogsSource}}   
| parse "* * [*] * * * * * \"* HTTP/1.1\" * * * * * * * \"*\" *" as bucket_owner, bucket, time, remoteIP, requester, request_ID, operation, key, request_URI, status_code, error_code, bytes_sent, object_size, total_time, turn_time, referrer, user_agent, version_ID
| where bucket matches "{{S3_Bucket}}"
| count by remoteIP
| where !isPrivateIP(remoteIP)
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=remoteIP 
| where malicious_confidence matches "{{malicious_confidence}}"
| json field=raw "labels[*].name" as label_name
```

**Amazon S3 Audit/Threat Intel/Threat Count**
```
_sourceCategory={{S3ServerAccessLogsSource}}   
| parse "* * [*] * * * * * \"* HTTP/1.1\" * * * * * * * \"*\" *" as bucket_owner, bucket, time, remoteIP, requester, request_ID, operation, key, request_URI, status_code, error_code, bytes_sent, object_size, total_time, turn_time, referrer, user_agent, version_ID
```

**Amazon S3 Audit/Threat Intel/Threat Locations**
```
_sourceCategory={{S3ServerAccessLogsSource}}   
| parse "* * [*] * * * * * \"* HTTP/1.1\" * * * * * * * \"*\" *" as bucket_owner, bucket, time, remoteIP, requester, request_ID, operation, key, request_URI, status_code, error_code, bytes_sent, object_size, total_time, turn_time, referrer, user_agent, version_ID
```

**Amazon S3 Audit/Threat Intel/Threat Table**
```
_sourceCategory={{S3ServerAccessLogsSource}}   
| parse "* * [*] * * * * * \"* HTTP/1.1\" * * * * * * * \"*\" *" as bucket_owner, bucket, time, remoteIP, requester, request_ID, operation, key, request_URI, status_code, error_code, bytes_sent, object_size, total_time, turn_time, referrer, user_agent, version_ID
| where bucket matches "{{S3_Bucket}}"
| count remoteIP, bucket, operation, requester, status_code, user_agent
| where !isPrivateIP(remoteIP)
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=remoteIP 
| where malicious_confidence matches "{{malicious_confidence}}"
| where !isNull(malicious_confidence)
| json field=raw "labels[*].name" as label_name
```


