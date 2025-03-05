# Parsers For Enterprise Search Audit

## Parser:
```
| parse regex field=queryLower "(?<aggregation>sum|avg|count|count_distinct|count_frequent|max|min|avg|first|last|most_recent|least_recent|pct|stddev|fillmissing|compose)" nodrop
```
### Use Cases:
1op 10 Source Categories Referenced by Queries per Tier, Aggregate vs Non-Aggregate Searches, Interactive Dashboard Queries without Metadata, Other Popular Keys Referenced by Queries, Popular Partitions and Views Referenced by Queries, Popular Source Categories Referenced by Queries, Queries by Optimization Techniques, Scheduled Searches without Metadata, Top 10 Partitions and Views Referenced by Queries per Tier, Unoptimized Queries



## Parser:
```
| parse regex field=queryLower "^(?<scope_section_raw>[^\|]+)" nodrop 
| parse regex field=scope_section_raw "_(?<meta>sourcecategory|sourcehost|collector|source|sourcename)\s*="  nodrop
| parse regex field=scope_section_raw "_(?<idx>view|index)\s*="  nodrop  
```
### Use Cases:
1op 10 Source Categories Referenced by Queries per Tier, Aggregate vs Non-Aggregate Searches, Interactive Dashboard Queries without Metadata, Other Popular Keys Referenced by Queries, Popular Partitions and Views Referenced by Queries, Popular Source Categories Referenced by Queries, Queries by Optimization Techniques, Scheduled Searches without Metadata, Top 10 Partitions and Views Referenced by Queries per Tier, Unoptimized Queries



## Parser:
```
| parse regex field=queryLower "^(?<scope_section_raw>[^\|]+)" nodrop 
| parse regex field=scope_section_raw "_(?<meta>sourcecategory|sourcehost|collector|source|sourcename)\s*="  nodrop  | if (meta!="",1,0) as use_meta
| parse regex field=scope_section_raw "_(?<idx>view|index)\s*="  nodrop  | if (idx!="",1,0) as use_idx
| parse regex field=scope_section_raw "(?:^|\s+)(?<kfield>\w+)\s*="  nodrop  | if (kfield!="" and !(kfield in ("sourcecategory","collector","index","view","source","sourcehost","sourcename")),1,0) as use_field
| parse regex field=scope_section_raw "(?:^|\s+)(?<first>\"[^\"]+\"|\'[^\']+\'|[\w\"\']+)(?<bridge>\s*=\s*|\s+|$)(?<second>\w+|$)" multi nodrop | if ( !(bridge matches "*=*") and select_all!=1,1,use_kw) as use_kw
```
### Use Cases:
1op 10 Source Categories Referenced by Queries per Tier, Aggregate vs Non-Aggregate Searches, Interactive Dashboard Queries without Metadata, Other Popular Keys Referenced by Queries, Popular Partitions and Views Referenced by Queries, Popular Source Categories Referenced by Queries, Queries by Optimization Techniques, Scheduled Searches without Metadata, Top 10 Partitions and Views Referenced by Queries per Tier, Unoptimized Queries



## Parser:
```
| parse regex field=queryLower "^(?<scope_section_raw>[^\|]+)" nodrop 
| parse regex field=scope_section_raw "_sourcecategory\s*=\s*(?<meta_sourcecategory>[^\s\|\)]+)" multi nodrop
| parse regex field=scope_section_raw "_index\s*=\s*(?<meta_index>[^\s\|\)]+)" multi nodrop 
| parse regex field=scope_section_raw "_view\s*=\s*(?<meta_view>[^\s\|\)]+)" multi nodrop 
| parse regex field=scope_section_raw "_source\s*=\s*(?<meta_source>[^\s\|\)]+)" multi nodrop 
| parse regex field=scope_section_raw "_collector\s*=\s*(?<meta_collector>[^\s\|\)]+)" multi nodrop
| parse regex field=scope_section_raw "_sourcename\s*=\s*(?<meta_sourcename>[^\s\|\)]+)" multi nodrop
| parse regex field=scope_section_raw "_sourcehost\s*=\s*(?<meta_sourcehost>[^\s\|\)]+)" multi nodrop
```
### Use Cases:
1op 10 Source Categories Referenced by Queries per Tier, Aggregate vs Non-Aggregate Searches, Interactive Dashboard Queries without Metadata, Other Popular Keys Referenced by Queries, Popular Partitions and Views Referenced by Queries, Popular Source Categories Referenced by Queries, Queries by Optimization Techniques, Scheduled Searches without Metadata, Top 10 Partitions and Views Referenced by Queries per Tier, Unoptimized Queries



## Parser:
```
| parse regex field=queryLower "^(?<scope_section_raw>[^\|]+)" nodrop 
| parse regex field=scope_section_raw "_sourcecategory\s*=\s*(?<meta_sourcecategory>[^\s\|\)]+)" multi nodrop 
```
### Use Cases:
1op 10 Source Categories Referenced by Queries per Tier, Aggregate vs Non-Aggregate Searches, Interactive Dashboard Queries without Metadata, Other Popular Keys Referenced by Queries, Popular Partitions and Views Referenced by Queries, Popular Source Categories Referenced by Queries, Queries by Optimization Techniques, Scheduled Searches without Metadata, Top 10 Partitions and Views Referenced by Queries per Tier, Unoptimized Queries



## Parser:
```
| parse regex field=queryLower "^(?<scope_section_raw>[^\|]+)" nodrop 
| parse regex field=scope_section_raw "(?:_index|_view)\s*=\s*(?<meta_index>[^\s\|\)]+)" multi nodrop 
```
### Use Cases:
1op 10 Source Categories Referenced by Queries per Tier, Aggregate vs Non-Aggregate Searches, Interactive Dashboard Queries without Metadata, Other Popular Keys Referenced by Queries, Popular Partitions and Views Referenced by Queries, Popular Source Categories Referenced by Queries, Queries by Optimization Techniques, Scheduled Searches without Metadata, Top 10 Partitions and Views Referenced by Queries per Tier, Unoptimized Queries



## Parser:
```
| parse regex field=queryLower "^(?<scope_section_raw>[^\|]+)" nodrop 
| parse regex field=scope_section_raw "(?<metadataName>_sourcehost|_sourcename|_source|_collector|\w+)\s*=\s*(?<metadataValue>[^\s\|\)]+)" multi nodrop 
```
### Use Cases:
1op 10 Source Categories Referenced by Queries per Tier, Aggregate vs Non-Aggregate Searches, Interactive Dashboard Queries without Metadata, Other Popular Keys Referenced by Queries, Popular Partitions and Views Referenced by Queries, Popular Source Categories Referenced by Queries, Queries by Optimization Techniques, Scheduled Searches without Metadata, Top 10 Partitions and Views Referenced by Queries per Tier, Unoptimized Queries


