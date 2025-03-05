# Parsers For Enterprise Audit - Collector & Data Forwarding Management

## Parser:
```
| json "eventName" as EventName nodrop
 `n```
### Use Cases:
Active Users, Clobber Collector Deleted, Clobber Collector Deleted Activities, Collector Upgrade Activities, Collector Upgrade Requested, Distribution - Action Performed From Interface, Distribution By Existing Collector Type, Distribution By Existing Source Sync Mode, Distribution By Existing Source Type, Distribution Of Data Forwarding Destination, Distribution Of Data Forwarding Index, Distribution Of Data Source type, Distribution Of Destination Type, Distribution Of Existing Encryption for Amazon S3 Data Forwarding, Distribution Of Existing Format Type For Data Forwarding, Distribution Of Existing Status for Amazon S3 Data Forwarding, Ephemeral Collector Created, Ephemeral Collector Deleted, Geo Location, Index Disabled, One Day Time Shift Comparison, Recent - Collector Activities, Recent - Destination Activities, Recent - Index Activities, Recent - Sources Activity, Recent - Sources Added To Collector Using Local Configuration Management, Top Collectors With Sources Added, Top Users By Activities, Trend - Collector Activities, Trend - Collector Sources Activities, Trend - Collector Upgrade Success vs Failure, Trend - Data Forwarding Destination, Trend - Data Forwarding Index, Trend - Destination Type



## Parser:
```
| json "eventName" as EventName nodrop
| json "status" as Status
 `n```
### Use Cases:
Active Users, Clobber Collector Deleted, Clobber Collector Deleted Activities, Collector Upgrade Activities, Collector Upgrade Requested, Distribution - Action Performed From Interface, Distribution By Existing Collector Type, Distribution By Existing Source Sync Mode, Distribution By Existing Source Type, Distribution Of Data Forwarding Destination, Distribution Of Data Forwarding Index, Distribution Of Data Source type, Distribution Of Destination Type, Distribution Of Existing Encryption for Amazon S3 Data Forwarding, Distribution Of Existing Format Type For Data Forwarding, Distribution Of Existing Status for Amazon S3 Data Forwarding, Ephemeral Collector Created, Ephemeral Collector Deleted, Geo Location, Index Disabled, One Day Time Shift Comparison, Recent - Collector Activities, Recent - Destination Activities, Recent - Index Activities, Recent - Sources Activity, Recent - Sources Added To Collector Using Local Configuration Management, Top Collectors With Sources Added, Top Users By Activities, Trend - Collector Activities, Trend - Collector Sources Activities, Trend - Collector Upgrade Success vs Failure, Trend - Data Forwarding Destination, Trend - Data Forwarding Index, Trend - Destination Type



## Parser:
```
| json "eventName", "collector.ephemeral" as EventName, IsEphemeral nodrop
 `n```
### Use Cases:
Active Users, Clobber Collector Deleted, Clobber Collector Deleted Activities, Collector Upgrade Activities, Collector Upgrade Requested, Distribution - Action Performed From Interface, Distribution By Existing Collector Type, Distribution By Existing Source Sync Mode, Distribution By Existing Source Type, Distribution Of Data Forwarding Destination, Distribution Of Data Forwarding Index, Distribution Of Data Source type, Distribution Of Destination Type, Distribution Of Existing Encryption for Amazon S3 Data Forwarding, Distribution Of Existing Format Type For Data Forwarding, Distribution Of Existing Status for Amazon S3 Data Forwarding, Ephemeral Collector Created, Ephemeral Collector Deleted, Geo Location, Index Disabled, One Day Time Shift Comparison, Recent - Collector Activities, Recent - Destination Activities, Recent - Index Activities, Recent - Sources Activity, Recent - Sources Added To Collector Using Local Configuration Management, Top Collectors With Sources Added, Top Users By Activities, Trend - Collector Activities, Trend - Collector Sources Activities, Trend - Collector Upgrade Success vs Failure, Trend - Data Forwarding Destination, Trend - Data Forwarding Index, Trend - Destination Type



## Parser:
```
| json "eventName", "collectorIdentity.collectorId", "collector.collectorType", "to.collectorType" as EventName, CollectorId, CollectorTypeCreated, UpdatedCollectorType nodrop
 `n```
