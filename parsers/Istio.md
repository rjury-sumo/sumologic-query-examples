# Parsers For Istio

## Parser:
```
| json field=_raw "log" as log_message
| parse regex field=log_message "\[(?<start_time>.+)\] \"(?<req>.+?)\" (?<response_code>.+?) (?<response_flags>.+?) (?<response_code_details>.+?) (?<con_term_details>.+?) \"(?<upstream_fail_reason>.+?)\" (?<bytes_recvd>.+?) (?<bytes_sent>.+?) (?<duration>.+?) (?<resp>.+?) \"(?<req_fwd_for>.+?)\" \"(?<user_agent>.+?)\" \"(?<request_id>.+?)\" \"(?<request_authority>.+?)\" \"(?<upstream_host>.+?)\" (?<upstream_cluster>.+?) (?<upstream_loacl_address>.+?) (?<downstream_local_address>.+?) (?<downstream_remote_address>.+?) (?<requested_server_name>.+?) (?<route_name>.+?)"
 `n```
### Use Cases:
HTTP Methods, Last 10 Errors, Last 20 Unsuccessful Requests, Last 25 Logs, Log Reduce, Non 200 Response Codes, Top 10 Errors, Top 5 Paths



## Parser:
```
| json field=_raw "log" as log_message
| parse regex field=log_message "\[(?<start_time>.+)\] \"(?<req>.+?)\" (?<response_code>.+?) (?<response_flags>.+?) (?<response_code_details>.+?) (?<con_term_details>.+?) \"(?<upstream_fail_reason>.+?)\" (?<bytes_recvd>.+?) (?<bytes_sent>.+?) (?<duration>.+?) (?<resp>.+?) \"(?<req_fwd_for>.+?)\" \"(?<user_agent>.+?)\" \"(?<request_id>.+?)\" \"(?<request_authority>.+?)\" \"(?<upstream_host>.+?)\" (?<upstream_cluster>.+?) (?<upstream_loacl_address>.+?) (?<downstream_local_address>.+?) (?<downstream_remote_address>.+?) (?<requested_server_name>.+?) (?<route_name>.+?)"
| parse regex field=req "(?<method>.+?) (?<path>.+?) (?<protocol>.+)"
 `n```
### Use Cases:
HTTP Methods, Last 10 Errors, Last 20 Unsuccessful Requests, Last 25 Logs, Log Reduce, Non 200 Response Codes, Top 10 Errors, Top 5 Paths



## Parser:
```
| json field=_raw "log" as log_message
| parse regex field=log_message "\[(?<start_time>.+)\] \"(?<req>.+?)\" (?<response_code>.+?) (?<response_flags>.+?) (?<response_code_details>.+?) (?<con_term_details>.+?) \"(?<upstream_fail_reason>.+?)\" (?<bytes_recvd>.+?) (?<bytessent>.+?) (?<duration>.+?) (?<resp>.+?) \"(?<req_fwd_for>.+?)\" \"(?<user_agent>.+?)\" \"(?<request_id>.+?)\" \"(?<request_authority>.+?)\" \"(?<upstream_host>.+?)\" (?<upstream_cluster>.+?) (?<upstream_loacl_address>.+?) (?<downstream_local_address>.+?) (?<downstream_remote_address>.+?) (?<requested_server_name>.+?) (?<route_name>.+?)"
 `n```
### Use Cases:
HTTP Methods, Last 10 Errors, Last 20 Unsuccessful Requests, Last 25 Logs, Log Reduce, Non 200 Response Codes, Top 10 Errors, Top 5 Paths



## Parser:
```
| json field=_raw "log" as msg
| json field=_raw "time" as date_time
 `n```
### Use Cases:
HTTP Methods, Last 10 Errors, Last 20 Unsuccessful Requests, Last 25 Logs, Log Reduce, Non 200 Response Codes, Top 10 Errors, Top 5 Paths


