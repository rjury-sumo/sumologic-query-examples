# Parsers For HAProxy - OpenTelemetry

**HAProxy - OpenTelemetry/HAProxy - Error Log Analysis/Backend Errors**
```
webengine.cluster.name={{webengine.cluster.name}} sumo.datasource=haproxy backend deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}}
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message "\s+backend\s+(?<frontend_name>\S+)\s+(?<msg>.*)" nodrop
```

**HAProxy - OpenTelemetry/HAProxy - Error Log Analysis/Client Locations with Critical Errors**
```
webengine.cluster.name={{webengine.cluster.name}} sumo.datasource=haproxy deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}}
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)/1:\s+(?<msg>.*)"
```

**HAProxy - OpenTelemetry/HAProxy - Error Log Analysis/Critical Errors**
```
webengine.cluster.name={{webengine.cluster.name}} sumo.datasource=haproxy deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}}
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)/1:\s+(?<msg>.*)"
```

**HAProxy - OpenTelemetry/HAProxy - Error Log Analysis/Server Down Events**
```
webengine.cluster.name={{webengine.cluster.name}} deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}}  sumo.datasource=haproxy Server
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message "\s+Server\s+(?<frontend_name>\S+)/(?<backend_name>\S+)\s+is\s+DOWN,\s+reason:\s+(?<reason>.*),\s+info:\s+\"(?<info>.*)\",\s+check\s+duration:\s+(?<check_duration>\d+)ms.\s+(?<active>\d+)\s+active\s+and\s+(?<backup>\d+)\s+backup\s+servers\s+left.\s+(?<sessions>\d+) sessions\s+active,\s+(?<requeued>\d+)\s+requeued,\s+(?<remaining>\d+)\s+remaining\s+in\s+queue." nodrop
```

**HAProxy - OpenTelemetry/HAProxy - Error Log Analysis/Top 5 Clients Causing Errors**
```
webengine.cluster.name={{webengine.cluster.name}} sumo.datasource=haproxy deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}}
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)/1:\s+(?<msg>.*)"
```

**HAProxy - OpenTelemetry/HAProxy - Outlier Analysis/Bytes Served - Outlier**
```
webengine.cluster.name={{webengine.cluster.name}} deployment.environment={{deployment.environment}} webengine.node.name={{webengine.node.name}} sumo.datasource=haproxy
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=request_headers "(?<referer>\S+)\|(?<user_agent>[^\"]*)"
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"
```

**HAProxy - OpenTelemetry/HAProxy - Outlier Analysis/Client Errors**
```
webengine.cluster.name={{webengine.cluster.name}} deployment.environment={{deployment.environment}} webengine.node.name={{webengine.node.name}} sumo.datasource=haproxy
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=request_headers "(?<referer>\S+)\|(?<user_agent>[^\"]*)"
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"
```

**HAProxy - OpenTelemetry/HAProxy - Outlier Analysis/Number of Visitors**
```
webengine.cluster.name={{webengine.cluster.name}} deployment.environment={{deployment.environment}} webengine.node.name={{webengine.node.name}} sumo.datasource=haproxy
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=request_headers "(?<referer>\S+)\|(?<user_agent>[^\"]*)"
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"
```

**HAProxy - OpenTelemetry/HAProxy - Outlier Analysis/Server Errors**
```
webengine.cluster.name={{webengine.cluster.name}} deployment.environment={{deployment.environment}} webengine.node.name={{webengine.node.name}} sumo.datasource=haproxy
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=request_headers "(?<referer>\S+)\|(?<user_agent>[^\"]*)"
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"
```

**HAProxy - OpenTelemetry/HAProxy - Overview/Responses Over Time**
```
webengine.cluster.name={{webengine.cluster.name}} sumo.datasource=haproxy
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=request_headers "(?<referer>\S+)\|(?<user_agent>[^\"]*)"
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"
```

**HAProxy - OpenTelemetry/HAProxy - Overview/Top 5 URLs with Errors**
```
webengine.cluster.name={{webengine.cluster.name}} sumo.datasource=haproxy
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=request_headers "(?<referer>\S+)\|(?<user_agent>[^\"]*)"
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"| where status_code matches "4*" or status_code matches "5*" and  !isEmpty(c_ip) |count by status_code,request
```

