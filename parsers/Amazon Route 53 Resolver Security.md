# Parsers For Amazon Route 53 Resolver Security

**Amazon Route 53 Resolver Security/Query Logging Overview/Alerted DNS Queries by Instance ID Over Time**
```
_sourceCategory={{Route53ResolverQueryLogsSource}}  ALERT
| where firewall_rule_action = "ALERT"
| %"srcids.instance" as instance_id
| json "answers[*].Rdata" as response nodrop
| extract field=response "(?<response>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"  multi nodrop
```

**Amazon Route 53 Resolver Security/Query Logging Overview/Anomalies within Alerted DNS Queries**
```
_sourceCategory={{Route53ResolverQueryLogsSource}}  ALERT
| where firewall_rule_action = "ALERT"
| %"srcids.instance" as instance_id
| json "answers[*].Rdata" as response nodrop
| extract field=response "(?<response>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"  multi nodrop
```

**Amazon Route 53 Resolver Security/Query Logging Overview/Anomalies within Blocked DNS Queries**
```
_sourceCategory={{Route53ResolverQueryLogsSource}}  BLOCK
| where firewall_rule_action = "BLOCK"
| %"srcids.instance" as instance_id
| json "answers[*].Rdata" as response nodrop
| extract field=response "(?<response>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"  multi nodrop
```

**Amazon Route 53 Resolver Security/Query Logging Overview/Blocked DNS Queries by Instance ID Over Time**
```
_sourceCategory={{Route53ResolverQueryLogsSource}}  BLOCK
| where firewall_rule_action = "BLOCK"
| %"srcids.instance" as instance_id
| json "answers[*].Rdata" as response nodrop
| extract field=response "(?<response>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"  multi nodrop
```

**Amazon Route 53 Resolver Security/Query Logging Overview/IPv4 Resolution by Geo Location**
```
_sourceCategory={{Route53ResolverQueryLogsSource}}  
| where query_type = "A"
| %"srcids.instance" as instance_id
| toLowerCase(region)
| toLowerCase(vpc_id)
| toLowerCase(query_name)
| toLowerCase(instance_id)
| toUpperCase(Query_type)
| toLowerCase(instance_id)
| toLowerCase(firewall_rule_group_id)
| toLowerCase(firewall_domain_list_id)
| toLowerCase(firewall_rule_action)
| toLowerCase(response)
| where vpc_id matches toLowerCase("{{vpc_id}}")
| where query_name matches toLowerCase("{{query_name}}")
| where account_id matches "{{account_id}}"
| where query_type matches toUpperCase("{{query_type}}")
| where srcaddr matches "{{srcaddr}}"
| where instance_id matches toLowerCase("{{instance_id}}")
| where region matches toLowerCase("{{region}}")
| if(isNull(response), "", response) as response
| where response matches toLowerCase("{{response}}")
| if(isNull(firewall_rule_group_id), "", firewall_rule_group_id) as firewall_rule_group_id
| where firewall_rule_group_id matches "{{firewall_rule_group_id}}"
| if(isNull(firewall_domain_list_id), "", firewall_domain_list_id) as firewall_domain_list_id
| where firewall_domain_list_id matches "{{firewall_domain_list_id}}"
| if(isNull(firewall_rule_action), "", firewall_rule_action) as firewall_rule_action
| where firewall_rule_action matches "{{firewall_rule_action}}"
| json "answers[*].Rdata" as response
| extract field=response "(?<response>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"  multi 
```

**Amazon Route 53 Resolver Security/Query Logging Overview/Threat Outlier**
```
_sourceCategory={{Route53ResolverQueryLogsSource}} 
| %"srcids.instance" as instance_id
| toLowerCase(region)
| toLowerCase(vpc_id)
| toLowerCase(query_name)
| toLowerCase(instance_id)
| toUpperCase(Query_type)
| toLowerCase(instance_id)
| toLowerCase(firewall_rule_group_id)
| toLowerCase(firewall_domain_list_id)
| toLowerCase(firewall_rule_action)
| toLowerCase(response)
| where vpc_id matches toLowerCase("{{vpc_id}}")
| where query_name matches toLowerCase("{{query_name}}")
| where account_id matches "{{account_id}}"
| where query_type matches toUpperCase("{{query_type}}")
| where srcaddr matches "{{srcaddr}}"
| where instance_id matches toLowerCase("{{instance_id}}")
| where region matches toLowerCase("{{region}}")
| if(isNull(response), "", response) as response
| where response matches toLowerCase("{{response}}")
| if(isNull(firewall_rule_group_id), "", firewall_rule_group_id) as firewall_rule_group_id
| where firewall_rule_group_id matches "{{firewall_rule_group_id}}"
| if(isNull(firewall_domain_list_id), "", firewall_domain_list_id) as firewall_domain_list_id
| where firewall_domain_list_id matches "{{firewall_domain_list_id}}"
| if(isNull(firewall_rule_action), "", firewall_rule_action) as firewall_rule_action
| where firewall_rule_action matches "{{firewall_rule_action}}"
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=query_name
| where  type = "domain" and !isNull(malicious_confidence)
| json field=raw "labels[*].name" as label_name 
```