### Use Cases:
Active Users, Clobber Collector Deleted, Clobber Collector Deleted Activities, Collector Upgrade Activities, Collector Upgrade Requested, Distribution - Action Performed From Interface, Distribution By Existing Collector Type, Distribution By Existing Source Sync Mode, Distribution By Existing Source Type, Distribution Of Data Forwarding Destination, Distribution Of Data Forwarding Index, Distribution Of Data Source type, Distribution Of Destination Type, Distribution Of Existing Encryption for Amazon S3 Data Forwarding, Distribution Of Existing Format Type For Data Forwarding, Distribution Of Existing Status for Amazon S3 Data Forwarding, Ephemeral Collector Created, Ephemeral Collector Deleted, Geo Location, Index Disabled, One Day Time Shift Comparison, Recent - Collector Activities, Recent - Destination Activities, Recent - Index Activities, Recent - Sources Activity, Recent - Sources Added To Collector Using Local Configuration Management, Top Collectors With Sources Added, Top Users By Activities, Trend - Collector Activities, Trend - Collector Sources Activities, Trend - Collector Upgrade Success vs Failure, Trend - Data Forwarding Destination, Trend - Data Forwarding Index, Trend - Destination Type



## Parser:
```
| json "eventName", "collectorIdentity.collectorId", "collector.sourceSyncMode", "to.sourceSyncMode" as EventName, CollectorId, sourceSyncModeCreated, sourceSyncModeUpdated nodrop
 `n```
### Use Cases:
Active Users, Clobber Collector Deleted, Clobber Collector Deleted Activities, Collector Upgrade Activities, Collector Upgrade Requested, Distribution - Action Performed From Interface, Distribution By Existing Collector Type, Distribution By Existing Source Sync Mode, Distribution By Existing Source Type, Distribution Of Data Forwarding Destination, Distribution Of Data Forwarding Index, Distribution Of Data Source type, Distribution Of Destination Type, Distribution Of Existing Encryption for Amazon S3 Data Forwarding, Distribution Of Existing Format Type For Data Forwarding, Distribution Of Existing Status for Amazon S3 Data Forwarding, Ephemeral Collector Created, Ephemeral Collector Deleted, Geo Location, Index Disabled, One Day Time Shift Comparison, Recent - Collector Activities, Recent - Destination Activities, Recent - Index Activities, Recent - Sources Activity, Recent - Sources Added To Collector Using Local Configuration Management, Top Collectors With Sources Added, Top Users By Activities, Trend - Collector Activities, Trend - Collector Sources Activities, Trend - Collector Upgrade Success vs Failure, Trend - Data Forwarding Destination, Trend - Data Forwarding Index, Trend - Destination Type



## Parser:
```
| json "eventName", "destination.destinationType" as EventName, DestinationType nodrop
 `n```
### Use Cases:
Active Users, Clobber Collector Deleted, Clobber Collector Deleted Activities, Collector Upgrade Activities, Collector Upgrade Requested, Distribution - Action Performed From Interface, Distribution By Existing Collector Type, Distribution By Existing Source Sync Mode, Distribution By Existing Source Type, Distribution Of Data Forwarding Destination, Distribution Of Data Forwarding Index, Distribution Of Data Source type, Distribution Of Destination Type, Distribution Of Existing Encryption for Amazon S3 Data Forwarding, Distribution Of Existing Format Type For Data Forwarding, Distribution Of Existing Status for Amazon S3 Data Forwarding, Ephemeral Collector Created, Ephemeral Collector Deleted, Geo Location, Index Disabled, One Day Time Shift Comparison, Recent - Collector Activities, Recent - Destination Activities, Recent - Index Activities, Recent - Sources Activity, Recent - Sources Added To Collector Using Local Configuration Management, Top Collectors With Sources Added, Top Users By Activities, Trend - Collector Activities, Trend - Collector Sources Activities, Trend - Collector Upgrade Success vs Failure, Trend - Data Forwarding Destination, Trend - Data Forwarding Index, Trend - Destination Type



## Parser:
```
| json "eventName", "destinationIdentity.dataSourceType" as EventName, DataSourceType nodrop
 `n```
### Use Cases:
Active Users, Clobber Collector Deleted, Clobber Collector Deleted Activities, Collector Upgrade Activities, Collector Upgrade Requested, Distribution - Action Performed From Interface, Distribution By Existing Collector Type, Distribution By Existing Source Sync Mode, Distribution By Existing Source Type, Distribution Of Data Forwarding Destination, Distribution Of Data Forwarding Index, Distribution Of Data Source type, Distribution Of Destination Type, Distribution Of Existing Encryption for Amazon S3 Data Forwarding, Distribution Of Existing Format Type For Data Forwarding, Distribution Of Existing Status for Amazon S3 Data Forwarding, Ephemeral Collector Created, Ephemeral Collector Deleted, Geo Location, Index Disabled, One Day Time Shift Comparison, Recent - Collector Activities, Recent - Destination Activities, Recent - Index Activities, Recent - Sources Activity, Recent - Sources Added To Collector Using Local Configuration Management, Top Collectors With Sources Added, Top Users By Activities, Trend - Collector Activities, Trend - Collector Sources Activities, Trend - Collector Upgrade Success vs Failure, Trend - Data Forwarding Destination, Trend - Data Forwarding Index, Trend - Destination Type



## Parser:
```
| json "eventName", "destinationIdentity.destinationId", "destination.enabled", "to.enabled" as EventName, destinationId, CreatedEnabled,UpdatedEnabled nodrop
 `n```
