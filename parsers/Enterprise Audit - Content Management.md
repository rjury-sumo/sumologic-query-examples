# Parsers For Enterprise Audit - Content Management

**Enterprise Audit - Content Management/Enterprise Audit - Content Management Overview - New/Activities Over Time**
```
_index=sumologic_audit_events _sourceCategory=content (ContentCreated OR ContentDeleted OR ContentImported OR ContentExported OR ContentUpdated OR ContentMoved OR ContentCopied)
| json "adminMode", "eventName" as AdminMode, EventName nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Content Management Overview - New/Application Installed**
```
_index=sumologic_audit_events _sourceCategory=content ApplicationInstalled
| json "eventName" as EventName nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Content Management Overview - New/Content by Permission Added**
```
_index=sumologic_audit_events _sourceCategory=content ContentPermissionsUpdated
| json "eventName", "contentIdentity.name","permissionsAdded" as EventName, ContentName, permissionsAdded nodrop
| where EventName="ContentPermissionsUpdated"
| parse regex field=permissionsAdded "(?<json_added_blob>\{[^\}]+(?:\}\}|\}))" multi nodrop
| json field=json_added_blob "permissionSourceType" as TargetPermissionSourceType
```

**Enterprise Audit - Content Management/Enterprise Audit - Content Management Overview - New/Content by Permission Deleted**
```
_index=sumologic_audit_events _sourceCategory=content ContentPermissionsUpdated
| json "eventName", "contentIdentity.name","permissionsDeleted" as EventName, ContentName, permissionsDeleted nodrop
| where EventName="ContentPermissionsUpdated"
| parse regex field=permissionsDeleted "(?<json_deleted_blob>\{[^\}]+(?:\}\}|\}))" multi nodrop
| json field=json_deleted_blob "permissionSourceType" as TargetPermissionSourceType
```

**Enterprise Audit - Content Management/Enterprise Audit - Content Management Overview - New/Content Exported**
```
_index=sumologic_audit_events _sourceCategory=content ContentExported
| json "eventName" as EventName nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Content Management Overview - New/Content made Visible to Public**
```
_index=sumologic_audit_events _sourceCategory=content ContentPublicVisibilityUpdated
| json "eventName" as EventName nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Content Management Overview - New/Content Publicly Accessed**
```
_index=sumologic_audit_events _sourceCategory=content ContentPubliclyAccessed
| json "eventName" as EventName nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Content Management Overview - New/Top Application Installed**
```
_index=sumologic_audit_events _sourceCategory=content ApplicationInstalled
| json "eventName", "application.name" as EventName, ApplicationName nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Content Management Overview - New/Top Content Copied**
```
_index=sumologic_audit_events _sourceCategory=content ContentCopied
| json "eventName", "adminMode", "contentIdentity.name" as EventName, AdminMode, ContentName nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Content Management Overview - New/Top Content Exported**
```
_index=sumologic_audit_events _sourceCategory=content ContentExported
| json "eventName", "adminMode", "contentIdentity.name" as EventName, AdminMode, ContentName nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Content Management Overview - New/Top Content Made Visible to public**
```
_index=sumologic_audit_events _sourceCategory=content ContentPublicVisibilityUpdated
| json "eventName", "contentIdentity.name", "to" as EventName, ContentName, VisibleTo nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Content Management Overview - New/Top Content Publicly Accessed**
```
_index=sumologic_audit_events _sourceCategory=content ContentPubliclyAccessed
| json "eventName", "contentIdentity.name" as EventName, ContentName nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Content Management Overview - New/Top Users**
```
_index=sumologic_audit_events _sourceCategory=content (ContentCreated OR ContentDeleted OR ContentImported OR ContentExported OR ContentUpdated OR ContentMoved OR ContentCopied)
| json "adminMode", "eventName", "operator.email" as AdminMode, EventName, User nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Content Management Overview - New/Users in Admin Mode**
```
_index=sumologic_audit_events (_sourceCategory=content OR _sourceCategory=userSessions) (AdminModeEnabled OR AdminModeDisabled OR UserLoginTimedOut)
| json "eventName", "operator.email", "sessionIdentity.userEmail" as EventName, UserEmail, TimedOutUser nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Content Management Overview/Activities Over Time**
```
_index=sumologic_audit_events _sourceCategory=content (ContentCreated OR ContentDeleted OR ContentImported OR ContentExported OR ContentUpdated OR ContentMoved OR ContentCopied OR ContentImportCompleted OR ContentAsynchronousExportCompleted)
| json "adminMode", "eventName" as AdminMode, EventName nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Content Management Overview/Application Installed**
```
_index=sumologic_audit_events _sourceCategory=content ApplicationInstalled
| json "eventName" as EventName nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Content Management Overview/Content by Permission Added**
```
_index=sumologic_audit_events _sourceCategory=content ContentPermissionsUpdated
| json "eventName", "contentIdentity.name","permissionsAdded" as EventName, ContentName, permissionsAdded nodrop
| where EventName="ContentPermissionsUpdated"
| parse regex field=permissionsAdded "(?<json_added_blob>\{.+?(?:\}\}|\]\}))" multi nodrop
| where !isBlank(json_added_blob)
| json field=json_added_blob "permissionSourceType" as TargetPermissionSourceType
```