**HAProxy - OpenTelemetry/HAProxy - Overview/Visitor Locations**
```
webengine.cluster.name={{webengine.cluster.name}} sumo.datasource=haproxy
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=request_headers "(?<referer>\S+)\|(?<user_agent>[^\"]*)"
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"
```

**HAProxy - OpenTelemetry/HAProxy - Threat Analysis/Highly Malicious Threats**
```
webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} deployment.environment={{deployment.environment}} sumo.datasource=haproxy
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=request_headers "(?<referer>\S+)\|(?<user_agent>[^\"]*)"
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"
| count as threat_count by c_ip, method, status_code, bytes_read, referrer, user_agent, request
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=c_ip 
| where  type="ip_address" and !isNull(malicious_confidence) and malicious_confidence matches "high"
| json field=raw "labels[*].name" as label_name 
```

**HAProxy - OpenTelemetry/HAProxy - Threat Analysis/Threat Count**
```
webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} deployment.environment={{deployment.environment}} sumo.datasource=haproxy
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=request_headers "(?<referer>\S+)\|(?<user_agent>[^\"]*)"
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"
| count as ip_count by c_ip
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=c_ip 
| json field=raw "labels[*].name" as label_name 
```

**HAProxy - OpenTelemetry/HAProxy - Threat Analysis/Threat Locations**
```
webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} deployment.environment={{deployment.environment}} sumo.datasource=haproxy
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=request_headers "(?<referer>\S+)\|(?<user_agent>[^\"]*)"
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"
| count as ip_count by c_ip
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=c_ip 
| json field=raw "labels[*].name" as label_name 
```

**HAProxy - OpenTelemetry/HAProxy - Threat Analysis/Threats by Actors**
```
webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} deployment.environment={{deployment.environment}} sumo.datasource=haproxy
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=request_headers "(?<referer>\S+)\|(?<user_agent>[^\"]*)"
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"
| count as ip_count by c_ip
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=c_ip 
| json field=raw "labels[*].name" as label_name 
```

**HAProxy - OpenTelemetry/HAProxy - Threat Analysis/Threats by Malicious Confidence**
```
webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} deployment.environment={{deployment.environment}} sumo.datasource=haproxy
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=request_headers "(?<referer>\S+)\|(?<user_agent>[^\"]*)"
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"
| count as ip_count by c_ip
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=c_ip 
| json field=raw "labels[*].name" as label_name 
```

**HAProxy - OpenTelemetry/HAProxy - Threat Analysis/Threats by Source**
```
webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} deployment.environment={{deployment.environment}} sumo.datasource=haproxy
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=request_headers "(?<referer>\S+)\|(?<user_agent>[^\"]*)"
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"
| count as ip_count by c_ip,  _source
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=c_ip 
| json field=raw "labels[*].name" as label_name 
```

**HAProxy - OpenTelemetry/HAProxy - Threat Analysis/Top 10 Threats**
```
webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} deployment.environment={{deployment.environment}} sumo.datasource=haproxy
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=request_headers "(?<referer>\S+)\|(?<user_agent>[^\"]*)"
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"
| count as threat_count by c_ip, method, status_code, bytes_read, referrer, user_agent, request
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=c_ip 
| where  type="ip_address" and !isNull(malicious_confidence) and malicious_confidence matches "high"
| json field=raw "labels[*].name" as label_name 
```

**HAProxy - OpenTelemetry/HAProxy - Threat Analysis/Top 5 Highly Malicious URLs**
```
webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} deployment.environment={{deployment.environment}} sumo.datasource=haproxy
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=request_headers "(?<referer>\S+)\|(?<user_agent>[^\"]*)"
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"
```

**HAProxy - OpenTelemetry/HAProxy - Trends/Number of Hits by Server - One Day Time Comparison**
```
webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} deployment.environment={{deployment.environment}} sumo.datasource=haproxy
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=request_headers "(?<referer>\S+)\|(?<user_agent>[^\"]*)"
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"
```

**HAProxy - OpenTelemetry/HAProxy - Trends/Responses Over Time**
```
webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} deployment.environment={{deployment.environment}} sumo.datasource=haproxy
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=request_headers "(?<referer>\S+)\|(?<user_agent>[^\"]*)"
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"
```

