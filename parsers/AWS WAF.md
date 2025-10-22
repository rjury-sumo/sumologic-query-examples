# Parsers For AWS WAF

**AWS WAF/Client IP Threat Info/AWS WAF - Client IP Threat Info**
```
_sourceCategory = Labs/AWS/WAF  {{client_ip}}
| parse "\"httpMethod\":\"*\"," as httpMethod,"\"httpVersion\":\"*\"," as httpVersion,"\"uri\":\"*\"," as uri, "{\"clientIp\":\"*\",\"country\":\"*\"" as clientIp,country, "\"action\":\"*\"" as action, "\"matchingNonTerminatingRules\":[*]" as matchingNonTerminatingRules, "\"rateBasedRuleList\":[*]" as rateBasedRuleList, "\"ruleGroupList\":[*]" as ruleGroupList, "\"httpSourceId\":\"*\"" as httpSourceId, "\"httpSourceName\":\"*\"" as httpSourceName, "\"terminatingRuleType\":\"*\"" as terminatingRuleType, "\"terminatingRuleId\":\"*\"" as terminatingRuleId, "\"webaclId\":\"*\"" as webaclId nodrop
```

**AWS WAF/Overview - New/All Traffic by Rule ID**
```
_sourceCategory = Labs/AWS/WAF 
| parse "\"httpMethod\":\"*\"," as httpMethod,"\"httpVersion\":\"*\"," as httpVersion,"\"uri\":\"*\"," as uri, "{\"clientIp\":\"*\",\"country\":\"*\"" as clientIp,country, "\"action\":\"*\"" as action, "\"matchingNonTerminatingRules\":[*]" as matchingNonTerminatingRules, "\"rateBasedRuleList\":[*]" as rateBasedRuleList, "\"ruleGroupList\":[*]" as ruleGroupList, "\"httpSourceId\":\"*\"" as httpSourceId, "\"httpSourceName\":\"*\"" as httpSourceName, "\"terminatingRuleType\":\"*\"" as terminatingRuleType, "\"terminatingRuleId\":\"*\"" as terminatingRuleId, "\"webaclId\":\"*\"" as webaclId
```

**AWS WAF/Overview - New/All Traffic by Rule Type**
```
_sourceCategory = Labs/AWS/WAF 
| parse "\"httpMethod\":\"*\"," as httpMethod,"\"httpVersion\":\"*\"," as httpVersion,"\"uri\":\"*\"," as uri, "{\"clientIp\":\"*\",\"country\":\"*\"" as clientIp,country, "\"action\":\"*\"" as action, "\"matchingNonTerminatingRules\":[*]" as matchingNonTerminatingRules, "\"rateBasedRuleList\":[*]" as rateBasedRuleList, "\"ruleGroupList\":[*]" as ruleGroupList, "\"httpSourceId\":\"*\"" as httpSourceId, "\"httpSourceName\":\"*\"" as httpSourceName, "\"terminatingRuleType\":\"*\"" as terminatingRuleType, "\"terminatingRuleId\":\"*\"" as terminatingRuleId, "\"webaclId\":\"*\"" as webaclId
```

**AWS WAF/Overview - New/HTTP Methods**
```
_sourceCategory = Labs/AWS/WAF 
| parse "\"httpMethod\":\"*\"," as httpMethod,"\"httpVersion\":\"*\"," as httpVersion,"\"uri\":\"*\"," as uri, "{\"clientIp\":\"*\",\"country\":\"*\"" as clientIp,country, "\"action\":\"*\"" as action, "\"matchingNonTerminatingRules\":[*]" as matchingNonTerminatingRules, "\"rateBasedRuleList\":[*]" as rateBasedRuleList, "\"ruleGroupList\":[*]" as ruleGroupList, "\"httpSourceId\":\"*\"" as httpSourceId, "\"httpSourceName\":\"*\"" as httpSourceName, "\"terminatingRuleType\":\"*\"" as terminatingRuleType, "\"terminatingRuleId\":\"*\"" as terminatingRuleId, "\"webaclId\":\"*\"" as webaclId
```

