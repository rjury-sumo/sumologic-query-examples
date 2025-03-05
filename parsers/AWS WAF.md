# Parsers For AWS WAF

## Parser:
```
| parse "\"httpMethod\":\"*\"," as httpMethod,"\"httpVersion\":\"*\"," as httpVersion,"\"uri\":\"*\"," as uri, "{\"clientIp\":\"*\",\"country\":\"*\"" as clientIp,country, "\"action\":\"*\"" as action, "\"matchingNonTerminatingRules\":[*]" as matchingNonTerminatingRules, "\"rateBasedRuleList\":[*]" as rateBasedRuleList, "\"ruleGroupList\":[*]" as ruleGroupList, "\"httpSourceId\":\"*\"" as httpSourceId, "\"httpSourceName\":\"*\"" as httpSourceName, "\"terminatingRuleType\":\"*\"" as terminatingRuleType, "\"terminatingRuleId\":\"*\"" as terminatingRuleId, "\"webaclId\":\"*\"" as webaclId
```
### Use Cases:
All Traffic by Rule ID, All Traffic by Rule Type, AWS WAF - Client IP Threat Info, AWS WAF - Parser, HTTP Methods, HTTP Versions, IP Threat Count, Traffic Map, Traffic Trend, URI Hits



## Parser:
```
| parse "\"httpMethod\":\"*\"," as httpMethod,"\"httpVersion\":\"*\"," as httpVersion,"\"uri\":\"*\"," as uri, "{\"clientIp\":\"*\",\"country\":\"*\"" as clientIp,country, "\"action\":\"*\"" as action, "\"matchingNonTerminatingRules\":[*]" as matchingNonTerminatingRules, "\"rateBasedRuleList\":[*]" as rateBasedRuleList, "\"ruleGroupList\":[*]" as ruleGroupList, "\"httpSourceId\":\"*\"" as httpSourceId, "\"httpSourceName\":\"*\"" as httpSourceName, "\"terminatingRuleType\":\"*\"" as terminatingRuleType, "\"terminatingRuleId\":\"*\"" as terminatingRuleId, "\"webaclId\":\"*\"" as webaclId nodrop
```
### Use Cases:
All Traffic by Rule ID, All Traffic by Rule Type, Allowed by Country, Allowed by Rule ID, Allowed by Rule Type, Allowed Outliers, Allowed Threat Breakdown by Sources, Allowed Threat by Actors, Allowed Threats Trend, Allowed Traffic, Allowed Traffic by Malicious IPs, Allowed Traffic by Threat Confidence, AWS WAF - Client IP Threat Info, AWS WAF - Parser, Blocked by Country, Blocked by Rule ID, Blocked by Rule Type, Blocked Outliers, Blocked Threat Breakdown by Sources, Blocked Threats by Actors, Blocked Threats Trend, Blocked Traffic, Blocked Traffic by Malicious IPs, Blocked Traffic by Threat Confidence, HTTP Methods, HTTP Versions, IP Threat Count, Traffic Map, Traffic Trend, Unique Allowed Threats Map, Unique Blocked Threats Map, URI Hits



## Parser:
```
| parse "\"httpMethod\":\"*\"," as httpMethod,"\"httpVersion\":\"*\"," as httpVersion,"\"uri\":\"*\"," as uri, "{\"clientIp\":\"*\",\"country\":\"*\"" as clientIp,country, "\"action\":\"*\"" as action, "\"matchingNonTerminatingRules\":[*]" as matchingNonTerminatingRules, "\"rateBasedRuleList\":[*]" as rateBasedRuleList, "\"ruleGroupList\":[*]" as ruleGroupList, "\"httpSourceId\":\"*\"" as httpSourceId, "\"httpSourceName\":\"*\"" as httpSourceName, "\"terminatingRuleType\":\"*\"" as terminatingRuleType, "\"terminatingRuleId\":\"*\"" as terminatingRuleId, "\"webaclId\":\"*\"" as webaclId nodrop
| json field=raw "labels[*].name" as label_name 
```
### Use Cases:
All Traffic by Rule ID, All Traffic by Rule Type, Allowed Threat Breakdown by Sources, Allowed Threat by Actors, Allowed Traffic by Malicious IPs, Allowed Traffic by Threat Confidence, AWS WAF - Client IP Threat Info, AWS WAF - Parser, Blocked Threat Breakdown by Sources, Blocked Threats by Actors, Blocked Traffic by Malicious IPs, Blocked Traffic by Threat Confidence, HTTP Methods, HTTP Versions, IP Threat Count, Traffic Map, Traffic Trend, Unique Allowed Threats Map, Unique Blocked Threats Map, URI Hits