**HAProxy - OpenTelemetry/HAProxy - Trends/Traffic Distribution by Server**
```
webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} deployment.environment={{deployment.environment}} sumo.datasource=haproxy
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=request_headers "(?<referer>\S+)\|(?<user_agent>[^\"]*)"
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"
```

**HAProxy - OpenTelemetry/HAProxy - Trends/Traffic Volume and Bytes Served**
```
webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} deployment.environment={{deployment.environment}} sumo.datasource=haproxy
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=request_headers "(?<referer>\S+)\|(?<user_agent>[^\"]*)"
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"
```

**HAProxy - OpenTelemetry/HAProxy - Trends/Visitor Locations - One Day Time Comparison**
```
webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} deployment.environment={{deployment.environment}} sumo.datasource=haproxy
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=request_headers "(?<referer>\S+)\|(?<user_agent>[^\"]*)"
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"
```

**HAProxy - OpenTelemetry/HAProxy - Visitor Access Types/Client Locations - 4xx Errors**
```
webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} deployment.environment={{deployment.environment}} sumo.datasource=haproxy
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>[\w\-\.]+) (?<ps>\w+)\[(?<pid>\d+)\]: (?<c_ip>[\w\.]+):(?<c_port>\d+) (?<rs>[^\"]*) (?<TR1>\d+)/(?<Tw>\d+)/(?<Tc>\d+)/(?<Tr>\d+)/(?<Ta>\d+) (?<status_code>\d+) (?<bytes>\d+) (?<req_cookie>\S+) (?<res_cookie>\S+) (?<t_state>[\w-]+) (?<actconn>\d+)/(?<feconn>\d+)/(?<beconn>\d+)\/(?<srv_conn>\d+)/(?<retries>\d+) (?<srv_queue>\d+)/(?<backend_queue>\d+) \"(?<method>\w+) (?<request>[^\"]*) (?<http_version>\w+)" 
```

**HAProxy - OpenTelemetry/HAProxy - Visitor Access Types/Non 200 Response Status Codes**
```
webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} deployment.environment={{deployment.environment}} sumo.datasource=haproxy
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>[\w\-\.]+) (?<ps>\w+)\[(?<pid>\d+)\]: (?<c_ip>[\w\.]+):(?<c_port>\d+) (?<rs>[^\"]*) (?<TR1>\d+)/(?<Tw>\d+)/(?<Tc>\d+)/(?<Tr>\d+)/(?<Ta>\d+) (?<status_code>\d+) (?<bytes>\d+) (?<req_cookie>\S+) (?<res_cookie>\S+) (?<t_state>[\w-]+) (?<actconn>\d+)/(?<feconn>\d+)/(?<beconn>\d+)\/(?<srv_conn>\d+)/(?<retries>\d+) (?<srv_queue>\d+)/(?<backend_queue>\d+) \"(?<method>\w+) (?<request>[^\"]*) (?<http_version>\w+)"
```

**HAProxy - OpenTelemetry/HAProxy - Visitor Access Types/Top 5 Clients Causing 4xx Errors**
```
webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} deployment.environment={{deployment.environment}} sumo.datasource=haproxy
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>[\w\-\.]+) (?<ps>\w+)\[(?<pid>\d+)\]: (?<c_ip>[\w\.]+):(?<c_port>\d+) (?<rs>[^\"]*) (?<TR1>\d+)/(?<Tw>\d+)/(?<Tc>\d+)/(?<Tr>\d+)/(?<Ta>\d+) (?<status_code>\d+) (?<bytes>\d+) (?<req_cookie>\S+) (?<res_cookie>\S+) (?<t_state>[\w-]+) (?<actconn>\d+)/(?<feconn>\d+)/(?<beconn>\d+)\/(?<srv_conn>\d+)/(?<retries>\d+) (?<srv_queue>\d+)/(?<backend_queue>\d+) \"(?<method>\w+) (?<request>[^\"]*) (?<http_version>\w+)"
```

