# Parsers For Threat Intel Quick Analysis

**Threat Intel Quick Analysis/Domain - New/Threat by Actor**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*
| parse regex "(?<domain>\b[a-zA-Z0-9][a-zA-Z0-9-_]{1,61}[a-zA-Z0-9]\.[a-zA-Z]{2,6}|[a-zA-Z0-9-]{2,30}\.[a-zA-Z]{2,3}\b)"
|where if ("{{_sourcecategory}}" = "*", true, _sourcecategory matches "{{_sourcecategory}}")
|count as domain_count by domain
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=domain
| where  type = "domain" and !isNull(malicious_confidence)
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/Domain - New/Threat by Malicious Confidence**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*
| parse regex "(?<domain>\b[a-zA-Z0-9][a-zA-Z0-9-_]{1,61}[a-zA-Z0-9]\.[a-zA-Z]{2,6}|[a-zA-Z0-9-]{2,30}\.[a-zA-Z]{2,3}\b)"
|where if ("{{_sourcecategory}}" = "*", true, _sourcecategory matches "{{_sourcecategory}}")
|count as domain_count by domain
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=domain
| where  type = "domain" and !isNull(malicious_confidence)
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/Domain - New/Threat by Sources**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*
| parse regex "(?<domain>\b[a-zA-Z0-9][a-zA-Z0-9-_]{1,61}[a-zA-Z0-9]\.[a-zA-Z]{2,6}|[a-zA-Z0-9-]{2,30}\.[a-zA-Z]{2,3}\b)"
|where if ("{{_sourcecategory}}" = "*", true, _sourcecategory matches "{{_sourcecategory}}")
|count as domain_count by domain, _source
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=domain
| where  type = "domain" and !isNull(malicious_confidence)
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/Domain - New/Threat Count**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*
| parse regex "(?<domain>\b[a-zA-Z0-9][a-zA-Z0-9-_]{1,61}[a-zA-Z0-9]\.[a-zA-Z]{2,6}|[a-zA-Z0-9-]{2,30}\.[a-zA-Z]{2,3}\b)"
|where if ("{{_sourcecategory}}" = "*", true, _sourcecategory matches "{{_sourcecategory}}")
|count as domain_count by domain
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=domain
| where  type = "domain" and !isNull(malicious_confidence)
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/Domain - New/Threat Table**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*
| parse regex "(?<domain>\b[a-zA-Z0-9][a-zA-Z0-9-_]{1,61}[a-zA-Z0-9]\.[a-zA-Z]{2,6}|[a-zA-Z0-9-]{2,30}\.[a-zA-Z]{2,3}\b)"
|where if ("{{_sourcecategory}}" = "*", true, _sourcecategory matches "{{_sourcecategory}}")
|count as domain_count by domain, _source
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=domain
| where  type = "domain" and !isNull(malicious_confidence)
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/Domain - New/Threats Over Time**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*
| parse regex "(?<domain>\b[a-zA-Z0-9][a-zA-Z0-9-_]{1,61}[a-zA-Z0-9]\.[a-zA-Z]{2,6}|[a-zA-Z0-9-]{2,30}\.[a-zA-Z]{2,3}\b)" 
| timeslice 5m
|where if ("{{_sourcecategory}}" = "*", true, _sourcecategory matches "{{_sourcecategory}}")
|count as domain_count by domain, _timeslice
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=domain
| where  type = "domain" and !isNull(malicious_confidence)
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/Domain - New/Threats Over Time by Sources**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*
| parse regex "(?<domain>\b[a-zA-Z0-9][a-zA-Z0-9-_]{1,61}[a-zA-Z0-9]\.[a-zA-Z]{2,6}|[a-zA-Z0-9-]{2,30}\.[a-zA-Z]{2,3}\b)" 
| timeslice 5m
|where if ("{{_sourcecategory}}" = "*", true, _sourcecategory matches "{{_sourcecategory}}")
|count as domain_count by domain, _timeslice, _source
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=domain
| where  type = "domain" and !isNull(malicious_confidence)
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/Email - New/Threat Breakdown by Sources**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*  (user or email or login or userid or user_id)
| parse regex "(?<email_address>[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[a-zA-Z]{2,4})"
|where if ("{{_source}}" = "*", true, _source matches "{{_source}}")
|count as email_count by email_address, _source
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=email_address
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/Email - New/Threat Count**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*  (user or email or login or userid or user_id)
| parse regex "(?<email_address>[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[a-zA-Z]{2,4})"
|where if ("{{_source}}" = "*", true, _source matches "{{_source}}")
|count as email_count by email_address
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=email_address
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/Email - New/Threat Table**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*  (user or email or login or userid or user_id)
| parse regex "(?<email_address>[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[a-zA-Z]{2,4})"
|where if ("{{_source}}" = "*", true, _source matches "{{_source}}")
|count as email_count by email_address, _source
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=email_address
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/Email - New/Threats by Actor**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*  (user or email or login or userid or user_id)
| parse regex "(?<email_address>[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[a-zA-Z]{2,4})"
|where if ("{{_source}}" = "*", true, _source matches "{{_source}}")
|count as email_count by email_address
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=email_address
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/Email - New/Threats by Malicious Confidence**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*  (user or email or login or userid or user_id)
| parse regex "(?<email_address>[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[a-zA-Z]{2,4})"
|where if ("{{_source}}" = "*", true, _source matches "{{_source}}")
|count as email_count by email_address
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=email_address
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/Email - New/Threats Over Time**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*  (user or email or login or userid or user_id)
| parse regex "(?<email_address>[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[a-zA-Z]{2,4})" 
| timeslice 5m
|where if ("{{_source}}" = "*", true, _source matches "{{_source}}")
|count as email_count by email_address, _timeslice
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=email_address
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/Email - New/Threats Over Time by Sources**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*  (user or email or login or userid or user_id)
| parse regex "(?<email_address>[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[a-zA-Z]{2,4})" 
| timeslice 5m
|where if ("{{_source}}" = "*", true, _source matches "{{_source}}")
|count as email_count by email_address, _timeslice, _source
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=email_address
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/Hash 256 - New/Threat Breakdown by Sources**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*
| parse regex "(?<hash_256>\b[A-Fa-f0-9]{64}\b)"
|where if ("{{hash_256}}" = "*", true, hash_256 matches "{{hash_256}}")
|count as hash256_count by hash_256, _source
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=hash_256 
| where type = "hash_sha256"
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/Hash 256 - New/Threat Count**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*
| parse regex "(?<hash_256>\b[A-Fa-f0-9]{64}\b)"
|where if ("{{hash_256}}" = "*", true, hash_256 matches "{{hash_256}}")
|count as hash256_count by hash_256
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=hash_256 
| where type = "hash_sha256"
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/Hash 256 - New/Threat Table**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*
| parse regex "(?<hash_256>\b[A-Fa-f0-9]{64}\b)"
|where if ("{{hash_256}}" = "*", true, hash_256 matches "{{hash_256}}")
|count as hash256_count by hash_256, _source
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=hash_256 
| where type = "hash_sha256"
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/Hash 256 - New/Threats by Actor**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*
| parse regex "(?<hash_256>\b[A-Fa-f0-9]{64}\b)"
|where if ("{{hash_256}}" = "*", true, hash_256 matches "{{hash_256}}")
|count as hash256_count by hash_256
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=hash_256 
| where type = "hash_sha256"
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/Hash 256 - New/Threats by Malicious Confidence**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*
| parse regex "(?<hash_256>\b[A-Fa-f0-9]{64}\b)"
|where if ("{{hash_256}}" = "*", true, hash_256 matches "{{hash_256}}")
|count as hash256_count by hash_256
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=hash_256 
| where type = "hash_sha256"
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/Hash 256 - New/Threats Over Time**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*
| parse regex "(?<hash_256>\b[A-Fa-f0-9]{64}\b)" 
| timeslice 5m
|where if ("{{hash_256}}" = "*", true, hash_256 matches "{{hash_256}}")
|count as hash256_count by hash_256, _timeslice
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=hash_256 
| where type = "hash_sha256"
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/High Malicious Domain Threats/High Malicious Domain Threats**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*
| parse regex "(?<domain>\b[a-zA-Z0-9][a-zA-Z0-9-_]{1,61}[a-zA-Z0-9]\.[a-zA-Z]{2,6}|[a-zA-Z0-9-]{2,30}\.[a-zA-Z]{2,3}\b)" 
| lookup type, actor, raw, threatlevel  as malicious_confidence from sumo://threat/cs on threat=domain
| where  type = "domain" and malicious_confidence = "high"
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/High Malicious Email Threats/High Malicious Email Threats**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*  (user or email or login or userid or user_id)
| parse regex "(?<email_address>[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[a-zA-Z]{2,4})" 
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=email_address
| where type = "email_address"  and malicious_confidence = "high"
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/High Malicious Hash 256 Threats/High Malicious Hash 256 Threats**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*
| parse regex "(?<hash_256>\b[A-Fa-f0-9]{64}\b)" 
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=hash_256 
| where type = "hash_sha256" and malicious_confidence = "high"
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/High Malicious IP Threats with SSHScanner Labels filtered out/High Malicious IP Threats with SSHScanner Labels filtered out**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS* 
| parse regex "(?<ip_address>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" 
| where ip_address != "0.0.0.0" and ip_address != "127.0.0.1"
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=ip_address
| where type="ip_address"  and malicious_confidence = "high"
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/High Malicious IP Threats/High Malicious IP Threats**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS* 
| parse regex "(?<ip_address>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" 
| where ip_address != "0.0.0.0" and ip_address != "127.0.0.1"
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=ip_address
| where type="ip_address"  and malicious_confidence = "high"
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/High Malicious URL Threats/High Malicious URL Threats**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*
| parse regex "(?<url>(?:http(?:s)?:\/\/.)?(?:www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b(?:[-a-zA-Z0-9@:%_\+.~#?&//=]*))" nodrop
| parse regex "(?<url>(?:\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3})\/.\S+\.?\S{0,3})"
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=url
| where type = "url"   and malicious_confidence = "high"
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/IP - New/Threat Breakdown by Sources**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*
| parse regex "(?<ip_address>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" 
| where ip_address != "0.0.0.0" and ip_address != "127.0.0.1"
|where if ("{{_sourcename}}" = "*", true, _sourcename matches "{{_sourcename}}")
|count as ip_count by ip_address, _source
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=ip_address 
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/IP - New/Threat by Actors**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*
| parse regex "(?<ip_address>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" 
| where ip_address != "0.0.0.0" and ip_address != "127.0.0.1"
|where if ("{{_sourcename}}" = "*", true, _sourcename matches "{{_sourcename}}")
|count as ip_count by ip_address
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=ip_address 
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/IP - New/Threat by Geo Location**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*
| parse regex "(?<ip_address>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" 
| where ip_address != "0.0.0.0" and ip_address != "127.0.0.1"
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=ip_address 
| where  type="ip_address" and !isNull(malicious_confidence)
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/IP - New/Threat Count**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*
| parse regex "(?<ip_address>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" 
| where ip_address != "0.0.0.0" and ip_address != "127.0.0.1"
|where if ("{{_sourcename}}" = "*", true, _sourcename matches "{{_sourcename}}")
|count as ip_count by ip_address
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=ip_address 
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/IP - New/Threat Table**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*
| parse regex "(?<ip_address>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" 
| where ip_address != "0.0.0.0" and ip_address != "127.0.0.1"
| timeslice 5m
| count as ip_count by ip_address, _source
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=ip_address 
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/IP - New/Threats by Malicious Confidence**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*
| parse regex "(?<ip_address>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" 
| where ip_address != "0.0.0.0" and ip_address != "127.0.0.1"
| count as ip_count by ip_address
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=ip_address 
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/IP - New/Threats Over Time**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*
| parse regex "(?<ip_address>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" 
| where ip_address != "0.0.0.0" and ip_address != "127.0.0.1"
| timeslice 5m
|where if ("{{_sourcename}}" = "*", true, _sourcename matches "{{_sourcename}}")
|count as ip_count by ip_address, _timeslice
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=ip_address 
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/IP - New/Threats Over Time by Sources**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*
| parse regex "(?<ip_address>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" 
| where ip_address != "0.0.0.0" and ip_address != "127.0.0.1"
| timeslice 5m
|where if ("{{_sourcename}}" = "*", true, _sourcename matches "{{_sourcename}}")
|count as ip_count by ip_address, _timeslice, _source
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=ip_address 
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/Overview - New/Domain Threat Count**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*
| parse regex "(?<domain>\b[a-zA-Z0-9][a-zA-Z0-9-_]{1,61}[a-zA-Z0-9]\.[a-zA-Z]{2,6}|[a-zA-Z0-9-]{2,30}\.[a-zA-Z]{2,3}\b)"
|where if ("{{type}}" = "*", true, type matches "{{type}}")
|count as domain_count by domain
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=domain
| where  type = "domain" and !isNull(malicious_confidence)
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/Overview - New/Email Threat Count**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*  (user or email or login or userid or user_id)
| parse regex "(?<email_address>[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[a-zA-Z]{2,4})"
|where if ("{{type}}" = "*", true, type matches "{{type}}")
|count as email_count by email_address
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=email_address
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/Overview - New/Hash 256 Threat Count**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*
| parse regex "(?<hash_256>\b[A-Fa-f0-9]{64}\b)"
|where if ("{{type}}" = "*", true, type matches "{{type}}")
|count as hash256_count by hash_256
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=hash_256 
| where type = "hash_sha256"
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/Overview - New/IP Threat Count**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*
| parse regex "(?<ip_address>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" 
| where ip_address != "0.0.0.0" and ip_address != "127.0.0.1"
|where if ("{{type}}" = "*", true, type matches "{{type}}")
|count as ip_count by ip_address
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=ip_address 
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/Overview - New/Threat by Malicious Confidence**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*
| parse regex "(?<threat>\b[\w,\s-]+\.[A-Za-z]{3}\b)"  nodrop
| parse regex "(?<threat>\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[a-zA-Z]{2,4}\b)"  nodrop
| parse regex "(?<threat>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b)" nodrop
| parse regex "(?<threat>\b[a-zA-Z0-9][a-zA-Z0-9-_]{1,61}[a-zA-Z0-9]\.[a-zA-Z]{2,6}|[a-zA-Z0-9-]{2,30}\.[a-zA-Z]{2,3}\b)" 
| parse regex "(?<threat>\b(?:http(?:s)?:\/\/.)?(?:www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b(?:[-a-zA-Z0-9@:%_\+.~#?&//=]*)\b)" nodrop
| parse regex "(?<threat>\b(?:\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3})\/.\S+\.?\S{0,3}\b)" nodrop
```

**Threat Intel Quick Analysis/Overview - New/Threats Over Time**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*
| parse regex "(?<threat>\b[\w,\s-]+\.[A-Za-z]{3}\b)"  nodrop
| parse regex "(?<threat>\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[a-zA-Z]{2,4}\b)"  nodrop
| parse regex "(?<threat>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b)" nodrop
| parse regex "(?<threat>\b[a-zA-Z0-9][a-zA-Z0-9-_]{1,61}[a-zA-Z0-9]\.[a-zA-Z]{2,6}|[a-zA-Z0-9-]{2,30}\.[a-zA-Z]{2,3}\b)" 
| parse regex "(?<threat>\b(?:http(?:s)?:\/\/.)?(?:www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b(?:[-a-zA-Z0-9@:%_\+.~#?&//=]*)\b)" nodrop
| parse regex "(?<threat>\b(?:\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3})\/.\S+\.?\S{0,3}\b)" nodrop
```

