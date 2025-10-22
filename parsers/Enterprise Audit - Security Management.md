# Parsers For Enterprise Audit - Security Management

**Enterprise Audit - Security Management/Enterprise Audit - Access Key Activities/Active Users**
```
_index=sumologic_audit_events _SourceCategory=accessKeys (AccessKeyCreated OR AccessKeyDeleted OR AccessKeyUpdated)
| json "eventName", "eventTime", "accessId", "operator.email", "operator.id", "operator.sourceIp", "accessKey.accessKeyLabel", "accessKey.enabled", "to", "from", "to.enabled"  as EventName, EventTime, AccessId, User, UserId, UserIp, AccessKeyLabel, IsActive, CurrentValue, PreviousValue, IsActiveUpdated nodrop
```

**Enterprise Audit - Security Management/Enterprise Audit - Access Key Activities/Active Vs InActive Access Keys**
```
_index=sumologic_audit_events _SourceCategory=accessKeys (AccessKeyCreated OR AccessKeyDeleted OR AccessKeyUpdated)
| json "eventName", "eventTime", "accessId", "operator.email", "operator.id", "operator.sourceIp", "accessKey.accessKeyLabel", "accessKey.enabled", "to", "from", "to.enabled"  as EventName, EventTime, AccessId, User, UserId, UserIp, AccessKeyLabel, IsActive, CurrentValue, PreviousValue, IsActiveUpdated nodrop
```

**Enterprise Audit - Security Management/Enterprise Audit - Access Key Activities/Geo Location**
```
_index=sumologic_audit_events _SourceCategory=accessKeys (AccessKeyCreated OR AccessKeyDeleted OR AccessKeyUpdated)
| json "eventName", "eventTime", "accessId", "operator.email", "operator.id", "operator.sourceIp", "accessKey.accessKeyLabel", "accessKey.enabled", "to", "from", "to.enabled"  as EventName, EventTime, AccessId, User, UserId, UserIp, AccessKeyLabel, IsActive, CurrentValue, PreviousValue, IsActiveUpdated nodrop
```

**Enterprise Audit - Security Management/Enterprise Audit - Access Key Activities/One Day Time Shift Comparison**
```
_index=sumologic_audit_events _SourceCategory=accessKeys (AccessKeyCreated OR AccessKeyDeleted OR AccessKeyUpdated)
| json "eventName", "eventTime", "accessId", "operator.email", "operator.id", "operator.sourceIp", "accessKey.accessKeyLabel", "accessKey.enabled", "to", "from", "to.enabled"  as EventName, EventTime, AccessId, User, UserId, UserIp, AccessKeyLabel, IsActive, CurrentValue, PreviousValue, IsActiveUpdated nodrop
```

**Enterprise Audit - Security Management/Enterprise Audit - Access Key Activities/Recent - Access Keys Activities**
```
_index=sumologic_audit_events _SourceCategory=accessKeys (AccessKeyCreated OR AccessKeyDeleted OR AccessKeyUpdated)
| json "eventName", "eventTime", "accessId", "operator.email", "operator.id", "operator.sourceIp", "accessKey.accessKeyLabel", "accessKey.enabled", "to", "from", "to.enabled"  as EventName, EventTime, AccessId, User, UserId, UserIp, AccessKeyLabel, IsActive, CurrentValue, PreviousValue, IsActiveUpdated nodrop
| if(isNull(IsActive), if(isNull(IsActiveUpdated), "-", IsActiveUpdated) ,IsActive) as IsActive
| json field=CurrentValue "accessKeyLabel", "enabled" as AccessKeyLabelUpdated, EnabledUpdated nodrop
```

**Enterprise Audit - Security Management/Enterprise Audit - Access Key Activities/Trend - Access Key Events**
```

_index=sumologic_audit_events _SourceCategory=accessKeys (AccessKeyCreated OR AccessKeyDeleted OR AccessKeyUpdated)
| json "eventName", "eventTime", "accessId", "operator.email", "operator.id", "operator.sourceIp", "accessKey.accessKeyLabel", "accessKey.enabled", "to", "from", "to.enabled"  as EventName, EventTime, AccessId, User, UserId, UserIp, AccessKeyLabel, IsActive, CurrentValue, PreviousValue, IsActiveUpdated nodrop
```

