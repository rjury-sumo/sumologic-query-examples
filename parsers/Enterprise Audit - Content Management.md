# Parsers For Enterprise Audit - Content Management

## Parser:
```
| json "adminMode", "eventName" as AdminMode, EventName nodrop
 
```
### Use Cases:
Active Users, Active vs InActive FER, Activities Over Time, Application Installed, Content by Permission Added, Content by Permission Deleted, Content Exported, Content made Visible to Public, Content Publicly Accessed, Content Synchronization Success/Failure Over Time, Geo Location - Admin Mode, Geo Location - Content Publicly Accessed, Geo Location - User Mode, Geo Location of Events, Geo Locations - Application Installed, One Day Time Shift Comparison, Permission Added Over Time by Source Type, Permission Deleted Over Time by Source Type, Recent - Application Installed, Recent - Content Created/Deleted/Exported/Imported, Recent - Content Publicly Accessed, Recent - Content Synchronization, Recent - Content Updated/Moved/Copied, Recent - Content Visibility Changes, Recent - Permissions Added to Content, Recent - Permissions Deleted from Content, Recent Events - Field Extraction Rule Events, Top Application Installed, Top Content Copied, Top Content Exported, Top Content Made Visible to public, Top Content Publicly Accessed, Top Content Requested to Synchronize, Top Content Type - Admin Mode, Top Content Type - User Mode, Top Content with Permission Updated, Top Users, Top Users - Admin Mode, Top Users - User Mode, Top Users to Request for Synchronization, Top Users Updating Content Visibility, Top Users Updating Permissions on Content, Trend - Admin Mode, Trend - Events, Trend - Field Extraction Rules, Trend - User Mode, Users in Admin Mode



## Parser:
```
| json "adminMode", "eventName",  "operator.sourceIp" as AdminMode, EventName, UserIp  nodrop
 
```
### Use Cases:
Active Users, Active vs InActive FER, Activities Over Time, Application Installed, Content by Permission Added, Content by Permission Deleted, Content Exported, Content made Visible to Public, Content Publicly Accessed, Content Synchronization Success/Failure Over Time, Geo Location - Admin Mode, Geo Location - Content Publicly Accessed, Geo Location - User Mode, Geo Location of Events, Geo Locations - Application Installed, One Day Time Shift Comparison, Permission Added Over Time by Source Type, Permission Deleted Over Time by Source Type, Recent - Application Installed, Recent - Content Created/Deleted/Exported/Imported, Recent - Content Publicly Accessed, Recent - Content Synchronization, Recent - Content Updated/Moved/Copied, Recent - Content Visibility Changes, Recent - Permissions Added to Content, Recent - Permissions Deleted from Content, Recent Events - Field Extraction Rule Events, Top Application Installed, Top Content Copied, Top Content Exported, Top Content Made Visible to public, Top Content Publicly Accessed, Top Content Requested to Synchronize, Top Content Type - Admin Mode, Top Content Type - User Mode, Top Content with Permission Updated, Top Users, Top Users - Admin Mode, Top Users - User Mode, Top Users to Request for Synchronization, Top Users Updating Content Visibility, Top Users Updating Permissions on Content, Trend - Admin Mode, Trend - Events, Trend - Field Extraction Rules, Trend - User Mode, Users in Admin Mode



## Parser:
```
| json "adminMode", "eventName", "operator.email" as AdminMode, EventName, User nodrop
 
```
### Use Cases:
Active Users, Active vs InActive FER, Activities Over Time, Application Installed, Content by Permission Added, Content by Permission Deleted, Content Exported, Content made Visible to Public, Content Publicly Accessed, Content Synchronization Success/Failure Over Time, Geo Location - Admin Mode, Geo Location - Content Publicly Accessed, Geo Location - User Mode, Geo Location of Events, Geo Locations - Application Installed, One Day Time Shift Comparison, Permission Added Over Time by Source Type, Permission Deleted Over Time by Source Type, Recent - Application Installed, Recent - Content Created/Deleted/Exported/Imported, Recent - Content Publicly Accessed, Recent - Content Synchronization, Recent - Content Updated/Moved/Copied, Recent - Content Visibility Changes, Recent - Permissions Added to Content, Recent - Permissions Deleted from Content, Recent Events - Field Extraction Rule Events, Top Application Installed, Top Content Copied, Top Content Exported, Top Content Made Visible to public, Top Content Publicly Accessed, Top Content Requested to Synchronize, Top Content Type - Admin Mode, Top Content Type - User Mode, Top Content with Permission Updated, Top Users, Top Users - Admin Mode, Top Users - User Mode, Top Users to Request for Synchronization, Top Users Updating Content Visibility, Top Users Updating Permissions on Content, Trend - Admin Mode, Trend - Events, Trend - Field Extraction Rules, Trend - User Mode, Users in Admin Mode



## Parser:
```
| json "adminMode", "eventName", "operator.email", "contentIdentity.type",  "operator.sourceIp" as AdminMode, EventName, UserEmail, ContentType, UserIp nodrop
 
```
### Use Cases:
Active Users, Active vs InActive FER, Activities Over Time, Application Installed, Content by Permission Added, Content by Permission Deleted, Content Exported, Content made Visible to Public, Content Publicly Accessed, Content Synchronization Success/Failure Over Time, Geo Location - Admin Mode, Geo Location - Content Publicly Accessed, Geo Location - User Mode, Geo Location of Events, Geo Locations - Application Installed, One Day Time Shift Comparison, Permission Added Over Time by Source Type, Permission Deleted Over Time by Source Type, Recent - Application Installed, Recent - Content Created/Deleted/Exported/Imported, Recent - Content Publicly Accessed, Recent - Content Synchronization, Recent - Content Updated/Moved/Copied, Recent - Content Visibility Changes, Recent - Permissions Added to Content, Recent - Permissions Deleted from Content, Recent Events - Field Extraction Rule Events, Top Application Installed, Top Content Copied, Top Content Exported, Top Content Made Visible to public, Top Content Publicly Accessed, Top Content Requested to Synchronize, Top Content Type - Admin Mode, Top Content Type - User Mode, Top Content with Permission Updated, Top Users, Top Users - Admin Mode, Top Users - User Mode, Top Users to Request for Synchronization, Top Users Updating Content Visibility, Top Users Updating Permissions on Content, Trend - Admin Mode, Trend - Events, Trend - Field Extraction Rules, Trend - User Mode, Users in Admin Mode



## Parser:
```
| json "adminMode", "eventName", "operator.email", "contentIdentity.type", "operator.sourceIp" as AdminMode, EventName, UserEmail, ContentType, UserIp nodrop
 
```
### Use Cases:
Active Users, Active vs InActive FER, Activities Over Time, Application Installed, Content by Permission Added, Content by Permission Deleted, Content Exported, Content made Visible to Public, Content Publicly Accessed, Content Synchronization Success/Failure Over Time, Geo Location - Admin Mode, Geo Location - Content Publicly Accessed, Geo Location - User Mode, Geo Location of Events, Geo Locations - Application Installed, One Day Time Shift Comparison, Permission Added Over Time by Source Type, Permission Deleted Over Time by Source Type, Recent - Application Installed, Recent - Content Created/Deleted/Exported/Imported, Recent - Content Publicly Accessed, Recent - Content Synchronization, Recent - Content Updated/Moved/Copied, Recent - Content Visibility Changes, Recent - Permissions Added to Content, Recent - Permissions Deleted from Content, Recent Events - Field Extraction Rule Events, Top Application Installed, Top Content Copied, Top Content Exported, Top Content Made Visible to public, Top Content Publicly Accessed, Top Content Requested to Synchronize, Top Content Type - Admin Mode, Top Content Type - User Mode, Top Content with Permission Updated, Top Users, Top Users - Admin Mode, Top Users - User Mode, Top Users to Request for Synchronization, Top Users Updating Content Visibility, Top Users Updating Permissions on Content, Trend - Admin Mode, Trend - Events, Trend - Field Extraction Rules, Trend - User Mode, Users in Admin Mode



## Parser:
```
| json "adminMode", "eventName", "operator.email", "contentIdentity.type","operator.sourceIp"  as AdminMode, EventName, UserEmail, ContentType, UserIp nodrop
 
```
### Use Cases:
Active Users, Active vs InActive FER, Activities Over Time, Application Installed, Content by Permission Added, Content by Permission Deleted, Content Exported, Content made Visible to Public, Content Publicly Accessed, Content Synchronization Success/Failure Over Time, Geo Location - Admin Mode, Geo Location - Content Publicly Accessed, Geo Location - User Mode, Geo Location of Events, Geo Locations - Application Installed, One Day Time Shift Comparison, Permission Added Over Time by Source Type, Permission Deleted Over Time by Source Type, Recent - Application Installed, Recent - Content Created/Deleted/Exported/Imported, Recent - Content Publicly Accessed, Recent - Content Synchronization, Recent - Content Updated/Moved/Copied, Recent - Content Visibility Changes, Recent - Permissions Added to Content, Recent - Permissions Deleted from Content, Recent Events - Field Extraction Rule Events, Top Application Installed, Top Content Copied, Top Content Exported, Top Content Made Visible to public, Top Content Publicly Accessed, Top Content Requested to Synchronize, Top Content Type - Admin Mode, Top Content Type - User Mode, Top Content with Permission Updated, Top Users, Top Users - Admin Mode, Top Users - User Mode, Top Users to Request for Synchronization, Top Users Updating Content Visibility, Top Users Updating Permissions on Content, Trend - Admin Mode, Trend - Events, Trend - Field Extraction Rules, Trend - User Mode, Users in Admin Mode