**HAProxy - OpenTelemetry/HAProxy - Visitor Access Types/Top 5 URLs Causing 4xx Responses**
```
webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} deployment.environment={{deployment.environment}} sumo.datasource=haproxy
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>[\w\-\.]+) (?<ps>\w+)\[(?<pid>\d+)\]: (?<c_ip>[\w\.]+):(?<c_port>\d+) (?<rs>[^\"]*) (?<TR1>\d+)/(?<Tw>\d+)/(?<Tc>\d+)/(?<Tr>\d+)/(?<Ta>\d+) (?<status_code>\d+) (?<bytes>\d+) (?<req_cookie>\S+) (?<res_cookie>\S+) (?<t_state>[\w-]+) (?<actconn>\d+)/(?<feconn>\d+)/(?<beconn>\d+)\/(?<srv_conn>\d+)/(?<retries>\d+) (?<srv_queue>\d+)/(?<backend_queue>\d+) \"(?<method>\w+) (?<request>[^\"]*) (?<http_version>\w+)"
```

**HAProxy - OpenTelemetry/HAProxy - Visitor Access Types/Visitor Platforms**
```
webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} deployment.environment={{deployment.environment}} sumo.datasource=haproxy
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>[\w\-\.]+) (?<ps>\w+)\[(?<pid>\d+)\]: (?<c_ip>[\w\.]+):(?<c_port>\d+) (?<rs>[^\"]*) (?<TR1>\d+)/(?<Tw>\d+)/(?<Tc>\d+)/(?<Tr>\d+)/(?<Ta>\d+) (?<status_code>\d+) (?<bytes>\d+) (?<req_cookie>\S+) (?<res_cookie>\S+) (?<t_state>[\w-]+) (?<actconn>\d+)/(?<feconn>\d+)/(?<beconn>\d+)\/(?<srv_conn>\d+)/(?<retries>\d+) (?<srv_queue>\d+)/(?<backend_queue>\d+) \{(?<referer>.*)|(?<user_agent>.*)\} \"(?<method>\w+) (?<request>[^\"]*) (?<http_version>\w+)"
```

**HAProxy - OpenTelemetry/HAProxy - Visitor Locations/United States**
```
webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} deployment.environment={{deployment.environment}} sumo.datasource=haproxy
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=request_headers "(?<referer>\S+)\|(?<user_agent>[^\"]*)"
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"
```

**HAProxy - OpenTelemetry/HAProxy - Visitor Locations/Visits by Country Over Time**
```
webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} deployment.environment={{deployment.environment}} sumo.datasource=haproxy
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=request_headers "(?<referer>\S+)\|(?<user_agent>[^\"]*)"
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"
```

**HAProxy - OpenTelemetry/HAProxy - Visitor Locations/Visits by US Regions Over Time**
```
webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} deployment.environment={{deployment.environment}} sumo.datasource=haproxy
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=request_headers "(?<referer>\S+)\|(?<user_agent>[^\"]*)"
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"
```

**HAProxy - OpenTelemetry/HAProxy - Visitor Locations/Worldwide**
```
webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} deployment.environment={{deployment.environment}} sumo.datasource=haproxy
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=request_headers "(?<referer>\S+)\|(?<user_agent>[^\"]*)"
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"
```

**HAProxy - OpenTelemetry/HAProxy - Visitor Traffic Insight/Bytes Served**
```
webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} deployment.environment={{deployment.environment}} sumo.datasource=haproxy
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=request_headers "(?<referer>\S+)\|(?<user_agent>[^\"]*)"
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"
```

**HAProxy - OpenTelemetry/HAProxy - Visitor Traffic Insight/HTTP Methods**
```
webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} deployment.environment={{deployment.environment}} sumo.datasource=haproxy
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=request_headers "(?<referer>\S+)\|(?<user_agent>[^\"]*)"
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"
```

**HAProxy - OpenTelemetry/HAProxy - Visitor Traffic Insight/Media Types Served**
```
webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} deployment.environment={{deployment.environment}} sumo.datasource=haproxy
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=request_headers "(?<referer>\S+)\|(?<user_agent>[^\"]*)"
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"
| parse regex field=request "^/[^\?]+?\.(?<type>[a-zA-Z]{2,4})$" nodrop
| parse regex field=request "/\S+?(?<email_prefix>(?:%40|@)[^.]+?)\.\w+" nodrop
```

**HAProxy - OpenTelemetry/HAProxy - Visitor Traffic Insight/Top 10 Search Terms from Popular Search Engines**
```
webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} deployment.environment={{deployment.environment}} sumo.datasource=haproxy
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=request_headers "(?<referer>\S+)\|(?<user_agent>[^\"]*)"
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"
| parse regex field=referrer "(?:\?|&)(?:p|q|wd|searchfor)=(?<search_term>[^=]+?)(?:&|$)" nodrop 
```