### Use Cases:
Active Users, Clobber Collector Deleted, Clobber Collector Deleted Activities, Collector Upgrade Activities, Collector Upgrade Requested, Distribution - Action Performed From Interface, Distribution By Existing Collector Type, Distribution By Existing Source Sync Mode, Distribution By Existing Source Type, Distribution Of Data Forwarding Destination, Distribution Of Data Forwarding Index, Distribution Of Data Source type, Distribution Of Destination Type, Distribution Of Existing Encryption for Amazon S3 Data Forwarding, Distribution Of Existing Format Type For Data Forwarding, Distribution Of Existing Status for Amazon S3 Data Forwarding, Ephemeral Collector Created, Ephemeral Collector Deleted, Geo Location, Index Disabled, One Day Time Shift Comparison, Recent - Collector Activities, Recent - Destination Activities, Recent - Index Activities, Recent - Sources Activity, Recent - Sources Added To Collector Using Local Configuration Management, Top Collectors With Sources Added, Top Users By Activities, Trend - Collector Activities, Trend - Collector Sources Activities, Trend - Collector Upgrade Success vs Failure, Trend - Data Forwarding Destination, Trend - Data Forwarding Index, Trend - Destination Type



## Parser:
```
| json "eventName", "destinationIdentity.destinationId", "destination.encrypted", "to.encrypted" as EventName, destinationId, CreatedEncrypted, UpdatedEncrypted nodrop
 `n```
### Use Cases:
Active Users, Clobber Collector Deleted, Clobber Collector Deleted Activities, Collector Upgrade Activities, Collector Upgrade Requested, Distribution - Action Performed From Interface, Distribution By Existing Collector Type, Distribution By Existing Source Sync Mode, Distribution By Existing Source Type, Distribution Of Data Forwarding Destination, Distribution Of Data Forwarding Index, Distribution Of Data Source type, Distribution Of Destination Type, Distribution Of Existing Encryption for Amazon S3 Data Forwarding, Distribution Of Existing Format Type For Data Forwarding, Distribution Of Existing Status for Amazon S3 Data Forwarding, Ephemeral Collector Created, Ephemeral Collector Deleted, Geo Location, Index Disabled, One Day Time Shift Comparison, Recent - Collector Activities, Recent - Destination Activities, Recent - Index Activities, Recent - Sources Activity, Recent - Sources Added To Collector Using Local Configuration Management, Top Collectors With Sources Added, Top Users By Activities, Trend - Collector Activities, Trend - Collector Sources Activities, Trend - Collector Upgrade Success vs Failure, Trend - Data Forwarding Destination, Trend - Data Forwarding Index, Trend - Destination Type



## Parser:
```
| json "eventName", "eventTime", "indexName", "operator.email", "operator.id", "operator.sourceIp", "dataForwarding", "from", "to" as EventName, EventTime, IndexName, User, UserId, UserIp, dataForwarding, PreviousValue, CurrentValue nodrop
 `n```
### Use Cases:
Active Users, Clobber Collector Deleted, Clobber Collector Deleted Activities, Collector Upgrade Activities, Collector Upgrade Requested, Distribution - Action Performed From Interface, Distribution By Existing Collector Type, Distribution By Existing Source Sync Mode, Distribution By Existing Source Type, Distribution Of Data Forwarding Destination, Distribution Of Data Forwarding Index, Distribution Of Data Source type, Distribution Of Destination Type, Distribution Of Existing Encryption for Amazon S3 Data Forwarding, Distribution Of Existing Format Type For Data Forwarding, Distribution Of Existing Status for Amazon S3 Data Forwarding, Ephemeral Collector Created, Ephemeral Collector Deleted, Geo Location, Index Disabled, One Day Time Shift Comparison, Recent - Collector Activities, Recent - Destination Activities, Recent - Index Activities, Recent - Sources Activity, Recent - Sources Added To Collector Using Local Configuration Management, Top Collectors With Sources Added, Top Users By Activities, Trend - Collector Activities, Trend - Collector Sources Activities, Trend - Collector Upgrade Success vs Failure, Trend - Data Forwarding Destination, Trend - Data Forwarding Index, Trend - Destination Type