**AWS WAF/Overview - New/HTTP Versions**
```
_sourceCategory = Labs/AWS/WAF 
| parse "\"httpMethod\":\"*\"," as httpMethod,"\"httpVersion\":\"*\"," as httpVersion,"\"uri\":\"*\"," as uri, "{\"clientIp\":\"*\",\"country\":\"*\"" as clientIp,country, "\"action\":\"*\"" as action, "\"matchingNonTerminatingRules\":[*]" as matchingNonTerminatingRules, "\"rateBasedRuleList\":[*]" as rateBasedRuleList, "\"ruleGroupList\":[*]" as ruleGroupList, "\"httpSourceId\":\"*\"" as httpSourceId, "\"httpSourceName\":\"*\"" as httpSourceName, "\"terminatingRuleType\":\"*\"" as terminatingRuleType, "\"terminatingRuleId\":\"*\"" as terminatingRuleId, "\"webaclId\":\"*\"" as webaclId
```

**AWS WAF/Overview - New/IP Threat Count**
```
_sourceCategory = Labs/AWS/WAF  ALLOW
| parse "\"httpMethod\":\"*\"," as httpMethod,"\"httpVersion\":\"*\"," as httpVersion,"\"uri\":\"*\"," as uri, "{\"clientIp\":\"*\",\"country\":\"*\"" as clientIp,country, "\"action\":\"*\"" as action, "\"matchingNonTerminatingRules\":[*]" as matchingNonTerminatingRules, "\"rateBasedRuleList\":[*]" as rateBasedRuleList, "\"ruleGroupList\":[*]" as ruleGroupList, "\"httpSourceId\":\"*\"" as httpSourceId, "\"httpSourceName\":\"*\"" as httpSourceName, "\"terminatingRuleType\":\"*\"" as terminatingRuleType, "\"terminatingRuleId\":\"*\"" as terminatingRuleId, "\"webaclId\":\"*\"" as webaclId nodrop
|where if ("{{terminatingruletype}}" = "*", true, terminatingruletype matches "{{terminatingruletype}}")
|count as ip_count by clientip
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=clientip 
| json field=raw "labels[*].name" as label_name 
```

**AWS WAF/Overview - New/Traffic Map**
```
_sourceCategory = Labs/AWS/WAF 
| parse "\"httpMethod\":\"*\"," as httpMethod,"\"httpVersion\":\"*\"," as httpVersion,"\"uri\":\"*\"," as uri, "{\"clientIp\":\"*\",\"country\":\"*\"" as clientIp,country, "\"action\":\"*\"" as action, "\"matchingNonTerminatingRules\":[*]" as matchingNonTerminatingRules, "\"rateBasedRuleList\":[*]" as rateBasedRuleList, "\"ruleGroupList\":[*]" as ruleGroupList, "\"httpSourceId\":\"*\"" as httpSourceId, "\"httpSourceName\":\"*\"" as httpSourceName, "\"terminatingRuleType\":\"*\"" as terminatingRuleType, "\"terminatingRuleId\":\"*\"" as terminatingRuleId, "\"webaclId\":\"*\"" as webaclId nodrop
```

**AWS WAF/Overview - New/Traffic Trend**
```
_sourceCategory = Labs/AWS/WAF 
| parse "\"httpMethod\":\"*\"," as httpMethod,"\"httpVersion\":\"*\"," as httpVersion,"\"uri\":\"*\"," as uri, "{\"clientIp\":\"*\",\"country\":\"*\"" as clientIp,country, "\"action\":\"*\"" as action, "\"matchingNonTerminatingRules\":[*]" as matchingNonTerminatingRules, "\"rateBasedRuleList\":[*]" as rateBasedRuleList, "\"ruleGroupList\":[*]" as ruleGroupList, "\"httpSourceId\":\"*\"" as httpSourceId, "\"httpSourceName\":\"*\"" as httpSourceName, "\"terminatingRuleType\":\"*\"" as terminatingRuleType, "\"terminatingRuleId\":\"*\"" as terminatingRuleId, "\"webaclId\":\"*\"" as webaclId nodrop
```