**Enterprise Audit - Content Management/Enterprise Audit - Content Management Overview/Content by Permission Deleted**
```
_index=sumologic_audit_events _sourceCategory=content ContentPermissionsUpdated
| json "eventName", "contentIdentity.name","permissionsDeleted" as EventName, ContentName, permissionsDeleted nodrop
| where EventName="ContentPermissionsUpdated"
| parse regex field=permissionsDeleted "(?<json_deleted_blob>\{.+(?:\}\}|\}))" multi nodrop
| json field=json_deleted_blob "permissionSourceType" as TargetPermissionSourceType
```

**Enterprise Audit - Content Management/Enterprise Audit - Content Management Overview/Content Exported**
```
_index=sumologic_audit_events _sourceCategory=content (ContentExported OR ContentAsynchronousExportCompleted)
| json "eventName" as EventName nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Content Management Overview/Content made Visible to Public**
```
_index=sumologic_audit_events _sourceCategory=content ContentPublicVisibilityUpdated
| json "eventName" as EventName nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Content Management Overview/Content Publicly Accessed**
```
_index=sumologic_audit_events _sourceCategory=content ContentPubliclyAccessed
| json "eventName" as EventName nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Content Management Overview/Top Application Installed**
```
_index=sumologic_audit_events _sourceCategory=content ApplicationInstalled
| json "eventName", "application.name" as EventName, ApplicationName nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Content Management Overview/Top Content Copied**
```
_index=sumologic_audit_events _sourceCategory=content ContentCopied
| json "eventName", "adminMode", "contentIdentity.name" as EventName, AdminMode, ContentName nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Content Management Overview/Top Content Exported**
```
_index=sumologic_audit_events _sourceCategory=content (ContentExported OR ContentAsynchronousExportCompleted)
| json "eventName", "adminMode", "contentIdentity.name" as EventName, AdminMode, ContentName nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Content Management Overview/Top Content Made Visible to public**
```
_index=sumologic_audit_events _sourceCategory=content  ContentPublicVisibilityUpdated
| json "eventName", "contentIdentity.name", "to" as EventName, ContentName, VisibleTo nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Content Management Overview/Top Content Publicly Accessed**
```
_index=sumologic_audit_events _sourceCategory=content ContentPubliclyAccessed
| json "eventName", "contentIdentity.name" as EventName, ContentName nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Content Management Overview/Top Users**
```
_index=sumologic_audit_events _sourceCategory=content (ContentCreated OR ContentDeleted OR ContentImported OR ContentExported OR ContentUpdated OR ContentMoved OR ContentCopied OR ContentImportCompleted OR ContentAsynchronousExportCompleted)
| json "adminMode", "eventName", "operator.email" as AdminMode, EventName, User nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Content Management Overview/Users in Admin Mode**
```
_index=sumologic_audit_events (_sourceCategory=content OR _sourceCategory=userSessions) (AdminModeEnabled OR AdminModeDisabled OR UserLoginTimedOut)
| json "eventName", "operator.email", "sessionIdentity.userEmail" as EventName, UserEmail, TimedOutUser nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Created, Deleted, Exported, Imported Content/Geo Location - Admin Mode**
```
_index=sumologic_audit_events _sourceCategory=content and (ContentCreated OR ContentDeleted OR ContentExported OR ContentImported OR ContentAsynchronousDeletionCompleted OR ContentImportCompleted OR ContentAsynchronousExportCompleted)
| json "eventName", "adminMode", "operator.sourceIp"as EventName, AdminMode, UserIp nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Created, Deleted, Exported, Imported Content/Geo Location - User Mode**
```
_index=sumologic_audit_events _sourceCategory=content and (ContentCreated OR ContentDeleted OR ContentExported OR ContentImported OR ContentAsynchronousDeletionCompleted OR ContentImportCompleted OR ContentAsynchronousExportCompleted)
| json "eventName", "adminMode", "operator.sourceIp"as EventName, AdminMode, UserIp nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Created, Deleted, Exported, Imported Content/Imported**
```
_index=sumologic_audit_events _sourceCategory=content and (ContentCreated OR ContentDeleted OR ContentExported OR ContentImported OR ContentImportCompleted OR ContentAsynchronousExportCompleted)
| json "eventName", "eventTime", "adminMode", "contentIdentity.name", "contentIdentity.type", "operator.email", "operator.id", "operator.sourceIp" as EventName, EventTime, AdminMode, ContentName, ContentType, UserEmail, UserId, UserIp nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Created, Deleted, Exported, Imported Content/Top Content Type - Admin Mode**
```
_index=sumologic_audit_events _sourceCategory=content (ContentCreated OR ContentDeleted OR ContentExported OR ContentImported OR ContentAsynchronousDeletionCompleted OR ContentAsynchronousExportCompleted OR ContentImportCompleted)
| json "eventName", "adminMode", "contentIdentity.type","operator.sourceIp" as EventName, AdminMode, ContentType, UserIp nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Created, Deleted, Exported, Imported Content/Top Content Type - User Mode**
```
_index=sumologic_audit_events _sourceCategory=content (ContentCreated OR ContentDeleted OR ContentExported OR ContentImported OR ContentAsynchronousDeletionCompleted OR ContentImportCompleted OR ContentAsynchronousExportCompleted)
| json "eventName", "adminMode", "contentIdentity.type", "operator.sourceIp" as EventName, AdminMode, ContentType, UserIp nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Created, Deleted, Exported, Imported Content/Top Users - Admin Mode**
```
_index=sumologic_audit_events _sourceCategory=content (ContentCreated OR ContentDeleted OR ContentExported OR ContentImported OR ContentAsynchronousDeletionCompleted OR ContentImportCompleted OR ContentAsynchronousExportCompleted)
| json "eventName", "adminMode", "operator.sourceIp" as EventName, AdminMode, UserIp nodrop
| where EventName in ("ContentCreated", "ContentDeleted", "ContentExported", "ContentImported", "ContentImportCompleted", "ContentAsynchronousExportCompleted", "ContentAsynchronousDeletionCompleted") AND AdminMode="true"
| json "operator.email", "contentIdentity.type" as UserEmail, ContentType nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Created, Deleted, Exported, Imported Content/Top Users - User Mode**
```
_index=sumologic_audit_events _sourceCategory=content (ContentCreated OR ContentDeleted OR ContentExported OR ContentImported OR ContentImportCompleted OR ContentAsynchronousDeletionCompleted OR ContentImportCompleted OR ContentAsynchronousExportCompleted)
| json "eventName", "adminMode", "operator.sourceIp"as EventName, AdminMode, UserIp nodrop
| where EventName in ("ContentCreated", "ContentDeleted", "ContentExported", "ContentImported", "ContentImportCompleted", "ContentAsynchronousExportCompleted", "ContentAsynchronousDeletionCompleted") AND AdminMode="false"
| json "operator.email", "contentIdentity.type" as UserEmail, ContentType nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Created, Deleted, Exported, Imported Content/Trend - Admin Mode**
```
_index=sumologic_audit_events _sourceCategory=content and (ContentCreated OR ContentDeleted OR ContentExported OR ContentImported OR ContentAsynchronousDeletionCompleted OR ContentImportCompleted OR ContentAsynchronousExportCompleted)
| json "eventName", "adminMode", "operator.sourceIp"as EventName, AdminMode, UserIp nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Created, Deleted, Exported, Imported Content/Trend - User Mode**
```
_index=sumologic_audit_events _sourceCategory=content and (ContentCreated OR ContentDeleted OR ContentExported OR ContentImported OR ContentAsynchronousExportCompleted OR ContentImportCompleted OR ContentAsynchronousExportCompleted)
| json "eventName", "adminMode", "operator.sourceIp"as EventName, AdminMode, UserIp nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Field Extraction Rule Activities/Active Users**
```
_index=sumologic_audit_events _sourceCategory=fieldExtractionRules (FieldExtractionRuleCreated OR FieldExtractionRuleUpdated OR FieldExtractionRuleDeleted)
| json "eventName", "operator.email" as EventName, User nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Field Extraction Rule Activities/Active vs InActive FER**
```
_index=sumologic_audit_events _sourceCategory=fieldExtractionRules (FieldExtractionRuleCreated OR FieldExtractionRuleUpdated OR FieldExtractionRuleDeleted)
| json "eventName", "fieldExtractionRuleIdentity.fieldExtractionRuleId", "fieldExtractionRule.enabled", "to.enabled","operator.email" as EventName, FieldExtractionRuleId, CreatedEnabled, UpdatedEnabled, User nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Field Extraction Rule Activities/Geo Location of Events**
```
_index=sumologic_audit_events _sourceCategory=fieldExtractionRules (FieldExtractionRuleCreated OR FieldExtractionRuleUpdated OR FieldExtractionRuleDeleted)
| json "eventName", "operator.sourceIp","operator.email" as EventName, UserIp, User nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Field Extraction Rule Activities/One Day Time Shift Comparison**
```
_index=sumologic_audit_events _sourceCategory=fieldExtractionRules (FieldExtractionRuleCreated OR FieldExtractionRuleUpdated OR FieldExtractionRuleDeleted)
| json "eventName", "operator.email" as EventName, User nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Field Extraction Rule Activities/Recent Events - Field Extraction Rule Events**
```
_index=sumologic_audit_events _sourceCategory=fieldExtractionRules (FieldExtractionRuleCreated OR FieldExtractionRuleUpdated OR FieldExtractionRuleDeleted)
| json "eventName", "eventTime", "operator.email", "operator.id", "operator.sourceIp", "fieldExtractionRuleIdentity.fieldExtractionRuleId", "fieldExtractionRuleIdentity.fieldExtractionRuleName", "fieldExtractionRule.enabled", "fieldExtractionRule.fieldNames", "to", "from" as EventName, EventTime, User, UserId, UserIp, FieldExtractionRuleId, FieldExtractionRuleName, IsActive, createdfieldnames, CurrentValue, PreviousValue nodrop
| json field=CurrentValue "enabled", "fieldNames" as ActiveUpdated, fieldNamesUpdated nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Field Extraction Rule Activities/Trend - Field Extraction Rules**
```
_index=sumologic_audit_events _sourceCategory=fieldExtractionRules (FieldExtractionRuleCreated OR FieldExtractionRuleUpdated OR FieldExtractionRuleDeleted)
| json "eventName", "operator.email" as EventName, User nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Permission Updated, Synchronized/Failure Over Time**
```
_index=sumologic_audit_events _sourceCategory=content ContentSynchronizationCompleted
| json "eventName", "status","syncRequest.requestBy.userEmail", "contentIdentity.name" as EventName, Status,  UserEmail, ContentName  nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Permission Updated, Synchronized/Permission Added Over Time by Source Type**
```
_index=sumologic_audit_events _sourceCategory=content ContentPermissionsUpdated
| json "eventName", "permissionsAdded", "contentIdentity.name", "operator.email" as EventName, permissionsAdded,  ContentName, UserEmail nodrop
| where EventName="ContentPermissionsUpdated"
| parse regex field=permissionsAdded  "(?<json_added_blob>\{.+?(?:\}\}|\]\}))" multi nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Permission Updated, Synchronized/Permission Deleted Over Time by Source Type**
```
_index=sumologic_audit_events _sourceCategory=content ContentPermissionsUpdated
| json "eventName", "permissionsDeleted", "contentIdentity.name", "operator.email"  as EventName, permissionsDeleted,  ContentName, UserEmail nodrop
| where EventName="ContentPermissionsUpdated"
| parse regex field=permissionsDeleted "(?<json_added_blob>\{.+?(?:\}\}|\]\}))" multi nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Permission Updated, Synchronized/Recent - Content Synchronization**
```
_index=sumologic_audit_events _sourceCategory=content ContentSynchronizationCompleted
| json "eventName", "eventTime", "status", "syncRequest.requestBy.userEmail", "syncRequest.contentNameToSynchronize", "syncRequest.parentFolder.name", "contentIdentity.name" as EventName, EventTime, Status, RequestedBy, ContentToSynchronize, FolderName, ContentName  nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Permission Updated, Synchronized/Recent - Permissions Added to Content**
```
_index=sumologic_audit_events _sourceCategory=content ContentPermissionsUpdated
| json "eventName", "eventTime", "contentIdentity.name", "contentIdentity.type", "operator.email", "permissionsAdded" as EventName, EventTime, ContentName, ContentType, UserEmail, permissionsAdded nodrop
| where EventName="ContentPermissionsUpdated"
| parse regex field=permissionsAdded "(?<json_added_blob>\{.+?(?:\}\}|\]\}))" multi nodrop
|where !isBlank(json_added_blob) 
|json field=json_added_blob "permissionSourceType" as TargetPermissionSourceType nodrop //
| json field=json_added_blob "permissions", "roleIdentity.roleName", "userIdentity.userEmail" as PermissionsAdded, RoleName, TargetUserEmail nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Permission Updated, Synchronized/Recent - Permissions Deleted from Content**
```
_index=sumologic_audit_events _sourceCategory=content ContentPermissionsUpdated
| json "eventName", "eventTime", "contentIdentity.name", "contentIdentity.type", "operator.email", "permissionsDeleted" as EventName, EventTime, ContentName, ContentType, UserEmail, permissionsDeleted nodrop
| where EventName="ContentPermissionsUpdated"
| parse regex field=permissionsDeleted "(?<json_deleted_blob>\{.+?(?:\}\}|\]\}))" multi nodrop
| where !isBlank(json_deleted_blob) 
|json field=json_deleted_blob "permissionSourceType" as TargetPermissionSourceType nodrop //
| json field=json_deleted_blob "permissions", "roleIdentity.roleName", "userIdentity.userEmail" as PermissionsDeleted, RoleName, TargetUserEmail nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Permission Updated, Synchronized/Top Content Requested to Synchronize**
```
_index=sumologic_audit_events _sourceCategory=content ContentSynchronizationRequested
| json "eventName", "syncRequest.contentNameToSynchronize","contentIdentity.name", "syncRequest.requestBy.userEmail" as EventName, ContentToSynchronize, ContentName, UserEmail
```

**Enterprise Audit - Content Management/Enterprise Audit - Permission Updated, Synchronized/Top Content with Permission Updated**
```
_index=sumologic_audit_events _sourceCategory=content ContentPermissionsUpdated
| json "eventName", "contentIdentity.name", "operator.email" as EventName, ContentName, UserEmail  nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Permission Updated, Synchronized/Top Users to Request for Synchronization**
```
_index=sumologic_audit_events _sourceCategory=content ContentSynchronizationRequested
| json "eventName", "syncRequest.requestBy.userEmail", "contentIdentity.name" as EventName, UserEmail, ContentName  nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Permission Updated, Synchronized/Top Users Updating Permissions on Content**
```
_index=sumologic_audit_events _sourceCategory=content ContentPermissionsUpdated
| json "eventName", "contentIdentity.name", "operator.email" as EventName, ContentName, UserEmail  nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Publicly Accessed, Application Installed/Geo Location - Content Publicly Accessed**
```
_index=sumologic_audit_events _sourceCategory=content ContentPubliclyAccessed
| json "eventName", "operator.email", "contentIdentity.type","viewerIp" as EventName, UserEmail, ContentName, UserIp  nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Publicly Accessed, Application Installed/Geo Locations - Application Installed**
```
_index=sumologic_audit_events _sourceCategory=content and ApplicationInstalled
| json "eventName", "operator.email", "contentIdentity.type"  as EventName, UserEmail, ContentName  nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Publicly Accessed, Application Installed/One Day Time Shift Comparison**
```
_index=sumologic_audit_events _sourceCategory=content and (ContentPublicVisibilityUpdated OR ContentPubliclyAccessed OR ApplicationInstalled)
| json "eventName", "operator.email", "contentIdentity.type"  as EventName, UserEmail, ContentName  nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Publicly Accessed, Application Installed/Recent - Application Installed**
```
_index=sumologic_audit_events _sourceCategory=content ApplicationInstalled
| json "eventName", "eventTime", "application.name", "dataSources","operator.email", "contentIdentity.type" as EventName, EventTime, ApplicationName, DataSources, UserEmail, ContentName nodrop
| where EventName="ApplicationInstalled"
| where EventName matches "{{EventName}}" and UserEmail matches "{{UserEmail}}" and ContentName matches "{{ContentName}}"
| parse regex field=DataSources "\"(?<LogSourceType>.*?)\":\"(?<LogSource>.*?)\"" multi nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Publicly Accessed, Application Installed/Recent - Content Publicly Accessed**
```
_index=sumologic_audit_events _sourceCategory=content ContentPubliclyAccessed
| json "eventName", "eventTime", "contentIdentity.name", "contentIdentity.type", "visibility", "viewerIp", "url", "adminMode", "operator.email" as EventName, EventTime, ContentName, ContentType, Visibility, ViewerIp, URL, AdminMode, UserEmail nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Publicly Accessed, Application Installed/Recent - Content Visibility Changes**
```
_index=sumologic_audit_events _sourceCategory=content ContentPublicVisibilityUpdated
| json "eventName","eventTime", "contentIdentity.name", "contentIdentity.type", "adminMode", "operator.email", "operator.sourceIp", "url", "to" as EventName,EventTime, ContentName, ContentType, AdminMode, UserEmail, UserIp, URL, VisibleTo nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Publicly Accessed, Application Installed/Top Users Updating Content Visibility**
```
_index=sumologic_audit_events _sourceCategory=content ContentPublicVisibilityUpdated
| json "eventName", "adminMode", "operator.email", "contentIdentity.type", "to",  "contentIdentity.name" as EventName, AdminMode, UserEmail, ContentType, VisibleTo, ContentName nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Publicly Accessed, Application Installed/Trend - Events**
```
_index=sumologic_audit_events _sourceCategory=content and (ContentPublicVisibilityUpdated OR ContentPubliclyAccessed OR ApplicationInstalled)
| json "eventName", "operator.email", "contentIdentity.type"  as EventName, UserEmail, ContentName  nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Updated, Moved, Copied Content/Copied**
```
_index=sumologic_audit_events _sourceCategory=content and (ContentUpdated OR ContentMoved OR ContentCopied)
| json "eventName", "eventTime", "adminMode", "contentIdentity.name", "contentIdentity.type", "operator.email", "operator.id", "operator.sourceIp" as EventName, EventTime, AdminMode, ContentName, ContentType, UserEmail, UserId, UserIp nodrop
| where EventName in ("ContentUpdated", "ContentMoved", "ContentCopied")
| json "copiedTo.contentIdentity.name" as TargetContentName nodrop
| json "origin.name", "destination.name" as SourceFolder, TargetFolder nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Updated, Moved, Copied Content/Geo Location - Admin Mode**
```
_index=sumologic_audit_events _sourceCategory=content and (ContentUpdated OR ContentMoved OR ContentCopied)
| json "eventName", "adminMode", "operator.sourceIp" as EventName, AdminMode, UserIp nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Updated, Moved, Copied Content/Geo Location - User Mode**
```
_index=sumologic_audit_events _sourceCategory=content and (ContentUpdated OR ContentMoved OR ContentCopied)
| json "eventName", "adminMode", "operator.sourceIp" as EventName, AdminMode, UserIp nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Updated, Moved, Copied Content/Top Content Type - Admin Mode**
```
_index=sumologic_audit_events _sourceCategory=content and (ContentUpdated OR ContentMoved OR ContentCopied)
| json "adminMode", "eventName", "operator.email", "contentIdentity.type",  "operator.sourceIp" as AdminMode, EventName, UserEmail, ContentType, UserIp nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Updated, Moved, Copied Content/Top Content Type - User Mode**
```
_index=sumologic_audit_events _sourceCategory=content and (ContentUpdated OR ContentMoved OR ContentCopied)
| json "adminMode", "eventName", "operator.email", "contentIdentity.type", "operator.sourceIp" as AdminMode, EventName, UserEmail, ContentType, UserIp nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Updated, Moved, Copied Content/Top Users - Admin Mode**
```
_index=sumologic_audit_events _sourceCategory=content and (ContentUpdated OR ContentMoved OR ContentCopied)
| json "adminMode", "eventName", "operator.email", "contentIdentity.type","operator.sourceIp" as AdminMode, EventName, UserEmail, ContentType, UserIp nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Updated, Moved, Copied Content/Top Users - User Mode**
```
_index=sumologic_audit_events _sourceCategory=content and (ContentUpdated OR ContentMoved OR ContentCopied)
| json "adminMode", "eventName", "operator.email", "contentIdentity.type","operator.sourceIp"  as AdminMode, EventName, UserEmail, ContentType, UserIp nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Updated, Moved, Copied Content/Trend - Admin Mode**
```
_index=sumologic_audit_events _sourceCategory=content and (ContentUpdated OR ContentMoved OR ContentCopied)
| json "adminMode", "eventName",  "operator.sourceIp" as AdminMode, EventName, UserIp  nodrop
```

**Enterprise Audit - Content Management/Enterprise Audit - Updated, Moved, Copied Content/Trend - User Mode**
```
_index=sumologic_audit_events _sourceCategory=content and (ContentUpdated OR ContentMoved OR ContentCopied)
| json "eventName", "adminMode", "operator.sourceIp" as EventName, AdminMode, UserIp nodrop
```


