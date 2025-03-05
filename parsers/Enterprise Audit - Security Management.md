# Parsers For Enterprise Audit - Security Management

## Parser:
```
| json "eventName"  as EventName
| json "userSession.sourceIp" as srcIP  nodrop 
| json "operator.sourceIp" as  srcIp_1 nodrop
 
```
### Use Cases:
Enterprise Audit - Australia embargoed countries, Enterprise Audit - US embargoed countries



## Parser:
```
| json "eventName" as EventName nodrop
 
```
### Use Cases:
Active Admins, Active Admins Updating Password Policy, Active Admins Updating Service AllowList, Active Users, Active Vs InActive Access Keys, Distribution - Access Keys, Distribution - AllowList Users Activity, Distribution - SAML Configuration Activity, Distribution - SAML Lockdown Activity, Enterprise Audit - Australia embargoed countries, Enterprise Audit - US embargoed countries, Geo Location, Geo Location Of All Activities, Geo Location Of AllowList Users, One Day Time Shift Comparison, Recent - Access Keys Activities, Recent - AllowList User Activity, Recent - Password Policy Changes, Recent - SAML Configuration Activity, Recent - SAML Lockdown Activity, Recent - Service AllowList Permission Activities, Recent - Service Allowlist Update, Recent Users Disabled MFA, Recent Users Enabled MFA, Trend - Access Key Events, Trend - AllowList Users, Trend - SAML Configuration, Users Disabled MFA, Users Enabled MFA



## Parser:
```
| json "eventName" as EventName nodrop
| json "operator" nodrop
| json field=operator "sourceIp" as AdminIp nodrop
 
```
### Use Cases:
Active Admins, Active Admins Updating Password Policy, Active Admins Updating Service AllowList, Active Users, Active Vs InActive Access Keys, Enterprise Audit - Australia embargoed countries, Enterprise Audit - US embargoed countries, Geo Location, Geo Location Of All Activities, Geo Location Of AllowList Users, One Day Time Shift Comparison, Recent - Access Keys Activities, Recent - Password Policy Changes, Recent - Service AllowList Permission Activities, Recent - Service Allowlist Update, Recent Users Disabled MFA, Recent Users Enabled MFA, Trend - Access Key Events, Trend - AllowList Users



## Parser:
```
| json "eventName", "addedCIDRs[*].cidr","operator.sourceIp" as EventName, AllowListUsers,AdminIp nodrop
| extract field=AllowListUsers "\"(?<IP>.*?)\"" multi
 
```
### Use Cases:
Active Admins Updating Password Policy, Active Users, Active Vs InActive Access Keys, Enterprise Audit - Australia embargoed countries, Enterprise Audit - US embargoed countries, Geo Location, Geo Location Of AllowList Users, One Day Time Shift Comparison, Recent - Access Keys Activities, Recent - Service AllowList Permission Activities, Recent - Service Allowlist Update, Trend - Access Key Events



## Parser:
```
| json "eventName", "eventTime", "accessId", "operator.email", "operator.id", "operator.sourceIp", "accessKey.accessKeyLabel", "accessKey.enabled", "to", "from", "to.enabled"  as EventName, EventTime, AccessId, User, UserId, UserIp, AccessKeyLabel, IsActive, CurrentValue, PreviousValue, IsActiveUpdated nodrop
 
```
### Use Cases:
Active Users, Active Vs InActive Access Keys, Enterprise Audit - Australia embargoed countries, Enterprise Audit - US embargoed countries, Geo Location, One Day Time Shift Comparison, Recent - Access Keys Activities, Trend - Access Key Events



## Parser:
```
| json "eventName", "eventTime", "accessId", "operator.email", "operator.id", "operator.sourceIp", "accessKey.accessKeyLabel", "accessKey.enabled", "to", "from", "to.enabled"  as EventName, EventTime, AccessId, User, UserId, UserIp, AccessKeyLabel, IsActive, CurrentValue, PreviousValue, IsActiveUpdated nodrop
| json field=CurrentValue "accessKeyLabel", "enabled" as AccessKeyLabelUpdated, EnabledUpdated nodrop
 
```
### Use Cases:
Enterprise Audit - Australia embargoed countries, Enterprise Audit - US embargoed countries, Recent - Access Keys Activities



