# Parsers For Audit

## Parser:
```
| parse "[AlertType=*]" as type nodrop
| parse "[Destination=*]" as destination nodrop
| parse "[Name=*]" as name nodrop
 
```
### Use Cases:
Added Permission, Added Permission breakdown by Type, Added Permission by Content, Alerts Fired by Destination, Application Installed by Users, Content Copied, Content Created, Content Created by Users, Content Created Over Time, Content Deleted, Content Exported, Content Exported Over Time, Content Imported, Content Moved, Content Shared with Public Users, Content Un-shared from Public Users, Content Updated, Content Whitelisted and Shared with World, Count Of Status Codes For Webhooks, Frequently Shared Content, Outlier - Content Created, Outlier - Content Exported, Outlier - Deleted Content, Permissions Removed by Content, Removed Permission, Removed Permission breakdown by Type



## Parser:
```
| parse "[Destination=*]" as Destination
| parse "[StatusCode=*]" as Status_Code
| parse "[Name=*]" as SavedSearchName
| parse "[AlertType=*]" as AlertType nodrop
 
```
### Use Cases:
Added Permission, Added Permission breakdown by Type, Added Permission by Content, Alerts Fired by Destination, Alerts Fired Over Time, Application Installed by Users, Content Copied, Content Created, Content Created by Users, Content Created Over Time, Content Deleted, Content Exported, Content Exported Over Time, Content Imported, Content Moved, Content Shared with Public Users, Content Un-shared from Public Users, Content Updated, Content Whitelisted and Shared with World, Count Of Status Codes For Webhooks, Frequently Shared Content, Non-200 Status Codes by Name, Outlier - Content Created, Outlier - Content Exported, Outlier - Deleted Content, Permissions Removed by Content, Removed Permission, Removed Permission breakdown by Type, Scheduled Searches Triggered, Top Webhook Destinations



## Parser:
```
| parse "[Name=*]" as SavedSearchName
| parse "[AlertType=*]" as AlertType nodrop
 
```
### Use Cases:
Added Permission, Added Permission breakdown by Type, Added Permission by Content, Alerts Fired by Destination, Alerts Fired Over Time, Application Installed by Users, Content Copied, Content Created, Content Created by Users, Content Created Over Time, Content Deleted, Content Exported, Content Exported Over Time, Content Imported, Content Moved, Content Shared with Public Users, Content Un-shared from Public Users, Content Updated, Content Whitelisted and Shared with World, Count Of Status Codes For Webhooks, Frequently Shared Content, Non-200 Status Codes by Name, Outlier - Content Created, Outlier - Content Exported, Outlier - Deleted Content, Permissions Removed by Content, Removed Permission, Removed Permission breakdown by Type, Scheduled Searches Triggered, Searches Triggered per Day, Top Webhook Destinations



## Parser:
```
| parse "[StatusCode=*]" as Status_Code
| parse "[Name=*]" as SavedSearchName
| parse "[AlertType=*]" as AlertType nodrop
 
```
### Use Cases:
Added Permission, Added Permission breakdown by Type, Added Permission by Content, Alerts Fired by Destination, Application Installed by Users, Content Copied, Content Created, Content Created by Users, Content Created Over Time, Content Deleted, Content Exported, Content Exported Over Time, Content Imported, Content Moved, Content Shared with Public Users, Content Un-shared from Public Users, Content Updated, Content Whitelisted and Shared with World, Count Of Status Codes For Webhooks, Frequently Shared Content, Non-200 Status Codes by Name, Outlier - Content Created, Outlier - Content Exported, Outlier - Deleted Content, Permissions Removed by Content, Removed Permission, Removed Permission breakdown by Type, Scheduled Searches Triggered



## Parser:
```
| parse "copied * \"*\" into folder \"*\" as \"*\"" as content_type,content_name,target_folder_location,copied_content_name
 
```
### Use Cases:
Added Permission, Content Copied, Content Created by Users, Content Created Over Time, Content Deleted, Content Moved, Content Updated, Content Whitelisted and Shared with World, Removed Permission



