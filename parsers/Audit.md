# Parsers For Audit

**Audit/Library Content - Admin Mode/Added Permission**
```
_view=sumologic_audit _sourceCategory=user_activity "AdminMode=true"
| where action ="MANAGE_PERMISSIONS"
| parse "User * updated the following permissions on * \"*\". \nAdded: *\nRemoved: *" as user,content_type,content_name,added_permissions,removed_permissions nodrop
| parse regex field=added_permissions "(?<addedperm>\(.+?: .+?\))" multi
| parse regex field=addedperm "\((?<added_permission_to>.+)<(?<permission_target>.+)>: (?<added_permissions>.+)\)" 
```

**Audit/Library Content - Admin Mode/Content Deleted**
```
_view=sumologic_audit   _sourceCategory=user_activity "AdminMode=true"
| parse "User * deleted * \"*\"" as sourceuser,content_type,content_name
```

**Audit/Library Content - Admin Mode/Content Moved**
```
_view=sumologic_audit   _sourceCategory=user_activity "AdminMode=true"
| parse "moved * \"*\" into folder *" as content_type,content_name,target_folder_location
```

**Audit/Library Content - Admin Mode/Content Whitelisted and Shared with World**
```
_view=sumologic_audit _sourceCategory=user_activity "updated visibility" "AdminMode=true" (World or Whitelist)
| where action ="MANAGE_PERMISSIONS"
| parse "updated visibility of * \"*\" to *" as content_type,content_name,visibility_level
```

**Audit/Library Content - Admin Mode/Removed Permission**
```
_view=sumologic_audit _sourceCategory=user_activity "AdminMode=true"
| where action ="MANAGE_PERMISSIONS"
| parse "User * updated the following permissions on * \"*\". \nAdded: *\nRemoved: *" as user,content_type,content_name,added_permissions,removed_permissions nodrop
| parse regex field=removed_permissions "(?<removedperm>\(.+?: .+?\))" multi
| parse regex field=removedperm "\((?<removed_permission_from>.+)<(?<permission_target>.+)>: (?<removed_permissions>.+)\)" 
```

**Audit/Library Content - Updated Permission/Added Permission**
```
_view=sumologic_audit _sourceCategory=user_activity
| where action ="MANAGE_PERMISSIONS"
| parse "User * updated the following permissions on * \"*\". \nAdded: *\nRemoved: *" as user,content_type,content_name,added_permissions,removed_permissions nodrop
| parse regex field=added_permissions "(?<addedperm>\(.+?: .+?\))" multi
| parse regex field=addedperm "\((?<added_permission_to>.+)<(?<permission_target>.+)>: (?<added_permissions>.+)\)" 
```

**Audit/Library Content - Updated Permission/Added Permission breakdown by Type**
```
_view=sumologic_audit _sourceCategory=user_activity
| where action ="MANAGE_PERMISSIONS"
| parse "User * updated the following permissions on * \"*\". \nAdded: *\nRemoved: *" as user,content_type,content_name,added_permissions,removed_permissions nodrop
| parse regex field=added_permissions "(?<addedperm>\(.+?: .+?\))" multi
| parse regex field=addedperm "\((?<added_permission_to>.+)<(?<permission_target>.+)>: (?<added_permissions>.+)\)"
```

**Audit/Library Content - Updated Permission/Added Permission by Content**
```
_view=sumologic_audit _sourceCategory=user_activity
| where action ="MANAGE_PERMISSIONS"
| parse "User * updated the following permissions on * \"*\". \nAdded: *\nRemoved: *" as user,content_type,content_name,added_permissions,removed_permissions nodrop
| parse regex field=added_permissions "(?<addedperm>\(.+?: .+?\))" multi
| parse regex field=addedperm "\((?<added_permission_to>.+)<(?<permission_target>.+)>: (?<added_permissions>.+)\)"
```