## Parser:
```
| json "eventName", "eventTime", "from", "to", "operator.email", "operator.sourceIp" as EventName, EventTime, PreviousValue, CurrentValue, Admin, AdminIp nodrop
| json field=PreviousValue "expireAfterDays", "reuseAfterChanges", "lockoutPolicy.failedAttempts", "lockoutPolicy.lockoutMinutes", "mfaPolicy.required", "mfaPolicy.rememberBrowser" as PreviousexpireAfterDays, PreviousreuseAfterChanges, PreviousfailedAttempts, PreviouslockoutMinutes, Previousrequired, PreviousrememberBrowser nodrop
| json field=CurrentValue "expireAfterDays", "reuseAfterChanges", "lockoutPolicy.failedAttempts", "lockoutPolicy.lockoutMinutes", "mfaPolicy.required", "mfaPolicy.rememberBrowser" as CurrentexpireAfterDays, CurrentreuseAfterChanges, CurrentfailedAttempts, CurrentlockoutMinutes, Currentrequired, CurrentrememberBrowser nodrop
 
```
### Use Cases:
Active Admins Updating Password Policy, Active Admins Updating Service AllowList, Active Users, Active Vs InActive Access Keys, Enterprise Audit - Australia embargoed countries, Enterprise Audit - US embargoed countries, Geo Location, Geo Location Of All Activities, Geo Location Of AllowList Users, One Day Time Shift Comparison, Recent - Access Keys Activities, Recent - Password Policy Changes, Recent - Service AllowList Permission Activities, Recent - Service Allowlist Update, Recent Users Disabled MFA, Recent Users Enabled MFA, Trend - Access Key Events



## Parser:
```
| json "eventName", "eventTime", "operator.email", "operator.id", "operator.sourceIp"  as EventName, EventTime, Admin, AdminId, AdminIp
 
```
### Use Cases:
Active Admins, Active Admins Updating Password Policy, Active Admins Updating Service AllowList, Active Users, Active Vs InActive Access Keys, Enterprise Audit - Australia embargoed countries, Enterprise Audit - US embargoed countries, Geo Location, Geo Location Of All Activities, Geo Location Of AllowList Users, One Day Time Shift Comparison, Recent - Access Keys Activities, Recent - Password Policy Changes, Recent - SAML Lockdown Activity, Recent - Service AllowList Permission Activities, Recent - Service Allowlist Update, Recent Users Disabled MFA, Recent Users Enabled MFA, Trend - Access Key Events, Trend - AllowList Users, Trend - SAML Configuration



## Parser:
```
| json "eventName", "eventTime", "operator.email", "operator.id", "operator.sourceIp", "allowlistedUsers"  as EventName, EventTime, Admin, AdminId, AdminIp, allowlistedUsers nodrop
| parse regex field=allowlistedUsers "\"userEmail\":\"(?<UserAddedToAllowList>.*?)\"" multi
 
```
### Use Cases:
Active Admins, Active Admins Updating Password Policy, Active Admins Updating Service AllowList, Active Users, Active Vs InActive Access Keys, Enterprise Audit - Australia embargoed countries, Enterprise Audit - US embargoed countries, Geo Location, Geo Location Of All Activities, Geo Location Of AllowList Users, One Day Time Shift Comparison, Recent - Access Keys Activities, Recent - AllowList User Activity, Recent - Password Policy Changes, Recent - SAML Configuration Activity, Recent - SAML Lockdown Activity, Recent - Service AllowList Permission Activities, Recent - Service Allowlist Update, Recent Users Disabled MFA, Recent Users Enabled MFA, Trend - Access Key Events, Trend - AllowList Users, Trend - SAML Configuration