## Parser:
```
| parse "created * \"*\" into folder \"*\"" as content_type,content_name,folder_location
 
```
### Use Cases:
Added Permission, Content Copied, Content Created, Content Created by Users, Content Created Over Time, Content Deleted, Content Moved, Content Updated, Content Whitelisted and Shared with World, Outlier - Content Created, Outlier - Deleted Content, Removed Permission



## Parser:
```
| parse "exported * \"*\"" as content_type,content_name
 
```
### Use Cases:
Added Permission, Application Installed by Users, Content Copied, Content Created, Content Created by Users, Content Created Over Time, Content Deleted, Content Exported, Content Exported Over Time, Content Imported, Content Moved, Content Shared with Public Users, Content Un-shared from Public Users, Content Updated, Content Whitelisted and Shared with World, Frequently Shared Content, Outlier - Content Created, Outlier - Content Exported, Outlier - Deleted Content, Removed Permission



## Parser:
```
| parse "imported * \"*\" into folder \"*\"" as content_type,content_name,target_folder_location
 
```
### Use Cases:
Added Permission, Content Copied, Content Created, Content Created by Users, Content Created Over Time, Content Deleted, Content Exported Over Time, Content Imported, Content Moved, Content Un-shared from Public Users, Content Updated, Content Whitelisted and Shared with World, Outlier - Content Created, Outlier - Content Exported, Outlier - Deleted Content, Removed Permission



## Parser:
```
| parse "installed application (*, *) into folder \"*\" as \"*\"" as app_name,app_id,target_folder_location,app_name2
 
```
### Use Cases:
Added Permission, Application Installed by Users, Content Copied, Content Created, Content Created by Users, Content Created Over Time, Content Deleted, Content Exported Over Time, Content Imported, Content Moved, Content Shared with Public Users, Content Un-shared from Public Users, Content Updated, Content Whitelisted and Shared with World, Frequently Shared Content, Outlier - Content Created, Outlier - Content Exported, Outlier - Deleted Content, Removed Permission



## Parser:
```
| parse "moved * \"*\" into folder *" as content_type,content_name,target_folder_location
 
```
### Use Cases:
Content Moved, Content Whitelisted and Shared with World, Removed Permission



## Parser:
```
| parse "moved * \"*\" into folder \"*\"" as content_type,content_name,target_folder_location
 
```
### Use Cases:
Added Permission, Content Copied, Content Created by Users, Content Created Over Time, Content Deleted, Content Moved, Content Updated, Content Whitelisted and Shared with World, Outlier - Content Created, Outlier - Deleted Content, Removed Permission



## Parser:
```
| parse "updated name/description of * \"*\" from (*,*) to (*,*)" as content_type,content_name,old_name,old_desc,new_name,new_desc
 
```
### Use Cases:
Added Permission, Content Created by Users, Content Deleted, Content Moved, Content Updated, Content Whitelisted and Shared with World, Removed Permission



## Parser:
```
| parse "updated visibility of * \"*\" to *" as content_type,content_name,visibility_level
 
```
### Use Cases:
Added Permission, Content Copied, Content Created, Content Created by Users, Content Created Over Time, Content Deleted, Content Exported Over Time, Content Imported, Content Moved, Content Shared with Public Users, Content Un-shared from Public Users, Content Updated, Content Whitelisted and Shared with World, Frequently Shared Content, Outlier - Content Created, Outlier - Content Exported, Outlier - Deleted Content, Removed Permission



## Parser:
```
| parse "User * deleted * \"*\" in folder \"*\"" as sourceuser,content_type,content_name, source_folder
 
```
### Use Cases:
Added Permission, Content Created by Users, Content Deleted, Content Moved, Content Updated, Content Whitelisted and Shared with World, Removed Permission



## Parser:
```
| parse "User * deleted * \"*\"" as sourceuser,content_type,content_name
 
```
### Use Cases:
Content Deleted, Content Moved, Content Whitelisted and Shared with World, Removed Permission



