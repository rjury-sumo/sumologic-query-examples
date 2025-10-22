# Parsers For Akamai Security Events

**Akamai Security Events/ Attack Data/Attack Information**
```
_sourceCategory={{_sourceCategory}} 
| json field=_raw "attackData.clientIP", "attackData.configId", "attackData.policyId", "attackData.ruleAction", "attackData.rule", "attackData.ruleMessage", "attackData.ruleSelector", "attackData.ruleTag", "attackData.ruleVersion", "httpMessage.start", "httpMessage.status" as client_ip, config_id, policy_id, rule_action, rule, rule_message, rule_selector, rule_tag, rule_version, time_epoch, http_response nodrop
| time_epoch * 1000 as time_epoch_ms
|formatDate(toLong(time_epoch_ms), "MM-dd-yyyyHH:mm:ss") as attack_date 
| json field=_raw "geo.city", "geo.continent", "geo.country", "geo.regionCode", "geo.asn" as city, continent, country, region_code, asn nodrop
```

**Akamai Security Events/ Attack Data/Attacks by Policy ID**
```
_sourceCategory={{_sourceCategory}}
| json field=_raw "attackData.clientIP", "attackData.configId", "attackData.policyId", "attackData.ruleAction", "attackData.rule", "attackData.ruleData" ,  "attackData.ruleMessage", "attackData.ruleSelector", "attackData.ruleTag", "attackData.ruleVersion", "httpMessage.start", "httpMessage.status" as client_ip, config_id, policy_id, rule_action, rule, rule_data ,rule_message, rule_selector, rule_tag, rule_version, time_epoch, http_response nodrop
```

**Akamai Security Events/ Attack Data/Attacks by Rule Action**
```
_sourceCategory={{_sourceCategory}} 
| json field=_raw "attackData.clientIP", "attackData.configId", "attackData.policyId", "attackData.ruleAction", "attackData.rule", "attackData.ruleMessage", "attackData.ruleSelector", "attackData.ruleTag", "attackData.ruleVersion", "httpMessage.start", "httpMessage.status" as client_ip, config_id, policy_id, rule_action, rule, rule_message, rule_selector, rule_tag, rule_version, time_epoch, http_response nodrop
```

**Akamai Security Events/ Attack Data/Attacks by Rule Data**
```
_sourceCategory={{_sourceCategory}} 
| json field=_raw "attackData.clientIP", "attackData.configId", "attackData.policyId", "attackData.ruleAction", "attackData.rule", "attackData.ruleData" ,  "attackData.ruleMessage", "attackData.ruleSelector", "attackData.ruleTag", "attackData.ruleVersion", "httpMessage.start", "httpMessage.status" as client_ip, config_id, policy_id, rule_action, rule, rule_data ,rule_message, rule_selector, rule_tag, rule_version, time_epoch, http_response nodrop
```

**Akamai Security Events/ Attack Data/Attacks by Rule Message**
```
_sourceCategory={{_sourceCategory}} 
| json field=_raw "attackData.clientIP", "attackData.configId", "attackData.policyId", "attackData.ruleAction", "attackData.rule", "attackData.ruleMessage", "attackData.ruleSelector", "attackData.ruleTag", "attackData.ruleVersion", "httpMessage.start", "httpMessage.status" as client_ip, config_id, policy_id, rule_action, rule, rule_message, rule_selector, rule_tag, rule_version, time_epoch, http_response nodrop
```

**Akamai Security Events/ Attack Data/Attacks by Rule Tag**
```
_sourceCategory={{_sourceCategory}} 
| json field=_raw "attackData.clientIP", "attackData.configId", "attackData.policyId", "attackData.ruleAction", "attackData.rule", "attackData.ruleData" ,  "attackData.ruleMessage", "attackData.ruleSelector", "attackData.ruleTag", "attackData.ruleVersion", "httpMessage.start", "httpMessage.status" as client_ip, config_id, policy_id, rule_action, rule, rule_data ,rule_message, rule_selector, rule_tag, rule_version, time_epoch, http_response nodrop
```

