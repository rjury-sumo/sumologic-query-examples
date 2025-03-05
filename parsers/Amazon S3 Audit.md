# Parsers For Amazon S3 Audit

## Parser:
```
| parse "* * [*] * * * * * \"* HTTP/1.1\" * * * * * * * \"*\" *" as bucket_owner, bucket, time, remoteIP, requester, request_ID, operation, key, request_URI, status_code, error_code, bytes_sent, object_size, total_time, turn_time, referrer, user_agent, version_ID
```
### Use Cases:
Average Latency in Milliseconds by S3 Bucket, Data Added to S3 Bucket, Data Volume Sent in MB by S3 Bucket, Geolocation of Clients, Highly Malicious Threat Table, Requests by Operation, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Locations, Threat Table, Total 4xx/5xx Status Codes by S3 Bucket, Total Requests by S3 Bucket



## Parser:
```
| parse "* * [*] * * * * * \"* HTTP/1.1\" * * * * * * * \"*\" *" as bucket_owner, bucket, time, remoteIP, requester, request_ID, operation, key, request_URI, status_code, error_code, bytes_sent, object_size, total_time, turn_time, referrer, user_agent, version_ID
| json field=raw "labels[*].name" as label_name
```
### Use Cases:
Average Latency in Milliseconds by S3 Bucket, Data Added to S3 Bucket, Data Volume Sent in MB by S3 Bucket, Geolocation of Clients, Highly Malicious Threat Table, Requests by Operation, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Locations, Threat Table, Total 4xx/5xx Status Codes by S3 Bucket, Total Requests by S3 Bucket



## Parser:
```
| parse "* * [*] * * * * * \"* HTTP/1.1\" * * * * * * * \"*\" *" as bucket_owner, bucket, time, remoteIP, requester, request_ID, operation, key, request_URI, status_code, error_code, bytes_sent, object_size, total_time, turn_time, referrer, user_agent, version_ID 
```
### Use Cases:
Average Latency in Milliseconds by S3 Bucket, Data Added to S3 Bucket, Data Volume Sent in MB by S3 Bucket, Geolocation of Clients, Highly Malicious Threat Table, Requests by Operation, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Locations, Threat Table, Total 4xx/5xx Status Codes by S3 Bucket, Total Requests by S3 Bucket



## Parser:
```
| parse "* * [*] * * * * * \"* HTTP/1.1\" * * * * * * * \"*\" *" as bucket_owner, bucket, time, remoteIP, requester, request_ID, operation, key, request_URI, status_code, error_code, bytes_sent, object_size, total_time, turn_time, referrer, user_agent, version_ID 
| parse regex field=operation "[A-Z]+\.(?<operation>[\w.]+)" 
```
### Use Cases:
Average Latency in Milliseconds by S3 Bucket, Data Added to S3 Bucket, Data Volume Sent in MB by S3 Bucket, Geolocation of Clients, Highly Malicious Threat Table, Requests by Operation, Threat by Actors, Threat by Malicious Confidence, Threat Count, Threat Locations, Threat Table, Total 4xx/5xx Status Codes by S3 Bucket, Total Requests by S3 Bucket


