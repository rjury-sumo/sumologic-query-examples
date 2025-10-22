# Parsers For Varnish - OpenTelemetry

**Varnish - OpenTelemetry/Varnish  - Traffic Timeline Analysis/Number of Hits by Server - One Day Time Comparison**
```
sumo.datasource=varnish webengine.system=varnish webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
```

**Varnish - OpenTelemetry/Varnish  - Traffic Timeline Analysis/Responses Over Time**
```
sumo.datasource=varnish webengine.system=varnish webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
```

**Varnish - OpenTelemetry/Varnish  - Traffic Timeline Analysis/Traffic Distribution by Server**
```
sumo.datasource=varnish webengine.system=varnish webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
```

**Varnish - OpenTelemetry/Varnish  - Traffic Timeline Analysis/Traffic Volume and GBytes Served**
```
sumo.datasource=varnish webengine.system=varnish webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
```

**Varnish - OpenTelemetry/Varnish  - Traffic Timeline Analysis/Visitor Locations - One Day Time Comparison**
```
sumo.datasource=varnish webengine.system=varnish webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
```

**Varnish - OpenTelemetry/Varnish - Outlier Analysis/Bytes Served - Outlier**
```
sumo.datasource=varnish webengine.system=varnish webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
```

**Varnish - OpenTelemetry/Varnish - Outlier Analysis/Client Errors**
```
sumo.datasource=varnish webengine.system=varnish webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
```

**Varnish - OpenTelemetry/Varnish - Outlier Analysis/Number of Visitors**
```
sumo.datasource=varnish webengine.system=varnish webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
```

**Varnish - OpenTelemetry/Varnish - Outlier Analysis/Server Errors**
```
sumo.datasource=varnish webengine.system=varnish webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
```

**Varnish - OpenTelemetry/Varnish - Overview/Responses Over Time**
```
sumo.datasource=varnish webengine.system=varnish webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"\?]+?)(?:\"|\?)"
```

**Varnish - OpenTelemetry/Varnish - Overview/Top 10 URLs causing Errors**
```
sumo.datasource=varnish webengine.system=varnish webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
```

**Varnish - OpenTelemetry/Varnish - Overview/Traffic Distribution by Server**
```
sumo.datasource=varnish webengine.system=varnish webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
```

**Varnish - OpenTelemetry/Varnish - Overview/Traffic Volume and MB Served Over Time**
```
sumo.datasource=varnish webengine.system=varnish webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"\?]+?)(?:\"|\?)"
```

**Varnish - OpenTelemetry/Varnish - Overview/Visitor Locations**
```
sumo.datasource=varnish webengine.system=varnish webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
```

**Varnish - OpenTelemetry/Varnish - Overview/Visitor Locations - 4xx Errors**
```
sumo.datasource=varnish webengine.system=varnish webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
```

**Varnish - OpenTelemetry/Varnish - Threat Intel/Highly Malicious Threat Table**
```
sumo.datasource=varnish webengine.system=varnish webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
| lookup type, actor, raw, threatlevel as Malicious_Confidence from sumo://threat/cs on threat=remote_ip 
| where  type="ip_address" and !isNull(Malicious_Confidence)
| json field=raw "labels[*].name" as label_name 
```

**Varnish - OpenTelemetry/Varnish - Threat Intel/Threat by Actors**
```
sumo.datasource=varnish webengine.system=varnish webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
| count as ip_count by remote_ip
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=remote_ip 
| json field=raw "labels[*].name" as label_name 
```

**Varnish - OpenTelemetry/Varnish - Threat Intel/Threat by Malicious Confidence**
```
sumo.datasource=varnish webengine.system=varnish webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
| count as ip_count by remote_ip
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=remote_ip 
| json field=raw "labels[*].name" as label_name 
```

**Varnish - OpenTelemetry/Varnish - Threat Intel/Threat Locations**
```
sumo.datasource=varnish webengine.system=varnish webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
| count as ip_count by client_ip
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=client_ip 
| json field=raw "labels[*].name" as label_name 
```

**Varnish - OpenTelemetry/Varnish - Threat Intel/Threat Table**
```
sumo.datasource=varnish webengine.system=varnish webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
| lookup type, actor, raw, threatlevel as Malicious_Confidence from sumo://threat/cs on threat=remote_ip 
| where  type="ip_address" and !isNull(Malicious_Confidence)
| json field=raw "labels[*].name" as label_name 
```

**Varnish - OpenTelemetry/Varnish - Threat Intel/Threats**
```
sumo.datasource=varnish webengine.system=varnish webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
| count as ip_count by remote_ip
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=remote_ip 
| json field=raw "labels[*].name" as label_name 
```