**Enterprise Audit - Security Management/Enterprise Audit - Australia embargoed countries/Enterprise Audit - Australia embargoed countries**
```
_index=sumologic_audit_events (_sourceCategory=userSessions or _sourceCategory=collection) (UserLoggedIn OR CollectorCreated OR CollectorUpdated OR CollectorDeleted OR EphemeralCollectorDeleted OR ClobberCollectorDeleted OR CollectorUpgradeRequested OR CollectorUpgradeCompleted)
| json "eventName"  as EventName
| where EventName in ("UserLoggedIn", "CollectorCreated", "CollectorUpdated", "CollectorDeleted", "EphemeralCollectorDeleted", "ClobberCollectorDeleted", "CollectorUpgradeRequested", "CollectorUpgradeCompleted")
| json "userSession.sourceIp" as srcIP  nodrop 
| json "operator.sourceIp" as  srcIp_1 nodrop
```

**Enterprise Audit - Security Management/Enterprise Audit - Password Policy, MFA, Service AllowList Activities/Active Admins Updating Password Policy**
```
_index=sumologic_audit_events _sourceCategory=passwordPolicy
| json "operator.email","operator.sourceIp" as Admin,AdminIp
```

**Enterprise Audit - Security Management/Enterprise Audit - Password Policy, MFA, Service AllowList Activities/Active Admins Updating Service AllowList**
```
_index=sumologic_audit_events _sourceCategory=serviceAllowlist (ServiceAllowlistPermissionsSet OR ServiceAllowlistUpdated)
| json "eventName", "operator.email","operator.sourceIp" as EventName, Admin, AdminIp nodrop
```

**Enterprise Audit - Security Management/Enterprise Audit - Password Policy, MFA, Service AllowList Activities/Geo Location Of All Activities**
```
_index=sumologic_audit_events (_sourceCategory=serviceAllowlist OR _sourceCategory=passwordPolicy OR _sourceCategory=multiFactorAuthentication)
| json "operator.sourceIp" as AdminIp nodrop
```

**Enterprise Audit - Security Management/Enterprise Audit - Password Policy, MFA, Service AllowList Activities/Geo Location Of AllowList Users**
```
_index=sumologic_audit_events _sourceCategory=serviceAllowlist ServiceAllowlistUpdated
| json "eventName", "addedCIDRs[*].cidr","operator.sourceIp" as EventName, AllowListUsers,AdminIp nodrop
| where EventName="ServiceAllowlistUpdated"
| where AdminIp matches "{{AdminIp}}"
| extract field=AllowListUsers "\"(?<IP>.*?)\"" multi
```

**Enterprise Audit - Security Management/Enterprise Audit - Password Policy, MFA, Service AllowList Activities/Recent - Password Policy Changes**
```
_index=sumologic_audit_events  _sourceCategory=passwordPolicy PasswordPolicyUpdated
| json "eventName", "eventTime", "from", "to", "operator.email", "operator.sourceIp" as EventName, EventTime, PreviousValue, CurrentValue, Admin, AdminIp nodrop
| where EventName="PasswordPolicyUpdated"
| json field=PreviousValue "expireAfterDays", "reuseAfterChanges", "lockoutPolicy.failedAttempts", "lockoutPolicy.lockoutMinutes", "mfaPolicy.required", "mfaPolicy.rememberBrowser" as PreviousexpireAfterDays, PreviousreuseAfterChanges, PreviousfailedAttempts, PreviouslockoutMinutes, Previousrequired, PreviousrememberBrowser nodrop
| json field=CurrentValue "expireAfterDays", "reuseAfterChanges", "lockoutPolicy.failedAttempts", "lockoutPolicy.lockoutMinutes", "mfaPolicy.required", "mfaPolicy.rememberBrowser" as CurrentexpireAfterDays, CurrentreuseAfterChanges, CurrentfailedAttempts, CurrentlockoutMinutes, Currentrequired, CurrentrememberBrowser nodrop
```