**AWS WAF/Overview - New/URI Hits**
```
_sourceCategory = Labs/AWS/WAF 
| parse "\"httpMethod\":\"*\"," as httpMethod,"\"httpVersion\":\"*\"," as httpVersion,"\"uri\":\"*\"," as uri, "{\"clientIp\":\"*\",\"country\":\"*\"" as clientIp,country, "\"action\":\"*\"" as action, "\"matchingNonTerminatingRules\":[*]" as matchingNonTerminatingRules, "\"rateBasedRuleList\":[*]" as rateBasedRuleList, "\"ruleGroupList\":[*]" as ruleGroupList, "\"httpSourceId\":\"*\"" as httpSourceId, "\"httpSourceName\":\"*\"" as httpSourceName, "\"terminatingRuleType\":\"*\"" as terminatingRuleType, "\"terminatingRuleId\":\"*\"" as terminatingRuleId, "\"webaclId\":\"*\"" as webaclId
```

**AWS WAF/Parser/AWS WAF - Parser**
```
_sourceCategory = Labs/AWS/WAF 
| parse "\"httpMethod\":\"*\"," as httpMethod,"\"httpVersion\":\"*\"," as httpVersion,"\"uri\":\"*\"," as uri, "{\"clientIp\":\"*\",\"country\":\"*\"" as clientIp,country, "\"action\":\"*\"" as action, "\"matchingNonTerminatingRules\":[*]" as matchingNonTerminatingRules, "\"rateBasedRuleList\":[*]" as rateBasedRuleList, "\"ruleGroupList\":[*]" as ruleGroupList, "\"httpSourceId\":\"*\"" as httpSourceId, "\"httpSourceName\":\"*\"" as httpSourceName, "\"terminatingRuleType\":\"*\"" as terminatingRuleType, "\"terminatingRuleId\":\"*\"" as terminatingRuleId, "\"webaclId\":\"*\"" as webaclId nodrop
```

**AWS WAF/Threat Intelligence - New/Allowed Threat Breakdown by Sources**
```
_sourceCategory = Labs/AWS/WAF  ALLOW
| parse "\"httpMethod\":\"*\"," as httpMethod,"\"httpVersion\":\"*\"," as httpVersion,"\"uri\":\"*\"," as uri, "{\"clientIp\":\"*\",\"country\":\"*\"" as clientIp,country, "\"action\":\"*\"" as action, "\"matchingNonTerminatingRules\":[*]" as matchingNonTerminatingRules, "\"rateBasedRuleList\":[*]" as rateBasedRuleList, "\"ruleGroupList\":[*]" as ruleGroupList, "\"httpSourceId\":\"*\"" as httpSourceId, "\"httpSourceName\":\"*\"" as httpSourceName, "\"terminatingRuleType\":\"*\"" as terminatingRuleType, "\"terminatingRuleId\":\"*\"" as terminatingRuleId, "\"webaclId\":\"*\"" as webaclId nodrop
| where action="ALLOW"
|where if ("{{clientip}}" = "*", true, clientip matches "{{clientip}}")
|count as allowed_ips by clientip, _sourceCategory
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=clientip 
| json field=raw "labels[*].name" as label_name 
```

**AWS WAF/Threat Intelligence - New/Allowed Threat by Actors**
```
_sourceCategory = Labs/AWS/WAF  ALLOW
| parse "\"httpMethod\":\"*\"," as httpMethod,"\"httpVersion\":\"*\"," as httpVersion,"\"uri\":\"*\"," as uri, "{\"clientIp\":\"*\",\"country\":\"*\"" as clientIp,country, "\"action\":\"*\"" as action, "\"matchingNonTerminatingRules\":[*]" as matchingNonTerminatingRules, "\"rateBasedRuleList\":[*]" as rateBasedRuleList, "\"ruleGroupList\":[*]" as ruleGroupList, "\"httpSourceId\":\"*\"" as httpSourceId, "\"httpSourceName\":\"*\"" as httpSourceName, "\"terminatingRuleType\":\"*\"" as terminatingRuleType, "\"terminatingRuleId\":\"*\"" as terminatingRuleId, "\"webaclId\":\"*\"" as webaclId nodrop
| where action="ALLOW"
|where if ("{{clientip}}" = "*", true, clientip matches "{{clientip}}")
|count as allowed_ips by clientip
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=clientip 
| json field=raw "labels[*].name" as label_name 
```

