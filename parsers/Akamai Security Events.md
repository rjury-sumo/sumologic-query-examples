# Parsers For Akamai Security Events

## Parser:
```
| json field=_raw "attackData.clientIP" as client_ip
 `n```
### Use Cases:
Attack Information, Attacks by Client's Host, Attacks by Method, Attacks by Policy ID, Attacks by Port, Attacks by Protocol, Attacks by Request Query, Attacks by Rule Action, Attacks by Rule Data, Attacks by Rule Message, Attacks by Rule Tag, Attacks by URL, Geo Locations of Attacks, HTTP Response Codes, Last 20 Attacks, Rules Triggered Over Time, Threat by Actor, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 15  Source Cities of Attack, Top 15  Source Countries of Attack, Top 15 Client's Hosts, Top 15 IPs of Attack Source, Total Bytes Served by Request ID



## Parser:
```
| json field=_raw "attackData.clientIP", "attackData.configId", "attackData.policyId", "attackData.ruleAction", "attackData.rule", "attackData.ruleData" ,  "attackData.ruleMessage", "attackData.ruleSelector", "attackData.ruleTag", "attackData.ruleVersion", "httpMessage.start", "httpMessage.status" as client_ip, config_id, policy_id, rule_action, rule, rule_data ,rule_message, rule_selector, rule_tag, rule_version, time_epoch, http_response nodrop
 `n```
### Use Cases:
Attack Information, Attacks by Client's Host, Attacks by Method, Attacks by Policy ID, Attacks by Port, Attacks by Protocol, Attacks by Request Query, Attacks by Rule Action, Attacks by Rule Data, Attacks by Rule Message, Attacks by Rule Tag, Attacks by URL, Geo Locations of Attacks, HTTP Response Codes, Last 20 Attacks, Rules Triggered Over Time, Threat by Actor, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 15  Source Cities of Attack, Top 15  Source Countries of Attack, Top 15 Client's Hosts, Top 15 IPs of Attack Source, Total Bytes Served by Request ID



## Parser:
```
| json field=_raw "attackData.clientIP", "attackData.configId", "attackData.policyId", "attackData.ruleAction", "attackData.rule", "attackData.ruleData" ,  "attackData.ruleMessage", "attackData.ruleSelector", "attackData.ruleTag", "attackData.ruleVersion", "httpMessage.start", "httpMessage.status" as client_ip, config_id, policy_id, rule_action, rule, rule_data ,rule_message, rule_selector, rule_tag, rule_version, time_epoch, http_response nodrop
| json field=_raw "httpMessage.bytes", "httpMessage.host", "httpMessage.method", "httpMessage.path", "httpMessage.port", "httpMessage.protocol", "httpMessage.query", "httpMessage.requestId" as bytes, host, method, path, port, protocol, query, request_id nodrop
 `n```
### Use Cases:
Attack Information, Attacks by Client's Host, Attacks by Method, Attacks by Policy ID, Attacks by Port, Attacks by Protocol, Attacks by Request Query, Attacks by Rule Action, Attacks by Rule Data, Attacks by Rule Message, Attacks by Rule Tag, Attacks by URL, Geo Locations of Attacks, HTTP Response Codes, Last 20 Attacks, Rules Triggered Over Time, Threat by Actor, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 15  Source Cities of Attack, Top 15  Source Countries of Attack, Top 15 Client's Hosts, Top 15 IPs of Attack Source, Total Bytes Served by Request ID



## Parser:
```
| json field=_raw "attackData.clientIP", "attackData.configId", "attackData.policyId", "attackData.ruleAction", "attackData.rule", "attackData.ruleData" ,  "attackData.ruleMessage", "attackData.ruleSelector", "attackData.ruleTag", "attackData.ruleVersion", "httpMessage.start", "httpMessage.status" as client_ip, config_id, policy_id, rule_action, rule, rule_data ,rule_message, rule_selector, rule_tag, rule_version, time_epoch, http_response nodrop
| json field=_raw "httpMessage.bytes", "httpMessage.host", "httpMessage.method", "httpMessage.path", "httpMessage.port", "httpMessage.protocol", "httpMessage.query", "httpMessage.requestId" as bytes, host, method, path, port, protocol, query, request_id nodrop
| json field=raw "labels[*].name" as label_name 
 `n```
