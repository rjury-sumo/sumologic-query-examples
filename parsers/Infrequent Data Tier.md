# Parsers For Infrequent Data Tier

## Parser:
```
| json field=scanned_bytes_breakdown "Infrequent" as data_scanned_bytes
 `n```
### Use Cases:
Avg Credits Consumed/day, Avg Data Scanned/day, Credits Consumed by Caller Module, Credits Consumed By Users, Credits Consumed Over Time, Credits Consumed Over Time (Previous Month), Credits Consumed Over Time By Users, Data Scanned By Caller Module, Data Scanned By Query Type (Aggregate or NOT), Data Scanned By Users, Data Scanned Over Time, Data Scanned Over Time (Last Month), Data Scanned Over Time By Users, Data Scanned Query Status, Geo Location of Users executing queries, Orgs total Credits value exceeded input Credit, Orgs total data scanned in GB exceeded input GB value, Query Analysis, Top 50 Expensive Queries, Users whose total Credit Consumed exceeded  by input value, Users whose total data scanned (GB) exceeded  by input value



## Parser:
```
| json field=scanned_bytes_breakdown "Infrequent" as data_scanned_bytes| fields data_scanned_bytes, query, is_aggregate, query_type, remote_ip, retrieved_message_count, scanned_message_count, scanned_partition_count, session_id, status_message, user_name
 `n```
### Use Cases:
Avg Credits Consumed/day, Avg Data Scanned/day, Credits Consumed by Caller Module, Credits Consumed By Users, Credits Consumed Over Time, Credits Consumed Over Time (Previous Month), Credits Consumed Over Time By Users, Data Scanned By Caller Module, Data Scanned By Query Type (Aggregate or NOT), Data Scanned By Users, Data Scanned Over Time, Data Scanned Over Time (Last Month), Data Scanned Over Time By Users, Data Scanned Query Status, Geo Location of Users executing queries, Orgs total Credits value exceeded input Credit, Orgs total data scanned in GB exceeded input GB value, Users whose total Credit Consumed exceeded  by input value, Users whose total data scanned (GB) exceeded  by input value