**AWS WAF/Threat Intelligence - New/Allowed Threats Trend**
```
_sourceCategory = Labs/AWS/WAF  ALLOW
| parse "\"httpMethod\":\"*\"," as httpMethod,"\"httpVersion\":\"*\"," as httpVersion,"\"uri\":\"*\"," as uri, "{\"clientIp\":\"*\",\"country\":\"*\"" as clientIp,country, "\"action\":\"*\"" as action, "\"matchingNonTerminatingRules\":[*]" as matchingNonTerminatingRules, "\"rateBasedRuleList\":[*]" as rateBasedRuleList, "\"ruleGroupList\":[*]" as ruleGroupList, "\"httpSourceId\":\"*\"" as httpSourceId, "\"httpSourceName\":\"*\"" as httpSourceName, "\"terminatingRuleType\":\"*\"" as terminatingRuleType, "\"terminatingRuleId\":\"*\"" as terminatingRuleId, "\"webaclId\":\"*\"" as webaclId nodrop
```

**AWS WAF/Threat Intelligence - New/Allowed Traffic by Malicious IPs**
```
_sourceCategory = Labs/AWS/WAF  ALLOW
| parse "\"httpMethod\":\"*\"," as httpMethod,"\"httpVersion\":\"*\"," as httpVersion,"\"uri\":\"*\"," as uri, "{\"clientIp\":\"*\",\"country\":\"*\"" as clientIp,country, "\"action\":\"*\"" as action, "\"matchingNonTerminatingRules\":[*]" as matchingNonTerminatingRules, "\"rateBasedRuleList\":[*]" as rateBasedRuleList, "\"ruleGroupList\":[*]" as ruleGroupList, "\"httpSourceId\":\"*\"" as httpSourceId, "\"httpSourceName\":\"*\"" as httpSourceName, "\"terminatingRuleType\":\"*\"" as terminatingRuleType, "\"terminatingRuleId\":\"*\"" as terminatingRuleId, "\"webaclId\":\"*\"" as webaclId nodrop
| where action="ALLOW"
|where if ("{{clientip}}" = "*", true, clientip matches "{{clientip}}")
|count as allowed_ips by clientip
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=clientip 
| json field=raw "labels[*].name" as label_name 
```

**AWS WAF/Threat Intelligence - New/Allowed Traffic by Threat Confidence**
```
_sourceCategory = Labs/AWS/WAF  ALLOW
| parse "\"httpMethod\":\"*\"," as httpMethod,"\"httpVersion\":\"*\"," as httpVersion,"\"uri\":\"*\"," as uri, "{\"clientIp\":\"*\",\"country\":\"*\"" as clientIp,country, "\"action\":\"*\"" as action, "\"matchingNonTerminatingRules\":[*]" as matchingNonTerminatingRules, "\"rateBasedRuleList\":[*]" as rateBasedRuleList, "\"ruleGroupList\":[*]" as ruleGroupList, "\"httpSourceId\":\"*\"" as httpSourceId, "\"httpSourceName\":\"*\"" as httpSourceName, "\"terminatingRuleType\":\"*\"" as terminatingRuleType, "\"terminatingRuleId\":\"*\"" as terminatingRuleId, "\"webaclId\":\"*\"" as webaclId nodrop
```

**AWS WAF/Threat Intelligence - New/Blocked Threat Breakdown by Sources**
```
_sourceCategory = Labs/AWS/WAF  BLOCK
| parse "\"httpMethod\":\"*\"," as httpMethod,"\"httpVersion\":\"*\"," as httpVersion,"\"uri\":\"*\"," as uri, "{\"clientIp\":\"*\",\"country\":\"*\"" as clientIp,country, "\"action\":\"*\"" as action, "\"matchingNonTerminatingRules\":[*]" as matchingNonTerminatingRules, "\"rateBasedRuleList\":[*]" as rateBasedRuleList, "\"ruleGroupList\":[*]" as ruleGroupList, "\"httpSourceId\":\"*\"" as httpSourceId, "\"httpSourceName\":\"*\"" as httpSourceName, "\"terminatingRuleType\":\"*\"" as terminatingRuleType, "\"terminatingRuleId\":\"*\"" as terminatingRuleId, "\"webaclId\":\"*\"" as webaclId nodrop
| where action="BLOCK"
|where if ("{{clientip}}" = "*", true, clientip matches "{{clientip}}")
|count as blocked_ips by clientip, _sourceCategory
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=clientip 
| json field=raw "labels[*].name" as label_name 
```