## Parser:
```
| json "eventName", "eventTime", "operator.email", "operator.id", "operator.sourceIp", "samlConfigurationIdentity.id", "samlConfigurationIdentity.configurationName", "samlConfiguration", "to", "from" as EventName, EventTime, Admin, AdminId, AdminIp, ConfigurationId, ConfigurationName, ConfigurationDetails, CurrentValue, PreviuosValue nodrop
 
```
### Use Cases:
Active Admins, Active Admins Updating Password Policy, Active Admins Updating Service AllowList, Active Users, Active Vs InActive Access Keys, Enterprise Audit - Australia embargoed countries, Enterprise Audit - US embargoed countries, Geo Location, Geo Location Of All Activities, Geo Location Of AllowList Users, One Day Time Shift Comparison, Recent - Access Keys Activities, Recent - Password Policy Changes, Recent - SAML Configuration Activity, Recent - SAML Lockdown Activity, Recent - Service AllowList Permission Activities, Recent - Service Allowlist Update, Recent Users Disabled MFA, Recent Users Enabled MFA, Trend - Access Key Events, Trend - AllowList Users, Trend - SAML Configuration



## Parser:
```
| json "eventName", "eventTime", "operator.email", "operator.sourceIp", "addedCIDRs[*].cidr" as EventName, EventTime, Admin, AdminIp, AllowListUsers nodrop
 
```
### Use Cases:
Active Admins Updating Password Policy, Active Users, Active Vs InActive Access Keys, Enterprise Audit - Australia embargoed countries, Enterprise Audit - US embargoed countries, Geo Location, One Day Time Shift Comparison, Recent - Access Keys Activities, Recent - Service AllowList Permission Activities, Recent - Service Allowlist Update, Trend - Access Key Events



## Parser:
```
| json "eventName", "eventTime", "operator.email", "operator.sourceIp", "loginAndApi", "shareDashboards" as EventName, EventTime, Admin, AdminIp, LoginAndApiStatus, ShareDashBoardStatus nodrop
 
```
### Use Cases:
Active Users, Active Vs InActive Access Keys, Enterprise Audit - Australia embargoed countries, Enterprise Audit - US embargoed countries, Geo Location, One Day Time Shift Comparison, Recent - Access Keys Activities, Recent - Service AllowList Permission Activities, Trend - Access Key Events



## Parser:
```
| json "eventName", "eventTime", "userIdentity.userEmail" as EventName, EventTime, UserEmail nodrop
 
```
### Use Cases:
Active Admins, Active Admins Updating Password Policy, Active Admins Updating Service AllowList, Active Users, Active Vs InActive Access Keys, Distribution - AllowList Users Activity, Distribution - SAML Configuration Activity, Distribution - SAML Lockdown Activity, Enterprise Audit - Australia embargoed countries, Enterprise Audit - US embargoed countries, Geo Location, Geo Location Of All Activities, Geo Location Of AllowList Users, One Day Time Shift Comparison, Recent - Access Keys Activities, Recent - AllowList User Activity, Recent - Password Policy Changes, Recent - SAML Configuration Activity, Recent - SAML Lockdown Activity, Recent - Service AllowList Permission Activities, Recent - Service Allowlist Update, Recent Users Disabled MFA, Recent Users Enabled MFA, Trend - Access Key Events, Trend - AllowList Users, Trend - SAML Configuration, Users Disabled MFA, Users Enabled MFA



## Parser:
```
| json "eventName", "eventTime", "userIdentity.userEmail", "operator.sourceIp" as EventName, EventTime, UserEmail, AdminIp nodrop
 
```
### Use Cases:
Active Admins Updating Password Policy, Active Admins Updating Service AllowList, Active Users, Active Vs InActive Access Keys, Enterprise Audit - Australia embargoed countries, Enterprise Audit - US embargoed countries, Geo Location, Geo Location Of AllowList Users, One Day Time Shift Comparison, Recent - Access Keys Activities, Recent - Service AllowList Permission Activities, Recent - Service Allowlist Update, Recent Users Disabled MFA, Trend - Access Key Events