**Amazon Route 53 Resolver Security/Query Logging Overview/Threats Over Time**
```
_sourceCategory={{Route53ResolverQueryLogsSource}} 
| %"srcids.instance" as instance_id
| toLowerCase(region)
| toLowerCase(vpc_id)
| toLowerCase(query_name)
| toLowerCase(instance_id)
| toUpperCase(Query_type)
| toLowerCase(instance_id)
| toLowerCase(firewall_rule_group_id)
| toLowerCase(firewall_domain_list_id)
| toLowerCase(firewall_rule_action)
| toLowerCase(response)
| where vpc_id matches toLowerCase("{{vpc_id}}")
| where query_name matches toLowerCase("{{query_name}}")
| where account_id matches "{{account_id}}"
| where query_type matches toUpperCase("{{query_type}}")
| where srcaddr matches "{{srcaddr}}"
| where instance_id matches toLowerCase("{{instance_id}}")
| where region matches toLowerCase("{{region}}")
| if(isNull(response), "", response) as response
| where response matches toLowerCase("{{response}}")
| if(isNull(firewall_rule_group_id), "", firewall_rule_group_id) as firewall_rule_group_id
| where firewall_rule_group_id matches "{{firewall_rule_group_id}}"
| if(isNull(firewall_domain_list_id), "", firewall_domain_list_id) as firewall_domain_list_id
| where firewall_domain_list_id matches "{{firewall_domain_list_id}}"
| if(isNull(firewall_rule_action), "", firewall_rule_action) as firewall_rule_action
| where firewall_rule_action matches "{{firewall_rule_action}}"
| timeslice 15m
| count as domain_count by query_name, _timeslice
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=query_name
| where  type = "domain" and !isNull(malicious_confidence)
| json field=raw "labels[*].name" as label_name 
```

**Amazon Route 53 Resolver Security/Query Logging Overview/Top 10 Alerted Domains**
```
_sourceCategory={{Route53ResolverQueryLogsSource}}  ALERT
| where firewall_rule_action = "ALERT"
| %"srcids.instance" as instance_id
| json "answers[*].Rdata" as response nodrop
| extract field=response "(?<response>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"  multi nodrop
```

**Amazon Route 53 Resolver Security/Query Logging Overview/Top 10 Blocked Domains?**
```
_sourceCategory={{Route53ResolverQueryLogsSource}}  BLOCK
| where firewall_rule_action = "BLOCK"
| %"srcids.instance" as instance_id
| json "answers[*].Rdata" as response nodrop
| extract field=response "(?<response>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"  multi nodrop
```

**Amazon Route 53 Resolver Security/Query Logging Overview/Top 50 Highest Entropy Domains**
```
_sourceCategory={{Route53ResolverQueryLogsSource}}  
| %"srcids.instance" as instance_id
| toLowerCase(region)
| toLowerCase(vpc_id)
| toLowerCase(query_name)
| toLowerCase(instance_id)
| toUpperCase(Query_type)
| toLowerCase(instance_id)
| toLowerCase(firewall_rule_group_id)
| toLowerCase(firewall_domain_list_id)
| toLowerCase(firewall_rule_action)
| toLowerCase(response)
| where vpc_id matches toLowerCase("{{vpc_id}}")
| where query_name matches toLowerCase("{{query_name}}")
| where account_id matches "{{account_id}}"
| where query_type matches toUpperCase("{{query_type}}")
| where srcaddr matches "{{srcaddr}}"
| where instance_id matches toLowerCase("{{instance_id}}")
| where region matches toLowerCase("{{region}}")
| if(isNull(response), "", response) as response
| where response matches toLowerCase("{{response}}")
| if(isNull(firewall_rule_group_id), "", firewall_rule_group_id) as firewall_rule_group_id
| where firewall_rule_group_id matches "{{firewall_rule_group_id}}"
| if(isNull(firewall_domain_list_id), "", firewall_domain_list_id) as firewall_domain_list_id
| where firewall_domain_list_id matches "{{firewall_domain_list_id}}"
| if(isNull(firewall_rule_action), "", firewall_rule_action) as firewall_rule_action
| where firewall_rule_action matches "{{firewall_rule_action}}"
| where !isEmpty(query_name) AND (query_name contains ".") | length(query_name) as dns_length | count query_name 
| parse regex field=query_name "(?:\S+\.|)(?<root>\S+\.?)\.(?<tld>\S+)" nodrop
| count root, query_name
|parse regex field=root "(?<char>\S)" multi nodrop 
```

**Amazon Route 53 Resolver Security/Query Logging Overview/Total Hits from Threat Intel Source**
```
_sourceCategory={{Route53ResolverQueryLogsSource}} 
| %"srcids.instance" as instance_id
| toLowerCase(region)
| toLowerCase(vpc_id)
| toLowerCase(query_name)
| toLowerCase(instance_id)
| toUpperCase(Query_type)
| toLowerCase(instance_id)
| toLowerCase(firewall_rule_group_id)
| toLowerCase(firewall_domain_list_id)
| toLowerCase(firewall_rule_action)
| toLowerCase(response)
| where vpc_id matches toLowerCase("{{vpc_id}}")
| where query_name matches toLowerCase("{{query_name}}")
| where account_id matches "{{account_id}}"
| where query_type matches toUpperCase("{{query_type}}")
| where srcaddr matches "{{srcaddr}}"
| where instance_id matches toLowerCase("{{instance_id}}")
| where region matches toLowerCase("{{region}}")
| if(isNull(response), "", response) as response
| where response matches toLowerCase("{{response}}")
| if(isNull(firewall_rule_group_id), "", firewall_rule_group_id) as firewall_rule_group_id
| where firewall_rule_group_id matches "{{firewall_rule_group_id}}"
| if(isNull(firewall_domain_list_id), "", firewall_domain_list_id) as firewall_domain_list_id
| where firewall_domain_list_id matches "{{firewall_domain_list_id}}"
| if(isNull(firewall_rule_action), "", firewall_rule_action) as firewall_rule_action
| where firewall_rule_action matches "{{firewall_rule_action}}"
| count as domain_count by query_name
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=query_name
| where  type = "domain" and !isNull(malicious_confidence)
| json field=raw "labels[*].name" as label_name 
```