**HAProxy - OpenTelemetry/HAProxy - Visitor Traffic Insight/Top 5 Referrers**
```
webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} deployment.environment={{deployment.environment}} sumo.datasource=haproxy
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=request_headers "(?<referer>\S+)\|(?<user_agent>[^\"]*)"
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"
```

**HAProxy - OpenTelemetry/HAProxy - Visitor Traffic Insight/Top 5 Urls**
```
webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} deployment.environment={{deployment.environment}} sumo.datasource=haproxy
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=request_headers "(?<referer>\S+)\|(?<user_agent>[^\"]*)"
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"
```

**HAProxy - OpenTelemetry/HAProxy - Web Server Operations/Client Locations - 4xx Errors**
```
webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} deployment.environment={{deployment.environment}} sumo.datasource=haproxy
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=request_headers "(?<referer>\S+)\|(?<user_agent>[^\"]*)"
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"
```

**HAProxy - OpenTelemetry/HAProxy - Web Server Operations/Non 200 Response Status Codes**
```
webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} deployment.environment={{deployment.environment}} sumo.datasource=haproxy
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=request_headers "(?<referer>\S+)\|(?<user_agent>[^\"]*)"
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"
```

**HAProxy - OpenTelemetry/HAProxy - Web Server Operations/Top 5 Clients Causing 4xx Errors**
```
webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} deployment.environment={{deployment.environment}} sumo.datasource=haproxy
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=request_headers "(?<referer>\S+)\|(?<user_agent>[^\"]*)"
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"
```

**HAProxy - OpenTelemetry/HAProxy - Web Server Operations/Top 5 URLs Causing 4xx Responses**
```
webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} deployment.environment={{deployment.environment}} sumo.datasource=haproxy
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=request_headers "(?<referer>\S+)\|(?<user_agent>[^\"]*)"
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"
```

**HAProxy - OpenTelemetry/HAProxy - Web Server Operations/Visitor Platforms**
```
webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} deployment.environment={{deployment.environment}} sumo.datasource=haproxy
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=request_headers "(?<referer>\S+)\|(?<user_agent>[^\"]*)"
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"
```

**HAProxy - OpenTelemetry/HAProxy-Overview/Responses Over Time**
```
sumo.datasource=haproxy deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} 
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=request_headers "(?<referer>\S+)\|(?<user_agent>[^\"]*)"
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"
```

**HAProxy - OpenTelemetry/HAProxy-Overview/Top 5 URLs with Errors**
```
sumo.datasource=haproxy deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} 
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=request_headers "(?<referer>\S+)\|(?<user_agent>[^\"]*)"
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"| where status_code matches "4*" or status_code matches "5*" and  !isEmpty(c_ip) |count by status_code,request
```

**HAProxy - OpenTelemetry/HAProxy-Overview/Visitor Locations**
```
sumo.datasource=haproxy deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} 
| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as haproxy_log_message
| parse regex field=haproxy_log_message "(?<syslog_host>.*)\]:\s+" nodrop
| parse regex field=haproxy_log_message ":\s+(?<c_ip>[\w\.]+):(?<c_port>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+" nodrop
| parse regex field=haproxy_log_message "\s+\[(?<accept_date>.+)\]\s+(?<frontend_name>\S+)\s+(?<backend_name>\S+)/(?<server_name>\S+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<tq>-?\d+)/(?<tw>-?\d+)/(?<tc>-?\d+)/(?<tr>-?\d+)/(?<tt>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<status_code>\d+)\s+(?<bytes_read>[\d-]+)\s+(?<tsc>.*)\s+(?<act>\d+)/(?<fe>\d+)/(?<be>\d+)/(?<srv>\d+)/(?<retries>\+?\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+(?<queue_server>\d+)/(?<queue_backend>\d+)\s+" nodrop
| parse regex field=haproxy_log_message "\s+\{(?<request_headers>.*)\}\s+" nodrop
| parse regex field=haproxy_log_message "\s+\"(?<http_request>.*)\"" nodrop
| parse regex field=request_headers "(?<referer>\S+)\|(?<user_agent>[^\"]*)"
| parse regex field=http_request "(?<method>\w+)\s+(?<request>[^\"]*)\s+(?<http_version>\w+)"
```


