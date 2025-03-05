# Parsers For Google Cloud Load Balancing

## Parser:
```
| json "message.data.resource.type" as type
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels" as labels
| json field=labels "project_id", "zone", "url_map_name" as project, zone, load_balancer
 
```
### Use Cases:
4XX and 5XX Status Codes, Browsers and Operating Systems, Bytes Sent and Received, Google Cloud Load Balancing Recent Requests, Number of Requests - Outlier, Request Location, Requests by Load Balancer, Requests by Load Balancer Over Time, Severity Over Time, Total Requests by Load Balancer



## Parser:
```
| json "message.data.resource.type" as type
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.httpRequest" as labels, http_request
| json field=http_request "status" as status
| json field=labels "project_id", "zone", "url_map_name" as project, zone, load_balancer
| json field=http_request "remoteIp" as remote_ip
 
```
### Use Cases:
4XX and 5XX Status Codes, 4XX Status Code Locations, 4XX Status Codes per Load Balancer, 5XX Status Code Locations, 5XX Status Codes per Load Balancer, Browsers and Operating Systems, Bytes Sent and Received, Google Cloud Load Balancing Recent Requests, KBs Sent, Received by Number of Requests, Number of Requests - Outlier, Request Location, Requests by Load Balancer, Requests by Load Balancer Over Time, Requests by Type Over Time, Severity Over Time, Status Codes Over Time, Status Codes per Load Balancer, Status Codes per Project, Status Details Breakdown, Total Requests by Load Balancer



## Parser:
```
| json "message.data.resource.type" as type
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.httpRequest" as labels, http_request
| json field=labels "project_id", "zone", "url_map_name" as project, zone, load_balancer
| json field=http_request "remoteIp" as remote_ip
 
```
### Use Cases:
4XX and 5XX Status Codes, Browsers and Operating Systems, Bytes Sent and Received, Google Cloud Load Balancing Recent Requests, Number of Requests - Outlier, Request Location, Requests by Load Balancer, Requests by Load Balancer Over Time, Requests by Type Over Time, Severity Over Time, Total Requests by Load Balancer



## Parser:
```
| json "message.data.resource.type" as type
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.httpRequest" as labels, http_request
| json field=labels "project_id", "zone", "url_map_name" as project, zone, load_balancer
| json field=http_request "requestMethod" as method
 
```
### Use Cases:
4XX and 5XX Status Codes, Browsers and Operating Systems, Bytes Sent and Received, Google Cloud Load Balancing Recent Requests, Number of Requests - Outlier, Request Location, Requests by Load Balancer, Requests by Load Balancer Over Time, Requests by Type Over Time, Severity Over Time, Total Requests by Load Balancer



## Parser:
```
| json "message.data.resource.type" as type
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.httpRequest" as labels, http_request
| json field=labels "project_id", "zone", "url_map_name" as project, zone, load_balancer
| json field=http_request "requestSize", "responseSize" as request_size, response_size
 
```
### Use Cases:
4XX and 5XX Status Codes, Browsers and Operating Systems, Bytes Sent and Received, Google Cloud Load Balancing Recent Requests, KBs Sent, Received by Number of Requests, Number of Requests - Outlier, Request Location, Requests by Load Balancer, Requests by Load Balancer Over Time, Requests by Type Over Time, Severity Over Time, Total Requests by Load Balancer



## Parser:
```
| json "message.data.resource.type" as type
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.httpRequest" as labels, http_request
| json field=labels "project_id", "zone", "url_map_name" as project, zone, load_balancer
| json field=http_request "status" as status
 
```
### Use Cases:
4XX and 5XX Status Codes, Browsers and Operating Systems, Bytes Sent and Received, Google Cloud Load Balancing Recent Requests, KBs Sent, Received by Number of Requests, Number of Requests - Outlier, Request Location, Requests by Load Balancer, Requests by Load Balancer Over Time, Requests by Type Over Time, Severity Over Time, Status Codes Over Time, Status Codes per Project, Status Details Breakdown, Total Requests by Load Balancer