**Varnish - OpenTelemetry/Varnish - Threat Intel/Top 5 Highly Malicious URLs**
```
sumo.datasource=varnish webengine.system=varnish webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
```

**Varnish - OpenTelemetry/Varnish - Visitor Traffic Insight/Browsers and Operating Systems**
```
sumo.datasource=varnish webengine.system=varnish webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
```

**Varnish - OpenTelemetry/Varnish - Visitor Traffic Insight/Bytes Served**
```
sumo.datasource=varnish webengine.system=varnish webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
```

**Varnish - OpenTelemetry/Varnish - Visitor Traffic Insight/HTTP Methods**
```
sumo.datasource=varnish webengine.system=varnish webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
```

**Varnish - OpenTelemetry/Varnish - Visitor Traffic Insight/Media Types Served**
```
sumo.datasource=varnish webengine.system=varnish  webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
| parse regex field=uri "^[^\?]+?\.(?<type>[a-zA-Z]{2,4})$" 
| parse regex field=uri "/\S+?(?<email_prefix>(?:%40|@)[^.]+?)\.\w+" nodrop 
```

**Varnish - OpenTelemetry/Varnish - Visitor Traffic Insight/Popular Mobile Device Versions**
```
sumo.datasource=varnish webengine.system=varnish ( iphone or ipad or android or samsung) webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw  
| parse regex "\((?<device>iPhone).+? CPU iPhone OS (?<version>.+?) like Mac"  nodrop 
| parse regex "\((?<device>iPad).+? CPU OS (?<version>.+?) like Mac"  nodrop 
| parse regex " (?<device>Android) (?<version>[\d\.]+)" nodrop 
| parse regex "(?<device>SAMSUNG).+?(?<version>(?:GT-\w+|SGH-\w+|SPH-\w+|SCH-\w+))" 
```

**Varnish - OpenTelemetry/Varnish - Visitor Traffic Insight/Top 10 PC and Mac Versions**
```
sumo.datasource=varnish webengine.system=varnish ("macintosh" OR "mac os" OR "windows" OR "i686" or "PC" or ("Linux" AND !android)) webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
| parse regex field=agent "(?<os>Mac OS) (?<version>[^;\)]+?)(?:;|\))" nodrop 
| parse regex field=agent "(?<os>Windows)(?: NT | )(?<version>[\d.]+)" nodrop 
| parse regex field=agent "(?<os>Linux) (?<version>\S+?)(?:\)|;)" nodrop 
```

**Varnish - OpenTelemetry/Varnish - Visitor Traffic Insight/Top 10 Search Terms from Popular Search Engines**
```
sumo.datasource=varnish webengine.system=varnish  (google OR bing OR aol OR ask OR yahoo) ("p=" OR "q=" OR "wd=" OR "searchfor=") webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
| parse regex field=referrer "(?:\?|&)(?:p|q|wd|searchfor)=(?<search_term>[^=]+?)(?:&|$)" nodrop 
```

**Varnish - OpenTelemetry/Varnish - Visitor Traffic Insight/Top 5 Referrers**
```
sumo.datasource=varnish webengine.system=varnish webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
```

**Varnish - OpenTelemetry/Varnish - Visitor Traffic Insight/Top 5 URLs**
```
sumo.datasource=varnish webengine.system=varnish  webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"\?]+?)(?:\"|\?)s+\"(?<agent>[^\"]+?)\""
```

**Varnish - OpenTelemetry/Varnish - Visitor Traffic Insight/Visits by Country Over Time**
```
sumo.datasource=varnish webengine.system=varnish  webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
```

**Varnish - OpenTelemetry/Varnish - Visitor Traffic Insight/Vistor Platforms**
```
sumo.datasource=varnish webengine.system=varnish webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
```

**Varnish - OpenTelemetry/Varnish - Visitor Traffic Insight/Worldwide**
```
sumo.datasource=varnish webengine.system=varnish webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"\?]+?)(?:\"|\?)s+\"(?<agent>[^\"]+?)\""
```

**Varnish - OpenTelemetry/Varnish - Web Server Operations/Client Locations - 4xx Errors**
```
sumo.datasource=varnish webengine.system=varnish webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
```

**Varnish - OpenTelemetry/Varnish - Web Server Operations/Error Responses by Server**
```
sumo.datasource=varnish webengine.system=varnish webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
```

**Varnish - OpenTelemetry/Varnish - Web Server Operations/Non 200 Response Status Codes**
```
sumo.datasource=varnish webengine.system=varnish webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
```

**Varnish - OpenTelemetry/Varnish - Web Server Operations/Server Errors Over Time**
```
sumo.datasource=varnish webengine.system=varnish webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
```