**Akamai Security Events/ Attack Data/Geo Locations of Attacks**
```
_sourceCategory={{_sourceCategory}} 
| json field=_raw "attackData.clientIP" as client_ip
```

**Akamai Security Events/ Attack Data/Top 15  Source Cities of Attack**
```
_sourceCategory={{_sourceCategory}} 
| json field=_raw "attackData.clientIP", "attackData.configId", "attackData.policyId", "attackData.ruleAction", "attackData.rule", "attackData.ruleMessage", "attackData.ruleSelector", "attackData.ruleTag", "attackData.ruleVersion", "httpMessage.start", "httpMessage.status" as client_ip, config_id, policy_id, rule_action, rule, rule_message, rule_selector, rule_tag, rule_version, time_epoch, http_response nodrop
```

**Akamai Security Events/ Attack Data/Top 15  Source Countries of Attack**
```
_sourceCategory={{_sourceCategory}} 
| json field=_raw "attackData.clientIP", "attackData.configId", "attackData.policyId", "attackData.ruleAction", "attackData.rule", "attackData.ruleMessage", "attackData.ruleSelector", "attackData.ruleTag", "attackData.ruleVersion", "httpMessage.start", "httpMessage.status" as client_ip, config_id, policy_id, rule_action, rule, rule_message, rule_selector, rule_tag, rule_version, time_epoch, http_response nodrop
```

**Akamai Security Events/ Attack Data/Top 15 IPs of Attack Source**
```
_sourceCategory={{_sourceCategory}} 
| json field=_raw "attackData.clientIP", "attackData.configId", "attackData.policyId", "attackData.ruleAction", "attackData.rule", "attackData.ruleData" ,  "attackData.ruleMessage", "attackData.ruleSelector", "attackData.ruleTag", "attackData.ruleVersion", "httpMessage.start", "httpMessage.status" as client_ip, config_id, policy_id, rule_action, rule, rule_data ,rule_message, rule_selector, rule_tag, rule_version, time_epoch, http_response nodrop
| time_epoch * 1000 as time_epoch_ms
|formatDate(toLong(time_epoch_ms), "MM-dd-yyyyHH:mm:ss") as attack_date 
|json field=_raw "geo.city", "geo.continent", "geo.country", "geo.regionCode", "geo.asn" as city, continent, country, region_code, asn nodrop
| json field=_raw "httpMessage.bytes", "httpMessage.host", "httpMessage.method", "httpMessage.path", "httpMessage.port", "httpMessage.protocol", "httpMessage.query", "httpMessage.requestId" as bytes, host, method, path, port, protocol, query, request_id nodrop
```

**Akamai Security Events/ HTTP Data/Attacks by Client's Host**
```
_sourceCategory={{_sourceCategory}}
| json field=_raw "attackData.clientIP", "attackData.configId", "attackData.policyId", "attackData.ruleAction", "attackData.rule", "attackData.ruleData" ,  "attackData.ruleMessage", "attackData.ruleSelector", "attackData.ruleTag", "attackData.ruleVersion", "httpMessage.start", "httpMessage.status" as client_ip, config_id, policy_id, rule_action, rule, rule_data ,rule_message, rule_selector, rule_tag, rule_version, time_epoch, http_response nodrop
| time_epoch * 1000 as time_epoch_ms
|formatDate(toLong(time_epoch_ms), "MM-dd-yyyyHH:mm:ss") as attack_date 
|json field=_raw "geo.city", "geo.continent", "geo.country", "geo.regionCode", "geo.asn" as city, continent, country, region_code, asn nodrop
| json field=_raw "httpMessage.bytes", "httpMessage.host", "httpMessage.method", "httpMessage.path", "httpMessage.port", "httpMessage.protocol", "httpMessage.query", "httpMessage.requestId" as bytes, host, method, path, port, protocol, query, request_id nodrop
```