### Use Cases:
Attack Information, Attacks by Client's Host, Attacks by Method, Attacks by Policy ID, Attacks by Port, Attacks by Protocol, Attacks by Request Query, Attacks by Rule Action, Attacks by Rule Data, Attacks by Rule Message, Attacks by Rule Tag, Attacks by URL, Geo Locations of Attacks, HTTP Response Codes, Last 20 Attacks, Rules Triggered Over Time, Threat by Actor, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 15  Source Cities of Attack, Top 15  Source Countries of Attack, Top 15 Client's Hosts, Top 15 IPs of Attack Source, Total Bytes Served by Request ID



## Parser:
```
| json field=_raw "attackData.clientIP", "attackData.configId", "attackData.policyId", "attackData.ruleAction", "attackData.rule", "attackData.ruleData" , "attackData.ruleMessage", "attackData.ruleSelector", "attackData.ruleTag", "attackData.ruleVersion", "httpMessage.start", "httpMessage.status" as client_ip, config_id, policy_id, rule_action, rule, rule_data,rule_message, rule_selector, rule_tag, rule_version, time_epoch, http_response nodrop
| json field=_raw "geo.city", "geo.continent", "geo.country", "geo.regionCode", "geo.asn" as city, continent, country, region_code, asn nodrop
| json field=_raw "httpMessage.bytes", "httpMessage.host", "httpMessage.method", "httpMessage.path", "httpMessage.port", "httpMessage.protocol", "httpMessage.query", "httpMessage.requestId" as bytes, host, method, path, port, protocol, query, request_id nodrop
 `n```
### Use Cases:
Attack Information, Attacks by Client's Host, Attacks by Method, Attacks by Policy ID, Attacks by Port, Attacks by Protocol, Attacks by Request Query, Attacks by Rule Action, Attacks by Rule Data, Attacks by Rule Message, Attacks by Rule Tag, Attacks by URL, Geo Locations of Attacks, HTTP Response Codes, Last 20 Attacks, Rules Triggered Over Time, Threat by Actor, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 15  Source Cities of Attack, Top 15  Source Countries of Attack, Top 15 Client's Hosts, Top 15 IPs of Attack Source, Total Bytes Served by Request ID



## Parser:
```
| json field=_raw "attackData.clientIP", "attackData.configId", "attackData.policyId", "attackData.ruleAction", "attackData.rule", "attackData.ruleMessage", "attackData.ruleSelector", "attackData.ruleTag", "attackData.ruleVersion", "httpMessage.start", "httpMessage.status" as client_ip, config_id, policy_id, rule_action, rule, rule_message, rule_selector, rule_tag, rule_version, time_epoch, http_response nodrop
 `n```
### Use Cases:
Attack Information, Attacks by Client's Host, Attacks by Method, Attacks by Policy ID, Attacks by Port, Attacks by Protocol, Attacks by Request Query, Attacks by Rule Action, Attacks by Rule Data, Attacks by Rule Message, Attacks by Rule Tag, Attacks by URL, Geo Locations of Attacks, HTTP Response Codes, Last 20 Attacks, Rules Triggered Over Time, Threat by Actor, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 15  Source Cities of Attack, Top 15  Source Countries of Attack, Top 15 Client's Hosts, Top 15 IPs of Attack Source, Total Bytes Served by Request ID



## Parser:
```
| json field=_raw "attackData.clientIP", "attackData.configId", "attackData.policyId", "attackData.ruleAction", "attackData.rule", "attackData.ruleMessage", "attackData.ruleSelector", "attackData.ruleTag", "attackData.ruleVersion", "httpMessage.start", "httpMessage.status" as client_ip, config_id, policy_id, rule_action, rule, rule_message, rule_selector, rule_tag, rule_version, time_epoch, http_response nodrop
| json field=_raw "geo.city", "geo.continent", "geo.country", "geo.regionCode", "geo.asn" as city, continent, country, region_code, asn nodrop
 `n```
### Use Cases:
Attack Information, Attacks by Client's Host, Attacks by Method, Attacks by Policy ID, Attacks by Port, Attacks by Protocol, Attacks by Request Query, Attacks by Rule Action, Attacks by Rule Data, Attacks by Rule Message, Attacks by Rule Tag, Attacks by URL, Geo Locations of Attacks, HTTP Response Codes, Last 20 Attacks, Rules Triggered Over Time, Threat by Actor, Threat by Geo Location, Threat Count, Threat Table, Threats by Malicious Confidence, Top 15  Source Cities of Attack, Top 15  Source Countries of Attack, Top 15 Client's Hosts, Top 15 IPs of Attack Source, Total Bytes Served by Request ID