## Parser:
```
| json "eventName", "eventTime", "indexName", "operator.email", "operator.id", "operator.sourceIp", "dataForwarding", "from", "to" as EventName, EventTime, IndexName, User, UserId, UserIp, dataForwarding, PreviousValue, CurrentValue nodrop
| json field=dataForwarding "destinationIdentity.destinationName", "destinationIdentity.dataSourceType", "format" as NameCreated, SourceCreated, formatCreated nodrop
| json field=CurrentValue "destinationIdentity.destinationName", "destinationIdentity.dataSourceType", "format" as NameUpdated, SourceUpdated, formatUpdated nodrop
 `n```
### Use Cases:
Active Users, Clobber Collector Deleted, Clobber Collector Deleted Activities, Collector Upgrade Activities, Collector Upgrade Requested, Distribution - Action Performed From Interface, Distribution By Existing Collector Type, Distribution By Existing Source Sync Mode, Distribution By Existing Source Type, Distribution Of Data Forwarding Destination, Distribution Of Data Forwarding Index, Distribution Of Data Source type, Distribution Of Destination Type, Distribution Of Existing Encryption for Amazon S3 Data Forwarding, Distribution Of Existing Format Type For Data Forwarding, Distribution Of Existing Status for Amazon S3 Data Forwarding, Ephemeral Collector Created, Ephemeral Collector Deleted, Geo Location, Index Disabled, One Day Time Shift Comparison, Recent - Collector Activities, Recent - Destination Activities, Recent - Index Activities, Recent - Sources Activity, Recent - Sources Added To Collector Using Local Configuration Management, Top Collectors With Sources Added, Top Users By Activities, Trend - Collector Activities, Trend - Collector Sources Activities, Trend - Collector Upgrade Success vs Failure, Trend - Data Forwarding Destination, Trend - Data Forwarding Index, Trend - Destination Type



## Parser:
```
| json "eventName", "eventTime", "operator.email" as EventName, EventTime, User nodrop
 `n```
### Use Cases:
Active Users, Clobber Collector Deleted, Clobber Collector Deleted Activities, Collector Upgrade Activities, Collector Upgrade Requested, Distribution - Action Performed From Interface, Distribution By Existing Collector Type, Distribution By Existing Source Sync Mode, Distribution By Existing Source Type, Ephemeral Collector Created, Ephemeral Collector Deleted, Geo Location, One Day Time Shift Comparison, Recent - Collector Activities, Recent - Destination Activities, Recent - Sources Activity, Recent - Sources Added To Collector Using Local Configuration Management, Top Collectors With Sources Added, Top Users By Activities, Trend - Collector Activities, Trend - Collector Sources Activities, Trend - Collector Upgrade Success vs Failure



## Parser:
```
| json "eventName", "eventTime", "operator.email", "operator.id", "operator.sourceIp", "collectorIdentity.collectorName", "sourcesAdded", "sourcesUpdated","sourcesDeleted",  "sourceIdentity.sourceName"  as EventName, EventTime, UserEmail, UserId, UserIp, CollectorName, SourcesAdded, SourcesUpdated, SourcesDeleted ,SourceName nodrop
| parse field=SourcesAdded "[*]" as SourcesAdded nodrop
| parse field=SourcesUpdated "[*]" as SourcesUpdated nodrop
| parse field=SourcesDeleted "[*]" as SourcesDeleted nodrop
 `n```
### Use Cases:
Active Users, Clobber Collector Deleted, Clobber Collector Deleted Activities, Collector Upgrade Activities, Collector Upgrade Requested, Distribution - Action Performed From Interface, Distribution By Existing Collector Type, Distribution By Existing Source Sync Mode, Distribution By Existing Source Type, Distribution Of Data Forwarding Destination, Distribution Of Data Forwarding Index, Distribution Of Data Source type, Distribution Of Destination Type, Distribution Of Existing Encryption for Amazon S3 Data Forwarding, Distribution Of Existing Format Type For Data Forwarding, Distribution Of Existing Status for Amazon S3 Data Forwarding, Ephemeral Collector Created, Ephemeral Collector Deleted, Geo Location, Index Disabled, One Day Time Shift Comparison, Recent - Collector Activities, Recent - Destination Activities, Recent - Index Activities, Recent - Sources Activity, Recent - Sources Added To Collector Using Local Configuration Management, Top Collectors With Sources Added, Top Users By Activities, Trend - Collector Activities, Trend - Collector Sources Activities, Trend - Collector Upgrade Success vs Failure, Trend - Data Forwarding Destination, Trend - Data Forwarding Index, Trend - Destination Type



## Parser:
```
| json "eventName", "eventTime", "operator.email", "operator.id", "operator.sourceIp", "operator.interface", "collectorIdentity.collectorName", "collector.ephemeral", "collector.sourceSyncMode", "collector.collectorType",  "to", "from" as EventName, EventTime, UserEmail, UserId, UserIp, Interface, CollectorName, IsEphemeral, SourceSyncMode, CollectorType, CurrentValue, PreviousValue nodrop
 `n```
