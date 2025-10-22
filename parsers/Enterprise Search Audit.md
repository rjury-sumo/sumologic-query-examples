# Parsers For Enterprise Search Audit

**Enterprise Search Audit/Commonly Referenced Data Sources - New/1op 10 Source Categories Referenced by Queries per Tier**
```
_view=sumologic_search_usage_per_query 
| toLowerCase(query) as queryLower
| parse regex field=queryLower "^(?<scope_section_raw>[^\|]+)" nodrop 
| parse regex field=scope_section_raw "_sourcecategory\s*=\s*(?<meta_sourcecategory>[^\s\|\)]+)" multi nodrop 
```

**Enterprise Search Audit/Commonly Referenced Data Sources - New/Other Popular Keys Referenced by Queries**
```
_view=sumologic_search_usage_per_query 
| toLowerCase(query) as queryLower 
| parse regex field=queryLower "^(?<scope_section_raw>[^\|]+)" nodrop 
| parse regex field=scope_section_raw "(?<metadataName>_sourcehost|_sourcename|_source|_collector|\w+)\s*=\s*(?<metadataValue>[^\s\|\)]+)" multi nodrop 
```

**Enterprise Search Audit/Commonly Referenced Data Sources - New/Popular Partitions and Views Referenced by Queries**
```
_view=sumologic_search_usage_per_query 
| toLowerCase(query) as queryLower
| parse regex field=queryLower "^(?<scope_section_raw>[^\|]+)" nodrop 
| parse regex field=scope_section_raw "(?:_index|_view)\s*=\s*(?<meta_index>[^\s\|\)]+)" multi nodrop 
```

**Enterprise Search Audit/Commonly Referenced Data Sources - New/Popular Source Categories Referenced by Queries**
```
_view=sumologic_search_usage_per_query 
| toLowerCase(query) as queryLower
| parse regex field=queryLower "^(?<scope_section_raw>[^\|]+)" nodrop 
| parse regex field=scope_section_raw "_sourcecategory\s*=\s*(?<meta_sourcecategory>[^\s\|\)]+)" multi nodrop
// Below are some other examples
//| parse regex field=scope_section_raw "_index\s*=\s*(?<meta_index>[^\s\|\)]+)" multi nodrop 
//| parse regex field=scope_section_raw "_view\s*=\s*(?<meta_view>[^\s\|\)]+)" multi nodrop 
//| parse regex field=scope_section_raw "_source\s*=\s*(?<meta_source>[^\s\|\)]+)" multi nodrop 
//| parse regex field=scope_section_raw "_collector\s*=\s*(?<meta_collector>[^\s\|\)]+)" multi nodrop
//| parse regex field=scope_section_raw "_sourcename\s*=\s*(?<meta_sourcename>[^\s\|\)]+)" multi nodrop
//| parse regex field=scope_section_raw "_sourcehost\s*=\s*(?<meta_sourcehost>[^\s\|\)]+)" multi nodrop
```

**Enterprise Search Audit/Commonly Referenced Data Sources - New/Top 10 Partitions and Views Referenced by Queries per Tier**
```
_view=sumologic_search_usage_per_query 
| toLowerCase(query) as queryLower
| parse regex field=queryLower "^(?<scope_section_raw>[^\|]+)" nodrop 
| parse regex field=scope_section_raw "(?:_index|_view)\s*=\s*(?<meta_index>[^\s\|\)]+)" multi nodrop 
```

**Enterprise Search Audit/Commonly Referenced Data Sources/1op 10 Source Categories Referenced by Queries per Tier**
```
_view=sumologic_search_usage_per_query 
| if (query_type == "View Maintenance", "Scheduled Views", query_type) as query_type
| toLowerCase(query) as queryLower
| parse regex field=queryLower "^(?<scope_section_raw>[^\|]+)" nodrop 
| parse regex field=scope_section_raw "_sourcecategory\s*=\s*(?<meta_sourcecategory>[^\s\|\)]+)" multi nodrop 
```

**Enterprise Search Audit/Commonly Referenced Data Sources/Other Popular Keys Referenced by Queries**
```
_view=sumologic_search_usage_per_query 
| if (query_type == "View Maintenance", "Scheduled Views", query_type) as query_type
| toLowerCase(query) as queryLower 
| parse regex field=queryLower "^(?<scope_section_raw>[^\|]+)" nodrop 
| parse regex field=scope_section_raw "(?<metadataName>_sourcehost|_sourcename|_source|_collector|\w+)\s*=\s*(?<metadataValue>[^\s\|\)]+)" multi nodrop 
```