**Akamai Security Events/ HTTP Data/Attacks by Method**
```
_sourceCategory={{_sourceCategory}}
| json field=_raw "attackData.clientIP", "attackData.configId", "attackData.policyId", "attackData.ruleAction", "attackData.rule", "attackData.ruleData" ,  "attackData.ruleMessage", "attackData.ruleSelector", "attackData.ruleTag", "attackData.ruleVersion", "httpMessage.start", "httpMessage.status" as client_ip, config_id, policy_id, rule_action, rule, rule_data ,rule_message, rule_selector, rule_tag, rule_version, time_epoch, http_response nodrop
| time_epoch * 1000 as time_epoch_ms
|formatDate(toLong(time_epoch_ms), "MM-dd-yyyyHH:mm:ss") as attack_date 
|json field=_raw "geo.city", "geo.continent", "geo.country", "geo.regionCode", "geo.asn" as city, continent, country, region_code, asn nodrop
| json field=_raw "httpMessage.bytes", "httpMessage.host", "httpMessage.method", "httpMessage.path", "httpMessage.port", "httpMessage.protocol", "httpMessage.query", "httpMessage.requestId" as bytes, host, method, path, port, protocol, query, request_id nodrop
```

**Akamai Security Events/ HTTP Data/Attacks by Port**
```
_sourceCategory={{_sourceCategory}}
| json field=_raw "attackData.clientIP", "attackData.configId", "attackData.policyId", "attackData.ruleAction", "attackData.rule", "attackData.ruleData" ,  "attackData.ruleMessage", "attackData.ruleSelector", "attackData.ruleTag", "attackData.ruleVersion", "httpMessage.start", "httpMessage.status" as client_ip, config_id, policy_id, rule_action, rule, rule_data ,rule_message, rule_selector, rule_tag, rule_version, time_epoch, http_response nodrop
| time_epoch * 1000 as time_epoch_ms
|formatDate(toLong(time_epoch_ms), "MM-dd-yyyyHH:mm:ss") as attack_date 
|json field=_raw "geo.city", "geo.continent", "geo.country", "geo.regionCode", "geo.asn" as city, continent, country, region_code, asn nodrop
| json field=_raw "httpMessage.bytes", "httpMessage.host", "httpMessage.method", "httpMessage.path", "httpMessage.port", "httpMessage.protocol", "httpMessage.query", "httpMessage.requestId" as bytes, host, method, path, port, protocol, query, request_id nodrop
```

**Akamai Security Events/ HTTP Data/Attacks by Protocol**
```
_sourceCategory={{_sourceCategory}}
| json field=_raw "attackData.clientIP", "attackData.configId", "attackData.policyId", "attackData.ruleAction", "attackData.rule", "attackData.ruleData" ,  "attackData.ruleMessage", "attackData.ruleSelector", "attackData.ruleTag", "attackData.ruleVersion", "httpMessage.start", "httpMessage.status" as client_ip, config_id, policy_id, rule_action, rule, rule_data ,rule_message, rule_selector, rule_tag, rule_version, time_epoch, http_response nodrop
| time_epoch * 1000 as time_epoch_ms
|formatDate(toLong(time_epoch_ms), "MM-dd-yyyyHH:mm:ss") as attack_date 
|json field=_raw "geo.city", "geo.continent", "geo.country", "geo.regionCode", "geo.asn" as city, continent, country, region_code, asn nodrop
| json field=_raw "httpMessage.bytes", "httpMessage.host", "httpMessage.method", "httpMessage.path", "httpMessage.port", "httpMessage.protocol", "httpMessage.query", "httpMessage.requestId" as bytes, host, method, path, port, protocol, query, request_id nodrop
```