### Use Cases:
Active Users, Clobber Collector Deleted, Clobber Collector Deleted Activities, Collector Upgrade Activities, Collector Upgrade Requested, Distribution - Action Performed From Interface, Distribution By Existing Collector Type, Distribution By Existing Source Sync Mode, Distribution By Existing Source Type, Distribution Of Data Forwarding Destination, Distribution Of Data Forwarding Index, Distribution Of Data Source type, Distribution Of Destination Type, Distribution Of Existing Encryption for Amazon S3 Data Forwarding, Distribution Of Existing Format Type For Data Forwarding, Distribution Of Existing Status for Amazon S3 Data Forwarding, Ephemeral Collector Created, Ephemeral Collector Deleted, Geo Location, Index Disabled, One Day Time Shift Comparison, Recent - Collector Activities, Recent - Destination Activities, Recent - Index Activities, Recent - Sources Activity, Recent - Sources Added To Collector Using Local Configuration Management, Top Collectors With Sources Added, Top Users By Activities, Trend - Collector Activities, Trend - Collector Sources Activities, Trend - Collector Upgrade Success vs Failure, Trend - Data Forwarding Destination, Trend - Data Forwarding Index, Trend - Destination Type



## Parser:
```
| json "eventName", "eventTime", "operator.email", "operator.id", "operator.sourceIp", "operator.interface", "collectorIdentity.collectorName", "collector.ephemeral", "collector.sourceSyncMode", "collector.collectorType",  "to", "from" as EventName, EventTime, UserEmail, UserId, UserIp, Interface, CollectorName, IsEphemeral, SourceSyncMode, CollectorType, CurrentValue, PreviousValue nodrop
| json field=CurrentValue "ephemeral", "sourceSyncMode", "collectorType" as UpdatedIsEphermal, UpdatedSourceSyncMode, UpdatedCollectorType nodrop
 `n```
### Use Cases:
Active Users, Clobber Collector Deleted, Clobber Collector Deleted Activities, Collector Upgrade Activities, Collector Upgrade Requested, Distribution - Action Performed From Interface, Distribution By Existing Collector Type, Distribution By Existing Source Sync Mode, Distribution By Existing Source Type, Distribution Of Data Forwarding Destination, Distribution Of Data Forwarding Index, Distribution Of Data Source type, Distribution Of Destination Type, Distribution Of Existing Encryption for Amazon S3 Data Forwarding, Distribution Of Existing Format Type For Data Forwarding, Distribution Of Existing Status for Amazon S3 Data Forwarding, Ephemeral Collector Created, Ephemeral Collector Deleted, Geo Location, Index Disabled, One Day Time Shift Comparison, Recent - Collector Activities, Recent - Destination Activities, Recent - Index Activities, Recent - Sources Activity, Recent - Sources Added To Collector Using Local Configuration Management, Top Collectors With Sources Added, Top Users By Activities, Trend - Collector Activities, Trend - Collector Sources Activities, Trend - Collector Upgrade Success vs Failure, Trend - Data Forwarding Destination, Trend - Data Forwarding Index, Trend - Destination Type



## Parser:
```
| json "eventName", "eventTime", "operator.email", "operator.id", "operator.sourceIp", "operator.interface", "collectorIdentity.collectorName", "collector.ephemeral", "collector.sourceSyncMode", "collector.collectorType",  "to", "from", "requestBy.userId", "requestBy.userEmail" as EventName, EventTime, UserEmail, UserId, UserIp, Interface, CollectorName, IsEphemeral, SourceSyncMode, CollectorType, CurrentValue, PreviousValue, requestByUserId, requestByUserEmail nodrop
 `n```
### Use Cases:
Active Users, Clobber Collector Deleted, Clobber Collector Deleted Activities, Collector Upgrade Activities, Collector Upgrade Requested, Distribution - Action Performed From Interface, Distribution By Existing Collector Type, Distribution By Existing Source Sync Mode, Distribution By Existing Source Type, Distribution Of Data Forwarding Destination, Distribution Of Data Forwarding Index, Distribution Of Data Source type, Distribution Of Destination Type, Distribution Of Existing Encryption for Amazon S3 Data Forwarding, Distribution Of Existing Format Type For Data Forwarding, Distribution Of Existing Status for Amazon S3 Data Forwarding, Ephemeral Collector Created, Ephemeral Collector Deleted, Geo Location, Index Disabled, One Day Time Shift Comparison, Recent - Collector Activities, Recent - Destination Activities, Recent - Index Activities, Recent - Sources Activity, Recent - Sources Added To Collector Using Local Configuration Management, Top Collectors With Sources Added, Top Users By Activities, Trend - Collector Activities, Trend - Collector Sources Activities, Trend - Collector Upgrade Success vs Failure, Trend - Data Forwarding Destination, Trend - Data Forwarding Index, Trend - Destination Type