## Parser:
```
| json "eventName", "eventTime", "userIdentity.userEmail","operator.sourceIp" as EventName, EventTime, UserEmail, AdminIp nodrop
 
```
### Use Cases:
Active Admins Updating Password Policy, Active Admins Updating Service AllowList, Active Users, Active Vs InActive Access Keys, Enterprise Audit - Australia embargoed countries, Enterprise Audit - US embargoed countries, Geo Location, Geo Location Of AllowList Users, One Day Time Shift Comparison, Recent - Access Keys Activities, Recent - Service AllowList Permission Activities, Recent - Service Allowlist Update, Recent Users Disabled MFA, Recent Users Enabled MFA, Trend - Access Key Events



## Parser:
```
| json "eventName", "operator.email" as EventName, UserEmail nodrop
 
```
### Use Cases:
Active Admins, Active Admins Updating Password Policy, Active Admins Updating Service AllowList, Active Users, Active Vs InActive Access Keys, Distribution - Access Keys, Distribution - AllowList Users Activity, Distribution - SAML Configuration Activity, Distribution - SAML Lockdown Activity, Enterprise Audit - Australia embargoed countries, Enterprise Audit - US embargoed countries, Geo Location, Geo Location Of All Activities, Geo Location Of AllowList Users, One Day Time Shift Comparison, Recent - Access Keys Activities, Recent - AllowList User Activity, Recent - Password Policy Changes, Recent - SAML Configuration Activity, Recent - SAML Lockdown Activity, Recent - Service AllowList Permission Activities, Recent - Service Allowlist Update, Recent Users Disabled MFA, Recent Users Enabled MFA, Top Users By Events, Trend - Access Key Events, Trend - AllowList Users, Trend - SAML Configuration, Users Disabled MFA, Users Enabled MFA



## Parser:
```
| json "eventName", "operator.email","operator.sourceIp" as EventName, Admin, AdminIp nodrop
 
```
### Use Cases:
Active Admins Updating Password Policy, Active Admins Updating Service AllowList, Active Users, Active Vs InActive Access Keys, Enterprise Audit - Australia embargoed countries, Enterprise Audit - US embargoed countries, Geo Location, Geo Location Of AllowList Users, One Day Time Shift Comparison, Recent - Access Keys Activities, Recent - Service AllowList Permission Activities, Recent - Service Allowlist Update, Trend - Access Key Events



## Parser:
```
| json "eventName", "operator.sourceIp" as EventName, UserIp nodrop
 
```
### Use Cases:
Active Admins, Active Admins Updating Password Policy, Active Admins Updating Service AllowList, Active Users, Active Vs InActive Access Keys, Enterprise Audit - Australia embargoed countries, Enterprise Audit - US embargoed countries, Geo Location, Geo Location Of All Activities, Geo Location Of AllowList Users, One Day Time Shift Comparison, Recent - Access Keys Activities, Recent - AllowList User Activity, Recent - Password Policy Changes, Recent - SAML Configuration Activity, Recent - SAML Lockdown Activity, Recent - Service AllowList Permission Activities, Recent - Service Allowlist Update, Recent Users Disabled MFA, Recent Users Enabled MFA, Trend - Access Key Events, Trend - AllowList Users, Trend - SAML Configuration



## Parser:
```
| json "operator.email","operator.sourceIp" as Admin,AdminIp
 
```
### Use Cases:
Active Admins Updating Password Policy, Active Users, Active Vs InActive Access Keys, Enterprise Audit - Australia embargoed countries, Enterprise Audit - US embargoed countries, Geo Location, One Day Time Shift Comparison, Recent - Access Keys Activities, Recent - Service AllowList Permission Activities, Trend - Access Key Events



## Parser:
```
| json "operator.sourceIp" as AdminIp nodrop
 
```
### Use Cases:
Active Admins Updating Password Policy, Active Admins Updating Service AllowList, Active Users, Active Vs InActive Access Keys, Enterprise Audit - Australia embargoed countries, Enterprise Audit - US embargoed countries, Geo Location, Geo Location Of All Activities, Geo Location Of AllowList Users, One Day Time Shift Comparison, Recent - Access Keys Activities, Recent - Service AllowList Permission Activities, Recent - Service Allowlist Update, Recent Users Disabled MFA, Recent Users Enabled MFA, Trend - Access Key Events