**Akamai Security Events/ HTTP Data/Attacks by Request Query**
```
_sourceCategory={{_sourceCategory}}
| json field=_raw "attackData.clientIP", "attackData.configId", "attackData.policyId", "attackData.ruleAction", "attackData.rule", "attackData.ruleData" ,  "attackData.ruleMessage", "attackData.ruleSelector", "attackData.ruleTag", "attackData.ruleVersion", "httpMessage.start", "httpMessage.status" as client_ip, config_id, policy_id, rule_action, rule, rule_data ,rule_message, rule_selector, rule_tag, rule_version, time_epoch, http_response nodrop
| time_epoch * 1000 as time_epoch_ms
|formatDate(toLong(time_epoch_ms), "MM-dd-yyyyHH:mm:ss") as attack_date 
|json field=_raw "geo.city", "geo.continent", "geo.country", "geo.regionCode", "geo.asn" as city, continent, country, region_code, asn nodrop
| json field=_raw "httpMessage.bytes", "httpMessage.host", "httpMessage.method", "httpMessage.path", "httpMessage.port", "httpMessage.protocol", "httpMessage.query", "httpMessage.requestId" as bytes, host, method, path, port, protocol, query, request_id nodrop
```

**Akamai Security Events/ HTTP Data/Attacks by URL**
```
_sourceCategory={{_sourceCategory}}
| json field=_raw "attackData.clientIP", "attackData.configId", "attackData.policyId", "attackData.ruleAction", "attackData.rule", "attackData.ruleData" ,  "attackData.ruleMessage", "attackData.ruleSelector", "attackData.ruleTag", "attackData.ruleVersion", "httpMessage.start", "httpMessage.status" as client_ip, config_id, policy_id, rule_action, rule, rule_data ,rule_message, rule_selector, rule_tag, rule_version, time_epoch, http_response nodrop
| time_epoch * 1000 as time_epoch_ms
|formatDate(toLong(time_epoch_ms), "MM-dd-yyyyHH:mm:ss") as attack_date 
|json field=_raw "geo.city", "geo.continent", "geo.country", "geo.regionCode", "geo.asn" as city, continent, country, region_code, asn nodrop
| json field=_raw "httpMessage.bytes", "httpMessage.host", "httpMessage.method", "httpMessage.path", "httpMessage.port", "httpMessage.protocol", "httpMessage.query", "httpMessage.requestId" as bytes, host, method, path, port, protocol, query, request_id nodrop
```

**Akamai Security Events/ HTTP Data/Total Bytes Served by Request ID**
```
_sourceCategory={{_sourceCategory}}
| json field=_raw "attackData.clientIP", "attackData.configId", "attackData.policyId", "attackData.ruleAction", "attackData.rule", "attackData.ruleData" ,  "attackData.ruleMessage", "attackData.ruleSelector", "attackData.ruleTag", "attackData.ruleVersion", "httpMessage.start", "httpMessage.status" as client_ip, config_id, policy_id, rule_action, rule, rule_data ,rule_message, rule_selector, rule_tag, rule_version, time_epoch, http_response nodrop
| time_epoch * 1000 as time_epoch_ms
|formatDate(toLong(time_epoch_ms), "MM-dd-yyyyHH:mm:ss") as attack_date 
|json field=_raw "geo.city", "geo.continent", "geo.country", "geo.regionCode", "geo.asn" as city, continent, country, region_code, asn nodrop
| json field=_raw "httpMessage.bytes", "httpMessage.host", "httpMessage.method", "httpMessage.path", "httpMessage.port", "httpMessage.protocol", "httpMessage.query", "httpMessage.requestId" as bytes, host, method, path, port, protocol, query, request_id nodrop
```

**Akamai Security Events/Akamai Security Events  - Overview/Geo Locations of Attacks**
```
_sourceCategory={{_sourceCategory}} 
| json field=_raw "attackData.clientIP" as client_ip
```