## Parser:
```
| parse "User * deleted * \"*\"" as src_user,content_type,content_name
 
```
### Use Cases:
Added Permission, Content Copied, Content Created by Users, Content Created Over Time, Content Deleted, Content Moved, Content Updated, Content Whitelisted and Shared with World, Outlier - Deleted Content, Removed Permission



## Parser:
```
| parse "User * updated the following permissions on * \"*\". \nAdded: *\nRemoved: *" as user,content_type,content_name,added_permissions,removed_permissions nodrop
| parse regex field=added_permissions "(?<addedperm>\(.+?: .+?\))" multi
| parse regex field=addedperm "\((?<added_permission_to>.+)<(?<permission_target>.+)>: (?<added_permissions>.+)\)"
 
```
### Use Cases:
Added Permission, Added Permission breakdown by Type, Added Permission by Content, Application Installed by Users, Content Copied, Content Created, Content Created by Users, Content Created Over Time, Content Deleted, Content Exported, Content Exported Over Time, Content Imported, Content Moved, Content Shared with Public Users, Content Un-shared from Public Users, Content Updated, Content Whitelisted and Shared with World, Frequently Shared Content, Outlier - Content Created, Outlier - Content Exported, Outlier - Deleted Content, Permissions Removed by Content, Removed Permission, Removed Permission breakdown by Type



## Parser:
```
| parse "User * updated the following permissions on * \"*\". \nAdded: *\nRemoved: *" as user,content_type,content_name,added_permissions,removed_permissions nodrop
| parse regex field=added_permissions "(?<addedperm>\(.+?: .+?\))" multi
| parse regex field=addedperm "\((?<added_permission_to>.+)<(?<permission_target>.+)>: (?<added_permissions>.+)\)" 
 
```
### Use Cases:
Added Permission, Application Installed by Users, Content Copied, Content Created, Content Created by Users, Content Created Over Time, Content Deleted, Content Exported, Content Exported Over Time, Content Imported, Content Moved, Content Shared with Public Users, Content Un-shared from Public Users, Content Updated, Content Whitelisted and Shared with World, Frequently Shared Content, Outlier - Content Created, Outlier - Content Exported, Outlier - Deleted Content, Removed Permission



## Parser:
```
| parse "User * updated the following permissions on * \"*\". \nAdded: *\nRemoved: *" as user,content_type,content_name,added_permissions,removed_permissions nodrop
| parse regex field=removed_permissions "(?<removedperm>\(.+?: .+?\))" multi
| parse regex field=removedperm "\((?<removed_permission_from>.+)<(?<permission_target>.+)>: (?<removed_permissions>.+)\)"
 
```
### Use Cases:
Added Permission, Added Permission by Content, Application Installed by Users, Content Copied, Content Created, Content Created by Users, Content Created Over Time, Content Deleted, Content Exported, Content Exported Over Time, Content Imported, Content Moved, Content Shared with Public Users, Content Un-shared from Public Users, Content Updated, Content Whitelisted and Shared with World, Frequently Shared Content, Outlier - Content Created, Outlier - Content Exported, Outlier - Deleted Content, Permissions Removed by Content, Removed Permission, Removed Permission breakdown by Type



## Parser:
```
| parse "User * updated the following permissions on * \"*\". \nAdded: *\nRemoved: *" as user,content_type,content_name,added_permissions,removed_permissions nodrop
| parse regex field=removed_permissions "(?<removedperm>\(.+?: .+?\))" multi
| parse regex field=removedperm "\((?<removed_permission_from>.+)<(?<permission_target>.+)>: (?<removed_permissions>.+)\)" 
 
```
### Use Cases:
Added Permission, Application Installed by Users, Content Copied, Content Created, Content Created by Users, Content Created Over Time, Content Deleted, Content Exported, Content Exported Over Time, Content Imported, Content Moved, Content Shared with Public Users, Content Un-shared from Public Users, Content Updated, Content Whitelisted and Shared with World, Frequently Shared Content, Outlier - Content Created, Outlier - Content Exported, Outlier - Deleted Content, Removed Permission