**AWS WAF/Threat Intelligence - New/Blocked Threats by Actors**
```
_sourceCategory = Labs/AWS/WAF  BLOCK
| parse "\"httpMethod\":\"*\"," as httpMethod,"\"httpVersion\":\"*\"," as httpVersion,"\"uri\":\"*\"," as uri, "{\"clientIp\":\"*\",\"country\":\"*\"" as clientIp,country, "\"action\":\"*\"" as action, "\"matchingNonTerminatingRules\":[*]" as matchingNonTerminatingRules, "\"rateBasedRuleList\":[*]" as rateBasedRuleList, "\"ruleGroupList\":[*]" as ruleGroupList, "\"httpSourceId\":\"*\"" as httpSourceId, "\"httpSourceName\":\"*\"" as httpSourceName, "\"terminatingRuleType\":\"*\"" as terminatingRuleType, "\"terminatingRuleId\":\"*\"" as terminatingRuleId, "\"webaclId\":\"*\"" as webaclId nodrop
| where action="BLOCK"
|where if ("{{clientip}}" = "*", true, clientip matches "{{clientip}}")
|count as blocked_ips by clientip
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=clientip 
| json field=raw "labels[*].name" as label_name 
```

**AWS WAF/Threat Intelligence - New/Blocked Threats Trend**
```
_sourceCategory = Labs/AWS/WAF  BLOCK
| parse "\"httpMethod\":\"*\"," as httpMethod,"\"httpVersion\":\"*\"," as httpVersion,"\"uri\":\"*\"," as uri, "{\"clientIp\":\"*\",\"country\":\"*\"" as clientIp,country, "\"action\":\"*\"" as action, "\"matchingNonTerminatingRules\":[*]" as matchingNonTerminatingRules, "\"rateBasedRuleList\":[*]" as rateBasedRuleList, "\"ruleGroupList\":[*]" as ruleGroupList, "\"httpSourceId\":\"*\"" as httpSourceId, "\"httpSourceName\":\"*\"" as httpSourceName, "\"terminatingRuleType\":\"*\"" as terminatingRuleType, "\"terminatingRuleId\":\"*\"" as terminatingRuleId, "\"webaclId\":\"*\"" as webaclId nodrop
```

**AWS WAF/Threat Intelligence - New/Blocked Traffic by Malicious IPs**
```
_sourceCategory = Labs/AWS/WAF  BLOCK
| parse "\"httpMethod\":\"*\"," as httpMethod,"\"httpVersion\":\"*\"," as httpVersion,"\"uri\":\"*\"," as uri, "{\"clientIp\":\"*\",\"country\":\"*\"" as clientIp,country, "\"action\":\"*\"" as action, "\"matchingNonTerminatingRules\":[*]" as matchingNonTerminatingRules, "\"rateBasedRuleList\":[*]" as rateBasedRuleList, "\"ruleGroupList\":[*]" as ruleGroupList, "\"httpSourceId\":\"*\"" as httpSourceId, "\"httpSourceName\":\"*\"" as httpSourceName, "\"terminatingRuleType\":\"*\"" as terminatingRuleType, "\"terminatingRuleId\":\"*\"" as terminatingRuleId, "\"webaclId\":\"*\"" as webaclId nodrop
| where action="BLOCK"
|where if ("{{clientip}}" = "*", true, clientip matches "{{clientip}}")
|count as blocked_ips by clientip
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=clientip 
| json field=raw "labels[*].name" as label_name 
```