**Amazon Route 53 Resolver Security/Resolver DNS Firewall/Alerted DNS Queries by Instance ID Over Time**
```
_sourceCategory={{Route53ResolverQueryLogsSource}}  ALERT
| where firewall_rule_action = "ALERT"
| %"srcids.instance" as instance_id
| json "answers[*].Rdata" as response nodrop
| extract field=response "(?<response>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"  multi nodrop
```

**Amazon Route 53 Resolver Security/Resolver DNS Firewall/Alerted DNS Queries by Rule Group ID & Domain List ID**
```
_sourceCategory={{Route53ResolverQueryLogsSource}}  ALERT
| where firewall_rule_action = "ALERT"
| %"srcids.instance" as instance_id
| json "answers[*].Rdata" as response nodrop
| extract field=response "(?<response>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"  multi nodrop
```

**Amazon Route 53 Resolver Security/Resolver DNS Firewall/Alerted Queries by Instance ID and Source Address**
```
_sourceCategory={{Route53ResolverQueryLogsSource}}  ALERT
| where firewall_rule_action = "ALERT"
| %"srcids.instance" as instance_id
| json "answers[*].Rdata" as response nodrop
| extract field=response "(?<response>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"  multi nodrop
```

**Amazon Route 53 Resolver Security/Resolver DNS Firewall/Alerted Queries by Instance ID and Source Address? (Top 10)**
```
_sourceCategory={{Route53ResolverQueryLogsSource}}  ALERT
| where firewall_rule_action = "ALERT"
| %"srcids.instance" as instance_id
| json "answers[*].Rdata" as response nodrop
| extract field=response "(?<response>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"  multi nodrop
```

**Amazon Route 53 Resolver Security/Resolver DNS Firewall/Alerted Queries IPv4 Resolution by GeoLocation**
```
_sourceCategory={{Route53ResolverQueryLogsSource}}  ALERT
| where firewall_rule_action = "ALERT"
| where query_type = "A"
| %"srcids.instance" as instance_id
| json "answers[*].Rdata" as response nodrop
| extract field=response "(?<response>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"  multi nodrop
```

**Amazon Route 53 Resolver Security/Resolver DNS Firewall/Anomolies within Alerted DNS Queries**
```
_sourceCategory={{Route53ResolverQueryLogsSource}}  ALERT
| where firewall_rule_action = "ALERT"
| %"srcids.instance" as instance_id
| json "answers[*].Rdata" as response nodrop
| extract field=response "(?<response>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"  multi nodrop
```

**Amazon Route 53 Resolver Security/Resolver DNS Firewall/Anomolies within Blocked?DNS Queries**
```
_sourceCategory={{Route53ResolverQueryLogsSource}}  BLOCK
| where firewall_rule_action = "BLOCK"
| %"srcids.instance" as instance_id
| json "answers[*].Rdata" as response nodrop
| extract field=response "(?<response>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"  multi nodrop
```

**Amazon Route 53 Resolver Security/Resolver DNS Firewall/Blocked Queries by Instance ID and Source Address**
```
_sourceCategory={{Route53ResolverQueryLogsSource}}  BLOCK
| where firewall_rule_action = "BLOCK"
| %"srcids.instance" as instance_id
| json "answers[*].Rdata" as response nodrop
| extract field=response "(?<response>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"  multi nodrop
```

**Amazon Route 53 Resolver Security/Resolver DNS Firewall/Blocked?DNS Queries by Instance ID Over Time**
```
_sourceCategory={{Route53ResolverQueryLogsSource}}  BLOCK
| where firewall_rule_action = "BLOCK"
| %"srcids.instance" as instance_id
| json "answers[*].Rdata" as response nodrop
| extract field=response "(?<response>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"  multi nodrop
```

**Amazon Route 53 Resolver Security/Resolver DNS Firewall/Blocked?DNS Queries by Rule Group ID & Domain List ID**
```
_sourceCategory={{Route53ResolverQueryLogsSource}}  BLOCK
| where firewall_rule_action = "BLOCK"
| %"srcids.instance" as instance_id
| json "answers[*].Rdata" as response nodrop
| extract field=response "(?<response>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"  multi nodrop
```

**Amazon Route 53 Resolver Security/Resolver DNS Firewall/Blocked?Queries by Instance ID and Source Address? (Top 10)**
```
_sourceCategory={{Route53ResolverQueryLogsSource}}  BLOCK
| where firewall_rule_action = "BLOCK"
| %"srcids.instance" as instance_id
| json "answers[*].Rdata" as response nodrop
| extract field=response "(?<response>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"  multi nodrop
```

**Amazon Route 53 Resolver Security/Resolver DNS Firewall/Top 10 Alerted Domains**
```
_sourceCategory={{Route53ResolverQueryLogsSource}}  ALERT
| where firewall_rule_action = "ALERT"
| %"srcids.instance" as instance_id
| json "answers[*].Rdata" as response nodrop
| extract field=response "(?<response>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"  multi nodrop
```