## Parser:
```
| json "eventName", "eventTime", "operator.email", "operator.id", "operator.sourceIp", "sourceIdentity.collectorName", "sourceIdentity.sourceName", "source", "to", "from" as EventName, EventTime, UserEmail, userId, UserIp, CollectorName, SourceName, SourceDetails, CurrentValue, PreviousValue nodrop
 `n```
### Use Cases:
Active Users, Clobber Collector Deleted, Clobber Collector Deleted Activities, Collector Upgrade Activities, Collector Upgrade Requested, Distribution - Action Performed From Interface, Distribution By Existing Collector Type, Distribution By Existing Source Sync Mode, Distribution By Existing Source Type, Distribution Of Data Forwarding Destination, Distribution Of Data Forwarding Index, Distribution Of Data Source type, Distribution Of Destination Type, Distribution Of Existing Encryption for Amazon S3 Data Forwarding, Distribution Of Existing Format Type For Data Forwarding, Distribution Of Existing Status for Amazon S3 Data Forwarding, Ephemeral Collector Created, Ephemeral Collector Deleted, Geo Location, Index Disabled, One Day Time Shift Comparison, Recent - Collector Activities, Recent - Destination Activities, Recent - Index Activities, Recent - Sources Activity, Recent - Sources Added To Collector Using Local Configuration Management, Top Collectors With Sources Added, Top Users By Activities, Trend - Collector Activities, Trend - Collector Sources Activities, Trend - Collector Upgrade Success vs Failure, Trend - Data Forwarding Destination, Trend - Data Forwarding Index, Trend - Destination Type



## Parser:
```
| json "eventName", "eventTime", "operator.email", "operator.id", "operator.sourceIp", "sourceIdentity.collectorName", "sourceIdentity.sourceName", "source", "to", "from" as EventName, EventTime, UserEmail, userId, UserIp, CollectorName, SourceName, SourceDetails, CurrentValue, PreviousValue nodrop
| json field=SourceDetails "sourceType" as SourceTypeCreated nodrop
| json field=CurrentValue "sourceType" as SourceTypeUpdated nodrop
 `n```
### Use Cases:
Active Users, Clobber Collector Deleted, Clobber Collector Deleted Activities, Collector Upgrade Activities, Collector Upgrade Requested, Distribution - Action Performed From Interface, Distribution By Existing Collector Type, Distribution By Existing Source Sync Mode, Distribution By Existing Source Type, Distribution Of Data Forwarding Destination, Distribution Of Data Forwarding Index, Distribution Of Data Source type, Distribution Of Destination Type, Distribution Of Existing Encryption for Amazon S3 Data Forwarding, Distribution Of Existing Format Type For Data Forwarding, Distribution Of Existing Status for Amazon S3 Data Forwarding, Ephemeral Collector Created, Ephemeral Collector Deleted, Geo Location, Index Disabled, One Day Time Shift Comparison, Recent - Collector Activities, Recent - Destination Activities, Recent - Index Activities, Recent - Sources Activity, Recent - Sources Added To Collector Using Local Configuration Management, Top Collectors With Sources Added, Top Users By Activities, Trend - Collector Activities, Trend - Collector Sources Activities, Trend - Collector Upgrade Success vs Failure, Trend - Data Forwarding Destination, Trend - Data Forwarding Index, Trend - Destination Type