**AWS WAF/Threat Intelligence - New/Blocked Traffic by Threat Confidence**
```
_sourceCategory = Labs/AWS/WAF  BLOCK
| parse "\"httpMethod\":\"*\"," as httpMethod,"\"httpVersion\":\"*\"," as httpVersion,"\"uri\":\"*\"," as uri, "{\"clientIp\":\"*\",\"country\":\"*\"" as clientIp,country, "\"action\":\"*\"" as action, "\"matchingNonTerminatingRules\":[*]" as matchingNonTerminatingRules, "\"rateBasedRuleList\":[*]" as rateBasedRuleList, "\"ruleGroupList\":[*]" as ruleGroupList, "\"httpSourceId\":\"*\"" as httpSourceId, "\"httpSourceName\":\"*\"" as httpSourceName, "\"terminatingRuleType\":\"*\"" as terminatingRuleType, "\"terminatingRuleId\":\"*\"" as terminatingRuleId, "\"webaclId\":\"*\"" as webaclId nodrop
```

**AWS WAF/Threat Intelligence - New/Unique Allowed Threats Map**
```
_sourceCategory = Labs/AWS/WAF  ALLOW
| parse "\"httpMethod\":\"*\"," as httpMethod,"\"httpVersion\":\"*\"," as httpVersion,"\"uri\":\"*\"," as uri, "{\"clientIp\":\"*\",\"country\":\"*\"" as clientIp,country, "\"action\":\"*\"" as action, "\"matchingNonTerminatingRules\":[*]" as matchingNonTerminatingRules, "\"rateBasedRuleList\":[*]" as rateBasedRuleList, "\"ruleGroupList\":[*]" as ruleGroupList, "\"httpSourceId\":\"*\"" as httpSourceId, "\"httpSourceName\":\"*\"" as httpSourceName, "\"terminatingRuleType\":\"*\"" as terminatingRuleType, "\"terminatingRuleId\":\"*\"" as terminatingRuleId, "\"webaclId\":\"*\"" as webaclId nodrop
```

**AWS WAF/Threat Intelligence - New/Unique Blocked Threats Map**
```
_sourceCategory = Labs/AWS/WAF  BLOCK
| parse "\"httpMethod\":\"*\"," as httpMethod,"\"httpVersion\":\"*\"," as httpVersion,"\"uri\":\"*\"," as uri, "{\"clientIp\":\"*\",\"country\":\"*\"" as clientIp,country, "\"action\":\"*\"" as action, "\"matchingNonTerminatingRules\":[*]" as matchingNonTerminatingRules, "\"rateBasedRuleList\":[*]" as rateBasedRuleList, "\"ruleGroupList\":[*]" as ruleGroupList, "\"httpSourceId\":\"*\"" as httpSourceId, "\"httpSourceName\":\"*\"" as httpSourceName, "\"terminatingRuleType\":\"*\"" as terminatingRuleType, "\"terminatingRuleId\":\"*\"" as terminatingRuleId, "\"webaclId\":\"*\"" as webaclId nodrop
```

**AWS WAF/Traffic - New/Allowed by Country**
```
_sourceCategory = Labs/AWS/WAF  ALLOW
| parse "\"httpMethod\":\"*\"," as httpMethod,"\"httpVersion\":\"*\"," as httpVersion,"\"uri\":\"*\"," as uri, "{\"clientIp\":\"*\",\"country\":\"*\"" as clientIp,country, "\"action\":\"*\"" as action, "\"matchingNonTerminatingRules\":[*]" as matchingNonTerminatingRules, "\"rateBasedRuleList\":[*]" as rateBasedRuleList, "\"ruleGroupList\":[*]" as ruleGroupList, "\"httpSourceId\":\"*\"" as httpSourceId, "\"httpSourceName\":\"*\"" as httpSourceName, "\"terminatingRuleType\":\"*\"" as terminatingRuleType, "\"terminatingRuleId\":\"*\"" as terminatingRuleId, "\"webaclId\":\"*\"" as webaclId nodrop
```

**AWS WAF/Traffic - New/Allowed by Rule ID**
```
_sourceCategory = Labs/AWS/WAF  ALLOW
| parse "\"httpMethod\":\"*\"," as httpMethod,"\"httpVersion\":\"*\"," as httpVersion,"\"uri\":\"*\"," as uri, "{\"clientIp\":\"*\",\"country\":\"*\"" as clientIp,country, "\"action\":\"*\"" as action, "\"matchingNonTerminatingRules\":[*]" as matchingNonTerminatingRules, "\"rateBasedRuleList\":[*]" as rateBasedRuleList, "\"ruleGroupList\":[*]" as ruleGroupList, "\"httpSourceId\":\"*\"" as httpSourceId, "\"httpSourceName\":\"*\"" as httpSourceName, "\"terminatingRuleType\":\"*\"" as terminatingRuleType, "\"terminatingRuleId\":\"*\"" as terminatingRuleId, "\"webaclId\":\"*\"" as webaclId nodrop
```