**Amazon Route 53 Resolver Security/Resolver DNS Firewall/Top 10 Blocked?Domains**
```
_sourceCategory={{Route53ResolverQueryLogsSource}}  BLOCK
| where firewall_rule_action = "BLOCK"
| %"srcids.instance" as instance_id
| json "answers[*].Rdata" as response nodrop
| extract field=response "(?<response>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"  multi nodrop
```

**Amazon Route 53 Resolver Security/Security Details/Bytes Sent Over DNS Requests by Instance ID**
```
_sourceCategory={{Route53ResolverQueryLogsSource}}  
| %"srcids.instance" as instance_id
| json "answers[*].Rdata" as response nodrop
| extract field=response "(?<response>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"  multi nodrop
```

**Amazon Route 53 Resolver Security/Security Details/Bytes Sent Over DNS Requests by VPC**
```
_sourceCategory={{Route53ResolverQueryLogsSource}}  
| %"srcids.instance" as instance_id
| json "answers[*].Rdata" as response nodrop
| extract field=response "(?<response>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"  multi nodrop
```

**Amazon Route 53 Resolver Security/Security Details/DNS Queries by Instance ID and Source Address**
```
_sourceCategory={{Route53ResolverQueryLogsSource}}  
| %"srcids.instance" as instance_id
| json "answers[*].Rdata" as response nodrop
| extract field=response "(?<response>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"  multi nodrop
```

**Amazon Route 53 Resolver Security/Security Details/DNS Queries by Type and VPC-ID**
```
_sourceCategory={{Route53ResolverQueryLogsSource}}  
| %"srcids.instance" as instance_id
| json "answers[*].Rdata" as response nodrop
| extract field=response "(?<response>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"  multi nodrop
```

**Amazon Route 53 Resolver Security/Security Details/Resolver Query Logs Detail**
```
_sourceCategory={{Route53ResolverQueryLogsSource}}  
| %"srcids.instance" as instance_id
| json "answers[*].Rdata" as response nodrop
| extract field=response "\"(?<response>.*?)\"" multi nodrop
```

**Amazon Route 53 Resolver Security/Security Details/Reverse DNS Query to Non-Existent Domain by Instance ID**
```
_sourceCategory={{Route53ResolverQueryLogsSource}}  PTR NXDOMAIN
| where rcode = "NXDOMAIN"
| %"srcids.instance" as instance_id
| json "answers[*].Rdata" as response nodrop
| extract field=response "\"(?<response>.*?)\"" multi nodrop
```

**Amazon Route 53 Resolver Security/Security Details/Reverse DNS Query to Non-Existent Domain by Query Name**
```
_sourceCategory={{Route53ResolverQueryLogsSource}}  PTR NXDOMAIN
| where rcode = "NXDOMAIN"
| %"srcids.instance" as instance_id
| json "answers[*].Rdata" as response nodrop
| extract field=response "\"(?<response>.*?)\"" multi nodrop
```

**Amazon Route 53 Resolver Security/Security Details/Reverse DNS Query to Non-Existent Domain by Query Name & Instance ID**
```
_sourceCategory={{Route53ResolverQueryLogsSource}}  PTR NXDOMAIN
| where rcode = "NXDOMAIN"
| %"srcids.instance" as instance_id
| json "answers[*].Rdata" as response nodrop
| extract field=response "\"(?<response>.*?)\"" multi nodrop
```

**Amazon Route 53 Resolver Security/Security Details/Successful Reverse DNS Query by Instance ID**
```
_sourceCategory={{Route53ResolverQueryLogsSource}}  PTR
| where rcode = "NOERROR"
| %"srcids.instance" as instance_id
| json "answers[*].Rdata" as response nodrop
| extract field=response "\"(?<response>.*?)\"" multi nodrop
```

**Amazon Route 53 Resolver Security/Security Details/Successful Reverse DNS Query by Query Name & Instance ID**
```
_sourceCategory={{Route53ResolverQueryLogsSource}}  PTR
| where rcode = "NOERROR"
| %"srcids.instance" as instance_id
| json "answers[*].Rdata" as response nodrop
| extract field=response "\"(?<response>.*?)\"" multi nodrop
```

**Amazon Route 53 Resolver Security/Security Details/Successful Reverse DNS Query by Query Name?**
```
_sourceCategory={{Route53ResolverQueryLogsSource}}  PTR
| where rcode = "NOERROR"
| %"srcids.instance" as instance_id
| json "answers[*].Rdata" as response nodrop
| extract field=response "\"(?<response>.*?)\"" multi nodrop
```