**Enterprise Audit - Security Management/Enterprise Audit - Password Policy, MFA, Service AllowList Activities/Recent - Service AllowList Permission Activities**
```
_index=sumologic_audit_events _sourceCategory=serviceAllowlist ServiceAllowlistPermissionsSet
| json "eventName", "eventTime", "operator.email", "operator.sourceIp", "loginAndApi", "shareDashboards" as EventName, EventTime, Admin, AdminIp, LoginAndApiStatus, ShareDashBoardStatus nodrop
```

**Enterprise Audit - Security Management/Enterprise Audit - Password Policy, MFA, Service AllowList Activities/Recent - Service Allowlist Update**
```
_index=sumologic_audit_events _sourceCategory=serviceAllowlist ServiceAllowlistUpdated
| json "eventName", "eventTime", "operator.email", "operator.sourceIp", "addedCIDRs[*].cidr" as EventName, EventTime, Admin, AdminIp, AllowListUsers nodrop
```

**Enterprise Audit - Security Management/Enterprise Audit - Password Policy, MFA, Service AllowList Activities/Recent Users Disabled MFA**
```
_index=sumologic_audit_events _sourceCategory=multiFactorAuthentication UserMultiFactorAuthenticationDisabled
| json "eventName", "eventTime", "userIdentity.userEmail", "operator.sourceIp" as EventName, EventTime, UserEmail, AdminIp nodrop
```

**Enterprise Audit - Security Management/Enterprise Audit - Password Policy, MFA, Service AllowList Activities/Recent Users Enabled MFA**
```
_index=sumologic_audit_events _sourceCategory=multiFactorAuthentication UserMultiFactorAuthenticationEnabled
| json "eventName", "eventTime", "userIdentity.userEmail","operator.sourceIp" as EventName, EventTime, UserEmail, AdminIp nodrop
```

**Enterprise Audit - Security Management/Enterprise Audit - SAML Activities/Active Admins**
```
_index=sumologic_audit_events _sourceCategory=saml
| json "eventName", "eventTime", "operator.email", "operator.id", "operator.sourceIp"  as EventName, EventTime, Admin, AdminId, AdminIp
```

**Enterprise Audit - Security Management/Enterprise Audit - SAML Activities/Geo Location**
```
_index=sumologic_audit_events _sourceCategory=saml
| json "eventName" as EventName nodrop
| where EventName matches "{{EventName}}"
| json "operator" nodrop
| json field=operator "sourceIp" as AdminIp nodrop
```

**Enterprise Audit - Security Management/Enterprise Audit - SAML Activities/One Day Time Shift Comparison**
```
_index=sumologic_audit_events _sourceCategory=saml
| json "eventName" as EventName nodrop
```

**Enterprise Audit - Security Management/Enterprise Audit - SAML Activities/Recent - AllowList User Activity**
```
_index=sumologic_audit_events _sourceCategory=saml (AllowlistedUsersCreated OR AllowlistedUsersDeleted)
| json "eventName", "eventTime", "operator.email", "operator.id", "operator.sourceIp", "allowlistedUsers"  as EventName, EventTime, Admin, AdminId, AdminIp, allowlistedUsers nodrop
| parse regex field=allowlistedUsers "\"userEmail\":\"(?<UserAddedToAllowList>.*?)\"" multi
```

**Enterprise Audit - Security Management/Enterprise Audit - SAML Activities/Recent - SAML Configuration Activity**
```
_index=sumologic_audit_events _sourceCategory="saml" (SamlConfigurationCreated OR SamlConfigurationUpdated OR SamlConfigurationDeleted)
| json "eventName", "eventTime", "operator.email", "operator.id", "operator.sourceIp", "samlConfigurationIdentity.id", "samlConfigurationIdentity.configurationName", "samlConfiguration", "to", "from" as EventName, EventTime, Admin, AdminId, AdminIp, ConfigurationId, ConfigurationName, ConfigurationDetails, CurrentValue, PreviuosValue nodrop
```

**Enterprise Audit - Security Management/Enterprise Audit - SAML Activities/Recent - SAML Lockdown Activity**
```
_index=sumologic_audit_events _sourceCategory=saml (SamlLockdownEnabled OR SamlLockdownDisabled)
| json "eventName", "eventTime", "operator.email", "operator.id", "operator.sourceIp"  as EventName, EventTime, Admin, AdminId, AdminIp
```