**Audit/Library Content - Updated Permission/Permissions Removed by Content**
```
_view=sumologic_audit _sourceCategory=user_activity
| where action ="MANAGE_PERMISSIONS"
| parse "User * updated the following permissions on * \"*\". \nAdded: *\nRemoved: *" as user,content_type,content_name,added_permissions,removed_permissions nodrop
| parse regex field=removed_permissions "(?<removedperm>\(.+?: .+?\))" multi
| parse regex field=removedperm "\((?<removed_permission_from>.+)<(?<permission_target>.+)>: (?<removed_permissions>.+)\)"
```

**Audit/Library Content - Updated Permission/Removed Permission**
```
_view=sumologic_audit _sourceCategory=user_activity
| where action ="MANAGE_PERMISSIONS"
| parse "User * updated the following permissions on * \"*\". \nAdded: *\nRemoved: *" as user,content_type,content_name,added_permissions,removed_permissions nodrop
| parse regex field=removed_permissions "(?<removedperm>\(.+?: .+?\))" multi
| parse regex field=removedperm "\((?<removed_permission_from>.+)<(?<permission_target>.+)>: (?<removed_permissions>.+)\)" 
```

**Audit/Library Content - Updated Permission/Removed Permission breakdown by Type**
```
_view=sumologic_audit _sourceCategory=user_activity
| where action ="MANAGE_PERMISSIONS"
| parse "User * updated the following permissions on * \"*\". \nAdded: *\nRemoved: *" as user,content_type,content_name,added_permissions,removed_permissions nodrop
| parse regex field=removed_permissions "(?<removedperm>\(.+?: .+?\))" multi
| parse regex field=removedperm "\((?<removed_permission_from>.+)<(?<permission_target>.+)>: (?<removed_permissions>.+)\)"
```

**Audit/Scheduled Search - Search Triggered Summary/Alerts Fired by Destination**
```
_index=sumologic_audit and _sourceName=SCHEDULED_SEARCH triggered
| parse "[AlertType=*]" as type nodrop
| parse "[Destination=*]" as destination nodrop
| parse "[Name=*]" as name nodrop
```

**Audit/Scheduled Search - Search Triggered Summary/Alerts Fired Over Time**
```

_index=sumologic_audit and _sourceName=SCHEDULED_SEARCH ("Scheduled search alert triggered")
| parse "[Name=*]" as SavedSearchName
| parse "[AlertType=*]" as AlertType nodrop
```

**Audit/Scheduled Search - Search Triggered Summary/Count Of Status Codes For Webhooks**
```
_index=sumologic_audit and _sourceName=SCHEDULED_SEARCH ("Scheduled search alert triggered")
| parse "[StatusCode=*]" as Status_Code
| parse "[Name=*]" as SavedSearchName
| parse "[AlertType=*]" as AlertType nodrop
```

**Audit/Scheduled Search - Search Triggered Summary/Non-200 Status Codes by Name**
```
_index=sumologic_audit and _sourceName=SCHEDULED_SEARCH ("Scheduled search alert triggered")
| parse "[StatusCode=*]" as Status_Code
| parse "[Name=*]" as SavedSearchName
| parse "[AlertType=*]" as AlertType nodrop
```

**Audit/Scheduled Search - Search Triggered Summary/Scheduled Searches Triggered**
```

_index=sumologic_audit and _sourceName=SCHEDULED_SEARCH ("Scheduled search alert triggered")
| parse "[Name=*]" as SavedSearchName
| parse "[AlertType=*]" as AlertType nodrop
```

**Audit/Scheduled Search - Search Triggered Summary/Searches Triggered per Day**
```

_index=sumologic_audit and _sourceName=SCHEDULED_SEARCH ("Scheduled search alert triggered")
| parse "[Name=*]" as SavedSearchName

| parse "[AlertType=*]" as AlertType nodrop
```

**Audit/Scheduled Search - Search Triggered Summary/Top Webhook Destinations**
```
_index=sumologic_audit and _sourceName=SCHEDULED_SEARCH ("Scheduled search alert triggered")
| parse "[Destination=*]" as Destination
| parse "[StatusCode=*]" as Status_Code
| parse "[Name=*]" as SavedSearchName
| parse "[AlertType=*]" as AlertType nodrop
```