**Amazon Route 53 Resolver Security/Security Details/Threat Outlier**
```
_sourceCategory={{Route53ResolverQueryLogsSource}} 
| %"srcids.instance" as instance_id
| toLowerCase(region)
| toLowerCase(vpc_id)
| toLowerCase(query_name)
| toLowerCase(instance_id)
| toUpperCase(Query_type)
| toLowerCase(instance_id)
| toLowerCase(firewall_rule_group_id)
| toLowerCase(firewall_domain_list_id)
| toLowerCase(firewall_rule_action)
| toLowerCase(response)
| where vpc_id matches toLowerCase("{{vpc_id}}")
| where query_name matches toLowerCase("{{query_name}}")
| where account_id matches "{{account_id}}"
| where query_type matches toUpperCase("{{query_type}}")
| where srcaddr matches "{{srcaddr}}"
| where instance_id matches toLowerCase("{{instance_id}}")
| where region matches toLowerCase("{{region}}")
| if(isNull(response), "", response) as response
| where response matches toLowerCase("{{response}}")
| if(isNull(firewall_rule_group_id), "", firewall_rule_group_id) as firewall_rule_group_id
| where firewall_rule_group_id matches "{{firewall_rule_group_id}}"
| if(isNull(firewall_domain_list_id), "", firewall_domain_list_id) as firewall_domain_list_id
| where firewall_domain_list_id matches "{{firewall_domain_list_id}}"
| if(isNull(firewall_rule_action), "", firewall_rule_action) as firewall_rule_action
| where firewall_rule_action matches "{{firewall_rule_action}}"
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=query_name
| where  type = "domain" and !isNull(malicious_confidence)
| json field=raw "labels[*].name" as label_name 
```

**Amazon Route 53 Resolver Security/Security Details/Threats Over Time**
```
_sourceCategory={{Route53ResolverQueryLogsSource}} 
| %"srcids.instance" as instance_id
| toLowerCase(region)
| toLowerCase(vpc_id)
| toLowerCase(query_name)
| toLowerCase(instance_id)
| toUpperCase(Query_type)
| toLowerCase(instance_id)
| toLowerCase(firewall_rule_group_id)
| toLowerCase(firewall_domain_list_id)
| toLowerCase(firewall_rule_action)
| toLowerCase(response)
| where vpc_id matches toLowerCase("{{vpc_id}}")
| where query_name matches toLowerCase("{{query_name}}")
| where account_id matches "{{account_id}}"
| where query_type matches toUpperCase("{{query_type}}")
| where srcaddr matches "{{srcaddr}}"
| where instance_id matches toLowerCase("{{instance_id}}")
| where region matches toLowerCase("{{region}}")
| if(isNull(response), "", response) as response
| where response matches toLowerCase("{{response}}")
| if(isNull(firewall_rule_group_id), "", firewall_rule_group_id) as firewall_rule_group_id
| where firewall_rule_group_id matches "{{firewall_rule_group_id}}"
| if(isNull(firewall_domain_list_id), "", firewall_domain_list_id) as firewall_domain_list_id
| where firewall_domain_list_id matches "{{firewall_domain_list_id}}"
| if(isNull(firewall_rule_action), "", firewall_rule_action) as firewall_rule_action
| where firewall_rule_action matches "{{firewall_rule_action}}"
| timeslice 15m
| count as domain_count by query_name, _timeslice
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=query_name
| where  type = "domain" and !isNull(malicious_confidence)
| json field=raw "labels[*].name" as label_name 
```

**Amazon Route 53 Resolver Security/Security Details/Top 50 Domains by Query Length and InstanceID**
```
_sourceCategory={{Route53ResolverQueryLogsSource}}  
| %"srcids.instance" as instance_id
| json "answers[*].Rdata" as response nodrop
| extract field=response "\"(?<response>.*?)\"" multi nodrop
```

**Amazon Route 53 Resolver Security/Security Details/Top 50 Highest Entropy Domains**
```
_sourceCategory={{Route53ResolverQueryLogsSource}}  
| %"srcids.instance" as instance_id
| json "answers[*].Rdata" as response nodrop
| extract field=response "\"(?<response>.*?)\"" multi nodrop
| toLowerCase(region)
| toLowerCase(vpc_id)
| toLowerCase(query_name)
| toLowerCase(instance_id)
| toUpperCase(Query_type)
| toLowerCase(instance_id)
| toLowerCase(firewall_rule_group_id)
| toLowerCase(firewall_domain_list_id)
| toLowerCase(firewall_rule_action)
| toLowerCase(response)
| where vpc_id matches toLowerCase("{{vpc_id}}")
| where query_name matches toLowerCase("{{query_name}}")
| where account_id matches "{{account_id}}"
| where query_type matches toUpperCase("{{query_type}}")
| where srcaddr matches "{{srcaddr}}"
| where instance_id matches toLowerCase("{{instance_id}}")
| where region matches toLowerCase("{{region}}")
| if(response matches "[]", "", response) as response
| if(isNull(response), "", response) as response
| where response matches toLowerCase("{{response}}")
| if(isNull(firewall_rule_group_id), "", firewall_rule_group_id) as firewall_rule_group_id
| where firewall_rule_group_id matches toLowerCase("{{firewall_rule_group_id}}")
| if(isNull(firewall_domain_list_id), "", firewall_domain_list_id) as firewall_domain_list_id
| where firewall_domain_list_id matches toLowerCase("{{firewall_domain_list_id}}")
| if(isNull(firewall_rule_action), "", firewall_rule_action) as firewall_rule_action
| where firewall_rule_action matches toLowerCase("{{firewall_rule_action}}")
| where !isEmpty(query_name) AND (query_name contains ".") | length(query_name) as dns_length | count query_name 
| parse regex field=query_name "(?:\S+\.|)(?<root>\S+\.?)\.(?<tld>\S+)" nodrop
| count root, query_name
|parse regex field=root "(?<char>\S)" multi nodrop 
```