## Parser:
```
| json "message.data.resource.type" as type
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.httpRequest" as labels, http_request
| json field=labels "project_id", "zone", "url_map_name" as project, zone, load_balancer
| json field=http_request "status" as status_code
 
```
### Use Cases:
4XX and 5XX Status Codes, Browsers and Operating Systems, Bytes Sent and Received, Google Cloud Load Balancing Recent Requests, Request Location, Requests by Load Balancer, Severity Over Time



## Parser:
```
| json "message.data.resource.type" as type
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.httpRequest" as labels, http_request
| json field=labels "project_id", "zone", "url_map_name" as project, zone, load_balancer
| json field=http_request "userAgent" as user_agent
 
```
### Use Cases:
Browsers and Operating Systems, Bytes Sent and Received, Google Cloud Load Balancing Recent Requests, Request Location, Requests by Load Balancer, Severity Over Time



## Parser:
```
| json "message.data.resource.type" as type
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.httpRequest", "message.data.timestamp" as labels, http_request, timestamp
| json field=labels "project_id", "zone", "url_map_name" as project, zone, load_balancer
| json field=http_request "requestMethod", "remoteIp", "responseSize", "requestSize", "status" as method, remote_ip, bytes_sent, bytes_received, status
 
```
### Use Cases:
Google Cloud Load Balancing Recent Requests



## Parser:
```
| json "message.data.resource.type" as type
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.jsonPayload" as labels, payload
| json field=labels "project_id", "zone", "url_map_name" as project, zone, load_balancer
| json field=payload "statusDetails" as status
 
```
### Use Cases:
4XX and 5XX Status Codes, Browsers and Operating Systems, Bytes Sent and Received, Google Cloud Load Balancing Recent Requests, KBs Sent, Received by Number of Requests, Number of Requests - Outlier, Request Location, Requests by Load Balancer, Requests by Load Balancer Over Time, Requests by Type Over Time, Severity Over Time, Status Codes per Project, Status Details Breakdown, Total Requests by Load Balancer



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels" as labels
| json field=labels "project_id", "zone", "url_map_name" as project, zone, load_balancer
 
```
### Use Cases:
4XX and 5XX Status Codes, Browsers and Operating Systems, Bytes Sent and Received, Google Cloud Load Balancing Recent Requests, Number of Requests - Outlier, Request Location, Requests by Load Balancer, Requests by Load Balancer Over Time, Severity Over Time



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.httpRequest.status" as labels, status
| json field=labels "project_id", "zone", "url_map_name" as project, zone, load_balancer
 
```
### Use Cases:
4XX and 5XX Status Codes, 4XX Status Code Locations, 4XX Status Codes per Load Balancer, 5XX Status Codes per Load Balancer, Browsers and Operating Systems, Bytes Sent and Received, Google Cloud Load Balancing Recent Requests, KBs Sent, Received by Number of Requests, Number of Requests - Outlier, Request Location, Requests by Load Balancer, Requests by Load Balancer Over Time, Requests by Type Over Time, Severity Over Time, Status Codes Over Time, Status Codes per Load Balancer, Status Codes per Project, Status Details Breakdown, Total Requests by Load Balancer



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.httpRequest" as labels, http_request
| json field=labels "project_id", "zone", "url_map_name" as project, zone, load_balancer
 
```
### Use Cases:
Bytes Sent and Received, Google Cloud Load Balancing Recent Requests, Request Location, Requests by Load Balancer, Severity Over Time



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.httpRequest" as labels, http_request
| json field=labels "project_id", "zone", "url_map_name" as project, zone, load_balancer
| json field=http_request "requestSize", "responseSize" as request_size, response_size
 
```
### Use Cases:
Bytes Sent and Received, Google Cloud Load Balancing Recent Requests, Request Location, Severity Over Time



## Parser:
```
| parse regex "\"logName\":\"(?<log_name>[^\"]+)\"" 
| json "message.data.resource.labels", "message.data.severity" as labels, severity
| json field=labels "project_id", "zone", "url_map_name" as project, zone, load_balancer
 
```
### Use Cases:
Google Cloud Load Balancing Recent Requests, Severity Over Time


