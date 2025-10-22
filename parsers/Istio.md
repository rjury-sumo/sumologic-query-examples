# Parsers For Istio

**Istio/Logs/HTTP Methods**
```
( namespace=istio-system) cluster={{cluster}}
| json field=_raw "log" as log_message
| parse regex field=log_message "\[(?<start_time>.+)\] \"(?<req>.+?)\" (?<response_code>.+?) (?<response_flags>.+?) (?<response_code_details>.+?) (?<con_term_details>.+?) \"(?<upstream_fail_reason>.+?)\" (?<bytes_recvd>.+?) (?<bytes_sent>.+?) (?<duration>.+?) (?<resp>.+?) \"(?<req_fwd_for>.+?)\" \"(?<user_agent>.+?)\" \"(?<request_id>.+?)\" \"(?<request_authority>.+?)\" \"(?<upstream_host>.+?)\" (?<upstream_cluster>.+?) (?<upstream_loacl_address>.+?) (?<downstream_local_address>.+?) (?<downstream_remote_address>.+?) (?<requested_server_name>.+?) (?<route_name>.+?)"
| parse regex field=req "(?<method>.+?) (?<path>.+?) (?<protocol>.+)"
```

**Istio/Logs/Last 10 Errors**
```
 cluster={{cluster}} (error or fail* or except*)
| json field=_raw "log" as msg
| json field=_raw "time" as date_time
```

**Istio/Logs/Last 20 Unsuccessful Requests**
```
 namespace=istio-system cluster={{cluster}}
| json field=_raw "log" as log_message
| parse regex field=log_message "\[(?<start_time>.+)\] \"(?<req>.+?)\" (?<response_code>.+?) (?<response_flags>.+?) (?<response_code_details>.+?) (?<con_term_details>.+?) \"(?<upstream_fail_reason>.+?)\" (?<bytes_recvd>.+?) (?<bytes_sent>.+?) (?<duration>.+?) (?<resp>.+?) \"(?<req_fwd_for>.+?)\" \"(?<user_agent>.+?)\" \"(?<request_id>.+?)\" \"(?<request_authority>.+?)\" \"(?<upstream_host>.+?)\" (?<upstream_cluster>.+?) (?<upstream_loacl_address>.+?) (?<downstream_local_address>.+?) (?<downstream_remote_address>.+?) (?<requested_server_name>.+?) (?<route_name>.+?)"
```

**Istio/Logs/Last 25 Logs**
```
 cluster={{cluster}} 
| json field=_raw "log" as msg
| json field=_raw "time" as date_time
```

**Istio/Logs/Log Reduce**
```
 cluster={{cluster}} 
| json field=_raw "log" as msg
| json field=_raw "time" as date_time
```

**Istio/Logs/Non 200 Response Codes**
```
 namespace=istio-system cluster={{cluster}}
| json field=_raw "log" as log_message
| parse regex field=log_message "\[(?<start_time>.+)\] \"(?<req>.+?)\" (?<response_code>.+?) (?<response_flags>.+?) (?<response_code_details>.+?) (?<con_term_details>.+?) \"(?<upstream_fail_reason>.+?)\" (?<bytes_recvd>.+?) (?<bytessent>.+?) (?<duration>.+?) (?<resp>.+?) \"(?<req_fwd_for>.+?)\" \"(?<user_agent>.+?)\" \"(?<request_id>.+?)\" \"(?<request_authority>.+?)\" \"(?<upstream_host>.+?)\" (?<upstream_cluster>.+?) (?<upstream_loacl_address>.+?) (?<downstream_local_address>.+?) (?<downstream_remote_address>.+?) (?<requested_server_name>.+?) (?<route_name>.+?)"
```

**Istio/Logs/Top 10 Errors**
```
 cluster={{cluster}} (error or fail* or except*)
| json field=_raw "log" as msg
| json field=_raw "time" as date_time
```

**Istio/Logs/Top 5 Paths**
```
 namespace=istio-system cluster={{cluster}}
| json field=_raw "log" as log_message
| parse regex field=log_message "\[(?<start_time>.+)\] \"(?<req>.+?)\" (?<response_code>.+?) (?<response_flags>.+?) (?<response_code_details>.+?) (?<con_term_details>.+?) \"(?<upstream_fail_reason>.+?)\" (?<bytes_recvd>.+?) (?<bytes_sent>.+?) (?<duration>.+?) (?<resp>.+?) \"(?<req_fwd_for>.+?)\" \"(?<user_agent>.+?)\" \"(?<request_id>.+?)\" \"(?<request_authority>.+?)\" \"(?<upstream_host>.+?)\" (?<upstream_cluster>.+?) (?<upstream_loacl_address>.+?) (?<downstream_local_address>.+?) (?<downstream_remote_address>.+?) (?<requested_server_name>.+?) (?<route_name>.+?)"
| parse regex field=req "(?<method>.+?) (?<path>.+?) (?<protocol>.+)"
```


