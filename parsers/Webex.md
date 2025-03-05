# Parsers For Webex

## Parser:
```
| parse "\"id\": \"*\"" as event_id nodrop
| parse "\"eventDescription\": \"*\"" as event_description nodrop
| parse "\"targetType\": \"*\"" as target_type nodrop
| parse "\"targetId\": \"*\"" as target_id nodrop
| parse "\"targetName\": \"*\"" as target_name nodrop
| parse "\"eventCategory\": \"*\"" as event_category nodrop
| parse "\"created\": \"*\"" as created_time nodrop
| parse "\"actionText\": \"*\"" as action_text nodrop
| parse "\"actorId\": \"*\"" as actor_id nodrop
| parse "\"actorName\": \"*\"" as actor_name nodrop
| parse "\"actorEmail\": \"*\"" as actor_email nodrop
| parse "\"actorOrgId\": \"*\"" as actor_org_id nodrop
| parse "\"actorOrgName\": \"*\"" as actor_org_name nodrop
| parse "\"actorUserAgent\": \"*\"" as actor_user_agent nodrop
| parse "\"actorIp\": \"*\"" as actor_ip nodrop
 
```
### Use Cases:
Account Assigned to External User Events, Authorization Code Related Events Over Time, Authorization Events Over Time, Change in MFA Over Time, Devices Created, Devices Deleted, Devices Rebooted, Events by Admin, Events by Category, Events by Category Over Time, Events by User Agent, Events from High Risk Countries, External Admin Addition Events, Geo Location of Events, Groups Created, Login Events Over Time, Recent Activity on Allow List, Recent Activity on Deny List, Recent Authorization Code Events, Recent Authorization Events, Recent Deactivated Users, Recent Events, Recent Login Events, Recent Reactivated Users, Recent Revoked Accounts by Admin, Remote Access Related Events Over Time, Total Audit Events, Users Created, Users Deleted, Users Updated



## Parser:
```
| parse "\"id\": \"*\"" as event_id nodrop
| parse "\"eventDescription\": \"*\"" as event_description nodrop
| parse "\"targetType\": \"*\"" as target_type nodrop
| parse "\"targetId\": \"*\"" as target_id nodrop
| parse "\"targetName\": \"*\"" as target_name nodrop
| parse "\"eventCategory\": \"*\"" as event_category nodrop
| parse "\"created\": \"*\"" as created_time nodrop
| parse "\"actionText\": \"*\"" as action_text nodrop
| parse "\"actorId\": \"*\"" as actor_id nodrop
| parse "\"actorName\": \"*\"" as actor_name nodrop
| parse "\"actorEmail\": \"*\"" as actor_email nodrop
| parse "\"actorOrgId\": \"*\"" as actor_org_id nodrop
| parse "\"actorOrgName\": \"*\"" as actor_org_name nodrop
| parse "\"actorUserAgent\": \"*\"" as actor_user_agent nodrop
| parse "\"actorIp\": \"*\"" as actor_ip nodrop
| parse "domainName\": [*]" as domain_name nodrop
 
```
### Use Cases:
Account Assigned to External User Events, Authorization Code Related Events Over Time, Authorization Events Over Time, Change in MFA Over Time, Devices Created, Devices Deleted, Devices Rebooted, Events by Admin, Events by Category, Events by Category Over Time, Events by User Agent, Events from High Risk Countries, External Admin Addition Events, Geo Location of Events, Groups Created, Login Events Over Time, Recent Activity on Allow List, Recent Activity on Deny List, Recent Authorization Code Events, Recent Authorization Events, Recent Events, Recent Login Events, Recent Revoked Accounts by Admin, Total Audit Events, Users Created, Users Deleted, Users Updated



## Parser:
```
| parse "\"id\": \"*\"" as event_id nodrop
| parse "\"eventDescription\": \"*\"" as event_description nodrop
| parse "\"targetType\": \"*\"" as target_type nodrop
| parse "\"targetId\": \"*\"" as target_id nodrop
| parse "\"targetName\": \"*\"" as target_name nodrop
| parse "\"eventCategory\": \"*\"" as event_category nodrop
| parse "\"created\": \"*\"" as created_time nodrop
| parse "\"actionText\": \"*\"" as action_text nodrop
| parse "\"actorId\": \"*\"" as actor_id nodrop
| parse "\"actorName\": \"*\"" as actor_name nodrop
| parse "\"actorEmail\": \"*\"" as actor_email nodrop
| parse "\"actorOrgId\": \"*\"" as actor_org_id nodrop
| parse "\"actorOrgName\": \"*\"" as actor_org_name nodrop
| parse "\"actorUserAgent\": \"*\"" as actor_user_agent nodrop
| parse "\"actorIp\": \"*\"" as actor_ip nodrop
| parse "domainName\": [*]" as domain_name nodrop
| parse "\"accountType\": \"*\"" as account_type nodrop
| parse "\"webexSite\": \"*\"" as webex_site nodrop
 
```
### Use Cases:
Account Assigned to External User Events, Authorization Code Related Events Over Time, Change in MFA Over Time, Devices Created, Devices Deleted, Devices Rebooted, Events by Admin, Events by Category, Events by Category Over Time, Events by User Agent, Events from High Risk Countries, External Admin Addition Events, Geo Location of Events, Groups Created, Login Events Over Time, Recent Activity on Deny List, Recent Authorization Code Events, Recent Events, Recent Login Events, Recent Revoked Accounts by Admin, Total Audit Events, Users Created, Users Deleted, Users Updated