**Audit/Shared Publicly/Application Installed by Users**
```
_view=sumologic_audit   _sourceCategory=user_activity
| where action ="INSTALL"
| parse "installed application (*, *) into folder \"*\" as \"*\"" as app_name,app_id,target_folder_location,app_name2
```

**Audit/Shared Publicly/Content Exported**
```
_view=sumologic_audit   _sourceCategory=user_activity
| where action ="EXPORT"
| parse "exported * \"*\"" as content_type,content_name
```

**Audit/Shared Publicly/Content Exported Over Time**
```
_view=sumologic_audit   _sourceCategory=user_activity
| where action ="EXPORT"
| parse "exported * \"*\"" as content_type,content_name
```

**Audit/Shared Publicly/Content Imported**
```
_view=sumologic_audit   _sourceCategory=user_activity
| where action ="IMPORT"
| parse "imported * \"*\" into folder \"*\"" as content_type,content_name,target_folder_location
```

**Audit/Shared Publicly/Content Shared with Public Users**
```
_view=sumologic_audit _sourceCategory=user_activity "updated visibility"
| where action ="MANAGE_PERMISSIONS"
| parse "updated visibility of * \"*\" to *" as content_type,content_name,visibility_level
```

**Audit/Shared Publicly/Content Un-shared from Public Users**
```
_view=sumologic_audit _sourceCategory=user_activity "updated visibility"
| where action ="MANAGE_PERMISSIONS"
| parse "updated visibility of * \"*\" to *" as content_type,content_name,visibility_level
```

**Audit/Shared Publicly/Frequently Shared Content**
```
_view=sumologic_audit _sourceCategory=user_activity //"updated visibility"
| where action ="MANAGE_PERMISSIONS"
| parse "updated visibility of * \"*\" to *" as content_type,content_name,visibility_level
```

**Audit/Shared Publicly/Outlier - Content Exported**
```
_view=sumologic_audit   _sourceCategory=user_activity
| where action ="EXPORT"
| parse "exported * \"*\"" as content_type,content_name
```

**Audit/Updated/Content Copied**
```
_view=sumologic_audit   _sourceCategory=user_activity
| parse "copied * \"*\" into folder \"*\" as \"*\"" as content_type,content_name,target_folder_location,copied_content_name
```

**Audit/Updated/Content Created**
```
_view=sumologic_audit   _sourceCategory=user_activity
| parse "created * \"*\" into folder \"*\"" as content_type,content_name,folder_location
```

**Audit/Updated/Content Created by Users**
```
_view=sumologic_audit   _sourceCategory=user_activity
| parse "created * \"*\" into folder \"*\"" as content_type,content_name,folder_location
```

**Audit/Updated/Content Created Over Time**
```
_view=sumologic_audit   _sourceCategory=user_activity
| parse "created * \"*\" into folder \"*\"" as content_type,content_name,folder_location
```

**Audit/Updated/Content Deleted**
```
_view=sumologic_audit   _sourceCategory=user_activity
| parse "User * deleted * \"*\" in folder \"*\"" as sourceuser,content_type,content_name, source_folder
```

**Audit/Updated/Content Moved**
```
_view=sumologic_audit   _sourceCategory=user_activity
| parse "moved * \"*\" into folder \"*\"" as content_type,content_name,target_folder_location
```

**Audit/Updated/Content Updated**
```
_view=sumologic_audit   _sourceCategory=user_activity "updated name/description"
| where action ="UPDATE"
| formatDate(fromMillis(_messagetime), "MM-dd-yyyy HH:mm:ss") as date_time
| parse "updated name/description of * \"*\" from (*,*) to (*,*)" as content_type,content_name,old_name,old_desc,new_name,new_desc
```

**Audit/Updated/Outlier - Content Created**
```
_view=sumologic_audit   _sourceCategory=user_activity
| parse "created * \"*\" into folder \"*\"" as content_type,content_name,folder_location
```

**Audit/Updated/Outlier - Deleted Content**
```
_view=sumologic_audit   _sourceCategory=user_activity
| parse "User * deleted * \"*\"" as src_user,content_type,content_name
```