**Varnish - OpenTelemetry/Varnish - Web Server Operations/Top 10 Bots Observed**
```
sumo.datasource=varnish webengine.system=varnish ("Googlebot" OR "AskJeeves" OR "Digger" OR "Lycos"
OR "msnbot" OR "Inktomi Slurp" OR "Yahoo" OR "Nutch" OR "bingbot" OR
"BingPreview" OR "Mediapartners-Google" OR "proximic" OR "AhrefsBot" OR
"AdsBot-Google" OR "Ezooms" OR "AddThis.com" OR "facebookexternalhit" OR
"MetaURI" OR "Feedfetcher-Google" OR "PaperLiBot" OR "TweetmemeBot" OR
"Sogou web spider" OR "GoogleProducer" OR "RockmeltEmbedder" OR
"ShareThisFetcher" OR "YandexBot" OR "rogerbot-crawler" OR "ShowyouBot" OR "Baiduspider" OR "Sosospider" OR "Exabot") webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
| parse regex field=agent "(?<bot_name>facebook)externalhit?\W+" nodrop
| parse regex field=agent "Feedfetcher-(?<bot_name>Google?)\S+" nodrop
| parse regex field=agent "(?<bot_name>PaperLiBot?)/.+" nodrop
| parse regex field=agent "(?<bot_name>TweetmemeBot?)/.+" nodrop
| parse regex field=agent "(?<bot_name>msn?)bot\W" nodrop
| parse regex field=agent "(?<bot_name>Nutch?)-.+" nodrop
| parse regex field=agent "(?<bot_name>Google?)bot\W" nodrop
| parse regex field=agent "Feedfetcher-(?<bot_name>Google?)\W" nodrop
| parse regex field=agent "(?<bot_name>Yahoo?)!\s+Slurp[;/].+" nodrop
| parse regex field=agent "(?<bot_name>bing?)bot\W" nodrop
| parse regex field=agent "(?<bot_name>Bing?)Preview\W" nodrop
| parse regex field=agent "(?<bot_name>Sogou?)\s+web\s" nodrop
| parse regex field=agent "(?<bot_name>Yandex?)Bot\W" nodrop
| parse regex field=agent "(?<bot_name>rogerbot?)\W" nodrop
| parse regex field=agent "(?<bot_name>AddThis\.com?)\s+robot\s+" nodrop
| parse regex field=agent "(?<bot_name>ShareThis?)Fetcher/.+" nodrop
| parse regex field=agent "(?<bot_name>Ahrefs?)Bot/.+" nodrop
| parse regex field=agent "(?<bot_name>MetaURI?)\s+API/.+" nodrop
| parse regex field=agent "(?<bot_name>Showyou?)Bot\s+" nodrop
| parse regex field=agent "(?<bot_name>Google?)Producer;" nodrop
| parse regex field=agent "(?<bot_name>Ezooms?)\W" nodrop
| parse regex field=agent "(?<bot_name>Rockmelt?)Embedder\s+" nodrop 
| parse regex field=agent "(?<bot_name>Sosospider?)\W" nodrop 
| parse regex field=agent "(?<bot_name>Baidu?)spider" nodrop
| parse regex field=agent "(?<bot_name>Exabot?)\W"
```

**Varnish - OpenTelemetry/Varnish - Web Server Operations/Top 5 Clients Causing 4xx Errors**
```
sumo.datasource=varnish webengine.system=varnish (400 OR 401 OR 402 OR 403 OR 404) webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
```

**Varnish - OpenTelemetry/Varnish - Web Server Operations/Top 5 Clients Causing 5xx Errors**
```
sumo.datasource=varnish webengine.system=varnish (500 or 501 or 502 or 503 or 504 or 505 or 506 or 507 or 508 or 509) webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
```

**Varnish - OpenTelemetry/Varnish - Web Server Operations/Top 5 Messages in the Error Logs**
```
sumo.datasource=varnish webengine.system=varnish webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "\s\[(?<log_level>\S+)\]\s\d+#\d+:\s(?:\*\d+\s|)(?<message>[A-Za-z][^,]+)(?:,|$)" nodrop
```

**Varnish - OpenTelemetry/Varnish - Web Server Operations/Top 5 URIs causing 4xx Responses**
```
sumo.datasource=varnish webengine.system=varnish webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
```

**Varnish - OpenTelemetry/Varnish - Web Server Operations/Top 5 URIs Causing 5xx Responses**
```
sumo.datasource=varnish webengine.system=varnish  (500 or 501 or 502 or 503 or 504 or 505 or 506 or 507 or 508 or 509) webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
```

**Varnish - OpenTelemetry/Varnish - Web Server Operations/Top Clients**
```
sumo.datasource=varnish webengine.system=varnish webengine.cluster.name={{webengine.cluster.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "(?<client_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<logname>\S+)\s+(?<user>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<agent>[^\"]+?)\""
```