**Akamai Security Events/Akamai Security Events  - Overview/HTTP Response Codes**
```
_sourceCategory={{_sourceCategory}} 
| json field=_raw "attackData.clientIP", "attackData.configId", "attackData.policyId", "attackData.ruleAction", "attackData.rule", "attackData.ruleData" ,  "attackData.ruleMessage", "attackData.ruleSelector", "attackData.ruleTag", "attackData.ruleVersion", "httpMessage.start", "httpMessage.status" as client_ip, config_id, policy_id, rule_action, rule, rule_data ,rule_message, rule_selector, rule_tag, rule_version, time_epoch, http_response nodrop
| time_epoch * 1000 as time_epoch_ms
|formatDate(toLong(time_epoch_ms), "MM-dd-yyyyHH:mm:ss") as attack_date 
|json field=_raw "geo.city", "geo.continent", "geo.country", "geo.regionCode", "geo.asn" as city, continent, country, region_code, asn nodrop
| json field=_raw "httpMessage.bytes", "httpMessage.host", "httpMessage.method", "httpMessage.path", "httpMessage.port", "httpMessage.protocol", "httpMessage.query", "httpMessage.requestId" as bytes, host, method, path, port, protocol, query, request_id nodrop
```

**Akamai Security Events/Akamai Security Events  - Overview/Last 20 Attacks**
```
_sourceCategory={{_sourceCategory}} 
| json field=_raw "attackData.clientIP", "attackData.configId", "attackData.policyId", "attackData.ruleAction", "attackData.rule", "attackData.ruleData" , "attackData.ruleMessage", "attackData.ruleSelector", "attackData.ruleTag", "attackData.ruleVersion", "httpMessage.start", "httpMessage.status" as client_ip, config_id, policy_id, rule_action, rule, rule_data,rule_message, rule_selector, rule_tag, rule_version, time_epoch, http_response nodrop
| time_epoch * 1000 as time_epoch_ms
|formatDate(toLong(time_epoch_ms), "MM-dd-yyyyHH:mm:ss") as attack_date 
| json field=_raw "geo.city", "geo.continent", "geo.country", "geo.regionCode", "geo.asn" as city, continent, country, region_code, asn nodrop
| json field=_raw "httpMessage.bytes", "httpMessage.host", "httpMessage.method", "httpMessage.path", "httpMessage.port", "httpMessage.protocol", "httpMessage.query", "httpMessage.requestId" as bytes, host, method, path, port, protocol, query, request_id nodrop
```

**Akamai Security Events/Akamai Security Events  - Overview/Rules Triggered Over Time**
```
_sourceCategory={{_sourceCategory}} 
| json field=_raw "attackData.clientIP", "attackData.configId", "attackData.policyId", "attackData.ruleAction", "attackData.rule", "attackData.ruleData" ,  "attackData.ruleMessage", "attackData.ruleSelector", "attackData.ruleTag", "attackData.ruleVersion", "httpMessage.start", "httpMessage.status" as client_ip, config_id, policy_id, rule_action, rule, rule_data ,rule_message, rule_selector, rule_tag, rule_version, time_epoch, http_response nodrop
```

**Akamai Security Events/Akamai Security Events  - Overview/Top 15 Client's Hosts**
```
_sourceCategory={{_sourceCategory}} 
| json field=_raw "attackData.clientIP", "attackData.configId", "attackData.policyId", "attackData.ruleAction", "attackData.rule", "attackData.ruleData" ,  "attackData.ruleMessage", "attackData.ruleSelector", "attackData.ruleTag", "attackData.ruleVersion", "httpMessage.start", "httpMessage.status" as client_ip, config_id, policy_id, rule_action, rule, rule_data ,rule_message, rule_selector, rule_tag, rule_version, time_epoch, http_response nodrop
| time_epoch * 1000 as time_epoch_ms
|formatDate(toLong(time_epoch_ms), "MM-dd-yyyyHH:mm:ss") as attack_date 
|json field=_raw "geo.city", "geo.continent", "geo.country", "geo.regionCode", "geo.asn" as city, continent, country, region_code, asn nodrop
| json field=_raw "httpMessage.bytes", "httpMessage.host", "httpMessage.method", "httpMessage.path", "httpMessage.port", "httpMessage.protocol", "httpMessage.query", "httpMessage.requestId" as bytes, host, method, path, port, protocol, query, request_id nodrop
```