## Parser:
```
| json "adminMode", "eventName", "operator.email", "contentIdentity.type","operator.sourceIp" as AdminMode, EventName, UserEmail, ContentType, UserIp nodrop
 
```
### Use Cases:
Active Users, Active vs InActive FER, Activities Over Time, Application Installed, Content by Permission Added, Content by Permission Deleted, Content Exported, Content made Visible to Public, Content Publicly Accessed, Content Synchronization Success/Failure Over Time, Geo Location - Admin Mode, Geo Location - Content Publicly Accessed, Geo Location - User Mode, Geo Location of Events, Geo Locations - Application Installed, One Day Time Shift Comparison, Permission Added Over Time by Source Type, Permission Deleted Over Time by Source Type, Recent - Application Installed, Recent - Content Created/Deleted/Exported/Imported, Recent - Content Publicly Accessed, Recent - Content Synchronization, Recent - Content Updated/Moved/Copied, Recent - Content Visibility Changes, Recent - Permissions Added to Content, Recent - Permissions Deleted from Content, Recent Events - Field Extraction Rule Events, Top Application Installed, Top Content Copied, Top Content Exported, Top Content Made Visible to public, Top Content Publicly Accessed, Top Content Requested to Synchronize, Top Content Type - Admin Mode, Top Content Type - User Mode, Top Content with Permission Updated, Top Users, Top Users - Admin Mode, Top Users - User Mode, Top Users to Request for Synchronization, Top Users Updating Content Visibility, Top Users Updating Permissions on Content, Trend - Admin Mode, Trend - Events, Trend - Field Extraction Rules, Trend - User Mode, Users in Admin Mode



## Parser:
```
| json "eventName" as EventName nodrop
 
```
### Use Cases:
Active Users, Active vs InActive FER, Activities Over Time, Application Installed, Content by Permission Added, Content by Permission Deleted, Content Exported, Content made Visible to Public, Content Publicly Accessed, Content Synchronization Success/Failure Over Time, Geo Location - Admin Mode, Geo Location - Content Publicly Accessed, Geo Location - User Mode, Geo Location of Events, Geo Locations - Application Installed, One Day Time Shift Comparison, Permission Added Over Time by Source Type, Permission Deleted Over Time by Source Type, Recent - Application Installed, Recent - Content Created/Deleted/Exported/Imported, Recent - Content Publicly Accessed, Recent - Content Synchronization, Recent - Content Updated/Moved/Copied, Recent - Content Visibility Changes, Recent - Permissions Added to Content, Recent - Permissions Deleted from Content, Recent Events - Field Extraction Rule Events, Top Application Installed, Top Content Copied, Top Content Exported, Top Content Made Visible to public, Top Content Publicly Accessed, Top Content Requested to Synchronize, Top Content Type - Admin Mode, Top Content Type - User Mode, Top Content with Permission Updated, Top Users, Top Users - Admin Mode, Top Users - User Mode, Top Users to Request for Synchronization, Top Users Updating Content Visibility, Top Users Updating Permissions on Content, Trend - Admin Mode, Trend - Events, Trend - Field Extraction Rules, Trend - User Mode, Users in Admin Mode



## Parser:
```
| json "eventName", "adminMode", "contentIdentity.name" as EventName, AdminMode, ContentName nodrop
 
```
### Use Cases:
Active Users, Active vs InActive FER, Activities Over Time, Application Installed, Content by Permission Added, Content by Permission Deleted, Content Exported, Content made Visible to Public, Content Publicly Accessed, Content Synchronization Success/Failure Over Time, Geo Location - Admin Mode, Geo Location - Content Publicly Accessed, Geo Location - User Mode, Geo Location of Events, Geo Locations - Application Installed, One Day Time Shift Comparison, Permission Added Over Time by Source Type, Permission Deleted Over Time by Source Type, Recent - Application Installed, Recent - Content Created/Deleted/Exported/Imported, Recent - Content Publicly Accessed, Recent - Content Synchronization, Recent - Content Updated/Moved/Copied, Recent - Content Visibility Changes, Recent - Permissions Added to Content, Recent - Permissions Deleted from Content, Recent Events - Field Extraction Rule Events, Top Application Installed, Top Content Copied, Top Content Exported, Top Content Made Visible to public, Top Content Publicly Accessed, Top Content Requested to Synchronize, Top Content Type - Admin Mode, Top Content Type - User Mode, Top Content with Permission Updated, Top Users, Top Users - Admin Mode, Top Users - User Mode, Top Users to Request for Synchronization, Top Users Updating Content Visibility, Top Users Updating Permissions on Content, Trend - Admin Mode, Trend - Events, Trend - Field Extraction Rules, Trend - User Mode, Users in Admin Mode



## Parser:
```
| json "eventName", "adminMode", "contentIdentity.type", "operator.sourceIp" as EventName, AdminMode, ContentType, UserIp nodrop
 
```
### Use Cases:
Active Users, Active vs InActive FER, Activities Over Time, Application Installed, Content by Permission Added, Content by Permission Deleted, Content Exported, Content made Visible to Public, Content Publicly Accessed, Content Synchronization Success/Failure Over Time, Geo Location - Admin Mode, Geo Location - Content Publicly Accessed, Geo Location - User Mode, Geo Location of Events, Geo Locations - Application Installed, One Day Time Shift Comparison, Permission Added Over Time by Source Type, Permission Deleted Over Time by Source Type, Recent - Application Installed, Recent - Content Created/Deleted/Exported/Imported, Recent - Content Publicly Accessed, Recent - Content Synchronization, Recent - Content Updated/Moved/Copied, Recent - Content Visibility Changes, Recent - Permissions Added to Content, Recent - Permissions Deleted from Content, Recent Events - Field Extraction Rule Events, Top Application Installed, Top Content Copied, Top Content Exported, Top Content Made Visible to public, Top Content Publicly Accessed, Top Content Requested to Synchronize, Top Content Type - Admin Mode, Top Content Type - User Mode, Top Content with Permission Updated, Top Users, Top Users - Admin Mode, Top Users - User Mode, Top Users to Request for Synchronization, Top Users Updating Content Visibility, Top Users Updating Permissions on Content, Trend - Admin Mode, Trend - Events, Trend - Field Extraction Rules, Trend - User Mode, Users in Admin Mode



## Parser:
```
| json "eventName", "adminMode", "contentIdentity.type","operator.sourceIp" as EventName, AdminMode, ContentType, UserIp nodrop
 
```
### Use Cases:
Active Users, Active vs InActive FER, Activities Over Time, Application Installed, Content by Permission Added, Content by Permission Deleted, Content Exported, Content made Visible to Public, Content Publicly Accessed, Content Synchronization Success/Failure Over Time, Geo Location - Admin Mode, Geo Location - Content Publicly Accessed, Geo Location - User Mode, Geo Location of Events, Geo Locations - Application Installed, One Day Time Shift Comparison, Permission Added Over Time by Source Type, Permission Deleted Over Time by Source Type, Recent - Application Installed, Recent - Content Created/Deleted/Exported/Imported, Recent - Content Publicly Accessed, Recent - Content Synchronization, Recent - Content Updated/Moved/Copied, Recent - Content Visibility Changes, Recent - Permissions Added to Content, Recent - Permissions Deleted from Content, Recent Events - Field Extraction Rule Events, Top Application Installed, Top Content Copied, Top Content Exported, Top Content Made Visible to public, Top Content Publicly Accessed, Top Content Requested to Synchronize, Top Content Type - Admin Mode, Top Content Type - User Mode, Top Content with Permission Updated, Top Users, Top Users - Admin Mode, Top Users - User Mode, Top Users to Request for Synchronization, Top Users Updating Content Visibility, Top Users Updating Permissions on Content, Trend - Admin Mode, Trend - Events, Trend - Field Extraction Rules, Trend - User Mode, Users in Admin Mode