## Parser:
```
| json "eventName", "eventTime", "operator.email", "operator.id", "operator.sourceIp", "sourceIdentity.collectorName", "sourceIdentity.sourceName", "sourceIdentity.sourceId", "source", "to", "from" as EventName, EventTime, UserEmail, userId, UserIp, CollectorName, SourceName, SourceId, Source, CurrentValue, PreviousValue nodrop
 `n```
### Use Cases:
Active Users, Clobber Collector Deleted, Clobber Collector Deleted Activities, Collector Upgrade Activities, Collector Upgrade Requested, Distribution - Action Performed From Interface, Distribution By Existing Collector Type, Distribution By Existing Source Sync Mode, Distribution By Existing Source Type, Distribution Of Data Forwarding Destination, Distribution Of Data Forwarding Index, Distribution Of Data Source type, Distribution Of Destination Type, Distribution Of Existing Encryption for Amazon S3 Data Forwarding, Distribution Of Existing Format Type For Data Forwarding, Distribution Of Existing Status for Amazon S3 Data Forwarding, Ephemeral Collector Created, Ephemeral Collector Deleted, Geo Location, Index Disabled, One Day Time Shift Comparison, Recent - Collector Activities, Recent - Destination Activities, Recent - Index Activities, Recent - Sources Activity, Recent - Sources Added To Collector Using Local Configuration Management, Top Collectors With Sources Added, Top Users By Activities, Trend - Collector Activities, Trend - Collector Sources Activities, Trend - Collector Upgrade Success vs Failure, Trend - Data Forwarding Destination, Trend - Data Forwarding Index, Trend - Destination Type



## Parser:
```
| json "eventName", "eventTime", "requestBy.userEmail", "requestBy.userId", "collectorIdentity.collectorName", "collector.ephemeral", "collector.sourceSyncMode", "to", "from", "fromVersion", "toVersion", "status" as EventName, EventTime, UserEmail, UserId, CollectorName, IsEphemeral, SourceSyncMode, CurrentValue, PreviousValue, FromVersion, ToVersion, UpgradeStatus nodrop
 `n```
### Use Cases:
Active Users, Clobber Collector Deleted, Clobber Collector Deleted Activities, Collector Upgrade Activities, Collector Upgrade Requested, Distribution - Action Performed From Interface, Distribution By Existing Collector Type, Distribution By Existing Source Sync Mode, Distribution By Existing Source Type, Distribution Of Data Forwarding Destination, Distribution Of Data Forwarding Index, Distribution Of Data Source type, Distribution Of Destination Type, Distribution Of Existing Encryption for Amazon S3 Data Forwarding, Distribution Of Existing Format Type For Data Forwarding, Distribution Of Existing Status for Amazon S3 Data Forwarding, Ephemeral Collector Created, Ephemeral Collector Deleted, Geo Location, Index Disabled, One Day Time Shift Comparison, Recent - Collector Activities, Recent - Destination Activities, Recent - Index Activities, Recent - Sources Activity, Recent - Sources Added To Collector Using Local Configuration Management, Top Collectors With Sources Added, Top Users By Activities, Trend - Collector Activities, Trend - Collector Sources Activities, Trend - Collector Upgrade Success vs Failure, Trend - Data Forwarding Destination, Trend - Data Forwarding Index, Trend - Destination Type



## Parser:
```
| json "eventName", "indexName", "dataForwarding.format", "to.format" as EventName, IndexName, CreatedFormatType, updatedFormatType nodrop
 `n```
### Use Cases:
Active Users, Clobber Collector Deleted, Clobber Collector Deleted Activities, Collector Upgrade Activities, Collector Upgrade Requested, Distribution - Action Performed From Interface, Distribution By Existing Collector Type, Distribution By Existing Source Sync Mode, Distribution By Existing Source Type, Distribution Of Data Forwarding Destination, Distribution Of Data Forwarding Index, Distribution Of Data Source type, Distribution Of Destination Type, Distribution Of Existing Encryption for Amazon S3 Data Forwarding, Distribution Of Existing Format Type For Data Forwarding, Distribution Of Existing Status for Amazon S3 Data Forwarding, Ephemeral Collector Created, Ephemeral Collector Deleted, Geo Location, Index Disabled, One Day Time Shift Comparison, Recent - Collector Activities, Recent - Destination Activities, Recent - Index Activities, Recent - Sources Activity, Recent - Sources Added To Collector Using Local Configuration Management, Top Collectors With Sources Added, Top Users By Activities, Trend - Collector Activities, Trend - Collector Sources Activities, Trend - Collector Upgrade Success vs Failure, Trend - Data Forwarding Destination, Trend - Data Forwarding Index, Trend - Destination Type



## Parser:
```
| json "eventName", "operator.interface" as EventName, ActivityInterface nodrop
 `n```
### Use Cases:
Active Users, Clobber Collector Deleted, Clobber Collector Deleted Activities, Collector Upgrade Activities, Collector Upgrade Requested, Distribution - Action Performed From Interface, Distribution By Existing Collector Type, Distribution By Existing Source Sync Mode, Distribution By Existing Source Type, Distribution Of Data Forwarding Destination, Distribution Of Data Forwarding Index, Distribution Of Data Source type, Distribution Of Destination Type, Distribution Of Existing Encryption for Amazon S3 Data Forwarding, Distribution Of Existing Format Type For Data Forwarding, Distribution Of Existing Status for Amazon S3 Data Forwarding, Ephemeral Collector Created, Ephemeral Collector Deleted, Geo Location, Index Disabled, One Day Time Shift Comparison, Recent - Collector Activities, Recent - Destination Activities, Recent - Index Activities, Recent - Sources Activity, Recent - Sources Added To Collector Using Local Configuration Management, Top Collectors With Sources Added, Top Users By Activities, Trend - Collector Activities, Trend - Collector Sources Activities, Trend - Collector Upgrade Success vs Failure, Trend - Data Forwarding Destination, Trend - Data Forwarding Index, Trend - Destination Type