**Akamai Security Events/Akamai Security Events  - Overview/Top 15 IPs of Attack Source**
```
_sourceCategory={{_sourceCategory}} 
| json field=_raw "attackData.clientIP", "attackData.configId", "attackData.policyId", "attackData.ruleAction", "attackData.rule", "attackData.ruleData" ,  "attackData.ruleMessage", "attackData.ruleSelector", "attackData.ruleTag", "attackData.ruleVersion", "httpMessage.start", "httpMessage.status" as client_ip, config_id, policy_id, rule_action, rule, rule_data ,rule_message, rule_selector, rule_tag, rule_version, time_epoch, http_response nodrop
| time_epoch * 1000 as time_epoch_ms
|formatDate(toLong(time_epoch_ms), "MM-dd-yyyyHH:mm:ss") as attack_date 
|json field=_raw "geo.city", "geo.continent", "geo.country", "geo.regionCode", "geo.asn" as city, continent, country, region_code, asn nodrop
| json field=_raw "httpMessage.bytes", "httpMessage.host", "httpMessage.method", "httpMessage.path", "httpMessage.port", "httpMessage.protocol", "httpMessage.query", "httpMessage.requestId" as bytes, host, method, path, port, protocol, query, request_id nodrop
```

**Akamai Security Events/Threat Intel/Threat by Actor**
```
_sourceCategory={{_sourceCategory}} 
| json field=_raw "attackData.clientIP", "attackData.configId", "attackData.policyId", "attackData.ruleAction", "attackData.rule", "attackData.ruleData" ,  "attackData.ruleMessage", "attackData.ruleSelector", "attackData.ruleTag", "attackData.ruleVersion", "httpMessage.start", "httpMessage.status" as client_ip, config_id, policy_id, rule_action, rule, rule_data ,rule_message, rule_selector, rule_tag, rule_version, time_epoch, http_response nodrop
| time_epoch * 1000 as time_epoch_ms
|formatDate(toLong(time_epoch_ms), "MM-dd-yyyyHH:mm:ss") as attack_date 
|json field=_raw "geo.city", "geo.continent", "geo.country", "geo.regionCode", "geo.asn" as city, continent, country, region_code, asn nodrop
| json field=_raw "httpMessage.bytes", "httpMessage.host", "httpMessage.method", "httpMessage.path", "httpMessage.port", "httpMessage.protocol", "httpMessage.query", "httpMessage.requestId" as bytes, host, method, path, port, protocol, query, request_id nodrop
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=client_ip 
| json field=raw "labels[*].name" as label_name 
```

**Akamai Security Events/Threat Intel/Threat by Geo Location**
```
_sourceCategory={{_sourceCategory}} 
| json field=_raw "attackData.clientIP", "attackData.configId", "attackData.policyId", "attackData.ruleAction", "attackData.rule", "attackData.ruleData" ,  "attackData.ruleMessage", "attackData.ruleSelector", "attackData.ruleTag", "attackData.ruleVersion", "httpMessage.start", "httpMessage.status" as client_ip, config_id, policy_id, rule_action, rule, rule_data ,rule_message, rule_selector, rule_tag, rule_version, time_epoch, http_response nodrop
| time_epoch * 1000 as time_epoch_ms
|formatDate(toLong(time_epoch_ms), "MM-dd-yyyyHH:mm:ss") as attack_date 
|json field=_raw "geo.city", "geo.continent", "geo.country", "geo.regionCode", "geo.asn" as city, continent, country, region_code, asn nodrop
| json field=_raw "httpMessage.bytes", "httpMessage.host", "httpMessage.method", "httpMessage.path", "httpMessage.port", "httpMessage.protocol", "httpMessage.query", "httpMessage.requestId" as bytes, host, method, path, port, protocol, query, request_id nodrop
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=client_ip 
| json field=raw "labels[*].name" as label_name 
```