## Parser:
```
| json "eventName", "adminMode", "operator.email", "contentIdentity.type", "to",  "contentIdentity.name" as EventName, AdminMode, UserEmail, ContentType, VisibleTo, ContentName nodrop
 
```
### Use Cases:
Active Users, Active vs InActive FER, Activities Over Time, Application Installed, Content by Permission Added, Content by Permission Deleted, Content Exported, Content made Visible to Public, Content Publicly Accessed, Content Synchronization Success/Failure Over Time, Geo Location - Admin Mode, Geo Location - Content Publicly Accessed, Geo Location - User Mode, Geo Location of Events, Geo Locations - Application Installed, One Day Time Shift Comparison, Permission Added Over Time by Source Type, Permission Deleted Over Time by Source Type, Recent - Application Installed, Recent - Content Created/Deleted/Exported/Imported, Recent - Content Publicly Accessed, Recent - Content Synchronization, Recent - Content Updated/Moved/Copied, Recent - Content Visibility Changes, Recent - Permissions Added to Content, Recent - Permissions Deleted from Content, Recent Events - Field Extraction Rule Events, Top Application Installed, Top Content Copied, Top Content Exported, Top Content Made Visible to public, Top Content Publicly Accessed, Top Content Requested to Synchronize, Top Content Type - Admin Mode, Top Content Type - User Mode, Top Content with Permission Updated, Top Users, Top Users - Admin Mode, Top Users - User Mode, Top Users to Request for Synchronization, Top Users Updating Content Visibility, Top Users Updating Permissions on Content, Trend - Admin Mode, Trend - Events, Trend - Field Extraction Rules, Trend - User Mode, Users in Admin Mode



## Parser:
```
| json "eventName", "adminMode", "operator.sourceIp" as EventName, AdminMode, UserIp nodrop
 
```
### Use Cases:
Active Users, Active vs InActive FER, Activities Over Time, Application Installed, Content by Permission Added, Content by Permission Deleted, Content Exported, Content made Visible to Public, Content Publicly Accessed, Content Synchronization Success/Failure Over Time, Geo Location - Admin Mode, Geo Location - Content Publicly Accessed, Geo Location - User Mode, Geo Location of Events, Geo Locations - Application Installed, One Day Time Shift Comparison, Permission Added Over Time by Source Type, Permission Deleted Over Time by Source Type, Recent - Application Installed, Recent - Content Created/Deleted/Exported/Imported, Recent - Content Publicly Accessed, Recent - Content Synchronization, Recent - Content Updated/Moved/Copied, Recent - Content Visibility Changes, Recent - Permissions Added to Content, Recent - Permissions Deleted from Content, Recent Events - Field Extraction Rule Events, Top Application Installed, Top Content Copied, Top Content Exported, Top Content Made Visible to public, Top Content Publicly Accessed, Top Content Requested to Synchronize, Top Content Type - Admin Mode, Top Content Type - User Mode, Top Content with Permission Updated, Top Users, Top Users - Admin Mode, Top Users - User Mode, Top Users to Request for Synchronization, Top Users Updating Content Visibility, Top Users Updating Permissions on Content, Trend - Admin Mode, Trend - Events, Trend - Field Extraction Rules, Trend - User Mode, Users in Admin Mode



## Parser:
```
| json "eventName", "adminMode", "operator.sourceIp" as EventName, AdminMode, UserIp nodrop
| json "operator.email", "contentIdentity.type" as UserEmail, ContentType nodrop
 
```
### Use Cases:
Active Users, Active vs InActive FER, Activities Over Time, Application Installed, Content by Permission Added, Content by Permission Deleted, Content Exported, Content made Visible to Public, Content Publicly Accessed, Content Synchronization Success/Failure Over Time, Geo Location - Admin Mode, Geo Location - Content Publicly Accessed, Geo Location - User Mode, Geo Location of Events, Geo Locations - Application Installed, One Day Time Shift Comparison, Permission Added Over Time by Source Type, Permission Deleted Over Time by Source Type, Recent - Application Installed, Recent - Content Created/Deleted/Exported/Imported, Recent - Content Publicly Accessed, Recent - Content Synchronization, Recent - Content Updated/Moved/Copied, Recent - Content Visibility Changes, Recent - Permissions Added to Content, Recent - Permissions Deleted from Content, Recent Events - Field Extraction Rule Events, Top Application Installed, Top Content Copied, Top Content Exported, Top Content Made Visible to public, Top Content Publicly Accessed, Top Content Requested to Synchronize, Top Content Type - Admin Mode, Top Content Type - User Mode, Top Content with Permission Updated, Top Users, Top Users - Admin Mode, Top Users - User Mode, Top Users to Request for Synchronization, Top Users Updating Content Visibility, Top Users Updating Permissions on Content, Trend - Admin Mode, Trend - Events, Trend - Field Extraction Rules, Trend - User Mode, Users in Admin Mode



## Parser:
```
| json "eventName", "adminMode", "operator.sourceIp"as EventName, AdminMode, UserIp nodrop
 
```
### Use Cases:
Active Users, Active vs InActive FER, Activities Over Time, Application Installed, Content by Permission Added, Content by Permission Deleted, Content Exported, Content made Visible to Public, Content Publicly Accessed, Content Synchronization Success/Failure Over Time, Geo Location - Admin Mode, Geo Location - Content Publicly Accessed, Geo Location - User Mode, Geo Location of Events, Geo Locations - Application Installed, One Day Time Shift Comparison, Permission Added Over Time by Source Type, Permission Deleted Over Time by Source Type, Recent - Application Installed, Recent - Content Created/Deleted/Exported/Imported, Recent - Content Publicly Accessed, Recent - Content Synchronization, Recent - Content Updated/Moved/Copied, Recent - Content Visibility Changes, Recent - Permissions Added to Content, Recent - Permissions Deleted from Content, Recent Events - Field Extraction Rule Events, Top Application Installed, Top Content Copied, Top Content Exported, Top Content Made Visible to public, Top Content Publicly Accessed, Top Content Requested to Synchronize, Top Content Type - Admin Mode, Top Content Type - User Mode, Top Content with Permission Updated, Top Users, Top Users - Admin Mode, Top Users - User Mode, Top Users to Request for Synchronization, Top Users Updating Content Visibility, Top Users Updating Permissions on Content, Trend - Admin Mode, Trend - Events, Trend - Field Extraction Rules, Trend - User Mode, Users in Admin Mode



## Parser:
```
| json "eventName", "adminMode", "operator.sourceIp"as EventName, AdminMode, UserIp nodrop
| json "operator.email", "contentIdentity.type" as UserEmail, ContentType nodrop
 
```
### Use Cases:
Active Users, Active vs InActive FER, Activities Over Time, Application Installed, Content by Permission Added, Content by Permission Deleted, Content Exported, Content made Visible to Public, Content Publicly Accessed, Content Synchronization Success/Failure Over Time, Geo Location - Admin Mode, Geo Location - Content Publicly Accessed, Geo Location - User Mode, Geo Location of Events, Geo Locations - Application Installed, One Day Time Shift Comparison, Permission Added Over Time by Source Type, Permission Deleted Over Time by Source Type, Recent - Application Installed, Recent - Content Created/Deleted/Exported/Imported, Recent - Content Publicly Accessed, Recent - Content Synchronization, Recent - Content Updated/Moved/Copied, Recent - Content Visibility Changes, Recent - Permissions Added to Content, Recent - Permissions Deleted from Content, Recent Events - Field Extraction Rule Events, Top Application Installed, Top Content Copied, Top Content Exported, Top Content Made Visible to public, Top Content Publicly Accessed, Top Content Requested to Synchronize, Top Content Type - Admin Mode, Top Content Type - User Mode, Top Content with Permission Updated, Top Users, Top Users - Admin Mode, Top Users - User Mode, Top Users to Request for Synchronization, Top Users Updating Content Visibility, Top Users Updating Permissions on Content, Trend - Admin Mode, Trend - Events, Trend - Field Extraction Rules, Trend - User Mode, Users in Admin Mode



## Parser:
```
| json "eventName", "application.name" as EventName, ApplicationName nodrop
 
```
### Use Cases:
Active Users, Active vs InActive FER, Activities Over Time, Application Installed, Content by Permission Added, Content by Permission Deleted, Content Exported, Content made Visible to Public, Content Publicly Accessed, Content Synchronization Success/Failure Over Time, Geo Location - Admin Mode, Geo Location - Content Publicly Accessed, Geo Location - User Mode, Geo Location of Events, Geo Locations - Application Installed, One Day Time Shift Comparison, Permission Added Over Time by Source Type, Permission Deleted Over Time by Source Type, Recent - Application Installed, Recent - Content Created/Deleted/Exported/Imported, Recent - Content Publicly Accessed, Recent - Content Synchronization, Recent - Content Updated/Moved/Copied, Recent - Content Visibility Changes, Recent - Permissions Added to Content, Recent - Permissions Deleted from Content, Recent Events - Field Extraction Rule Events, Top Application Installed, Top Content Copied, Top Content Exported, Top Content Made Visible to public, Top Content Publicly Accessed, Top Content Requested to Synchronize, Top Content Type - Admin Mode, Top Content Type - User Mode, Top Content with Permission Updated, Top Users, Top Users - Admin Mode, Top Users - User Mode, Top Users to Request for Synchronization, Top Users Updating Content Visibility, Top Users Updating Permissions on Content, Trend - Admin Mode, Trend - Events, Trend - Field Extraction Rules, Trend - User Mode, Users in Admin Mode