**Amazon Route 53 Resolver Security/Security Details/Total Hits from Threat Intel Source**
```
_sourceCategory={{Route53ResolverQueryLogsSource}} 
| %"srcids.instance" as instance_id
| where vpc_id matches "{{vpc_id}}"
| where query_name matches "{{query_name}}"
| where account_id matches "{{account_id}}"
| where query_type matches "{{query_type}}"
| where srcaddr matches "{{srcaddr}}"
| where instance_id matches "{{instance_id}}"
| where region matches "{{region}}"
| count as domain_count by query_name
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=query_name
| where  type = "domain" and !isNull(malicious_confidence)
| json field=raw "labels[*].name" as label_name 
```

**Amazon Route 53 Resolver Security/Threat Intel/Threat by Actor**
```
_sourceCategory={{Route53ResolverQueryLogsSource}} 
| %"srcids.instance" as instance_id
| json "answers[*].Rdata" as response nodrop
| extract field=response "\"(?<response>.*?)\"" multi nodrop
| toLowerCase(region)
| toLowerCase(vpc_id)
| toLowerCase(query_name)
| toLowerCase(instance_id)
| toUpperCase(Query_type)
| toLowerCase(instance_id)
| toLowerCase(firewall_rule_group_id)
| toLowerCase(firewall_domain_list_id)
| toLowerCase(firewall_rule_action)
| toLowerCase(response)
| where vpc_id matches toLowerCase("{{vpc_id}}")
| where query_name matches toLowerCase("{{query_name}}")
| where account_id matches "{{account_id}}"
| where query_type matches toUpperCase("{{query_type}}")
| where srcaddr matches "{{srcaddr}}"
| where instance_id matches toLowerCase("{{instance_id}}")
| where region matches toLowerCase("{{region}}")
| if(response matches "[]", "", response) as response
| if(isNull(response), "", response) as response
| where response matches toLowerCase("{{response}}")
| if(isNull(firewall_rule_group_id), "", firewall_rule_group_id) as firewall_rule_group_id
| where firewall_rule_group_id matches toLowerCase("{{firewall_rule_group_id}}")
| if(isNull(firewall_domain_list_id), "", firewall_domain_list_id) as firewall_domain_list_id
| where firewall_domain_list_id matches toLowerCase("{{firewall_domain_list_id}}")
| if(isNull(firewall_rule_action), "", firewall_rule_action) as firewall_rule_action
| where firewall_rule_action matches toLowerCase("{{firewall_rule_action}}")
| if (response matches "237.219.190.119" ,"194.150.118.8", response) as response
| count as ip_count by response
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=response 
| json field=raw "labels[*].name" as label_name 
```

**Amazon Route 53 Resolver Security/Threat Intel/Threat by Malicious Confidence**
```
_sourceCategory={{Route53ResolverQueryLogsSource}} 
| %"srcids.instance" as instance_id
| json "answers[*].Rdata" as response nodrop
| extract field=response "\"(?<response>.*?)\"" multi nodrop
| toLowerCase(region)
| toLowerCase(vpc_id)
| toLowerCase(query_name)
| toLowerCase(instance_id)
| toUpperCase(Query_type)
| toLowerCase(instance_id)
| toLowerCase(firewall_rule_group_id)
| toLowerCase(firewall_domain_list_id)
| toLowerCase(firewall_rule_action)
| toLowerCase(response)
| where vpc_id matches toLowerCase("{{vpc_id}}")
| where query_name matches toLowerCase("{{query_name}}")
| where account_id matches "{{account_id}}"
| where query_type matches toUpperCase("{{query_type}}")
| where srcaddr matches "{{srcaddr}}"
| where instance_id matches toLowerCase("{{instance_id}}")
| where region matches toLowerCase("{{region}}")
| if(response matches "[]", "", response) as response
| if(isNull(response), "", response) as response
| where response matches toLowerCase("{{response}}")
| if(isNull(firewall_rule_group_id), "", firewall_rule_group_id) as firewall_rule_group_id
| where firewall_rule_group_id matches toLowerCase("{{firewall_rule_group_id}}")
| if(isNull(firewall_domain_list_id), "", firewall_domain_list_id) as firewall_domain_list_id
| where firewall_domain_list_id matches toLowerCase("{{firewall_domain_list_id}}")
| if(isNull(firewall_rule_action), "", firewall_rule_action) as firewall_rule_action
| where firewall_rule_action matches toLowerCase("{{firewall_rule_action}}")
| count as domain_count by query_name
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=query_name
| where  type = "domain" and !isNull(malicious_confidence)
| json field=raw "labels[*].name" as label_name 
```

**Amazon Route 53 Resolver Security/Threat Intel/Threat Count**
```
_sourceCategory={{Route53ResolverQueryLogsSource}} 
| %"srcids.instance" as instance_id
| json "answers[*].Rdata" as response nodrop
| extract field=response "\"(?<response>.*?)\"" multi nodrop
| toLowerCase(region)
| toLowerCase(vpc_id)
| toLowerCase(query_name)
| toLowerCase(instance_id)
| toUpperCase(Query_type)
| toLowerCase(instance_id)
| toLowerCase(firewall_rule_group_id)
| toLowerCase(firewall_domain_list_id)
| toLowerCase(firewall_rule_action)
| toLowerCase(response)
| where vpc_id matches toLowerCase("{{vpc_id}}")
| where query_name matches toLowerCase("{{query_name}}")
| where account_id matches "{{account_id}}"
| where query_type matches toUpperCase("{{query_type}}")
| where srcaddr matches "{{srcaddr}}"
| where instance_id matches toLowerCase("{{instance_id}}")
| where region matches toLowerCase("{{region}}")
| if(response matches "[]", "", response) as response
| if(isNull(response), "", response) as response
| where response matches toLowerCase("{{response}}")
| if(isNull(firewall_rule_group_id), "", firewall_rule_group_id) as firewall_rule_group_id
| where firewall_rule_group_id matches toLowerCase("{{firewall_rule_group_id}}")
| if(isNull(firewall_domain_list_id), "", firewall_domain_list_id) as firewall_domain_list_id
| where firewall_domain_list_id matches toLowerCase("{{firewall_domain_list_id}}")
| if(isNull(firewall_rule_action), "", firewall_rule_action) as firewall_rule_action
| where firewall_rule_action matches toLowerCase("{{firewall_rule_action}}")
| count as domain_count by query_name
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=query_name
| where  type = "domain" and !isNull(malicious_confidence)
| json field=raw "labels[*].name" as label_name 
```

