# Parsers For AWS WAF - Cloud Security Monitoring and Analytics

## Parser:
```
| parse "\"httpMethod\":\"*\"," as httpMethod,"\"httpVersion\":\"*\"," as httpVersion,"\"uri\":\"*\"," as uri, "{\"clientIp\":\"*\",\"country\":\"*\"" as clientIp,country, "\"action\":\"*\"" as action, "\"matchingNonTerminatingRules\":[*]" as matchingNonTerminatingRules, "\"rateBasedRuleList\":[*]" as rateBasedRuleList, "\"ruleGroupList\":[*]" as ruleGroupList, "\"httpSourceId\":\"*\"" as httpSourceId, "\"httpSourceName\":\"*\"" as httpSourceName, "\"terminatingRuleType\":\"*\"" as terminatingRuleType, "\"terminatingRuleId\":\"*\"" as terminatingRuleId, "\"webaclId\":\"*\"" as webaclId
```
### Use Cases:
All Traffic by Rule ID, All Traffic by Rule Type, Allowed Threats Breakdown by Sources, Allowed Threats by Actors, Allowed Threats Trend, Allowed traffic by Country, Allowed Traffic by Location, Allowed Traffic by Malicious IPs, Allowed traffic by Rule ID, Allowed traffic by Rule Type, Allowed Traffic by Threat Confidence, Anomalies within Allowed Traffic, Anomalies within Blocked Traffic, Blocked Threat Breakdown by Sources, Blocked Threats by Actors, Blocked Threats Trend, Blocked Traffic by Country, Blocked Traffic by Location, Blocked Traffic by Malicious IPs, Blocked Traffic by Rule ID, Blocked Traffic by Rule Type, Blocked Traffic by Threat Confidence, HTTP Methods, HTTP Versions, IP Count, Traffic Map, Traffic Trend, Unique Allowed Threats Map, Unique Blocked Threats Map, URI Hits



## Parser:
```
| parse "\"httpMethod\":\"*\"," as httpMethod,"\"httpVersion\":\"*\"," as httpVersion,"\"uri\":\"*\"," as uri, "{\"clientIp\":\"*\",\"country\":\"*\"" as clientIp,country, "\"action\":\"*\"" as action, "\"matchingNonTerminatingRules\":[*]" as matchingNonTerminatingRules, "\"rateBasedRuleList\":[*]" as rateBasedRuleList, "\"ruleGroupList\":[*]" as ruleGroupList, "\"httpSourceId\":\"*\"" as httpSourceId, "\"httpSourceName\":\"*\"" as httpSourceName, "\"terminatingRuleType\":\"*\"" as terminatingRuleType, "\"terminatingRuleId\":\"*\"" as terminatingRuleId, "\"webaclId\":\"*\"" as webaclId nodrop
```
### Use Cases:
Allowed Threats Breakdown by Sources, Allowed Threats by Actors, Allowed Threats Trend, Allowed traffic by Country, Allowed Traffic by Location, Allowed Traffic by Malicious IPs, Allowed traffic by Rule ID, Allowed traffic by Rule Type, Allowed Traffic by Threat Confidence, Anomalies within Allowed Traffic, Anomalies within Blocked Traffic, Blocked Threat Breakdown by Sources, Blocked Threats by Actors, Blocked Threats Trend, Blocked Traffic by Country, Blocked Traffic by Location, Blocked Traffic by Malicious IPs, Blocked Traffic by Rule ID, Blocked Traffic by Rule Type, Blocked Traffic by Threat Confidence, IP Count, Traffic Map, Unique Allowed Threats Map, Unique Blocked Threats Map



## Parser:
```
| parse "\"httpMethod\":\"*\"," as httpMethod,"\"httpVersion\":\"*\"," as httpVersion,"\"uri\":\"*\"," as uri, "{\"clientIp\":\"*\",\"country\":\"*\"" as clientIp,country, "\"action\":\"*\"" as action, "\"matchingNonTerminatingRules\":[*]" as matchingNonTerminatingRules, "\"rateBasedRuleList\":[*]" as rateBasedRuleList, "\"ruleGroupList\":[*]" as ruleGroupList, "\"httpSourceId\":\"*\"" as httpSourceId, "\"httpSourceName\":\"*\"" as httpSourceName, "\"terminatingRuleType\":\"*\"" as terminatingRuleType, "\"terminatingRuleId\":\"*\"" as terminatingRuleId, "\"webaclId\":\"*\"" as webaclId nodrop
| json field=raw "labels[*].name" as label_name 
```
### Use Cases:
Allowed Threats Breakdown by Sources, Allowed Threats by Actors, Allowed Threats Trend, Allowed Traffic by Malicious IPs, Allowed Traffic by Threat Confidence, Blocked Threat Breakdown by Sources, Blocked Threats by Actors, Blocked Threats Trend, Blocked Traffic by Malicious IPs, Blocked Traffic by Threat Confidence, Unique Allowed Threats Map, Unique Blocked Threats Map