## Parser:
```
| json "eventName", "contentIdentity.name" as EventName, ContentName nodrop
 
```
### Use Cases:
Active Users, Active vs InActive FER, Activities Over Time, Application Installed, Content by Permission Added, Content by Permission Deleted, Content Exported, Content made Visible to Public, Content Publicly Accessed, Content Synchronization Success/Failure Over Time, Geo Location - Admin Mode, Geo Location - Content Publicly Accessed, Geo Location - User Mode, Geo Location of Events, Geo Locations - Application Installed, One Day Time Shift Comparison, Permission Added Over Time by Source Type, Permission Deleted Over Time by Source Type, Recent - Application Installed, Recent - Content Created/Deleted/Exported/Imported, Recent - Content Publicly Accessed, Recent - Content Synchronization, Recent - Content Updated/Moved/Copied, Recent - Content Visibility Changes, Recent - Permissions Added to Content, Recent - Permissions Deleted from Content, Recent Events - Field Extraction Rule Events, Top Application Installed, Top Content Copied, Top Content Exported, Top Content Made Visible to public, Top Content Publicly Accessed, Top Content Requested to Synchronize, Top Content Type - Admin Mode, Top Content Type - User Mode, Top Content with Permission Updated, Top Users, Top Users - Admin Mode, Top Users - User Mode, Top Users to Request for Synchronization, Top Users Updating Content Visibility, Top Users Updating Permissions on Content, Trend - Admin Mode, Trend - Events, Trend - Field Extraction Rules, Trend - User Mode, Users in Admin Mode



## Parser:
```
| json "eventName", "contentIdentity.name", "operator.email" as EventName, ContentName, UserEmail  nodrop
 
```
### Use Cases:
Active Users, Active vs InActive FER, Activities Over Time, Application Installed, Content by Permission Added, Content by Permission Deleted, Content Exported, Content made Visible to Public, Content Publicly Accessed, Content Synchronization Success/Failure Over Time, Geo Location - Admin Mode, Geo Location - Content Publicly Accessed, Geo Location - User Mode, Geo Location of Events, Geo Locations - Application Installed, One Day Time Shift Comparison, Permission Added Over Time by Source Type, Permission Deleted Over Time by Source Type, Recent - Application Installed, Recent - Content Created/Deleted/Exported/Imported, Recent - Content Publicly Accessed, Recent - Content Synchronization, Recent - Content Updated/Moved/Copied, Recent - Content Visibility Changes, Recent - Permissions Added to Content, Recent - Permissions Deleted from Content, Recent Events - Field Extraction Rule Events, Top Application Installed, Top Content Copied, Top Content Exported, Top Content Made Visible to public, Top Content Publicly Accessed, Top Content Requested to Synchronize, Top Content Type - Admin Mode, Top Content Type - User Mode, Top Content with Permission Updated, Top Users, Top Users - Admin Mode, Top Users - User Mode, Top Users to Request for Synchronization, Top Users Updating Content Visibility, Top Users Updating Permissions on Content, Trend - Admin Mode, Trend - Events, Trend - Field Extraction Rules, Trend - User Mode, Users in Admin Mode



## Parser:
```
| json "eventName", "contentIdentity.name", "to" as EventName, ContentName, VisibleTo nodrop
 
```
### Use Cases:
Active Users, Active vs InActive FER, Activities Over Time, Application Installed, Content by Permission Added, Content by Permission Deleted, Content Exported, Content made Visible to Public, Content Publicly Accessed, Content Synchronization Success/Failure Over Time, Geo Location - Admin Mode, Geo Location - Content Publicly Accessed, Geo Location - User Mode, Geo Location of Events, Geo Locations - Application Installed, One Day Time Shift Comparison, Permission Added Over Time by Source Type, Permission Deleted Over Time by Source Type, Recent - Application Installed, Recent - Content Created/Deleted/Exported/Imported, Recent - Content Publicly Accessed, Recent - Content Synchronization, Recent - Content Updated/Moved/Copied, Recent - Content Visibility Changes, Recent - Permissions Added to Content, Recent - Permissions Deleted from Content, Recent Events - Field Extraction Rule Events, Top Application Installed, Top Content Copied, Top Content Exported, Top Content Made Visible to public, Top Content Publicly Accessed, Top Content Requested to Synchronize, Top Content Type - Admin Mode, Top Content Type - User Mode, Top Content with Permission Updated, Top Users, Top Users - Admin Mode, Top Users - User Mode, Top Users to Request for Synchronization, Top Users Updating Content Visibility, Top Users Updating Permissions on Content, Trend - Admin Mode, Trend - Events, Trend - Field Extraction Rules, Trend - User Mode, Users in Admin Mode



## Parser:
```
| json "eventName", "contentIdentity.name","permissionsAdded" as EventName, ContentName, permissionsAdded nodrop
| parse regex field=permissionsAdded "(?<json_added_blob>\{.+?(?:\}\}|\]\}))" multi nodrop
| json field=json_added_blob "permissionSourceType" as TargetPermissionSourceType
 
```
### Use Cases:
Active Users, Active vs InActive FER, Activities Over Time, Application Installed, Content by Permission Added, Content by Permission Deleted, Content Exported, Content made Visible to Public, Content Publicly Accessed, Content Synchronization Success/Failure Over Time, Geo Location - Admin Mode, Geo Location - Content Publicly Accessed, Geo Location - User Mode, Geo Location of Events, Geo Locations - Application Installed, One Day Time Shift Comparison, Permission Added Over Time by Source Type, Permission Deleted Over Time by Source Type, Recent - Application Installed, Recent - Content Created/Deleted/Exported/Imported, Recent - Content Publicly Accessed, Recent - Content Synchronization, Recent - Content Updated/Moved/Copied, Recent - Content Visibility Changes, Recent - Permissions Added to Content, Recent - Permissions Deleted from Content, Recent Events - Field Extraction Rule Events, Top Application Installed, Top Content Copied, Top Content Exported, Top Content Made Visible to public, Top Content Publicly Accessed, Top Content Requested to Synchronize, Top Content Type - Admin Mode, Top Content Type - User Mode, Top Content with Permission Updated, Top Users, Top Users - Admin Mode, Top Users - User Mode, Top Users to Request for Synchronization, Top Users Updating Content Visibility, Top Users Updating Permissions on Content, Trend - Admin Mode, Trend - Events, Trend - Field Extraction Rules, Trend - User Mode, Users in Admin Mode



## Parser:
```
| json "eventName", "contentIdentity.name","permissionsAdded" as EventName, ContentName, permissionsAdded nodrop
| parse regex field=permissionsAdded "(?<json_added_blob>\{[^\}]+(?:\}\}|\}))" multi nodrop
| json field=json_added_blob "permissionSourceType" as TargetPermissionSourceType
 
```
### Use Cases:
Activities Over Time, Content by Permission Added, Content made Visible to Public, Content Publicly Accessed, Top Content Publicly Accessed, Top Users



## Parser:
```
| json "eventName", "contentIdentity.name","permissionsDeleted" as EventName, ContentName, permissionsDeleted nodrop
| parse regex field=permissionsDeleted "(?<json_deleted_blob>\{.+(?:\}\}|\}))" multi nodrop
| json field=json_deleted_blob "permissionSourceType" as TargetPermissionSourceType
 
```
### Use Cases:
Active Users, Active vs InActive FER, Activities Over Time, Application Installed, Content by Permission Added, Content by Permission Deleted, Content Exported, Content made Visible to Public, Content Publicly Accessed, Content Synchronization Success/Failure Over Time, Geo Location - Admin Mode, Geo Location - Content Publicly Accessed, Geo Location - User Mode, Geo Location of Events, Geo Locations - Application Installed, One Day Time Shift Comparison, Permission Added Over Time by Source Type, Permission Deleted Over Time by Source Type, Recent - Application Installed, Recent - Content Created/Deleted/Exported/Imported, Recent - Content Publicly Accessed, Recent - Content Synchronization, Recent - Content Updated/Moved/Copied, Recent - Content Visibility Changes, Recent - Permissions Added to Content, Recent - Permissions Deleted from Content, Recent Events - Field Extraction Rule Events, Top Application Installed, Top Content Copied, Top Content Exported, Top Content Made Visible to public, Top Content Publicly Accessed, Top Content Requested to Synchronize, Top Content Type - Admin Mode, Top Content Type - User Mode, Top Content with Permission Updated, Top Users, Top Users - Admin Mode, Top Users - User Mode, Top Users to Request for Synchronization, Top Users Updating Content Visibility, Top Users Updating Permissions on Content, Trend - Admin Mode, Trend - Events, Trend - Field Extraction Rules, Trend - User Mode, Users in Admin Mode



