# Parsers For Infrequent Data Tier

**Infrequent Data Tier/Credits Consumed/Credits Consumed by Caller Module**
```
_view=sumologic_search_usage_per_query  !(user_name=*sumologic.com) !(status_message="Query Failed")	
| json field=scanned_bytes_breakdown "Infrequent" as data_scanned_bytes
```

**Infrequent Data Tier/Credits Consumed/Credits Consumed By Users**
```
_view=sumologic_search_usage_per_query  !(user_name=*sumologic.com) !(status_message="Query Failed")	
| json field=scanned_bytes_breakdown "Infrequent" as data_scanned_bytes
```

**Infrequent Data Tier/Credits Consumed/Credits Consumed Over Time**
```
_view=sumologic_search_usage_per_query  !(user_name=*sumologic.com) !(status_message="Query Failed")	
| json field=scanned_bytes_breakdown "Infrequent" as data_scanned_bytes| fields data_scanned_bytes, query, is_aggregate, query_type, remote_ip, retrieved_message_count, scanned_message_count, scanned_partition_count, session_id, status_message, user_name
```

**Infrequent Data Tier/Credits Consumed/Credits Consumed Over Time (Previous Month)**
```
_view=sumologic_search_usage_per_query  !(user_name=*sumologic.com) !(status_message="Query Failed")	
| json field=scanned_bytes_breakdown "Infrequent" as data_scanned_bytes
```

**Infrequent Data Tier/Credits Consumed/Credits Consumed Over Time By Users**
```
_view=sumologic_search_usage_per_query  !(user_name=*sumologic.com) !(status_message="Query Failed")	
| json field=scanned_bytes_breakdown "Infrequent" as data_scanned_bytes
```

**Infrequent Data Tier/Credits Consumed/day**
```
_view=sumologic_search_usage_per_query  !(user_name=*sumologic.com) !(status_message="Query Failed")	
| json field=scanned_bytes_breakdown "Infrequent" as data_scanned_bytes
```

**Infrequent Data Tier/Data Scanned by Users/Data Scanned By Users**
```
_view=sumologic_search_usage_per_query  !(user_name=*sumologic.com) !(status_message="Query Failed")	
| json field=scanned_bytes_breakdown "Infrequent" as data_scanned_bytes
```

**Infrequent Data Tier/Data Scanned by Users/Data Scanned Over Time By Users**
```
_view=sumologic_search_usage_per_query  !(user_name=*sumologic.com) !(status_message="Query Failed")	
| json field=scanned_bytes_breakdown "Infrequent" as data_scanned_bytes
```

**Infrequent Data Tier/Data Scanned by Users/Geo Location of Users executing queries**
```
_view=sumologic_search_usage_per_query  !(user_name=*sumologic.com)
| json field=scanned_bytes_breakdown "Infrequent" as data_scanned_bytes| fields data_scanned_bytes, query, is_aggregate, query_type, remote_ip, retrieved_message_count, scanned_message_count, scanned_partition_count, session_id, status_message, user_name
```

**Infrequent Data Tier/Data Scanned Overview/Data Scanned By Caller Module**
```
_view=sumologic_search_usage_per_query  !(user_name=*sumologic.com) !(status_message="Query Failed")	
| json field=scanned_bytes_breakdown "Infrequent" as data_scanned_bytes
```

**Infrequent Data Tier/Data Scanned Overview/Data Scanned By Query Type (Aggregate or NOT)**
```
_view=sumologic_search_usage_per_query  !(user_name=*sumologic.com) !(status_message="Query Failed")	
| json field=scanned_bytes_breakdown "Infrequent" as data_scanned_bytes
```

**Infrequent Data Tier/Data Scanned Overview/Data Scanned Over Time**
```
_view=sumologic_search_usage_per_query  !(user_name=*sumologic.com) !(status_message="Query Failed")	
| json field=scanned_bytes_breakdown "Infrequent" as data_scanned_bytes| fields data_scanned_bytes, query, is_aggregate, query_type, remote_ip, retrieved_message_count, scanned_message_count, scanned_partition_count, session_id, status_message, user_name
```

**Infrequent Data Tier/Data Scanned Overview/Data Scanned Over Time (Last Month)**
```
_view=sumologic_search_usage_per_query  !(user_name=*sumologic.com) !(status_message="Query Failed")	
| json field=scanned_bytes_breakdown "Infrequent" as data_scanned_bytes
```

**Infrequent Data Tier/Data Scanned Overview/Data Scanned Query Status**
```
_view=sumologic_search_usage_per_query  !(user_name=*sumologic.com) !(status_message="Query Failed")	
| json field=scanned_bytes_breakdown "Infrequent" as data_scanned_bytes| fields data_scanned_bytes, query, is_aggregate, query_type, remote_ip, retrieved_message_count, scanned_message_count, scanned_partition_count, session_id, status_message, user_name
```

**Infrequent Data Tier/Data Scanned Overview/day**
```
_view=sumologic_search_usage_per_query  !(user_name=*sumologic.com) !(status_message="Query Failed")	
| json field=scanned_bytes_breakdown "Infrequent" as data_scanned_bytes| fields data_scanned_bytes, query, is_aggregate, query_type, remote_ip, retrieved_message_count, scanned_message_count, scanned_partition_count, session_id, status_message, user_name
```

**Infrequent Data Tier/Orgs total Credits value exceeded input Credit/Orgs total Credits value exceeded input Credit**
```
_view=sumologic_search_usage_per_query  !(user_name=*sumologic.com) !(status_message="Query Failed")	
| json field=scanned_bytes_breakdown "Infrequent" as data_scanned_bytes
```

**Infrequent Data Tier/Orgs total data scanned in GB exceeded input GB value/Orgs total data scanned in GB exceeded input GB value**
```
_view=sumologic_search_usage_per_query  !(user_name=*sumologic.com) !(status_message="Query Failed")	
| json field=scanned_bytes_breakdown "Infrequent" as data_scanned_bytes
```

**Infrequent Data Tier/Query Analysis/Query Analysis**
```
_view=sumologic_search_usage_per_query  !(user_name=*sumologic.com) !(status_message="Query Failed")	
| json field=scanned_bytes_breakdown "Infrequent" as data_scanned_bytes
```

**Infrequent Data Tier/Query Analysis/Top 50 Expensive Queries**
```
_view=sumologic_search_usage_per_query  !(user_name=*sumologic.com) !(status_message="Query Failed")	
| json field=scanned_bytes_breakdown "Infrequent" as data_scanned_bytes
```

**Infrequent Data Tier/Users whose total Credit Consumed exceeded  by input value/Users whose total Credit Consumed exceeded  by input value**
```
_view=sumologic_search_usage_per_query  !(user_name=*sumologic.com) !(status_message="Query Failed")	
| json field=scanned_bytes_breakdown "Infrequent" as data_scanned_bytes
```

**Infrequent Data Tier/Users whose total data scanned (GB) exceeded  by input value/Users whose total data scanned (GB) exceeded  by input value**
```
_view=sumologic_search_usage_per_query  !(user_name=*sumologic.com) !(status_message="Query Failed")	
| json field=scanned_bytes_breakdown "Infrequent" as data_scanned_bytes
```