**Amazon Route 53 Resolver Security/Threat Intel/Threat Table**
```
_sourceCategory={{Route53ResolverQueryLogsSource}} 
| %"srcids.instance" as instance_id
| json "answers[*].Rdata" as response nodrop
| extract field=response "\"(?<response>.*?)\"" multi nodrop
| toLowerCase(region)
| toLowerCase(vpc_id)
| toLowerCase(query_name)
| toLowerCase(instance_id)
| toUpperCase(Query_type)
| toLowerCase(instance_id)
| toLowerCase(firewall_rule_group_id)
| toLowerCase(firewall_domain_list_id)
| toLowerCase(firewall_rule_action)
| toLowerCase(response)
| where vpc_id matches toLowerCase("{{vpc_id}}")
| where query_name matches toLowerCase("{{query_name}}")
| where account_id matches "{{account_id}}"
| where query_type matches toUpperCase("{{query_type}}")
| where srcaddr matches "{{srcaddr}}"
| where instance_id matches toLowerCase("{{instance_id}}")
| where region matches toLowerCase("{{region}}")
| if(response matches "[]", "", response) as response
| if(isNull(response), "", response) as response
| where response matches toLowerCase("{{response}}")
| if(isNull(firewall_rule_group_id), "", firewall_rule_group_id) as firewall_rule_group_id
| where firewall_rule_group_id matches toLowerCase("{{firewall_rule_group_id}}")
| if(isNull(firewall_domain_list_id), "", firewall_domain_list_id) as firewall_domain_list_id
| where firewall_domain_list_id matches toLowerCase("{{firewall_domain_list_id}}")
| if(isNull(firewall_rule_action), "", firewall_rule_action) as firewall_rule_action
| where firewall_rule_action matches toLowerCase("{{firewall_rule_action}}")
| count as domain_count by query_name, instance_id
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=query_name
| where  type = "domain" and !isNull(malicious_confidence)
| json field=raw "labels[*].name" as label_name 
```

**Amazon Route 53 Resolver Security/Threat Intel/Threat Table?**
```
_sourceCategory={{Route53ResolverQueryLogsSource}} 
| %"srcids.instance" as instance_id
| json "answers[*].Rdata" as response nodrop
| extract field=response "\"(?<response>.*?)\"" multi nodrop
| toLowerCase(region)
| toLowerCase(vpc_id)
| toLowerCase(query_name)
| toLowerCase(instance_id)
| toUpperCase(Query_type)
| toLowerCase(instance_id)
| toLowerCase(firewall_rule_group_id)
| toLowerCase(firewall_domain_list_id)
| toLowerCase(firewall_rule_action)
| toLowerCase(response)
| where vpc_id matches toLowerCase("{{vpc_id}}")
| where query_name matches toLowerCase("{{query_name}}")
| where account_id matches "{{account_id}}"
| where query_type matches toUpperCase("{{query_type}}")
| where srcaddr matches "{{srcaddr}}"
| where instance_id matches toLowerCase("{{instance_id}}")
| where region matches toLowerCase("{{region}}")
| if(response matches "[]", "", response) as response
| if(isNull(response), "", response) as response
| where response matches toLowerCase("{{response}}")
| if(isNull(firewall_rule_group_id), "", firewall_rule_group_id) as firewall_rule_group_id
| where firewall_rule_group_id matches toLowerCase("{{firewall_rule_group_id}}")
| if(isNull(firewall_domain_list_id), "", firewall_domain_list_id) as firewall_domain_list_id
| where firewall_domain_list_id matches toLowerCase("{{firewall_domain_list_id}}")
| if(isNull(firewall_rule_action), "", firewall_rule_action) as firewall_rule_action
| where firewall_rule_action matches toLowerCase("{{firewall_rule_action}}")
| count as ip_count by response, instance_id
| if (response matches "237.219.190.119" ,"194.150.118.8", response) as response
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=response
| where  type = "ip_address" and !isNull(malicious_confidence)
| json field=raw "labels[*].name" as label_name 
```