## Parser:
```
| json "eventName", "contentIdentity.name","permissionsDeleted" as EventName, ContentName, permissionsDeleted nodrop
| parse regex field=permissionsDeleted "(?<json_deleted_blob>\{[^\}]+(?:\}\}|\}))" multi nodrop
| json field=json_deleted_blob "permissionSourceType" as TargetPermissionSourceType
 
```
### Use Cases:
Activities Over Time, Content by Permission Added, Content by Permission Deleted, Content made Visible to Public, Content Publicly Accessed, Top Content Publicly Accessed, Top Users, Users in Admin Mode



## Parser:
```
| json "eventName", "eventTime", "adminMode", "contentIdentity.name", "contentIdentity.type", "operator.email", "operator.id", "operator.sourceIp" as EventName, EventTime, AdminMode, ContentName, ContentType, UserEmail, UserId, UserIp nodrop
 
```
### Use Cases:
Active Users, Active vs InActive FER, Activities Over Time, Application Installed, Content by Permission Added, Content by Permission Deleted, Content Exported, Content made Visible to Public, Content Publicly Accessed, Content Synchronization Success/Failure Over Time, Geo Location - Admin Mode, Geo Location - Content Publicly Accessed, Geo Location - User Mode, Geo Location of Events, Geo Locations - Application Installed, One Day Time Shift Comparison, Permission Added Over Time by Source Type, Permission Deleted Over Time by Source Type, Recent - Application Installed, Recent - Content Created/Deleted/Exported/Imported, Recent - Content Publicly Accessed, Recent - Content Synchronization, Recent - Content Updated/Moved/Copied, Recent - Content Visibility Changes, Recent - Permissions Added to Content, Recent - Permissions Deleted from Content, Recent Events - Field Extraction Rule Events, Top Application Installed, Top Content Copied, Top Content Exported, Top Content Made Visible to public, Top Content Publicly Accessed, Top Content Requested to Synchronize, Top Content Type - Admin Mode, Top Content Type - User Mode, Top Content with Permission Updated, Top Users, Top Users - Admin Mode, Top Users - User Mode, Top Users to Request for Synchronization, Top Users Updating Content Visibility, Top Users Updating Permissions on Content, Trend - Admin Mode, Trend - Events, Trend - Field Extraction Rules, Trend - User Mode, Users in Admin Mode



## Parser:
```
| json "eventName", "eventTime", "adminMode", "contentIdentity.name", "contentIdentity.type", "operator.email", "operator.id", "operator.sourceIp" as EventName, EventTime, AdminMode, ContentName, ContentType, UserEmail, UserId, UserIp nodrop
| json "copiedTo.contentIdentity.name" as TargetContentName nodrop
| json "origin.name", "destination.name" as SourceFolder, TargetFolder nodrop
 
```
### Use Cases:
Active Users, Active vs InActive FER, Activities Over Time, Application Installed, Content by Permission Added, Content by Permission Deleted, Content Exported, Content made Visible to Public, Content Publicly Accessed, Content Synchronization Success/Failure Over Time, Geo Location - Admin Mode, Geo Location - Content Publicly Accessed, Geo Location - User Mode, Geo Location of Events, Geo Locations - Application Installed, One Day Time Shift Comparison, Permission Added Over Time by Source Type, Permission Deleted Over Time by Source Type, Recent - Application Installed, Recent - Content Created/Deleted/Exported/Imported, Recent - Content Publicly Accessed, Recent - Content Synchronization, Recent - Content Updated/Moved/Copied, Recent - Content Visibility Changes, Recent - Permissions Added to Content, Recent - Permissions Deleted from Content, Recent Events - Field Extraction Rule Events, Top Application Installed, Top Content Copied, Top Content Exported, Top Content Made Visible to public, Top Content Publicly Accessed, Top Content Requested to Synchronize, Top Content Type - Admin Mode, Top Content Type - User Mode, Top Content with Permission Updated, Top Users, Top Users - Admin Mode, Top Users - User Mode, Top Users to Request for Synchronization, Top Users Updating Content Visibility, Top Users Updating Permissions on Content, Trend - Admin Mode, Trend - Events, Trend - Field Extraction Rules, Trend - User Mode, Users in Admin Mode



## Parser:
```
| json "eventName", "eventTime", "application.name", "dataSources","operator.email", "contentIdentity.type" as EventName, EventTime, ApplicationName, DataSources, UserEmail, ContentName nodrop
| parse regex field=DataSources "\"(?<LogSourceType>.*?)\":\"(?<LogSource>.*?)\"" multi nodrop
 
```
### Use Cases:
Active Users, Active vs InActive FER, Activities Over Time, Application Installed, Content by Permission Added, Content by Permission Deleted, Content Exported, Content made Visible to Public, Content Publicly Accessed, Content Synchronization Success/Failure Over Time, Geo Location - Admin Mode, Geo Location - Content Publicly Accessed, Geo Location - User Mode, Geo Location of Events, Geo Locations - Application Installed, One Day Time Shift Comparison, Permission Added Over Time by Source Type, Permission Deleted Over Time by Source Type, Recent - Application Installed, Recent - Content Created/Deleted/Exported/Imported, Recent - Content Publicly Accessed, Recent - Content Synchronization, Recent - Content Updated/Moved/Copied, Recent - Content Visibility Changes, Recent - Permissions Added to Content, Recent - Permissions Deleted from Content, Recent Events - Field Extraction Rule Events, Top Application Installed, Top Content Copied, Top Content Exported, Top Content Made Visible to public, Top Content Publicly Accessed, Top Content Requested to Synchronize, Top Content Type - Admin Mode, Top Content Type - User Mode, Top Content with Permission Updated, Top Users, Top Users - Admin Mode, Top Users - User Mode, Top Users to Request for Synchronization, Top Users Updating Content Visibility, Top Users Updating Permissions on Content, Trend - Admin Mode, Trend - Events, Trend - Field Extraction Rules, Trend - User Mode, Users in Admin Mode



## Parser:
```
| json "eventName", "eventTime", "contentIdentity.name", "contentIdentity.type", "operator.email", "permissionsAdded" as EventName, EventTime, ContentName, ContentType, UserEmail, permissionsAdded nodrop
| parse regex field=permissionsAdded "(?<json_added_blob>\{.+?(?:\}\}|\]\}))" multi nodrop
| json field=json_added_blob "permissions", "roleIdentity.roleName", "userIdentity.userEmail" as PermissionsAdded, RoleName, TargetUserEmail nodrop
 
```
### Use Cases:
Active Users, Active vs InActive FER, Activities Over Time, Application Installed, Content by Permission Added, Content by Permission Deleted, Content Exported, Content made Visible to Public, Content Publicly Accessed, Content Synchronization Success/Failure Over Time, Geo Location - Admin Mode, Geo Location - Content Publicly Accessed, Geo Location - User Mode, Geo Location of Events, Geo Locations - Application Installed, One Day Time Shift Comparison, Permission Added Over Time by Source Type, Permission Deleted Over Time by Source Type, Recent - Application Installed, Recent - Content Created/Deleted/Exported/Imported, Recent - Content Publicly Accessed, Recent - Content Synchronization, Recent - Content Updated/Moved/Copied, Recent - Content Visibility Changes, Recent - Permissions Added to Content, Recent - Permissions Deleted from Content, Recent Events - Field Extraction Rule Events, Top Application Installed, Top Content Copied, Top Content Exported, Top Content Made Visible to public, Top Content Publicly Accessed, Top Content Requested to Synchronize, Top Content Type - Admin Mode, Top Content Type - User Mode, Top Content with Permission Updated, Top Users, Top Users - Admin Mode, Top Users - User Mode, Top Users to Request for Synchronization, Top Users Updating Content Visibility, Top Users Updating Permissions on Content, Trend - Admin Mode, Trend - Events, Trend - Field Extraction Rules, Trend - User Mode, Users in Admin Mode