**AWS WAF/Traffic - New/Allowed by Rule Type**
```
_sourceCategory = Labs/AWS/WAF  ALLOW
| parse "\"httpMethod\":\"*\"," as httpMethod,"\"httpVersion\":\"*\"," as httpVersion,"\"uri\":\"*\"," as uri, "{\"clientIp\":\"*\",\"country\":\"*\"" as clientIp,country, "\"action\":\"*\"" as action, "\"matchingNonTerminatingRules\":[*]" as matchingNonTerminatingRules, "\"rateBasedRuleList\":[*]" as rateBasedRuleList, "\"ruleGroupList\":[*]" as ruleGroupList, "\"httpSourceId\":\"*\"" as httpSourceId, "\"httpSourceName\":\"*\"" as httpSourceName, "\"terminatingRuleType\":\"*\"" as terminatingRuleType, "\"terminatingRuleId\":\"*\"" as terminatingRuleId, "\"webaclId\":\"*\"" as webaclId nodrop
```

**AWS WAF/Traffic - New/Allowed Outliers**
```
_sourceCategory = Labs/AWS/WAF  ALLOW
| parse "\"httpMethod\":\"*\"," as httpMethod,"\"httpVersion\":\"*\"," as httpVersion,"\"uri\":\"*\"," as uri, "{\"clientIp\":\"*\",\"country\":\"*\"" as clientIp,country, "\"action\":\"*\"" as action, "\"matchingNonTerminatingRules\":[*]" as matchingNonTerminatingRules, "\"rateBasedRuleList\":[*]" as rateBasedRuleList, "\"ruleGroupList\":[*]" as ruleGroupList, "\"httpSourceId\":\"*\"" as httpSourceId, "\"httpSourceName\":\"*\"" as httpSourceName, "\"terminatingRuleType\":\"*\"" as terminatingRuleType, "\"terminatingRuleId\":\"*\"" as terminatingRuleId, "\"webaclId\":\"*\"" as webaclId nodrop
```

**AWS WAF/Traffic - New/Allowed Traffic**
```
_sourceCategory = Labs/AWS/WAF  ALLOW
| parse "\"httpMethod\":\"*\"," as httpMethod,"\"httpVersion\":\"*\"," as httpVersion,"\"uri\":\"*\"," as uri, "{\"clientIp\":\"*\",\"country\":\"*\"" as clientIp,country, "\"action\":\"*\"" as action, "\"matchingNonTerminatingRules\":[*]" as matchingNonTerminatingRules, "\"rateBasedRuleList\":[*]" as rateBasedRuleList, "\"ruleGroupList\":[*]" as ruleGroupList, "\"httpSourceId\":\"*\"" as httpSourceId, "\"httpSourceName\":\"*\"" as httpSourceName, "\"terminatingRuleType\":\"*\"" as terminatingRuleType, "\"terminatingRuleId\":\"*\"" as terminatingRuleId, "\"webaclId\":\"*\"" as webaclId nodrop
```

**AWS WAF/Traffic - New/Blocked by Country**
```
_sourceCategory = Labs/AWS/WAF  BLOCK
| parse "\"httpMethod\":\"*\"," as httpMethod,"\"httpVersion\":\"*\"," as httpVersion,"\"uri\":\"*\"," as uri, "{\"clientIp\":\"*\",\"country\":\"*\"" as clientIp,country, "\"action\":\"*\"" as action, "\"matchingNonTerminatingRules\":[*]" as matchingNonTerminatingRules, "\"rateBasedRuleList\":[*]" as rateBasedRuleList, "\"ruleGroupList\":[*]" as ruleGroupList, "\"httpSourceId\":\"*\"" as httpSourceId, "\"httpSourceName\":\"*\"" as httpSourceName, "\"terminatingRuleType\":\"*\"" as terminatingRuleType, "\"terminatingRuleId\":\"*\"" as terminatingRuleId, "\"webaclId\":\"*\"" as webaclId nodrop
```