**Enterprise Search Audit/Commonly Referenced Data Sources/Popular Partitions and Views Referenced by Queries**
```
_view=sumologic_search_usage_per_query 
| if (query_type == "View Maintenance", "Scheduled Views", query_type) as query_type
| toLowerCase(query) as queryLower
| parse regex field=queryLower "^(?<scope_section_raw>[^\|]+)" nodrop 
| parse regex field=scope_section_raw "(?:_index|_view)\s*=\s*(?<meta_index>[^\s\|\)]+)" multi nodrop 
```

**Enterprise Search Audit/Commonly Referenced Data Sources/Popular Source Categories Referenced by Queries**
```
_view=sumologic_search_usage_per_query 
| if (query_type == "View Maintenance", "Scheduled Views", query_type) as query_type
| toLowerCase(query) as queryLower
| parse regex field=queryLower "^(?<scope_section_raw>[^\|]+)" nodrop 
| parse regex field=scope_section_raw "_sourcecategory\s*=\s*(?<meta_sourcecategory>[^\s\|\)]+)" multi nodrop
// Below are some other examples
//| parse regex field=scope_section_raw "_index\s*=\s*(?<meta_index>[^\s\|\)]+)" multi nodrop 
//| parse regex field=scope_section_raw "_view\s*=\s*(?<meta_view>[^\s\|\)]+)" multi nodrop 
//| parse regex field=scope_section_raw "_source\s*=\s*(?<meta_source>[^\s\|\)]+)" multi nodrop 
//| parse regex field=scope_section_raw "_collector\s*=\s*(?<meta_collector>[^\s\|\)]+)" multi nodrop
//| parse regex field=scope_section_raw "_sourcename\s*=\s*(?<meta_sourcename>[^\s\|\)]+)" multi nodrop
//| parse regex field=scope_section_raw "_sourcehost\s*=\s*(?<meta_sourcehost>[^\s\|\)]+)" multi nodrop
```

**Enterprise Search Audit/Commonly Referenced Data Sources/Top 10 Partitions and Views Referenced by Queries per Tier**
```
_view=sumologic_search_usage_per_query 
| if (query_type == "View Maintenance", "Scheduled Views", query_type) as query_type
| toLowerCase(query) as queryLower
| parse regex field=queryLower "^(?<scope_section_raw>[^\|]+)" nodrop 
| parse regex field=scope_section_raw "(?:_index|_view)\s*=\s*(?<meta_index>[^\s\|\)]+)" multi nodrop 
```

**Enterprise Search Audit/Queries Characteristics and Opportunities to Improve/Interactive Dashboard Queries without Metadata**
```
_view=sumologic_search_usage_per_query query_type="Interactive Dashboard"
| sum(data_scanned_bytes) as scanned_bytes, sum(data_retrieved_bytes) as retrieved_bytes by user_name, query, session_id, execution_duration_ms 
| round(execution_duration_ms/1000) as duration_seconds 
| toLowerCase(query) as queryLower 
| parse regex field=queryLower "^(?<scope_section_raw>[^\|]+)" nodrop 
| replace(scope_section_raw," ","") as scope_section 
| parse regex field=scope_section_raw "_(?<meta>sourcecategory|sourcehost|collector|source|sourcename)\s*="  nodrop
| parse regex field=scope_section_raw "_(?<idx>view|index)\s*="  nodrop  
```