## Parser:
```
| json "eventName", "eventTime", "contentIdentity.name", "contentIdentity.type", "operator.email", "permissionsDeleted" as EventName, EventTime, ContentName, ContentType, UserEmail, permissionsDeleted nodrop
| parse regex field=permissionsDeleted "(?<json_deleted_blob>\{.+?(?:\}\}|\]\}))" multi nodrop
| json field=json_deleted_blob "permissions", "roleIdentity.roleName", "userIdentity.userEmail" as PermissionsDeleted, RoleName, TargetUserEmail nodrop
 
```
### Use Cases:
Active Users, Active vs InActive FER, Activities Over Time, Application Installed, Content by Permission Added, Content by Permission Deleted, Content Exported, Content made Visible to Public, Content Publicly Accessed, Content Synchronization Success/Failure Over Time, Geo Location - Admin Mode, Geo Location - Content Publicly Accessed, Geo Location - User Mode, Geo Location of Events, Geo Locations - Application Installed, One Day Time Shift Comparison, Permission Added Over Time by Source Type, Permission Deleted Over Time by Source Type, Recent - Application Installed, Recent - Content Created/Deleted/Exported/Imported, Recent - Content Publicly Accessed, Recent - Content Synchronization, Recent - Content Updated/Moved/Copied, Recent - Content Visibility Changes, Recent - Permissions Added to Content, Recent - Permissions Deleted from Content, Recent Events - Field Extraction Rule Events, Top Application Installed, Top Content Copied, Top Content Exported, Top Content Made Visible to public, Top Content Publicly Accessed, Top Content Requested to Synchronize, Top Content Type - Admin Mode, Top Content Type - User Mode, Top Content with Permission Updated, Top Users, Top Users - Admin Mode, Top Users - User Mode, Top Users to Request for Synchronization, Top Users Updating Content Visibility, Top Users Updating Permissions on Content, Trend - Admin Mode, Trend - Events, Trend - Field Extraction Rules, Trend - User Mode, Users in Admin Mode



## Parser:
```
| json "eventName", "eventTime", "contentIdentity.name", "contentIdentity.type", "visibility", "viewerIp", "url", "adminMode", "operator.email" as EventName, EventTime, ContentName, ContentType, Visibility, ViewerIp, URL, AdminMode, UserEmail nodrop
 
```
### Use Cases:
Active Users, Active vs InActive FER, Activities Over Time, Application Installed, Content by Permission Added, Content by Permission Deleted, Content Exported, Content made Visible to Public, Content Publicly Accessed, Content Synchronization Success/Failure Over Time, Geo Location - Admin Mode, Geo Location - Content Publicly Accessed, Geo Location - User Mode, Geo Location of Events, Geo Locations - Application Installed, One Day Time Shift Comparison, Permission Added Over Time by Source Type, Permission Deleted Over Time by Source Type, Recent - Application Installed, Recent - Content Created/Deleted/Exported/Imported, Recent - Content Publicly Accessed, Recent - Content Synchronization, Recent - Content Updated/Moved/Copied, Recent - Content Visibility Changes, Recent - Permissions Added to Content, Recent - Permissions Deleted from Content, Recent Events - Field Extraction Rule Events, Top Application Installed, Top Content Copied, Top Content Exported, Top Content Made Visible to public, Top Content Publicly Accessed, Top Content Requested to Synchronize, Top Content Type - Admin Mode, Top Content Type - User Mode, Top Content with Permission Updated, Top Users, Top Users - Admin Mode, Top Users - User Mode, Top Users to Request for Synchronization, Top Users Updating Content Visibility, Top Users Updating Permissions on Content, Trend - Admin Mode, Trend - Events, Trend - Field Extraction Rules, Trend - User Mode, Users in Admin Mode



## Parser:
```
| json "eventName", "eventTime", "operator.email", "operator.id", "operator.sourceIp", "fieldExtractionRuleIdentity.fieldExtractionRuleId", "fieldExtractionRuleIdentity.fieldExtractionRuleName", "fieldExtractionRule.enabled", "fieldExtractionRule.fieldNames", "to", "from" as EventName, EventTime, User, UserId, UserIp, FieldExtractionRuleId, FieldExtractionRuleName, IsActive, createdfieldnames, CurrentValue, PreviousValue nodrop
| json field=CurrentValue "enabled", "fieldNames" as ActiveUpdated, fieldNamesUpdated nodrop
 
```
### Use Cases:
Active Users, Active vs InActive FER, Activities Over Time, Application Installed, Content by Permission Added, Content by Permission Deleted, Content Exported, Content made Visible to Public, Content Publicly Accessed, Content Synchronization Success/Failure Over Time, Geo Location - Admin Mode, Geo Location - Content Publicly Accessed, Geo Location - User Mode, Geo Location of Events, Geo Locations - Application Installed, One Day Time Shift Comparison, Permission Added Over Time by Source Type, Permission Deleted Over Time by Source Type, Recent - Application Installed, Recent - Content Created/Deleted/Exported/Imported, Recent - Content Publicly Accessed, Recent - Content Synchronization, Recent - Content Updated/Moved/Copied, Recent - Content Visibility Changes, Recent - Permissions Added to Content, Recent - Permissions Deleted from Content, Recent Events - Field Extraction Rule Events, Top Application Installed, Top Content Copied, Top Content Exported, Top Content Made Visible to public, Top Content Publicly Accessed, Top Content Requested to Synchronize, Top Content Type - Admin Mode, Top Content Type - User Mode, Top Content with Permission Updated, Top Users, Top Users - Admin Mode, Top Users - User Mode, Top Users to Request for Synchronization, Top Users Updating Content Visibility, Top Users Updating Permissions on Content, Trend - Admin Mode, Trend - Events, Trend - Field Extraction Rules, Trend - User Mode, Users in Admin Mode



## Parser:
```
| json "eventName", "eventTime", "status", "syncRequest.requestBy.userEmail", "syncRequest.contentNameToSynchronize", "syncRequest.parentFolder.name", "contentIdentity.name" as EventName, EventTime, Status, RequestedBy, ContentToSynchronize, FolderName, ContentName  nodrop
 
```
### Use Cases:
Active Users, Active vs InActive FER, Activities Over Time, Application Installed, Content by Permission Added, Content by Permission Deleted, Content Exported, Content made Visible to Public, Content Publicly Accessed, Content Synchronization Success/Failure Over Time, Geo Location - Admin Mode, Geo Location - Content Publicly Accessed, Geo Location - User Mode, Geo Location of Events, Geo Locations - Application Installed, One Day Time Shift Comparison, Permission Added Over Time by Source Type, Permission Deleted Over Time by Source Type, Recent - Application Installed, Recent - Content Created/Deleted/Exported/Imported, Recent - Content Publicly Accessed, Recent - Content Synchronization, Recent - Content Updated/Moved/Copied, Recent - Content Visibility Changes, Recent - Permissions Added to Content, Recent - Permissions Deleted from Content, Recent Events - Field Extraction Rule Events, Top Application Installed, Top Content Copied, Top Content Exported, Top Content Made Visible to public, Top Content Publicly Accessed, Top Content Requested to Synchronize, Top Content Type - Admin Mode, Top Content Type - User Mode, Top Content with Permission Updated, Top Users, Top Users - Admin Mode, Top Users - User Mode, Top Users to Request for Synchronization, Top Users Updating Content Visibility, Top Users Updating Permissions on Content, Trend - Admin Mode, Trend - Events, Trend - Field Extraction Rules, Trend - User Mode, Users in Admin Mode



## Parser:
```
| json "eventName", "fieldExtractionRuleIdentity.fieldExtractionRuleId", "fieldExtractionRule.enabled", "to.enabled","operator.email" as EventName, FieldExtractionRuleId, CreatedEnabled, UpdatedEnabled, User nodrop
 
```
### Use Cases:
Active Users, Active vs InActive FER, Activities Over Time, Application Installed, Content by Permission Added, Content by Permission Deleted, Content Exported, Content made Visible to Public, Content Publicly Accessed, Content Synchronization Success/Failure Over Time, Geo Location - Admin Mode, Geo Location - Content Publicly Accessed, Geo Location - User Mode, Geo Location of Events, Geo Locations - Application Installed, One Day Time Shift Comparison, Permission Added Over Time by Source Type, Permission Deleted Over Time by Source Type, Recent - Application Installed, Recent - Content Created/Deleted/Exported/Imported, Recent - Content Publicly Accessed, Recent - Content Synchronization, Recent - Content Updated/Moved/Copied, Recent - Content Visibility Changes, Recent - Permissions Added to Content, Recent - Permissions Deleted from Content, Recent Events - Field Extraction Rule Events, Top Application Installed, Top Content Copied, Top Content Exported, Top Content Made Visible to public, Top Content Publicly Accessed, Top Content Requested to Synchronize, Top Content Type - Admin Mode, Top Content Type - User Mode, Top Content with Permission Updated, Top Users, Top Users - Admin Mode, Top Users - User Mode, Top Users to Request for Synchronization, Top Users Updating Content Visibility, Top Users Updating Permissions on Content, Trend - Admin Mode, Trend - Events, Trend - Field Extraction Rules, Trend - User Mode, Users in Admin Mode