**Threat Intel Quick Analysis/Overview - New/URL Threat Count**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*
| parse regex "(?<url>(?:http(?:s)?:\/\/.)?(?:www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b(?:[-a-zA-Z0-9@:%_\+.~#?&//=]*))" nodrop
| parse regex "(?<url>(?:\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3})\/.\S+\.?\S{0,3})"
|where if ("{{type}}" = "*", true, type matches "{{type}}")
|count as url_count by url
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=url
| where type = "url" and !isNull(malicious_confidence)
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/URL - New/Threat by Actor**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*
| parse regex "(?<url>(?:http(?:s)?:\/\/.)?(?:www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b(?:[-a-zA-Z0-9@:%_\+.~#?&//=]*))" nodrop
| parse regex "(?<url>(?:\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3})\/.\S+\.?\S{0,3})"
|where if ("{{_sourcename}}" = "*", true, _sourcename matches "{{_sourcename}}")
|count as url_count by url
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=url
| where type = "url" and !isNull(malicious_confidence)
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/URL - New/Threat by Malicious Confidence**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*
| parse regex "(?<url>(?:http(?:s)?:\/\/.)?(?:www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b(?:[-a-zA-Z0-9@:%_\+.~#?&//=]*))" nodrop
| parse regex "(?<url>(?:\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3})\/.\S+\.?\S{0,3})"
```

**Threat Intel Quick Analysis/URL - New/Threat by Sources**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*
| parse regex "(?<url>(?:http(?:s)?:\/\/.)?(?:www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b(?:[-a-zA-Z0-9@:%_\+.~#?&//=]*))" nodrop
| parse regex "(?<url>(?:\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3})\/.\S+\.?\S{0,3})"
|where if ("{{_sourcename}}" = "*", true, _sourcename matches "{{_sourcename}}")
|count as url_count by url, _source
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=url
| where type = "url" and !isNull(malicious_confidence)
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/URL - New/Threat Count**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*
| parse regex "(?<url>(?:http(?:s)?:\/\/.)?(?:www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b(?:[-a-zA-Z0-9@:%_\+.~#?&//=]*))" nodrop
| parse regex "(?<url>(?:\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3})\/.\S+\.?\S{0,3})"
|where if ("{{_sourcename}}" = "*", true, _sourcename matches "{{_sourcename}}")
|count as url_count by url
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=url
| where type = "url" and !isNull(malicious_confidence)
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/URL - New/Threat Table**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*
| parse regex "(?<url>(?:http(?:s)?:\/\/.)?(?:www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b(?:[-a-zA-Z0-9@:%_\+.~#?&//=]*))" nodrop
| parse regex "(?<url>(?:\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3})\/.\S+\.?\S{0,3})"
|where if ("{{_sourcename}}" = "*", true, _sourcename matches "{{_sourcename}}")
|count as url_count by url, _source
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=url
| where type = "url" and !isNull(malicious_confidence)
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/URL - New/Threats Over Time**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*
| parse regex "(?<url>(?:http(?:s)?:\/\/.)?(?:www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b(?:[-a-zA-Z0-9@:%_\+.~#?&//=]*))" nodrop
| parse regex "(?<url>(?:\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3})\/.\S+\.?\S{0,3})"
| timeslice 5m
|where if ("{{_sourcename}}" = "*", true, _sourcename matches "{{_sourcename}}")
|count as url_count by url, _timeslice
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=url
| where type = "url" and !isNull(malicious_confidence)
| json field=raw "labels[*].name" as label_name 
```

**Threat Intel Quick Analysis/URL - New/Threats Over Time by Sources**
```
_collector = "Labs - GoogleApps" OR _sourceCategory = Labs/AWS*
| parse regex "(?<url>(?:http(?:s)?:\/\/.)?(?:www\.)?[-a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b(?:[-a-zA-Z0-9@:%_\+.~#?&//=]*))" nodrop
| parse regex "(?<url>(?:\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3})\/.\S+\.?\S{0,3})"
| timeslice 5m
|where if ("{{_sourcename}}" = "*", true, _sourcename matches "{{_sourcename}}")
|count as url_count by url, _timeslice,_source
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=url
| where type = "url" and !isNull(malicious_confidence)
| json field=raw "labels[*].name" as label_name 
```


