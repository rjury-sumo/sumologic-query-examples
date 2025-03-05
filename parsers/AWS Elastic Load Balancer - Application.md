# Parsers For AWS Elastic Load Balancer - Application

## Parser:
```
| parse "* * * * * * * * * * * * \"*\" \"*\" * * * \"*\"" as type, datetime, ELB_Server, client, backend, request_processing_time, target_processing_time, response_processing_time, elb_status_code, target_status_code, received_bytes, sent_bytes, request,user_agent,ssl_cipher,ssl_protocol,target_group_arn,trace_id
| parse field=request "* *://*:*/* HTTP" as method, protocol, domain, server_port, path
| parse field=target_group_arn "* " as target_group_arn nodrop
| parse field=client "*:*" as clientIP, port nodrop
| parse field=backend "*:*" as backendIP, backend_port nodrop
 
```
### Use Cases:
4XX and 5XX Status Codes by Backend Instance and ELB, ALB Parser 2.0, Average Req and Resp Processing Time by ELB, Average Target Processing Time by Target Group, Backend Instance and Load Balancer 4XX Status Codes by Client, Backend Instance and Load Balancer 4XX Status Codes by Domain, Backend Instance and Load Balancer 4XX Status Codes by Target Group, Backend Instance and Load Balancer 4XX Status Codes by URI, Backend Instance and Load Balancer 5XX Status Codes by Client, Backend Instance and Load Balancer 5XX Status Codes by Domain, Backend Instance and Load Balancer 5XX Status Codes by Target Group, Backend Instance and Load Balancer 5XX Status Codes by URI, Browsers and Operating Systems, Data Sent and Received in MB, Failed Dispatch Monitoring, Failed Dispatches by Backend, Failed Dispatches by Client, Failed Dispatches By Target Group, Failed Dispatches Count, Latency by Domain, Latency by Load Balancer, Latency by Protocol, Latency by Target Group, Latency by Top 20 Backend Instances, Latency by Top 20 Clients, Latency by Top 20 URI, Requests and Data Volume, Requests by Geolocation, Requests by Load Balancer, Requests by Load Balancer Over Time, Requests by SSL Protocol and Cipher, Requests by Target Group Over Time, Requests by Type Over Time, Target Group Utilization, Total Process Time Latency 90th, 95 pct, Total Requests and Data Volume, Total Requests by Load Balancer



## Parser:
```
| parse "* * * * * * * * * * * * \"*\" \"*\" * * * \"*\"" as type, datetime, ELB_Server, client, backend, request_processing_time, target_processing_time, response_processing_time, elb_status_code, target_status_code, received_bytes, sent_bytes, request,user_agent,ssl_cipher,ssl_protocol,target_group_arn,trace_id
| parse field=request "* *://*:*/* HTTP" as method, protocol, domain, server_port, uri
| parse field=target_group_arn "* " as target_group_arn nodrop
| parse field=client "*:*" as clientIP, port nodrop
| parse field=backend "*:*" as backendIP, backend_port nodrop
 
```
### Use Cases:
4XX and 5XX Status Codes by Backend Instance and ELB, ALB Parser 2.0, Backend Instance and Load Balancer 4XX Status Codes by Client, Backend Instance and Load Balancer 4XX Status Codes by Domain, Backend Instance and Load Balancer 4XX Status Codes by Target Group, Backend Instance and Load Balancer 4XX Status Codes by URI, Backend Instance and Load Balancer 5XX Status Codes by Client, Backend Instance and Load Balancer 5XX Status Codes by Domain, Backend Instance and Load Balancer 5XX Status Codes by Target Group, Backend Instance and Load Balancer 5XX Status Codes by URI, Browsers and Operating Systems, Failed Dispatch Monitoring, Failed Dispatches by Backend, Failed Dispatches by Client, Failed Dispatches By Target Group, Failed Dispatches Count, Latency by Domain, Latency by Load Balancer, Latency by Protocol, Latency by Target Group, Latency by Top 20 Backend Instances, Latency by Top 20 Clients, Latency by Top 20 URI, Requests and Data Volume, Requests by Geolocation, Requests by Load Balancer Over Time, Requests by SSL Protocol and Cipher, Requests by Target Group Over Time, Requests by Type Over Time, Target Group Utilization, Total Process Time Latency 90th, 95 pct, Total Requests and Data Volume, Total Requests by Load Balancer



## Parser:
```
| parse "* * * * * * * * * * * * \"*\" \"*\" * * * \"*\"" as type, datetime, ELB_Server, client, backend, request_processing_time, target_processing_time, response_processing_time, elb_status_code, target_status_code, received_bytes, sent_bytes, request,user_agent,ssl_cipher,ssl_protocol,target_group_arn,trace_id
| parse field=request "* *://*:*/* HTTP" as method, protocol, domain, server_port, uri
| parse field=target_group_arn "arn:* " as target_group_arn nodrop
 
```
### Use Cases:
4XX and 5XX Status Codes by Backend Instance and ELB, ALB Parser 2.0, Backend Instance and Load Balancer 4XX Status Codes by Client, Backend Instance and Load Balancer 4XX Status Codes by Domain, Backend Instance and Load Balancer 4XX Status Codes by Target Group, Backend Instance and Load Balancer 4XX Status Codes by URI, Backend Instance and Load Balancer 5XX Status Codes by Client, Backend Instance and Load Balancer 5XX Status Codes by Domain, Backend Instance and Load Balancer 5XX Status Codes by Target Group, Backend Instance and Load Balancer 5XX Status Codes by URI



## Parser:
```
| parse "* * * * * * * * * * * * \"*\" \"*\" * * *" as type, datetime, ELB_Server, client, backend, request_processing_time, target_processing_time, response_processing_time, elb_status_code, target_status_code, received_bytes, sent_bytes, request,user_agent,ssl_cipher,ssl_protocol,target_group_arn
| parse field=request "* *://*:*/* HTTP" as method, protocol, domain, server_port, path
| parse field=target_group_arn "* " as target_group_arn nodrop
| parse field=client "*:*" as clientIP, port nodrop
| parse field=backend "*:*" as backendIP, backend_port nodrop
 
```
### Use Cases:
4XX and 5XX Status Codes by Backend Instance and ELB, ALB Parser 2.0, Backend Instance and Load Balancer 4XX Status Codes by Client, Backend Instance and Load Balancer 4XX Status Codes by Domain, Backend Instance and Load Balancer 4XX Status Codes by Target Group, Backend Instance and Load Balancer 4XX Status Codes by URI, Backend Instance and Load Balancer 5XX Status Codes by Client, Backend Instance and Load Balancer 5XX Status Codes by Domain, Backend Instance and Load Balancer 5XX Status Codes by Target Group, Backend Instance and Load Balancer 5XX Status Codes by URI, Browsers and Operating Systems, Failed Dispatch Monitoring, Failed Dispatches by Backend, Failed Dispatches by Client, Failed Dispatches By Target Group, Failed Dispatches Count, Latency by Domain, Latency by Load Balancer, Latency by Protocol