## Parser:
```
| json "eventName", "operator.email" as EventName, User nodrop
 
```
### Use Cases:
Active Users, Active vs InActive FER, Activities Over Time, Application Installed, Content by Permission Added, Content by Permission Deleted, Content Exported, Content made Visible to Public, Content Publicly Accessed, Content Synchronization Success/Failure Over Time, Geo Location - Admin Mode, Geo Location - Content Publicly Accessed, Geo Location - User Mode, Geo Location of Events, Geo Locations - Application Installed, One Day Time Shift Comparison, Permission Added Over Time by Source Type, Permission Deleted Over Time by Source Type, Recent - Application Installed, Recent - Content Created/Deleted/Exported/Imported, Recent - Content Publicly Accessed, Recent - Content Synchronization, Recent - Content Updated/Moved/Copied, Recent - Content Visibility Changes, Recent - Permissions Added to Content, Recent - Permissions Deleted from Content, Recent Events - Field Extraction Rule Events, Top Application Installed, Top Content Copied, Top Content Exported, Top Content Made Visible to public, Top Content Publicly Accessed, Top Content Requested to Synchronize, Top Content Type - Admin Mode, Top Content Type - User Mode, Top Content with Permission Updated, Top Users, Top Users - Admin Mode, Top Users - User Mode, Top Users to Request for Synchronization, Top Users Updating Content Visibility, Top Users Updating Permissions on Content, Trend - Admin Mode, Trend - Events, Trend - Field Extraction Rules, Trend - User Mode, Users in Admin Mode



## Parser:
```
| json "eventName", "operator.email", "contentIdentity.type"  as EventName, UserEmail, ContentName  nodrop
 
```
### Use Cases:
Active Users, Active vs InActive FER, Activities Over Time, Application Installed, Content by Permission Added, Content by Permission Deleted, Content Exported, Content made Visible to Public, Content Publicly Accessed, Content Synchronization Success/Failure Over Time, Geo Location - Admin Mode, Geo Location - Content Publicly Accessed, Geo Location - User Mode, Geo Location of Events, Geo Locations - Application Installed, One Day Time Shift Comparison, Permission Added Over Time by Source Type, Permission Deleted Over Time by Source Type, Recent - Application Installed, Recent - Content Created/Deleted/Exported/Imported, Recent - Content Publicly Accessed, Recent - Content Synchronization, Recent - Content Updated/Moved/Copied, Recent - Content Visibility Changes, Recent - Permissions Added to Content, Recent - Permissions Deleted from Content, Recent Events - Field Extraction Rule Events, Top Application Installed, Top Content Copied, Top Content Exported, Top Content Made Visible to public, Top Content Publicly Accessed, Top Content Requested to Synchronize, Top Content Type - Admin Mode, Top Content Type - User Mode, Top Content with Permission Updated, Top Users, Top Users - Admin Mode, Top Users - User Mode, Top Users to Request for Synchronization, Top Users Updating Content Visibility, Top Users Updating Permissions on Content, Trend - Admin Mode, Trend - Events, Trend - Field Extraction Rules, Trend - User Mode, Users in Admin Mode



## Parser:
```
| json "eventName", "operator.email", "contentIdentity.type","viewerIp" as EventName, UserEmail, ContentName, UserIp  nodrop
 
```
### Use Cases:
Active Users, Active vs InActive FER, Activities Over Time, Application Installed, Content by Permission Added, Content by Permission Deleted, Content Exported, Content made Visible to Public, Content Publicly Accessed, Content Synchronization Success/Failure Over Time, Geo Location - Admin Mode, Geo Location - Content Publicly Accessed, Geo Location - User Mode, Geo Location of Events, Geo Locations - Application Installed, One Day Time Shift Comparison, Permission Added Over Time by Source Type, Permission Deleted Over Time by Source Type, Recent - Application Installed, Recent - Content Created/Deleted/Exported/Imported, Recent - Content Publicly Accessed, Recent - Content Synchronization, Recent - Content Updated/Moved/Copied, Recent - Content Visibility Changes, Recent - Permissions Added to Content, Recent - Permissions Deleted from Content, Recent Events - Field Extraction Rule Events, Top Application Installed, Top Content Copied, Top Content Exported, Top Content Made Visible to public, Top Content Publicly Accessed, Top Content Requested to Synchronize, Top Content Type - Admin Mode, Top Content Type - User Mode, Top Content with Permission Updated, Top Users, Top Users - Admin Mode, Top Users - User Mode, Top Users to Request for Synchronization, Top Users Updating Content Visibility, Top Users Updating Permissions on Content, Trend - Admin Mode, Trend - Events, Trend - Field Extraction Rules, Trend - User Mode, Users in Admin Mode



## Parser:
```
| json "eventName", "operator.email", "sessionIdentity.userEmail" as EventName, UserEmail, TimedOutUser nodrop
 
```
### Use Cases:
Active Users, Active vs InActive FER, Activities Over Time, Application Installed, Content by Permission Added, Content by Permission Deleted, Content Exported, Content made Visible to Public, Content Publicly Accessed, Content Synchronization Success/Failure Over Time, Geo Location - Admin Mode, Geo Location - Content Publicly Accessed, Geo Location - User Mode, Geo Location of Events, Geo Locations - Application Installed, One Day Time Shift Comparison, Permission Added Over Time by Source Type, Permission Deleted Over Time by Source Type, Recent - Application Installed, Recent - Content Created/Deleted/Exported/Imported, Recent - Content Publicly Accessed, Recent - Content Synchronization, Recent - Content Updated/Moved/Copied, Recent - Content Visibility Changes, Recent - Permissions Added to Content, Recent - Permissions Deleted from Content, Recent Events - Field Extraction Rule Events, Top Application Installed, Top Content Copied, Top Content Exported, Top Content Made Visible to public, Top Content Publicly Accessed, Top Content Requested to Synchronize, Top Content Type - Admin Mode, Top Content Type - User Mode, Top Content with Permission Updated, Top Users, Top Users - Admin Mode, Top Users - User Mode, Top Users to Request for Synchronization, Top Users Updating Content Visibility, Top Users Updating Permissions on Content, Trend - Admin Mode, Trend - Events, Trend - Field Extraction Rules, Trend - User Mode, Users in Admin Mode



## Parser:
```
| json "eventName", "operator.sourceIp","operator.email" as EventName, UserIp, User nodrop
 
```
### Use Cases:
Active Users, Active vs InActive FER, Activities Over Time, Application Installed, Content by Permission Added, Content by Permission Deleted, Content Exported, Content made Visible to Public, Content Publicly Accessed, Content Synchronization Success/Failure Over Time, Geo Location - Admin Mode, Geo Location - Content Publicly Accessed, Geo Location - User Mode, Geo Location of Events, Geo Locations - Application Installed, One Day Time Shift Comparison, Permission Added Over Time by Source Type, Permission Deleted Over Time by Source Type, Recent - Application Installed, Recent - Content Created/Deleted/Exported/Imported, Recent - Content Publicly Accessed, Recent - Content Synchronization, Recent - Content Updated/Moved/Copied, Recent - Content Visibility Changes, Recent - Permissions Added to Content, Recent - Permissions Deleted from Content, Recent Events - Field Extraction Rule Events, Top Application Installed, Top Content Copied, Top Content Exported, Top Content Made Visible to public, Top Content Publicly Accessed, Top Content Requested to Synchronize, Top Content Type - Admin Mode, Top Content Type - User Mode, Top Content with Permission Updated, Top Users, Top Users - Admin Mode, Top Users - User Mode, Top Users to Request for Synchronization, Top Users Updating Content Visibility, Top Users Updating Permissions on Content, Trend - Admin Mode, Trend - Events, Trend - Field Extraction Rules, Trend - User Mode, Users in Admin Mode



## Parser:
```
| json "eventName", "permissionsAdded", "contentIdentity.name", "operator.email" as EventName, permissionsAdded,  ContentName, UserEmail nodrop
| parse regex field=permissionsAdded  "(?<json_added_blob>\{.+?(?:\}\}|\]\}))" multi nodrop
 
```
### Use Cases:
Active Users, Active vs InActive FER, Activities Over Time, Application Installed, Content by Permission Added, Content by Permission Deleted, Content Exported, Content made Visible to Public, Content Publicly Accessed, Content Synchronization Success/Failure Over Time, Geo Location - Admin Mode, Geo Location - Content Publicly Accessed, Geo Location - User Mode, Geo Location of Events, Geo Locations - Application Installed, One Day Time Shift Comparison, Permission Added Over Time by Source Type, Permission Deleted Over Time by Source Type, Recent - Application Installed, Recent - Content Created/Deleted/Exported/Imported, Recent - Content Publicly Accessed, Recent - Content Synchronization, Recent - Content Updated/Moved/Copied, Recent - Content Visibility Changes, Recent - Permissions Added to Content, Recent - Permissions Deleted from Content, Recent Events - Field Extraction Rule Events, Top Application Installed, Top Content Copied, Top Content Exported, Top Content Made Visible to public, Top Content Publicly Accessed, Top Content Requested to Synchronize, Top Content Type - Admin Mode, Top Content Type - User Mode, Top Content with Permission Updated, Top Users, Top Users - Admin Mode, Top Users - User Mode, Top Users to Request for Synchronization, Top Users Updating Content Visibility, Top Users Updating Permissions on Content, Trend - Admin Mode, Trend - Events, Trend - Field Extraction Rules, Trend - User Mode, Users in Admin Mode