**Amazon Route 53 Resolver Security/Threat Intel/Threats by Instance ID**
```
_sourceCategory={{Route53ResolverQueryLogsSource}} 
| %"srcids.instance" as instance_id
| json "answers[*].Rdata" as response nodrop
| extract field=response "\"(?<response>.*?)\"" multi nodrop
| toLowerCase(region)
| toLowerCase(vpc_id)
| toLowerCase(query_name)
| toLowerCase(instance_id)
| toUpperCase(Query_type)
| toLowerCase(instance_id)
| toLowerCase(firewall_rule_group_id)
| toLowerCase(firewall_domain_list_id)
| toLowerCase(firewall_rule_action)
| toLowerCase(response)
| where vpc_id matches toLowerCase("{{vpc_id}}")
| where query_name matches toLowerCase("{{query_name}}")
| where account_id matches "{{account_id}}"
| where query_type matches toUpperCase("{{query_type}}")
| where srcaddr matches "{{srcaddr}}"
| where instance_id matches toLowerCase("{{instance_id}}")
| where region matches toLowerCase("{{region}}")
| if(response matches "[]", "", response) as response
| if(isNull(response), "", response) as response
| where response matches toLowerCase("{{response}}")
| if(isNull(firewall_rule_group_id), "", firewall_rule_group_id) as firewall_rule_group_id
| where firewall_rule_group_id matches toLowerCase("{{firewall_rule_group_id}}")
| if(isNull(firewall_domain_list_id), "", firewall_domain_list_id) as firewall_domain_list_id
| where firewall_domain_list_id matches toLowerCase("{{firewall_domain_list_id}}")
| if(isNull(firewall_rule_action), "", firewall_rule_action) as firewall_rule_action
| where firewall_rule_action matches toLowerCase("{{firewall_rule_action}}")
| count as domain_count by query_name, instance_id
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=query_name
| where  type = "domain" and !isNull(malicious_confidence)
| json field=raw "labels[*].name" as label_name 
```

**Amazon Route 53 Resolver Security/Threat Intel/Threats Over Time**
```
_sourceCategory={{Route53ResolverQueryLogsSource}} 
| %"srcids.instance" as instance_id
| json "answers[*].Rdata" as response nodrop
| extract field=response "\"(?<response>.*?)\"" multi nodrop
| toLowerCase(region)
| toLowerCase(vpc_id)
| toLowerCase(query_name)
| toLowerCase(instance_id)
| toUpperCase(Query_type)
| toLowerCase(instance_id)
| toLowerCase(firewall_rule_group_id)
| toLowerCase(firewall_domain_list_id)
| toLowerCase(firewall_rule_action)
| toLowerCase(response)
| where vpc_id matches toLowerCase("{{vpc_id}}")
| where query_name matches toLowerCase("{{query_name}}")
| where account_id matches "{{account_id}}"
| where query_type matches toUpperCase("{{query_type}}")
| where srcaddr matches "{{srcaddr}}"
| where instance_id matches toLowerCase("{{instance_id}}")
| where region matches toLowerCase("{{region}}")
| if(response matches "[]", "", response) as response
| if(isNull(response), "", response) as response
| where response matches toLowerCase("{{response}}")
| if(isNull(firewall_rule_group_id), "", firewall_rule_group_id) as firewall_rule_group_id
| where firewall_rule_group_id matches toLowerCase("{{firewall_rule_group_id}}")
| if(isNull(firewall_domain_list_id), "", firewall_domain_list_id) as firewall_domain_list_id
| where firewall_domain_list_id matches toLowerCase("{{firewall_domain_list_id}}")
| if(isNull(firewall_rule_action), "", firewall_rule_action) as firewall_rule_action
| where firewall_rule_action matches toLowerCase("{{firewall_rule_action}}")
| timeslice 15m
| count as domain_count by query_name, _timeslice
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=query_name
| where  type = "domain" and !isNull(malicious_confidence)      
| json field=raw "labels[*].name" as label_name 
```

**Amazon Route 53 Resolver Security/Threat Intel/Threats Over Time by Instance ID**
```
_sourceCategory={{Route53ResolverQueryLogsSource}} 
| %"srcids.instance" as instance_id
| json "answers[*].Rdata" as response nodrop
| extract field=response "\"(?<response>.*?)\"" multi nodrop
| toLowerCase(region)
| toLowerCase(vpc_id)
| toLowerCase(query_name)
| toLowerCase(instance_id)
| toUpperCase(Query_type)
| toLowerCase(instance_id)
| toLowerCase(firewall_rule_group_id)
| toLowerCase(firewall_domain_list_id)
| toLowerCase(firewall_rule_action)
| toLowerCase(response)
| where vpc_id matches toLowerCase("{{vpc_id}}")
| where query_name matches toLowerCase("{{query_name}}")
| where account_id matches "{{account_id}}"
| where query_type matches toUpperCase("{{query_type}}")
| where srcaddr matches "{{srcaddr}}"
| where instance_id matches toLowerCase("{{instance_id}}")
| where region matches toLowerCase("{{region}}")
| if(response matches "[]", "", response) as response
| if(isNull(response), "", response) as response
| where response matches toLowerCase("{{response}}")
| if(isNull(firewall_rule_group_id), "", firewall_rule_group_id) as firewall_rule_group_id
| where firewall_rule_group_id matches toLowerCase("{{firewall_rule_group_id}}")
| if(isNull(firewall_domain_list_id), "", firewall_domain_list_id) as firewall_domain_list_id
| where firewall_domain_list_id matches toLowerCase("{{firewall_domain_list_id}}")
| if(isNull(firewall_rule_action), "", firewall_rule_action) as firewall_rule_action
| where firewall_rule_action matches toLowerCase("{{firewall_rule_action}}")
| timeslice 15m
| count as domain_count by query_name, _timeslice, instance_id
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=query_name
| where  type = "domain" and !isNull(malicious_confidence)
| json field=raw "labels[*].name" as label_name 
```