**Enterprise Audit - Security Management/Enterprise Audit - SAML Activities/Trend - AllowList Users**
```
_index=sumologic_audit_events _sourceCategory=saml (AllowlistedUsersCreated OR AllowlistedUsersDeleted)
| json "eventName" as EventName nodrop
```

**Enterprise Audit - Security Management/Enterprise Audit - SAML Activities/Trend - SAML Configuration**
```
_index=sumologic_audit_events  _sourceCategory=saml (SamlConfigurationCreated OR SamlConfigurationUpdated OR SamlConfigurationDeleted)
| json "eventName" as EventName nodrop
```

**Enterprise Audit - Security Management/Enterprise Audit - Security Management Overview/Distribution - Access Keys**
```
_index=sumologic_audit_events _sourceCategory=accessKeys
| json "eventName" as EventName nodrop
```

**Enterprise Audit - Security Management/Enterprise Audit - Security Management Overview/Distribution - AllowList Users Activity**
```
_index=sumologic_audit_events _sourceCategory=saml (AllowlistedUsersCreated OR AllowlistedUsersDeleted)
| json "eventName" as EventName nodrop
```

**Enterprise Audit - Security Management/Enterprise Audit - Security Management Overview/Distribution - SAML Configuration Activity**
```
_index=sumologic_audit_events _sourceCategory=saml (SamlConfigurationCreated OR SamlConfigurationUpdated OR SamlConfigurationDeleted)
| json "eventName" as EventName nodrop
```

**Enterprise Audit - Security Management/Enterprise Audit - Security Management Overview/Distribution - SAML Lockdown Activity**
```
_index=sumologic_audit_events _sourceCategory=saml (SamlLockdownEnabled OR SamlLockdownDisabled)
| json "eventName" as EventName nodrop
```

**Enterprise Audit - Security Management/Enterprise Audit - Security Management Overview/Geo Location**
```
_index=sumologic_audit_events
| where _sourceCategory in ("accessKeys", "saml", "serviceAllowlist", "passwordPolicy", "multiFactorAuthentication")
| json "eventName", "operator.sourceIp" as EventName, UserIp nodrop
```

**Enterprise Audit - Security Management/Enterprise Audit - Security Management Overview/Top Users By Events**
```
_index=sumologic_audit_events
| where _sourceCategory in ("accessKeys", "saml", "serviceAllowlist", "passwordPolicy", "multiFactorAuthentication")
| _sourceCategory as EventType
| json "eventName", "operator.email" as EventName, UserEmail nodrop
```

**Enterprise Audit - Security Management/Enterprise Audit - Security Management Overview/Users Disabled MFA**
```
_index=sumologic_audit_events _sourceCategory=multiFactorAuthentication UserMultiFactorAuthenticationDisabled
| json "eventName", "eventTime", "userIdentity.userEmail" as EventName, EventTime, UserEmail nodrop
```

**Enterprise Audit - Security Management/Enterprise Audit - Security Management Overview/Users Enabled MFA**
```
_index=sumologic_audit_events _sourceCategory=multiFactorAuthentication UserMultiFactorAuthenticationEnabled
| json "eventName", "eventTime", "userIdentity.userEmail" as EventName, EventTime, UserEmail nodrop
```

**Enterprise Audit - Security Management/Enterprise Audit - US embargoed countries/Enterprise Audit - US embargoed countries**
```
_index=sumologic_audit_events (_sourceCategory=userSessions or _sourceCategory=collection) (UserLoggedIn OR CollectorCreated OR CollectorUpdated OR CollectorDeleted OR EphemeralCollectorDeleted OR ClobberCollectorDeleted OR CollectorUpgradeRequested OR CollectorUpgradeCompleted)
| json "eventName"  as EventName
| where EventName in ("UserLoggedIn", "CollectorCreated", "CollectorUpdated", "CollectorDeleted", "EphemeralCollectorDeleted", "ClobberCollectorDeleted", "CollectorUpgradeRequested", "CollectorUpgradeCompleted")
| json "userSession.sourceIp" as srcIP  nodrop 
| json "operator.sourceIp" as  srcIp_1 nodrop
```