## Parser:
```
| json "eventName", "operator.sourceIp" as EventName, UserIp nodrop
 `n```
### Use Cases:
Active Users, Clobber Collector Deleted, Clobber Collector Deleted Activities, Collector Upgrade Activities, Collector Upgrade Requested, Distribution - Action Performed From Interface, Distribution By Existing Collector Type, Distribution By Existing Source Sync Mode, Distribution By Existing Source Type, Ephemeral Collector Created, Ephemeral Collector Deleted, Geo Location, One Day Time Shift Comparison, Recent - Collector Activities, Recent - Sources Activity, Recent - Sources Added To Collector Using Local Configuration Management, Top Collectors With Sources Added, Top Users By Activities, Trend - Collector Activities, Trend - Collector Sources Activities, Trend - Collector Upgrade Success vs Failure



## Parser:
```
| json "eventTime", "eventName", "operator.id", "operator.email", "operator.sourceIp", "destinationIdentity.destinationName", "destinationIdentity.dataSourceType", "destination.destinationType","destination.enabled","destination.encrypted", "from", "to" as EventTime, eventName, UserId, User, UserIp, DestinationName, DataSourceType, DestinationType, Enabled, Encrypted, PreviousValue, CurrentValue nodrop
 `n```
### Use Cases:
Active Users, Clobber Collector Deleted, Clobber Collector Deleted Activities, Collector Upgrade Activities, Collector Upgrade Requested, Distribution - Action Performed From Interface, Distribution By Existing Collector Type, Distribution By Existing Source Sync Mode, Distribution By Existing Source Type, Distribution Of Data Forwarding Destination, Distribution Of Data Forwarding Index, Distribution Of Data Source type, Distribution Of Destination Type, Distribution Of Existing Encryption for Amazon S3 Data Forwarding, Distribution Of Existing Format Type For Data Forwarding, Distribution Of Existing Status for Amazon S3 Data Forwarding, Ephemeral Collector Created, Ephemeral Collector Deleted, Geo Location, Index Disabled, One Day Time Shift Comparison, Recent - Collector Activities, Recent - Destination Activities, Recent - Index Activities, Recent - Sources Activity, Recent - Sources Added To Collector Using Local Configuration Management, Top Collectors With Sources Added, Top Users By Activities, Trend - Collector Activities, Trend - Collector Sources Activities, Trend - Collector Upgrade Success vs Failure, Trend - Data Forwarding Destination, Trend - Data Forwarding Index, Trend - Destination Type



## Parser:
```
| json "eventTime", "eventName", "operator.id", "operator.email", "operator.sourceIp", "destinationIdentity.destinationName", "destinationIdentity.dataSourceType", "destination.destinationType","destination.enabled","destination.encrypted", "from", "to" as EventTime, eventName, UserId, User, UserIp, DestinationName, DataSourceType, DestinationType, Enabled, Encrypted, PreviousValue, CurrentValue nodrop
| json field=CurrentValue "destinationType", "enabled", "encrypted" as DestinationTypeUpdated, enabledUpdated, EncryptedUpdated nodrop
 `n```
### Use Cases:
Active Users, Clobber Collector Deleted, Clobber Collector Deleted Activities, Collector Upgrade Activities, Collector Upgrade Requested, Distribution - Action Performed From Interface, Distribution By Existing Collector Type, Distribution By Existing Source Sync Mode, Distribution By Existing Source Type, Distribution Of Data Forwarding Destination, Distribution Of Data Forwarding Index, Distribution Of Data Source type, Distribution Of Destination Type, Distribution Of Existing Encryption for Amazon S3 Data Forwarding, Distribution Of Existing Format Type For Data Forwarding, Distribution Of Existing Status for Amazon S3 Data Forwarding, Ephemeral Collector Created, Ephemeral Collector Deleted, Geo Location, Index Disabled, One Day Time Shift Comparison, Recent - Collector Activities, Recent - Destination Activities, Recent - Index Activities, Recent - Sources Activity, Recent - Sources Added To Collector Using Local Configuration Management, Top Collectors With Sources Added, Top Users By Activities, Trend - Collector Activities, Trend - Collector Sources Activities, Trend - Collector Upgrade Success vs Failure, Trend - Data Forwarding Destination, Trend - Data Forwarding Index, Trend - Destination Type