**AWS WAF/Traffic - New/Blocked by Rule ID**
```
_sourceCategory = Labs/AWS/WAF  BLOCK
| parse "\"httpMethod\":\"*\"," as httpMethod,"\"httpVersion\":\"*\"," as httpVersion,"\"uri\":\"*\"," as uri, "{\"clientIp\":\"*\",\"country\":\"*\"" as clientIp,country, "\"action\":\"*\"" as action, "\"matchingNonTerminatingRules\":[*]" as matchingNonTerminatingRules, "\"rateBasedRuleList\":[*]" as rateBasedRuleList, "\"ruleGroupList\":[*]" as ruleGroupList, "\"httpSourceId\":\"*\"" as httpSourceId, "\"httpSourceName\":\"*\"" as httpSourceName, "\"terminatingRuleType\":\"*\"" as terminatingRuleType, "\"terminatingRuleId\":\"*\"" as terminatingRuleId, "\"webaclId\":\"*\"" as webaclId nodrop
```

**AWS WAF/Traffic - New/Blocked by Rule Type**
```
_sourceCategory = Labs/AWS/WAF  BLOCK
| parse "\"httpMethod\":\"*\"," as httpMethod,"\"httpVersion\":\"*\"," as httpVersion,"\"uri\":\"*\"," as uri, "{\"clientIp\":\"*\",\"country\":\"*\"" as clientIp,country, "\"action\":\"*\"" as action, "\"matchingNonTerminatingRules\":[*]" as matchingNonTerminatingRules, "\"rateBasedRuleList\":[*]" as rateBasedRuleList, "\"ruleGroupList\":[*]" as ruleGroupList, "\"httpSourceId\":\"*\"" as httpSourceId, "\"httpSourceName\":\"*\"" as httpSourceName, "\"terminatingRuleType\":\"*\"" as terminatingRuleType, "\"terminatingRuleId\":\"*\"" as terminatingRuleId, "\"webaclId\":\"*\"" as webaclId nodrop
```

**AWS WAF/Traffic - New/Blocked Outliers**
```
_sourceCategory = Labs/AWS/WAF  BLOCK
| parse "\"httpMethod\":\"*\"," as httpMethod,"\"httpVersion\":\"*\"," as httpVersion,"\"uri\":\"*\"," as uri, "{\"clientIp\":\"*\",\"country\":\"*\"" as clientIp,country, "\"action\":\"*\"" as action, "\"matchingNonTerminatingRules\":[*]" as matchingNonTerminatingRules, "\"rateBasedRuleList\":[*]" as rateBasedRuleList, "\"ruleGroupList\":[*]" as ruleGroupList, "\"httpSourceId\":\"*\"" as httpSourceId, "\"httpSourceName\":\"*\"" as httpSourceName, "\"terminatingRuleType\":\"*\"" as terminatingRuleType, "\"terminatingRuleId\":\"*\"" as terminatingRuleId, "\"webaclId\":\"*\"" as webaclId nodrop
```

**AWS WAF/Traffic - New/Blocked Traffic**
```
_sourceCategory = Labs/AWS/WAF  BLOCK
| parse "\"httpMethod\":\"*\"," as httpMethod,"\"httpVersion\":\"*\"," as httpVersion,"\"uri\":\"*\"," as uri, "{\"clientIp\":\"*\",\"country\":\"*\"" as clientIp,country, "\"action\":\"*\"" as action, "\"matchingNonTerminatingRules\":[*]" as matchingNonTerminatingRules, "\"rateBasedRuleList\":[*]" as rateBasedRuleList, "\"ruleGroupList\":[*]" as ruleGroupList, "\"httpSourceId\":\"*\"" as httpSourceId, "\"httpSourceName\":\"*\"" as httpSourceName, "\"terminatingRuleType\":\"*\"" as terminatingRuleType, "\"terminatingRuleId\":\"*\"" as terminatingRuleId, "\"webaclId\":\"*\"" as webaclId nodrop
```