## Parser:
```
| json "eventName", "permissionsDeleted", "contentIdentity.name", "operator.email"  as EventName, permissionsDeleted,  ContentName, UserEmail nodrop
| parse regex field=permissionsDeleted "(?<json_added_blob>\{.+?(?:\}\}|\]\}))" multi nodrop
 
```
### Use Cases:
Active Users, Active vs InActive FER, Activities Over Time, Application Installed, Content by Permission Added, Content by Permission Deleted, Content Exported, Content made Visible to Public, Content Publicly Accessed, Content Synchronization Success/Failure Over Time, Geo Location - Admin Mode, Geo Location - Content Publicly Accessed, Geo Location - User Mode, Geo Location of Events, Geo Locations - Application Installed, One Day Time Shift Comparison, Permission Added Over Time by Source Type, Permission Deleted Over Time by Source Type, Recent - Application Installed, Recent - Content Created/Deleted/Exported/Imported, Recent - Content Publicly Accessed, Recent - Content Synchronization, Recent - Content Updated/Moved/Copied, Recent - Content Visibility Changes, Recent - Permissions Added to Content, Recent - Permissions Deleted from Content, Recent Events - Field Extraction Rule Events, Top Application Installed, Top Content Copied, Top Content Exported, Top Content Made Visible to public, Top Content Publicly Accessed, Top Content Requested to Synchronize, Top Content Type - Admin Mode, Top Content Type - User Mode, Top Content with Permission Updated, Top Users, Top Users - Admin Mode, Top Users - User Mode, Top Users to Request for Synchronization, Top Users Updating Content Visibility, Top Users Updating Permissions on Content, Trend - Admin Mode, Trend - Events, Trend - Field Extraction Rules, Trend - User Mode, Users in Admin Mode



## Parser:
```
| json "eventName", "status","syncRequest.requestBy.userEmail", "contentIdentity.name" as EventName, Status,  UserEmail, ContentName  nodrop
 
```
### Use Cases:
Active Users, Active vs InActive FER, Activities Over Time, Application Installed, Content by Permission Added, Content by Permission Deleted, Content Exported, Content made Visible to Public, Content Publicly Accessed, Content Synchronization Success/Failure Over Time, Geo Location - Admin Mode, Geo Location - Content Publicly Accessed, Geo Location - User Mode, Geo Location of Events, Geo Locations - Application Installed, One Day Time Shift Comparison, Permission Added Over Time by Source Type, Permission Deleted Over Time by Source Type, Recent - Application Installed, Recent - Content Created/Deleted/Exported/Imported, Recent - Content Publicly Accessed, Recent - Content Synchronization, Recent - Content Updated/Moved/Copied, Recent - Content Visibility Changes, Recent - Permissions Added to Content, Recent - Permissions Deleted from Content, Recent Events - Field Extraction Rule Events, Top Application Installed, Top Content Copied, Top Content Exported, Top Content Made Visible to public, Top Content Publicly Accessed, Top Content Requested to Synchronize, Top Content Type - Admin Mode, Top Content Type - User Mode, Top Content with Permission Updated, Top Users, Top Users - Admin Mode, Top Users - User Mode, Top Users to Request for Synchronization, Top Users Updating Content Visibility, Top Users Updating Permissions on Content, Trend - Admin Mode, Trend - Events, Trend - Field Extraction Rules, Trend - User Mode, Users in Admin Mode



## Parser:
```
| json "eventName", "syncRequest.contentNameToSynchronize","contentIdentity.name", "syncRequest.requestBy.userEmail" as EventName, ContentToSynchronize, ContentName, UserEmail
 
```
### Use Cases:
Active Users, Active vs InActive FER, Activities Over Time, Application Installed, Content by Permission Added, Content by Permission Deleted, Content Exported, Content made Visible to Public, Content Publicly Accessed, Content Synchronization Success/Failure Over Time, Geo Location - Admin Mode, Geo Location - Content Publicly Accessed, Geo Location - User Mode, Geo Location of Events, Geo Locations - Application Installed, One Day Time Shift Comparison, Permission Added Over Time by Source Type, Permission Deleted Over Time by Source Type, Recent - Application Installed, Recent - Content Created/Deleted/Exported/Imported, Recent - Content Publicly Accessed, Recent - Content Synchronization, Recent - Content Updated/Moved/Copied, Recent - Content Visibility Changes, Recent - Permissions Added to Content, Recent - Permissions Deleted from Content, Recent Events - Field Extraction Rule Events, Top Application Installed, Top Content Copied, Top Content Exported, Top Content Made Visible to public, Top Content Publicly Accessed, Top Content Requested to Synchronize, Top Content Type - Admin Mode, Top Content Type - User Mode, Top Content with Permission Updated, Top Users, Top Users - Admin Mode, Top Users - User Mode, Top Users to Request for Synchronization, Top Users Updating Content Visibility, Top Users Updating Permissions on Content, Trend - Admin Mode, Trend - Events, Trend - Field Extraction Rules, Trend - User Mode, Users in Admin Mode



## Parser:
```
| json "eventName", "syncRequest.requestBy.userEmail", "contentIdentity.name" as EventName, UserEmail, ContentName  nodrop
 
```
### Use Cases:
Active Users, Active vs InActive FER, Activities Over Time, Application Installed, Content by Permission Added, Content by Permission Deleted, Content Exported, Content made Visible to Public, Content Publicly Accessed, Content Synchronization Success/Failure Over Time, Geo Location - Admin Mode, Geo Location - Content Publicly Accessed, Geo Location - User Mode, Geo Location of Events, Geo Locations - Application Installed, One Day Time Shift Comparison, Permission Added Over Time by Source Type, Permission Deleted Over Time by Source Type, Recent - Application Installed, Recent - Content Created/Deleted/Exported/Imported, Recent - Content Publicly Accessed, Recent - Content Synchronization, Recent - Content Updated/Moved/Copied, Recent - Content Visibility Changes, Recent - Permissions Added to Content, Recent - Permissions Deleted from Content, Recent Events - Field Extraction Rule Events, Top Application Installed, Top Content Copied, Top Content Exported, Top Content Made Visible to public, Top Content Publicly Accessed, Top Content Requested to Synchronize, Top Content Type - Admin Mode, Top Content Type - User Mode, Top Content with Permission Updated, Top Users, Top Users - Admin Mode, Top Users - User Mode, Top Users to Request for Synchronization, Top Users Updating Content Visibility, Top Users Updating Permissions on Content, Trend - Admin Mode, Trend - Events, Trend - Field Extraction Rules, Trend - User Mode, Users in Admin Mode



## Parser:
```
| json "eventName","eventTime", "contentIdentity.name", "contentIdentity.type", "adminMode", "operator.email", "operator.sourceIp", "url", "to" as EventName,EventTime, ContentName, ContentType, AdminMode, UserEmail, UserIp, URL, VisibleTo nodrop
 
```
### Use Cases:
Active Users, Active vs InActive FER, Activities Over Time, Application Installed, Content by Permission Added, Content by Permission Deleted, Content Exported, Content made Visible to Public, Content Publicly Accessed, Content Synchronization Success/Failure Over Time, Geo Location - Admin Mode, Geo Location - Content Publicly Accessed, Geo Location - User Mode, Geo Location of Events, Geo Locations - Application Installed, One Day Time Shift Comparison, Permission Added Over Time by Source Type, Permission Deleted Over Time by Source Type, Recent - Application Installed, Recent - Content Created/Deleted/Exported/Imported, Recent - Content Publicly Accessed, Recent - Content Synchronization, Recent - Content Updated/Moved/Copied, Recent - Content Visibility Changes, Recent - Permissions Added to Content, Recent - Permissions Deleted from Content, Recent Events - Field Extraction Rule Events, Top Application Installed, Top Content Copied, Top Content Exported, Top Content Made Visible to public, Top Content Publicly Accessed, Top Content Requested to Synchronize, Top Content Type - Admin Mode, Top Content Type - User Mode, Top Content with Permission Updated, Top Users, Top Users - Admin Mode, Top Users - User Mode, Top Users to Request for Synchronization, Top Users Updating Content Visibility, Top Users Updating Permissions on Content, Trend - Admin Mode, Trend - Events, Trend - Field Extraction Rules, Trend - User Mode, Users in Admin Mode


