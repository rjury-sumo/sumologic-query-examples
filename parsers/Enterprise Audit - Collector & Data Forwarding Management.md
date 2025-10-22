# Parsers For Enterprise Audit - Collector & Data Forwarding Management

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Collector Activities/Clobber Collector Deleted Activities**
```
_index=sumologic_audit_events _sourceCategory=collection (ClobberCollectorDeleted)
| json "eventName", "eventTime", "operator.email", "operator.id", "operator.sourceIp", "operator.interface", "collectorIdentity.collectorName", "collector.ephemeral", "collector.sourceSyncMode", "collector.collectorType",  "to", "from" as EventName, EventTime, UserEmail, UserId, UserIp, Interface, CollectorName, IsEphemeral, SourceSyncMode, CollectorType, CurrentValue, PreviousValue nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Collector Activities/Collector Upgrade Activities**
```
_index=sumologic_audit_events _sourceCategory=collection (CollectorUpgradeCompleted)
| json "eventName", "eventTime", "requestBy.userEmail", "requestBy.userId", "collectorIdentity.collectorName", "collector.ephemeral", "collector.sourceSyncMode", "to", "from", "fromVersion", "toVersion", "status" as EventName, EventTime, UserEmail, UserId, CollectorName, IsEphemeral, SourceSyncMode, CurrentValue, PreviousValue, FromVersion, ToVersion, UpgradeStatus nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Collector Activities/Geo Location**
```
_index=sumologic_audit_events _sourceCategory=collection (CollectorCreated OR CollectorUpdated OR CollectorDeleted OR EphemeralCollectorDeleted OR ClobberCollectorDeleted OR CollectorUpgradeRequested OR CollectorUpgradeCompleted)
| json "eventName", "eventTime", "operator.email", "operator.id", "operator.sourceIp", "operator.interface", "collectorIdentity.collectorName", "collector.ephemeral", "collector.sourceSyncMode", "collector.collectorType",  "to", "from", "requestBy.userId", "requestBy.userEmail" as EventName, EventTime, UserEmail, UserId, UserIp, Interface, CollectorName, IsEphemeral, SourceSyncMode, CollectorType, CurrentValue, PreviousValue, requestByUserId, requestByUserEmail nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Collector Activities/One Day Time Shift Comparison**
```
_index=sumologic_audit_events _sourceCategory=collection (CollectorCreated OR CollectorUpdated OR CollectorDeleted OR EphemeralCollectorDeleted OR ClobberCollectorDeleted OR CollectorUpgradeRequested OR CollectorUpgradeCompleted)
| json "eventName", "eventTime", "operator.email", "operator.id", "operator.sourceIp", "operator.interface", "collectorIdentity.collectorName", "collector.ephemeral", "collector.sourceSyncMode", "collector.collectorType",  "to", "from" as EventName, EventTime, UserEmail, UserId, UserIp, Interface, CollectorName, IsEphemeral, SourceSyncMode, CollectorType, CurrentValue, PreviousValue nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Collector Activities/Recent - Collector Activities**
```
_index=sumologic_audit_events _sourceCategory=collection (CollectorCreated OR CollectorUpdated OR CollectorDeleted)
| json "eventName", "eventTime", "operator.email", "operator.id", "operator.sourceIp", "operator.interface", "collectorIdentity.collectorName", "collector.ephemeral", "collector.sourceSyncMode", "collector.collectorType",  "to", "from" as EventName, EventTime, UserEmail, UserId, UserIp, Interface, CollectorName, IsEphemeral, SourceSyncMode, CollectorType, CurrentValue, PreviousValue nodrop
| where EventName in ("CollectorCreated", "CollectorUpdated", "CollectorDeleted")
| json field=CurrentValue "ephemeral", "sourceSyncMode", "collectorType" as UpdatedIsEphermal, UpdatedSourceSyncMode, UpdatedCollectorType nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Collector Activities/Top Users By Activities**
```
_index=sumologic_audit_events _sourceCategory=collection (CollectorCreated OR CollectorUpdated OR CollectorDeleted OR ClobberCollectorDeleted OR CollectorUpgradeCompleted)
| json "eventName", "eventTime", "operator.email", "operator.id", "operator.sourceIp", "operator.interface", "collectorIdentity.collectorName", "collector.ephemeral", "collector.sourceSyncMode", "collector.collectorType",  "to", "from", "requestBy.userId", "requestBy.userEmail" as EventName, EventTime, UserEmail, UserId, UserIp, Interface, CollectorName, IsEphemeral, SourceSyncMode, CollectorType, CurrentValue, PreviousValue, requestByUserId, requestByUserEmail nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Collector Management Overview/Clobber Collector Deleted**
```
_index=sumologic_audit_events _sourceCategory=collection (ClobberCollectorDeleted)
| json "eventName" as EventName nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Collector Management Overview/Collector Upgrade Requested**
```
_index=sumologic_audit_events _sourceCategory=collection (CollectorUpgradeRequested)
| json "eventName" as EventName nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Collector Management Overview/Distribution - Action Performed From Interface**
```
_index=sumologic_audit_events _sourceCategory=collection (CollectorCreated OR CollectorUpdated OR CollectorDeleted)
| json "eventName", "operator.interface" as EventName, ActivityInterface nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Collector Management Overview/Distribution By Existing Collector Type**
```
_index=sumologic_audit_events _sourceCategory=collection (CollectorCreated OR CollectorUpdated OR CollectorDeleted OR EphemeralCollectorDeleted OR ClobberCollectorDeleted)
| json "eventName", "collectorIdentity.collectorId", "collector.collectorType", "to.collectorType" as EventName, CollectorId, CollectorTypeCreated, UpdatedCollectorType nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Collector Management Overview/Distribution By Existing Source Sync Mode**
```
_index=sumologic_audit_events _sourceCategory=collection (CollectorCreated OR CollectorUpdated OR CollectorDeleted OR EphemeralCollectorDeleted OR ClobberCollectorDeleted)
| json "eventName", "collectorIdentity.collectorId", "collector.sourceSyncMode", "to.sourceSyncMode" as EventName, CollectorId, sourceSyncModeCreated, sourceSyncModeUpdated nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Collector Management Overview/Ephemeral Collector Created**
```
_index=sumologic_audit_events _sourceCategory=collection (CollectorCreated)
| json "eventName", "collector.ephemeral" as EventName, IsEphemeral nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Collector Management Overview/Ephemeral Collector Deleted**
```
_index=sumologic_audit_events _sourceCategory=collection (EphemeralCollectorDeleted)
| json "eventName" as EventName nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Collector Management Overview/Trend - Collector Activities**
```
_index=sumologic_audit_events _sourceCategory=collection (CollectorCreated OR CollectorUpdated OR CollectorDeleted OR CollectorUpgradeCompleted)
| json "eventName" as EventName nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Collector Management Overview/Trend - Collector Sources Activities**
```
_index=sumologic_audit_events _sourceCategory=collection (SourceCreated OR SourceUpdated OR SourceDeleted OR CollectorSourcesSynchronized)
| json "eventName" as EventName nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Collector Management Overview/Trend - Collector Upgrade Success vs Failure**
```
_index=sumologic_audit_events _sourceCategory=collection (CollectorUpgradeCompleted)
| json "eventName" as EventName nodrop
| where EventName in ("CollectorUpgradeCompleted")
| json "status" as Status
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Collector Sources Activities/Active Users**
```
_index=sumologic_audit_events _sourceCategory=collection (SourceCreated OR SourceUpdated OR SourceDeleted)
| json "eventName", "eventTime", "operator.email", "operator.id", "operator.sourceIp", "sourceIdentity.collectorName", "sourceIdentity.sourceName", "source", "to", "from" as EventName, EventTime, UserEmail, userId, UserIp, CollectorName, SourceName, SourceDetails, CurrentValue, PreviousValue nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Collector Sources Activities/Distribution By Existing Source Type**
```
_index=sumologic_audit_events _sourceCategory=collection (SourceCreated OR SourceUpdated OR SourceDeleted)
| json "eventName", "eventTime", "operator.email", "operator.id", "operator.sourceIp", "sourceIdentity.collectorName", "sourceIdentity.sourceName", "sourceIdentity.sourceId", "source", "to", "from" as EventName, EventTime, UserEmail, userId, UserIp, CollectorName, SourceName, SourceId, Source, CurrentValue, PreviousValue nodrop
| where EventName in ("SourceCreated", "SourceUpdated", "SourceDeleted")
| where EventName matches "{{EventName}}" and UserIp matches "{{UserIp}}" and UserEmail matches "{{UserEmail}}" and CollectorName matches "{{CollectorName}}"
| if(isNull(Source), if (isNull(CurrentValue), "-", CurrentValue), Source) as Source
|parse field=Source "\"sourceType\":\"*\"" as SourceType 
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Collector Sources Activities/Geo Location**
```
_index=sumologic_audit_events _sourceCategory=collection (SourceCreated OR SourceUpdated OR SourceDeleted OR CollectorSourcesSynchronized)
| json "eventName", "eventTime", "operator.email", "operator.id", "operator.sourceIp", "sourceIdentity.collectorName", "sourceIdentity.sourceName", "source", "to", "from" as EventName, EventTime, UserEmail, userId, UserIp, CollectorName, SourceName, SourceDetails, CurrentValue, PreviousValue nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Collector Sources Activities/One Day Time Shift Comparison**
```
_index=sumologic_audit_events _sourceCategory=collection (SourceCreated OR SourceUpdated OR SourceDeleted)
| json "eventName", "eventTime", "operator.email", "operator.id", "operator.sourceIp", "sourceIdentity.collectorName", "sourceIdentity.sourceName", "source", "to", "from" as EventName, EventTime, UserEmail, userId, UserIp, CollectorName, SourceName, SourceDetails, CurrentValue, PreviousValue nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Collector Sources Activities/Recent - Sources Activity**
```
_index=sumologic_audit_events _sourceCategory=collection (SourceCreated OR SourceUpdated OR SourceDeleted)
| json "eventName", "eventTime", "operator.email", "operator.id", "operator.sourceIp", "sourceIdentity.collectorName", "sourceIdentity.sourceName", "source", "to", "from" as EventName, EventTime, UserEmail, userId, UserIp, CollectorName, SourceName, SourceDetails, CurrentValue, PreviousValue nodrop
| where EventName in ("SourceCreated", "SourceUpdated", "SourceDeleted")
| json field=SourceDetails "sourceType" as SourceTypeCreated nodrop
| json field=CurrentValue "sourceType" as SourceTypeUpdated nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Collector Sources Activities/Recent - Sources Added To Collector Using Local Configuration Management**
```
_index=sumologic_audit_events _sourceCategory=collection (CollectorSourcesSynchronized)
| json "eventName", "eventTime", "operator.email", "operator.id", "operator.sourceIp", "collectorIdentity.collectorName", "sourcesAdded", "sourcesUpdated","sourcesDeleted",  "sourceIdentity.sourceName"  as EventName, EventTime, UserEmail, UserId, UserIp, CollectorName, SourcesAdded, SourcesUpdated, SourcesDeleted ,SourceName nodrop
| where EventName="CollectorSourcesSynchronized"
| parse field=SourcesAdded "[*]" as SourcesAdded nodrop
| replace(SourcesAdded, "\"", "") as SourcesAdded
| replace(SourcesAdded, "[]", "-") as SourcesAdded
| parse field=SourcesUpdated "[*]" as SourcesUpdated nodrop
| replace(SourcesUpdated, "\"", "") as SourcesUpdated
| replace(SourcesUpdated, "[]", "-") as SourcesUpdated
| parse field=SourcesDeleted "[*]" as SourcesDeleted nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Collector Sources Activities/Top Collectors With Sources Added**
```
_index=sumologic_audit_events _sourceCategory=collection SourceCreated
| json "eventName", "eventTime", "operator.email", "operator.id", "operator.sourceIp", "sourceIdentity.collectorName", "sourceIdentity.sourceName", "source", "to", "from" as EventName, EventTime, UserEmail, userId, UserIp, CollectorName, SourceName, SourceDetails, CurrentValue, PreviousValue nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Data Forwarding Destination Activities - New/Active Users**
```
_index=sumologic_audit_events _sourceCategory=dataForwarding (DataForwardingDestinationCreated OR DataForwardingDestinationUpdated OR DataForwardingDestinationDeleted)
| json "eventName", "eventTime", "operator.email" as EventName, EventTime, User nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Data Forwarding Destination Activities - New/Geo Location**
```
_index=sumologic_audit_events _sourceCategory=dataForwarding (DataForwardingDestinationCreated OR DataForwardingDestinationUpdated OR DataForwardingDestinationDeleted)
| json "eventName", "operator.sourceIp" as EventName, UserIp nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Data Forwarding Destination Activities - New/One Day Time Shift Comparison**
```
_index=sumologic_audit_events _sourceCategory=dataForwarding (DataForwardingDestinationCreated OR DataForwardingDestinationUpdated OR DataForwardingDestinationDeleted)
| json "eventName" as EventName nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Data Forwarding Destination Activities - New/Recent - Destination Activities**
```
_index=sumologic_audit_events _sourceCategory=dataForwarding (DataForwardingDestinationCreated OR DataForwardingDestinationUpdated OR DataForwardingDestinationDeleted)
| json "eventTime", "eventName", "operator.id", "operator.email", "operator.sourceIp", "destinationIdentity.destinationName", "destinationIdentity.dataSourceType", "destination.destinationType","destination.enabled","destination.encrypted", "from", "to" as EventTime, eventName, UserId, User, UserIp, DestinationName, DataSourceType, DestinationType, Enabled, Encrypted, PreviousValue, CurrentValue nodrop
| json field=CurrentValue "destinationType", "enabled", "encrypted" as DestinationTypeUpdated, enabledUpdated, EncryptedUpdated nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Data Forwarding Destination Activities - New/Trend - Data Forwarding Destination**
```
_index=sumologic_audit_events _sourceCategory=dataForwarding (DataForwardingDestinationCreated OR DataForwardingDestinationUpdated OR DataForwardingDestinationDeleted)
| json "eventName" as EventName nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Data Forwarding Destination Activities/Active Users**
```
_index=sumologic_audit_events _sourceCategory=dataForwarding (DataForwardingDestinationCreated OR DataForwardingDestinationUpdated OR DataForwardingDestinationDeleted)
| json "eventTime", "eventName", "operator.id", "operator.email", "operator.sourceIp", "destinationIdentity.destinationName", "destinationIdentity.dataSourceType", "destination.destinationType","destination.enabled","destination.encrypted", "from", "to" as EventTime, eventName, UserId, User, UserIp, DestinationName, DataSourceType, DestinationType, Enabled, Encrypted, PreviousValue, CurrentValue nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Data Forwarding Destination Activities/Geo Location**
```
_index=sumologic_audit_events _sourceCategory=dataForwarding (DataForwardingDestinationCreated OR DataForwardingDestinationUpdated OR DataForwardingDestinationDeleted)
| json "eventTime", "eventName", "operator.id", "operator.email", "operator.sourceIp", "destinationIdentity.destinationName", "destinationIdentity.dataSourceType", "destination.destinationType","destination.enabled","destination.encrypted", "from", "to" as EventTime, eventName, UserId, User, UserIp, DestinationName, DataSourceType, DestinationType, Enabled, Encrypted, PreviousValue, CurrentValue nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Data Forwarding Destination Activities/One Day Time Shift Comparison**
```
_index=sumologic_audit_events _sourceCategory=dataForwarding (DataForwardingDestinationCreated OR DataForwardingDestinationUpdated OR DataForwardingDestinationDeleted)
| json "eventTime", "eventName", "operator.id", "operator.email", "operator.sourceIp", "destinationIdentity.destinationName", "destinationIdentity.dataSourceType", "destination.destinationType","destination.enabled","destination.encrypted", "from", "to" as EventTime, eventName, UserId, User, UserIp, DestinationName, DataSourceType, DestinationType, Enabled, Encrypted, PreviousValue, CurrentValue nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Data Forwarding Destination Activities/Recent - Destination Activities**
```
_index=sumologic_audit_events _sourceCategory=dataForwarding (DataForwardingDestinationCreated OR DataForwardingDestinationUpdated OR DataForwardingDestinationDeleted)
| json "eventTime", "eventName", "operator.id", "operator.email", "operator.sourceIp", "destinationIdentity.destinationName", "destinationIdentity.dataSourceType", "destination.destinationType","destination.enabled","destination.encrypted", "from", "to" as EventTime, eventName, UserId, User, UserIp, DestinationName, DataSourceType, DestinationType, Enabled, Encrypted, PreviousValue, CurrentValue nodrop
| json field=CurrentValue "destinationType", "enabled", "encrypted" as DestinationTypeUpdated, enabledUpdated, EncryptedUpdated nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Data Forwarding Destination Activities/Trend - Data Forwarding Destination**
```
_index=sumologic_audit_events _sourceCategory=dataForwarding (DataForwardingDestinationCreated OR DataForwardingDestinationUpdated OR DataForwardingDestinationDeleted)
| json "eventTime", "eventName", "operator.id", "operator.email", "operator.sourceIp", "destinationIdentity.destinationName", "destinationIdentity.dataSourceType", "destination.destinationType","destination.enabled","destination.encrypted", "from", "to" as EventTime, eventName, UserId, User, UserIp, DestinationName, DataSourceType, DestinationType, Enabled, Encrypted, PreviousValue, CurrentValue nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Data Forwarding Index Activities/Active Users**
```
_index=sumologic_audit_events _sourceCategory=dataForwarding (DataForwardingForIndexEnabled OR DataForwardingForIndexUpdated OR DataForwardingForIndexDisabled)
| json "eventName", "eventTime", "indexName", "operator.email", "operator.id", "operator.sourceIp", "dataForwarding", "from", "to" as EventName, EventTime, IndexName, User, UserId, UserIp, dataForwarding, PreviousValue, CurrentValue nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Data Forwarding Index Activities/Geo Location**
```
_index=sumologic_audit_events _sourceCategory=dataForwarding (DataForwardingForIndexEnabled OR DataForwardingForIndexUpdated OR DataForwardingForIndexDisabled)
| json "eventName", "eventTime", "indexName", "operator.email", "operator.id", "operator.sourceIp", "dataForwarding", "from", "to" as EventName, EventTime, IndexName, User, UserId, UserIp, dataForwarding, PreviousValue, CurrentValue nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Data Forwarding Index Activities/Index Disabled**
```
_index=sumologic_audit_events _sourceCategory=dataForwarding DataForwardingForIndexDisabled
| json "eventName", "eventTime", "indexName", "operator.email", "operator.id", "operator.sourceIp", "dataForwarding", "from", "to" as EventName, EventTime, IndexName, User, UserId, UserIp, dataForwarding, PreviousValue, CurrentValue nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Data Forwarding Index Activities/One Day Time Shift Comparison**
```
_index=sumologic_audit_events _sourceCategory=dataForwarding (DataForwardingForIndexEnabled OR DataForwardingForIndexUpdated OR DataForwardingForIndexDisabled)
| json "eventName", "eventTime", "indexName", "operator.email", "operator.id", "operator.sourceIp", "dataForwarding", "from", "to" as EventName, EventTime, IndexName, User, UserId, UserIp, dataForwarding, PreviousValue, CurrentValue nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Data Forwarding Index Activities/Recent - Index Activities**
```
_index=sumologic_audit_events _sourceCategory=dataForwarding (DataForwardingForIndexEnabled OR DataForwardingForIndexUpdated OR DataForwardingForIndexDisabled)
| json "eventName", "eventTime", "indexName", "operator.email", "operator.id", "operator.sourceIp", "dataForwarding", "from", "to" as EventName, EventTime, IndexName, User, UserId, UserIp, dataForwarding, PreviousValue, CurrentValue nodrop
| json field=dataForwarding "destinationIdentity.destinationName", "destinationIdentity.dataSourceType", "format" as NameCreated, SourceCreated, formatCreated nodrop
| json field=CurrentValue "destinationIdentity.destinationName", "destinationIdentity.dataSourceType", "format" as NameUpdated, SourceUpdated, formatUpdated nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Data Forwarding Index Activities/Trend - Data Forwarding Index**
```
_index=sumologic_audit_events _sourceCategory=dataForwarding (DataForwardingForIndexEnabled OR DataForwardingForIndexUpdated OR DataForwardingForIndexDisabled)
| json "eventName", "eventTime", "indexName", "operator.email", "operator.id", "operator.sourceIp", "dataForwarding", "from", "to" as EventName, EventTime, IndexName, User, UserId, UserIp, dataForwarding, PreviousValue, CurrentValue nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Data Forwarding Management Overview/Distribution Of Data Forwarding Destination**
```
_index=sumologic_audit_events _sourceCategory=dataForwarding (DataForwardingDestinationCreated OR DataForwardingDestinationUpdated OR DataForwardingDestinationDeleted)
| json "eventName" as EventName nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Data Forwarding Management Overview/Distribution Of Data Forwarding Index**
```
_index=sumologic_audit_events _sourceCategory=dataForwarding (DataForwardingForIndexEnabled OR DataForwardingForIndexUpdated OR DataForwardingForIndexDisabled)
| json "eventName" as EventName nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Data Forwarding Management Overview/Distribution Of Data Source type**
```
_index=sumologic_audit_events _sourceCategory=dataForwarding DataForwardingDestinationCreated
| json "eventName", "destinationIdentity.dataSourceType" as EventName, DataSourceType nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Data Forwarding Management Overview/Distribution Of Destination Type**
```
_index=sumologic_audit_events _sourceCategory=dataForwarding DataForwardingDestinationCreated
| json "eventName", "destination.destinationType" as EventName, DestinationType nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Data Forwarding Management Overview/Distribution Of Existing Encryption for Amazon S3 Data Forwarding**
```
_index=sumologic_audit_events _sourceCategory=dataForwarding (DataForwardingDestinationCreated OR DataForwardingDestinationUpdated OR DataForwardingDestinationDeleted)
| json "eventName", "destinationIdentity.destinationId", "destination.encrypted", "to.encrypted" as EventName, destinationId, CreatedEncrypted, UpdatedEncrypted nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Data Forwarding Management Overview/Distribution Of Existing Format Type For Data Forwarding**
```
_index=sumologic_audit_events _sourceCategory=dataForwarding (DataForwardingForIndexEnabled OR DataForwardingForIndexUpdated OR DataForwardingForIndexDisabled)
| json "eventName", "indexName", "dataForwarding.format", "to.format" as EventName, IndexName, CreatedFormatType, updatedFormatType nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Data Forwarding Management Overview/Distribution Of Existing Status for Amazon S3 Data Forwarding**
```
_index=sumologic_audit_events _sourceCategory=dataForwarding (DataForwardingDestinationCreated OR DataForwardingDestinationUpdated OR DataForwardingDestinationDeleted)
| json "eventName", "destinationIdentity.destinationId", "destination.enabled", "to.enabled" as EventName, destinationId, CreatedEnabled,UpdatedEnabled nodrop
```

**Enterprise Audit - Collector & Data Forwarding Management/Enterprise Audit - Data Forwarding Management Overview/Trend - Destination Type**
```
_index=sumologic_audit_events _sourceCategory=dataForwarding DataForwardingDestinationCreated
| json "eventName", "destination.destinationType" as EventName, DestinationType nodrop
```