## Parser:
```
| parse "\"id\": \"*\"" as event_id nodrop
| parse "\"eventDescription\": \"*\"" as event_description nodrop
| parse "\"targetType\": \"*\"" as target_type nodrop
| parse "\"targetId\": \"*\"" as target_id nodrop
| parse "\"targetName\": \"*\"" as target_name nodrop
| parse "\"eventCategory\": \"*\"" as event_category nodrop
| parse "\"created\": \"*\"" as created_time nodrop
| parse "\"actionText\": \"*\"" as action_text nodrop
| parse "\"actorId\": \"*\"" as actor_id nodrop
| parse "\"actorName\": \"*\"" as actor_name nodrop
| parse "\"actorEmail\": \"*\"" as actor_email nodrop
| parse "\"actorOrgId\": \"*\"" as actor_org_id nodrop
| parse "\"actorOrgName\": \"*\"" as actor_org_name nodrop
| parse "\"actorUserAgent\": \"*\"" as actor_user_agent nodrop
| parse "\"actorIp\": \"*\"" as actor_ip nodrop
| parse "domainName\": [*]" as domain_name nodrop
| parse "\"accountType\": \"*\"" as account_type nodrop
| parse "\"webexSite\": \"*\"" as webex_site nodrop
| parse "\"externalAdminEmail\": \"*\"" as external_admin_email nodrop
| parse "\"externalAdminOrgName\": \"*\"" as external_admin_org_name nodrop
| parse "roleAdded\": [*]" as role_added nodrop
| parse "roleRemoved\": [*]" as role_removed nodrop
 
```
### Use Cases:
Authorization Code Related Events Over Time, Devices Created, Devices Deleted, Devices Rebooted, Events by Admin, Events by Category, Events by Category Over Time, Events by User Agent, Events from High Risk Countries, External Admin Addition Events, Geo Location of Events, Groups Created, Login Events Over Time, Recent Activity on Deny List, Recent Events, Total Audit Events, Users Created, Users Deleted, Users Updated



## Parser:
```
| parse "\"id\": \"*\"" as event_id nodrop
| parse "\"eventDescription\": \"*\"" as event_description nodrop
| parse "\"targetType\": \"*\"" as target_type nodrop
| parse "\"targetId\": \"*\"" as target_id nodrop
| parse "\"targetName\": \"*\"" as target_name nodrop
| parse "\"eventCategory\": \"*\"" as event_category nodrop
| parse "\"created\": \"*\"" as created_time nodrop
| parse "\"actionText\": \"*\"" as action_text nodrop
| parse "\"actorId\": \"*\"" as actor_id nodrop
| parse "\"actorName\": \"*\"" as actor_name nodrop
| parse "\"actorEmail\": \"*\"" as actor_email nodrop
| parse "\"actorOrgId\": \"*\"" as actor_org_id nodrop
| parse "\"actorOrgName\": \"*\"" as actor_org_name nodrop
| parse "\"actorUserAgent\": \"*\"" as actor_user_agent nodrop
| parse "\"actorIp\": \"*\"" as actor_ip nodrop
| parse "domainName\": [*]" as domain_name nodrop
| parse "\"accountType\": \"*\"" as account_type nodrop
| parse "\"webexSite\": \"*\"" as webex_site nodrop
| parse "\"externalAdminEmail\": \"*\"" as external_admin_email nodrop
| parse "\"externalAdminOrgName\": \"*\"" as external_admin_org_name nodrop
| parse "roleAdded\": [*]" as role_added nodrop
| parse "roleRemoved\": [*]" as role_removed nodrop
| parse "\"targetEmail\": \"*\"" as target_email nodrop
 
```
### Use Cases:
Account Assigned to External User Events, Authorization Code Related Events Over Time, Change in MFA Over Time, Devices Created, Devices Deleted, Devices Rebooted, Events by Admin, Events by Category, Events by Category Over Time, Events by User Agent, Events from High Risk Countries, External Admin Addition Events, Geo Location of Events, Groups Created, Login Events Over Time, Recent Activity on Deny List, Recent Authorization Code Events, Recent Events, Recent Login Events, Total Audit Events, Users Created, Users Deleted, Users Updated