**Enterprise Search Audit/Queries Characteristics and Opportunities to Improve/Queries by Optimization Techniques**
```
_view=sumologic_search_usage_per_query 
| count as queries by query
| toLowerCase(query) as queryLower 
| parse regex field=queryLower "^(?<scope_section_raw>[^\|]+)" nodrop 
| replace(scope_section_raw," ","") as scope_section | if (scope_section="" or isNull(scope_section) or scope_section="*",1, 0) as  select_all
| parse regex field=scope_section_raw "_(?<meta>sourcecategory|sourcehost|collector|source|sourcename)\s*="  nodrop  | if (meta!="",1,0) as use_meta
| parse regex field=scope_section_raw "_(?<idx>view|index)\s*="  nodrop  | if (idx!="",1,0) as use_idx
| parse regex field=scope_section_raw "(?:^|\s+)(?<kfield>\w+)\s*="  nodrop  | if (kfield!="" and !(kfield in ("sourcecategory","collector","index","view","source","sourcehost","sourcename")),1,0) as use_field
| 0 as use_kw | parse regex field=scope_section_raw "(?:^|\s+)(?<first>\"[^\"]+\"|\'[^\']+\'|[\w\"\']+)(?<bridge>\s*=\s*|\s+|$)(?<second>\w+|$)" multi nodrop | if ( !(bridge matches "*=*") and select_all!=1,1,use_kw) as use_kw
```

**Enterprise Search Audit/Queries Characteristics and Opportunities to Improve/Scheduled Searches without Metadata**
```
_view=sumologic_search_usage_per_query query_type="Scheduled Search"
| sum(data_scanned_bytes) as scanned_bytes, sum(data_retrieved_bytes) as retrieved_bytes by user_name, query, session_id, execution_duration_ms 
| round(execution_duration_ms/1000) as duration_seconds 
| toLowerCase(query) as queryLower 
| parse regex field=queryLower "^(?<scope_section_raw>[^\|]+)" nodrop 
| replace(scope_section_raw," ","") as scope_section 
| parse regex field=scope_section_raw "_(?<meta>sourcecategory|sourcehost|collector|source|sourcename)\s*="  nodrop
| parse regex field=scope_section_raw "_(?<idx>view|index)\s*="  nodrop  
```

**Enterprise Search Audit/Queries Characteristics and Opportunities to Improve/Unoptimized Queries**
```
_view=sumologic_search_usage_per_query 
//(query_type="Scheduled Search" or query_type="Interactive Dashboard" or query_type="Search API")
| if (query_type == "View Maintenance", "Scheduled Views", query_type) as query_type
| count as qCount, sum(data_scanned_bytes) as scanned by query,user_name,query_type
| toLowerCase(query) as queryLower 
| parse regex field=queryLower "^(?<scope_section_raw>[^\|]+)" nodrop 
| replace(scope_section_raw," ","") as scope_section | if (scope_section="" or isNull(scope_section) or scope_section="*",1, 0) as  select_all
| parse regex field=scope_section_raw "_(?<meta>sourcecategory|sourcehost|collector|source|sourcename)\s*="  nodrop  | if (meta!="",1,0) as use_meta
| parse regex field=scope_section_raw "_(?<idx>view|index)\s*="  nodrop  | if (idx!="",1,0) as use_idx
| parse regex field=scope_section_raw "(?:^|\s+)(?<kfield>\w+)\s*="  nodrop  | if (kfield!="" and !(kfield in ("sourcecategory","collector","index","view","source","sourcehost","sourcename")),1,0) as use_field
| 0 as use_kw | parse regex field=scope_section_raw "(?:^|\s+)(?<first>\"[^\"]+\"|\'[^\']+\'|[\w\"\']+)(?<bridge>\s*=\s*|\s+|$)(?<second>\w+|$)" multi nodrop | if ( !(bridge matches "*=*") and select_all!=1,1,use_kw) as use_kw
```

**Enterprise Search Audit/Search Overview - New/Aggregate vs Non-Aggregate Searches**
```
_view=sumologic_search_usage_per_query analytics_tier=Continuous 
| toLowerCase(query) as queryLower
| parse regex field=queryLower "(?<aggregation>sum|avg|count|count_distinct|count_frequent|max|min|avg|first|last|most_recent|least_recent|pct|stddev|fillmissing|compose)" nodrop
```

**Enterprise Search Audit/Search Overview/Aggregate vs Non-Aggregate Searches**
```
_view=sumologic_search_usage_per_query analytics_tier=Continuous 
| if (query_type == "View Maintenance", "Scheduled Views", query_type) as query_type
| where query_type matches "{{query_type}}" and user_name matches "{{user_name}}"
| toLowerCase(query) as queryLower
| parse regex field=queryLower "(?<aggregation>sum|avg|count|count_distinct|count_frequent|max|min|avg|first|last|most_recent|least_recent|pct|stddev|fillmissing|compose)" nodrop
```