**Akamai Security Events/Threat Intel/Threat Count**
```
_sourceCategory={{_sourceCategory}} 
| json field=_raw "attackData.clientIP", "attackData.configId", "attackData.policyId", "attackData.ruleAction", "attackData.rule", "attackData.ruleData" ,  "attackData.ruleMessage", "attackData.ruleSelector", "attackData.ruleTag", "attackData.ruleVersion", "httpMessage.start", "httpMessage.status" as client_ip, config_id, policy_id, rule_action, rule, rule_data ,rule_message, rule_selector, rule_tag, rule_version, time_epoch, http_response nodrop
| time_epoch * 1000 as time_epoch_ms
|formatDate(toLong(time_epoch_ms), "MM-dd-yyyyHH:mm:ss") as attack_date 
|json field=_raw "geo.city", "geo.continent", "geo.country", "geo.regionCode", "geo.asn" as city, continent, country, region_code, asn nodrop
| json field=_raw "httpMessage.bytes", "httpMessage.host", "httpMessage.method", "httpMessage.path", "httpMessage.port", "httpMessage.protocol", "httpMessage.query", "httpMessage.requestId" as bytes, host, method, path, port, protocol, query, request_id nodrop
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=client_ip 
| json field=raw "labels[*].name" as label_name 
```

**Akamai Security Events/Threat Intel/Threat Table**
```
_sourceCategory={{_sourceCategory}} 
| json field=_raw "attackData.clientIP", "attackData.configId", "attackData.policyId", "attackData.ruleAction", "attackData.rule", "attackData.ruleData" ,  "attackData.ruleMessage", "attackData.ruleSelector", "attackData.ruleTag", "attackData.ruleVersion", "httpMessage.start", "httpMessage.status" as client_ip, config_id, policy_id, rule_action, rule, rule_data ,rule_message, rule_selector, rule_tag, rule_version, time_epoch, http_response nodrop
| time_epoch * 1000 as time_epoch_ms
|formatDate(toLong(time_epoch_ms), "MM-dd-yyyyHH:mm:ss") as attack_date 
|json field=_raw "geo.city", "geo.continent", "geo.country", "geo.regionCode", "geo.asn" as city, continent, country, region_code, asn nodrop
| json field=_raw "httpMessage.bytes", "httpMessage.host", "httpMessage.method", "httpMessage.path", "httpMessage.port", "httpMessage.protocol", "httpMessage.query", "httpMessage.requestId" as bytes, host, method, path, port, protocol, query, request_id nodrop
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=client_ip 
| json field=raw "labels[*].name" as label_name 
```

**Akamai Security Events/Threat Intel/Threats by Malicious Confidence**
```
_sourceCategory={{_sourceCategory}} 
| json field=_raw "attackData.clientIP", "attackData.configId", "attackData.policyId", "attackData.ruleAction", "attackData.rule", "attackData.ruleData" ,  "attackData.ruleMessage", "attackData.ruleSelector", "attackData.ruleTag", "attackData.ruleVersion", "httpMessage.start", "httpMessage.status" as client_ip, config_id, policy_id, rule_action, rule, rule_data ,rule_message, rule_selector, rule_tag, rule_version, time_epoch, http_response nodrop
| time_epoch * 1000 as time_epoch_ms
|formatDate(toLong(time_epoch_ms), "MM-dd-yyyyHH:mm:ss") as attack_date 
|json field=_raw "geo.city", "geo.continent", "geo.country", "geo.regionCode", "geo.asn" as city, continent, country, region_code, asn nodrop
| json field=_raw "httpMessage.bytes", "httpMessage.host", "httpMessage.method", "httpMessage.path", "httpMessage.port", "httpMessage.protocol", "httpMessage.query", "httpMessage.requestId" as bytes, host, method, path, port, protocol, query, request_id nodrop
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=client_ip 
| json field=raw "labels[*].name" as label_name 
```


