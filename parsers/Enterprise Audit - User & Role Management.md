# Parsers For Enterprise Audit - User & Role Management

**Enterprise Audit - User & Role Management/Enterprise Audit - Role Activities/Active Admins**
```
_index=sumologic_audit_events _sourceCategory=roles (RoleCreated OR RoleUpdated OR RoleDeleted)
| json "eventName", "to.capabilities", "operator.email", "operator.sourceIp"  as EventName, capabilities_updated, Admin, AdminIp nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - Role Activities/Geo Location**
```
_index=sumologic_audit_events _sourceCategory=roles (RoleCreated OR RoleUpdated OR RoleDeleted)
| json "eventName", "to.capabilities", "operator.email", "operator.sourceIp"  as EventName, capabilities_updated, Admin, AdminIp nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - Role Activities/One Day Time Shift Comparison**
```
_index=sumologic_audit_events _sourceCategory=roles (RoleCreated OR RoleUpdated OR RoleDeleted)
| json "eventName", "to.capabilities", "operator.email", "operator.sourceIp"  as EventName, capabilities_updated, Admin, AdminIp nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - Role Activities/Recent - Role Activities**
```
_index=sumologic_audit_events _sourceCategory=roles (RoleCreated OR RoleUpdated OR RoleDeleted)
| json "eventName", "eventTime", "operator.email", "operator.id", "operator.sourceIp", "roleIdentity.roleId", "roleIdentity.roleName", "role.systemDefined", "to", "from" as EventName, EventTime, Admin, AdminId, AdminIp, RoleId, RoleName, SystemDefined, CurrentValue, PreviousValue nodrop
| json field=CurrentValue "systemDefined", "capabilities[*]" as SystemDefinedUpdated, Capabilities nodrop
| parse field=Capabilities "[*]" as Capabilities nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - Role Activities/System Defined Vs User Defined**
```
_index=sumologic_audit_events _sourceCategory=roles RoleCreated
| json "eventName", "role.systemDefined","operator.email", "operator.sourceIp"  as EventName, SystemDefined, Admin, AdminIp nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - Role Activities/Top Capabilities Added To Roles**
```
_index=sumologic_audit_events _sourceCategory=roles RoleUpdated
| json "eventName", "to.capabilities", "operator.email", "operator.sourceIp"  as EventName, capabilities_updated, Admin, AdminIp nodrop
| where EventName="RoleUpdated"
| where EventName matches "{{EventName}}" and Admin matches "{{Admin}}" and AdminIp matches "{{AdminIp}}"
| parse regex field=capabilities_updated "\"(?<Capability>.*?)\"" multi nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - Role Activities/Trend - Role Events**
```
_index=sumologic_audit_events _sourceCategory=roles (RoleCreated OR RoleUpdated OR RoleDeleted)
| json "eventName", "to.capabilities", "operator.email", "operator.sourceIp"  as EventName, capabilities_updated, Admin, AdminIp nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User & Role Management Overview/Account Locked Vs Account Unlocked**
```
_index=sumologic_audit_events _sourceCategory=userSessions (UserLockedOut OR UserUnlocked)
| json "eventName" as EventName nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User & Role Management Overview/Distribution By Role Activities**
```
_index=sumologic_audit_events _sourceCategory=roles (RoleCreated OR RoleUpdated OR RoleDeleted)
| json "eventName" as EventName nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User & Role Management Overview/Distribution By User Activities**
```
_index=sumologic_audit_events _sourceCategory=users (UserCreated OR UserUpdated OR UserDeleted)
| json "eventName" as EventName nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User & Role Management Overview/Distribution By User Sessions**
```
_index=sumologic_audit_events _sourceCategory=userSessions (UserLoggedIn OR UserLoggedOut OR UserLoginTimedOut)
| json "eventName" as EventName nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User & Role Management Overview/Email Change Requested Vs Email Changed**
```
_index=sumologic_audit_events _sourceCategory=users (UserEmailChanged OR UserEmailChangeRequested)
| json "eventName" as EventName nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User & Role Management Overview/Password Reset Vs Password Changed**
```
_index=sumologic_audit_events _sourceCategory=users (UserPasswordChanged OR UserPasswordReset)
| json "eventName" as EventName nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User & Role Management Overview/Top Users**
```
_index=sumologic_audit_events
| where _sourceCategory in ("users", "roles", "userSessions")
| json "eventName", "operator.email" as EventName, User nodrop
| json "userSession.email" as LoginUser nodrop
| json "sessionIdentity.userEmail" as LogoutUser nodrop
| json "userIdentity.userEmail" as LockedUser nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User & Role Management Overview/Top Users By Activities**
```
_index=sumologic_audit_events
| where _sourceCategory in ("users", "roles", "userSessions")
| json "eventName", "operator.email" as EventName, User nodrop
| json "userSession.email" as LoginUser nodrop
| json "sessionIdentity.userEmail" as LogoutUser nodrop
| json "userIdentity.userEmail" as LockedUser nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Activities/Active Admins**
```
_index=sumologic_audit_events _sourceCategory=users (UserCreated OR UserUpdated OR UserDeleted)
| json "eventName", "operator.email", "operator.sourceIp" as EventName, Admin, AdminIp nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Activities/Active Users Vs Inactive Users**
```
_index=sumologic_audit_events _sourceCategory=users (UserCreated OR UserUpdated OR UserDeleted)
| json "eventName", "userIdentity.userId", "user.active", "to.active", "operator.email", "operator.sourceIp" as EventName, UserId, ActiveCreated, ActiveUpdated,  Admin, AdminIp nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Activities/Geo Location**
```
_index=sumologic_audit_events _sourceCategory=users (UserCreated OR UserUpdated OR UserDeleted)
| json "eventName", "operator.email", "operator.sourceIp" as EventName, Admin, AdminIp nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Activities/One Day Time Shift Comparison**
```
_index=sumologic_audit_events _sourceCategory=users (UserCreated OR UserUpdated OR UserDeleted)
| json "eventName", "operator.email", "operator.sourceIp" as EventName, Admin, AdminIp nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Activities/Recent - User Activities**
```
_index=sumologic_audit_events _sourceCategory=users (UserCreated OR UserUpdated OR UserDeleted)
| json "eventName", "eventTime", "operator.email", "operator.id", "operator.sourceIp", "userIdentity.userId", "userIdentity.userEmail", "user.firstName", "user.lastName", "user.active", "to", "from" as EventName, EventTime, Admin, AdminId, AdminIp, UserId, TargetUserEmail, TargetUserFirstName, TargetUserLastName, IsTargetUserActive, CurrentValue, PreviousValue nodrop
| json field=CurrentValue "firstName", "lastName", "active" as UpdatedFirstName, UpdatedLastName, UpdatedIsActive nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Activities/Trend - User Events**
```
_index=sumologic_audit_events _sourceCategory=users (UserCreated OR UserUpdated OR UserDeleted)
| json "eventName", "operator.email", "operator.sourceIp" as EventName, Admin, AdminIp nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Role Relationship Activities - New/Active Admins**
```
_index=sumologic_audit_events (_sourceCategory=users OR _sourceCategory=roles) (RolesAssignedToUserUpdated OR UsersAssignedToRoleUpdated)
| json "eventName", "eventTime", "operator.email","operator.id","operator.sourceIp" as EventName, EventTime, Admin, AdminId, AdminIp nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Role Relationship Activities - New/Geo Location of Admins**
```
_index=sumologic_audit_events (_sourceCategory=users OR _sourceCategory=roles) (RolesAssignedToUserUpdated OR UsersAssignedToRoleUpdated)
| json "eventName", "eventTime", "operator.sourceIp" as EventName, EventTime, AdminIp nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Role Relationship Activities - New/Removed from Roles**
```
_index=sumologic_audit_events _sourceCategory=roles UsersAssignedToRoleUpdated
| json "eventName", "eventTime", "operator.email","operator.id","operator.sourceIp", "roleIdentity.roleId","roleIdentity.roleName", "usersAdded[*].userEmail", "usersDeleted[*].userEmail" as EventName, EventTime, Admin, AdminId, AdminIp, RoleId, RoleName, UsersAdded, UsersRemoved nodrop
| where EventName="UsersAssignedToRoleUpdated"
| parse field=UsersAdded "[*]" as UsersAdded nodrop
| replace(UsersAdded, "\"", "") as UsersAdded
| replace(UsersAdded, "[]", "-") as UsersAdded
| parse field=UsersRemoved "[*]" as UsersRemoved nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Role Relationship Activities - New/Removed from User**
```
_index=sumologic_audit_events _sourceCategory=users RolesAssignedToUserUpdated
| json "eventName", "eventTime", "operator.email","operator.id","operator.sourceIp", "userIdentity.userId","userIdentity.userEmail", "rolesAdded[*].roleName", "rolesDeleted[*].roleName" as EventName, EventTime, Admin, AdminId, AdminIp, TargetUserId, TargetUserEmail, RolesAdded, RolesRemoved nodrop
| where EventName="RolesAssignedToUserUpdated"
| parse field=RolesAdded "[*]" as RolesAdded nodrop
| replace(RolesAdded, "\"", "") as RolesAdded
| replace(RolesAdded, "[]", "-") as RolesAdded
| parse field=RolesRemoved "[*]" as RolesRemoved nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Role Relationship Activities - New/Top Roles Added To Users**
```
_index=sumologic_audit_events _sourceCategory=users RolesAssignedToUserUpdated
| json "eventName", "eventTime", "rolesAdded[*]" as EventName, EventTime, RolesAdded nodrop
| where EventName="RolesAssignedToUserUpdated"
| parse regex field=RolesAdded "\"roleName\":\"(?<RoleName>.*?)\"" multi
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Role Relationship Activities - New/Top Roles Removed From Users**
```
_index=sumologic_audit_events _sourceCategory=users RolesAssignedToUserUpdated
| json "eventName", "eventTime", "rolesDeleted[*]" as EventName, EventTime, RolesRemoved nodrop
| where EventName="RolesAssignedToUserUpdated"
| parse regex field=RolesRemoved "\"roleName\":\"(?<RoleName>.*?)\"" multi
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Role Relationship Activities - New/Top Users Added To Roles**
```
_index=sumologic_audit_events _sourceCategory=roles UsersAssignedToRoleUpdated
| json "eventName", "eventTime", "usersAdded[*]" as EventName, EventTime, UsersAdded nodrop
| where EventName="UsersAssignedToRoleUpdated"
| parse regex field=UsersAdded "\"userEmail\":\"(?<TargetUserEmail>.*?)\"" multi
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Role Relationship Activities - New/Top Users Removed From Roles**
```
_index=sumologic_audit_events _sourceCategory=roles UsersAssignedToRoleUpdated
| json "eventName", "eventTime", "usersDeleted[*]" as EventName, EventTime, UsersRemoved nodrop
| where EventName="UsersAssignedToRoleUpdated"
| parse regex field=UsersRemoved "\"userEmail\":\"(?<TargetUserEmail>.*?)\"" multi
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Role Relationship Activities /Active Admins**
```
_index=sumologic_audit_events (_sourceCategory=users OR _sourceCategory=roles) (RolesAssignedToUserUpdated OR UsersAssignedToRoleUpdated)
| json "eventName", "eventTime", "operator.email","operator.id","operator.sourceIp" as EventName, EventTime, Admin, AdminId, AdminIp nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Role Relationship Activities /Geo Location of Admins**
```
_index=sumologic_audit_events (_sourceCategory=users OR _sourceCategory=roles) (RolesAssignedToUserUpdated OR UsersAssignedToRoleUpdated)
| json "eventName", "eventTime", "operator.sourceIp" as EventName, EventTime, AdminIp nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Role Relationship Activities /Removed from Roles**
```
_index=sumologic_audit_events _sourceCategory=roles UsersAssignedToRoleUpdated
| json "eventName", "eventTime", "operator.email","operator.id","operator.sourceIp", "roleIdentity.roleId","roleIdentity.roleName", "usersAdded[*].userEmail", "usersDeleted[*].userEmail" as EventName, EventTime, Admin, AdminId, AdminIp, RoleId, RoleName, UsersAdded, UsersRemoved nodrop
| where EventName="UsersAssignedToRoleUpdated"
| parse field=UsersAdded "[*]" as UsersAdded nodrop
| replace(UsersAdded, "\"", "") as UsersAdded
| replace(UsersAdded, "[]", "-") as UsersAdded
| parse field=UsersRemoved "[*]" as UsersRemoved nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Role Relationship Activities /Removed from User**
```
_index=sumologic_audit_events _sourceCategory=users RolesAssignedToUserUpdated
| json "eventName", "eventTime", "operator.email","operator.id","operator.sourceIp", "userIdentity.userId","userIdentity.userEmail", "rolesAdded[*].roleName", "rolesDeleted[*].roleName" as EventName, EventTime, Admin, AdminId, AdminIp, TargetUserId, TargetUserEmail, RolesAdded, RolesRemoved nodrop
| where EventName="RolesAssignedToUserUpdated"
| parse field=RolesAdded "[*]" as RolesAdded nodrop
| replace(RolesAdded, "\"", "") as RolesAdded
| replace(RolesAdded, "[]", "-") as RolesAdded
| parse field=RolesRemoved "[*]" as RolesRemoved nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Role Relationship Activities /Top Roles Added To Users**
```
_index=sumologic_audit_events _sourceCategory=users RolesAssignedToUserUpdated
| json "eventName", "eventTime", "rolesAdded[*]","operator.sourceIp" as EventName, EventTime, RolesAdded, AdminIp nodrop
| where EventName="RolesAssignedToUserUpdated"
| where AdminIp matches "{{AdminIp}}"
| parse regex field=RolesAdded "\"roleName\":\"(?<RoleName>.*?)\"" multi
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Role Relationship Activities /Top Roles Removed From Users**
```
_index=sumologic_audit_events _sourceCategory=users RolesAssignedToUserUpdated
| json "eventName", "eventTime", "rolesDeleted[*]", "operator.sourceIp" as EventName, EventTime, RolesRemoved, AdminIp nodrop
| where EventName="RolesAssignedToUserUpdated"
| parse regex field=RolesRemoved "\"roleName\":\"(?<RoleName>.*?)\"" multi
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Role Relationship Activities /Top Users Added To Roles**
```
_index=sumologic_audit_events _sourceCategory=roles UsersAssignedToRoleUpdated
| json "eventName", "eventTime", "usersAdded[*]", "operator.sourceIp" as EventName, EventTime, UsersAdded, AdminIp nodrop
| where EventName="UsersAssignedToRoleUpdated"
| parse regex field=UsersAdded "\"userEmail\":\"(?<TargetUserEmail>.*?)\"" multi
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Role Relationship Activities /Top Users Removed From Roles**
```
_index=sumologic_audit_events _sourceCategory=roles UsersAssignedToRoleUpdated
| json "eventName", "eventTime", "usersDeleted[*]","operator.sourceIp" as EventName, EventTime, UsersRemoved, AdminIp nodrop
| where EventName="UsersAssignedToRoleUpdated"
| parse regex field=UsersRemoved "\"userEmail\":\"(?<TargetUserEmail>.*?)\"" multi
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Session Activities - New/Active Admins performing Account Unlock**
```
_index=sumologic_audit_events _sourceCategory=userSessions UserUnlocked
| json "eventName", "eventTime", "accountId", "operator" as EventName, EventTime, AccountId, operator nodrop
| where EventName="UserUnlocked"
| json field=operator "email", "interface" as UnlockedBy , Interface nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Session Activities - New/Authentication Source Comparison**
```
_index=sumologic_audit_events _sourceCategory=userSessions UserLoggedIn
| json "eventName", "authenticationSource" as EventName, AuthenticationSource nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Session Activities - New/Current Locked User count**
```
_index=sumologic_audit_events _sourceCategory=userSessions (UserLockedOut OR UserUnlocked)
| json "eventName", "userIdentity.userEmail" as EventName, UserId nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Session Activities - New/Current Logged In Users**
```
_index=sumologic_audit_events _sourceCategory=userSessions (UserLoggedOut OR UserLoggedIn OR UserLoginTimedOut)
| json "eventName", "userSession.id", "sessionIdentity.userId" as EventName, LoginUserId, LogoutUserID nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Session Activities - New/Events - Recent Sessions**
```
_index=sumologic_audit_events _sourceCategory=userSessions (UserLoggedOut OR UserLoggedIn OR UserLockedOut OR UserUnlocked OR UserLoginTimedOut)
| json "eventName", "eventTime", "accountId" as EventName, EventTime, AccountId nodrop
| json "userSession.email", "userSession.id" as LoginUser, LoginUserId nodrop
| json "sessionIdentity.userEmail", "sessionIdentity.userId" as LogoutUser, LogoutUserId nodrop
| json "userIdentity.userEmail", "userIdentity.userId" as LockedUser, LockedUserId nodrop
| json "authenticationSource" as AuthenticationSource nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Session Activities - New/Geo Location Of User Sessions**
```
_index=sumologic_audit_events _sourceCategory=userSessions UserLoggedIn
| json "eventName", "userSession.sourceIp" as EventName,UserIp  nodrop 
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Session Activities - New/Locked Out Users Activity**
```
_index=sumologic_audit_events _sourceCategory=userSessions UserLockedOut
| json "eventName", "eventTime", "accountId", "userIdentity" as EventName, EventTime, AccountId, userIdentity nodrop
| where EventName="UserLockedOut"
| json field=userIdentity "userEmail", "userId" as User, UserId nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Session Activities - New/Logged Out Users Count**
```
_index=sumologic_audit_events _sourceCategory=userSessions UserLoggedOut
| json "eventName" as EventName nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Session Activities - New/One Day Time Shift Comparison**
```
_index=sumologic_audit_events  _sourceCategory=userSessions (UserLoggedOut OR UserLoggedIn OR UserLockedOut OR UserUnlocked OR UserLoginTimedOut)
| json "eventName" as EventName nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Session Activities - New/Timed Out Users Count**
```
_index=sumologic_audit_events _sourceCategory=userSessions UserLoginTimedOut
| json "eventName" as EventName nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Session Activities - New/Trend - UserLocked Vs Unlocked**
```
_index=sumologic_audit_events _sourceCategory=userSessions (UserLockedOut OR UserUnlocked)
| json "eventName" as EventName nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Session Activities - New/Users Unlocked Activity**
```
_index=sumologic_audit_events _sourceCategory=userSessions UserUnlocked
| json "eventName", "eventTime", "accountId", "userIdentity", "operator" as EventName, EventTime, AccountId, userIdentity, operator nodrop
| where EventName="UserUnlocked"
| json field=userIdentity "userEmail", "userId" as User, UserId nodrop
| json field=operator "email", "sourceIp", "interface" as UnlockedBy, UnlockedByIp , Interface nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Session Activities/Active Admins performing Account Unlock**
```
_index=sumologic_audit_events _sourceCategory=userSessions UserUnlocked
| json "eventName", "eventTime", "accountId", "operator", "userSession.sourceIp" as EventName, EventTime, AccountId, operator, UserIp nodrop
| where EventName="UserUnlocked"
| json field=operator "email", "interface" as UnlockedBy , Interface nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Session Activities/Authentication Source Comparison**
```
_index=sumologic_audit_events _sourceCategory=userSessions UserLoggedIn
| json "eventName", "authenticationSource", "userSession.sourceIp" as EventName, AuthenticationSource, UserIp nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Session Activities/Current Locked User count**
```
_index=sumologic_audit_events _sourceCategory=userSessions (UserLockedOut OR UserUnlocked)
| json "eventName", "userIdentity.userEmail", "userSession.sourceIp" as EventName, UserId, UserIp nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Session Activities/Current Logged In Users**
```
_index=sumologic_audit_events _sourceCategory=userSessions (UserLoggedOut OR UserLoggedIn OR UserLoginTimedOut)
| json "eventName", "userSession.id", "sessionIdentity.userId", "userSession.sourceIp"  as EventName, LoginUserId, LogoutUserID, UserIp nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Session Activities/Events - Recent Sessions**
```
_index=sumologic_audit_events _sourceCategory=userSessions (UserLoggedOut OR UserLoggedIn OR UserLockedOut OR UserUnlocked OR UserLoginTimedOut)
| json "eventName", "eventTime", "accountId", "userSession.sourceIp" as EventName, EventTime, AccountId, UserIp nodrop
| json "userSession.email", "userSession.id" as LoginUser, LoginUserId nodrop
| json "sessionIdentity.userEmail", "sessionIdentity.userId" as LogoutUser, LogoutUserId nodrop
| json "userIdentity.userEmail", "userIdentity.userId" as LockedUser, LockedUserId nodrop
| json "authenticationSource" as AuthenticationSource nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Session Activities/Geo Location Of User Sessions**
```
_index=sumologic_audit_events _sourceCategory=userSessions UserLoggedIn
| json "eventName", "userSession.sourceIp" as EventName,UserIp  nodrop 
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Session Activities/Locked Out Users Activity**
```
_index=sumologic_audit_events _sourceCategory=userSessions UserLockedOut
| json "eventName", "eventTime", "accountId", "userIdentity", "userSession.sourceIp" as EventName, EventTime, AccountId, userIdentity, UserIp nodrop
| where EventName="UserLockedOut"
| json field=userIdentity "userEmail", "userId" as User, UserId nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Session Activities/Logged Out Users Count**
```
_index=sumologic_audit_events _sourceCategory=userSessions UserLoggedOut
| json "eventName", "userSession.sourceIp" as EventName, UserIp nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Session Activities/One Day Time Shift Comparison**
```
_index=sumologic_audit_events  _sourceCategory=userSessions (UserLoggedOut OR UserLoggedIn OR UserLockedOut OR UserUnlocked OR UserLoginTimedOut)
| json "eventName", "userSession.sourceIp" as EventName, UserIp nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Session Activities/Timed Out Users Count**
```
_index=sumologic_audit_events _sourceCategory=userSessions UserLoginTimedOut
| json "eventName", "userSession.sourceIp"  as EventName, UserIp nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Session Activities/Trend - UserLocked Vs Unlocked**
```
_index=sumologic_audit_events _sourceCategory=userSessions (UserLockedOut OR UserUnlocked)
| json "eventName", "eventTime", "accountId", "userIdentity", "userSession.sourceIp" as EventName, EventTime, AccountId, userIdentity, UserIp nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User Session Activities/Users Unlocked Activity**
```
_index=sumologic_audit_events _sourceCategory=userSessions UserUnlocked
| json "eventName", "eventTime", "accountId", "userIdentity", "operator", "userSession.sourceIp" as EventName, EventTime, AccountId, userIdentity, operator, UserIp nodrop
| where EventName="UserUnlocked"
| json field=userIdentity "userEmail", "userId" as User, UserId nodrop
| json field=operator "email", "sourceIp", "interface" as UnlockedBy, UnlockedByIp , Interface nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User(Email, Password) Activities - New/Active Admins Performing Password Resets**
```
_index=sumologic_audit_events _sourceCategory=users UserPasswordReset
| json "eventName", "eventTime", "operator.email" as EventName, EventTime, Admin nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User(Email, Password) Activities - New/Geo Location**
```
_index=sumologic_audit_events _sourceCategory=users (UserEmailChangeRequested OR UserEmailChanged OR UserPasswordReset OR UserPasswordChanged)
| json "eventName", "operator.sourceIp" as EventName, AdminIp
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User(Email, Password) Activities - New/One Day Time Shift Comparison**
```
_index=sumologic_audit_events _sourceCategory=users (UserPasswordReset OR UserPasswordChanged OR UserEmailChangeRequested OR UserEmailChanged)
| json "eventName" as EventName nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User(Email, Password) Activities - New/Recent - Email Change Activity**
```
_index=sumologic_audit_events _sourceCategory=users UserEmailChanged
| json "eventName", "eventTime", "userIdentity.userId", "newEmail", "oldEmail" as EventName, EventTime, TargetUserId, TargetUserEmail, TargetUserOldEmail nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User(Email, Password) Activities - New/Recent - Password Reset Activity**
```
_index=sumologic_audit_events _sourceCategory=users UserPasswordReset
| json "eventName", "eventTime", "operator.email", "operator.id", "operator.sourceIp", "userIdentity.userId", "userIdentity.userEmail" as EventName, EventTime, Admin, AdminId, AdminIp, TargetUserId, TargetUserEmail nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User(Email, Password) Activities - New/Trend - User Email Activity**
```
_index=sumologic_audit_events _sourceCategory=users (UserEmailChangeRequested OR UserEmailChanged)
| json "eventName" as EventName nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User(Email, Password) Activities - New/Trend - User Password Activity**
```
_index=sumologic_audit_events _sourceCategory=users (UserPasswordReset OR UserPasswordChanged)
| json "eventName" as EventName nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User(Email, Password) Activities/Active Admins Performing Password Resets**
```
_index=sumologic_audit_events _sourceCategory=users UserPasswordReset
| json "eventName", "operator.email", "operator.sourceIp"  as EventName, Admin, AdminIp nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User(Email, Password) Activities/Geo Location**
```
_index=sumologic_audit_events _sourceCategory=users (UserEmailChangeRequested OR UserEmailChanged OR UserPasswordReset OR UserPasswordChanged)
| json "eventName", "operator.email", "operator.sourceIp"  as EventName, Admin, AdminIp nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User(Email, Password) Activities/One Day Time Shift Comparison**
```
_index=sumologic_audit_events _sourceCategory=users (UserPasswordReset OR UserPasswordChanged OR UserEmailChangeRequested OR UserEmailChanged)
| json "eventName", "operator.email", "operator.sourceIp"  as EventName, Admin, AdminIp nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User(Email, Password) Activities/Recent - Email Change Activity**
```
_index=sumologic_audit_events _sourceCategory=users UserEmailChanged
| json "eventName", "eventTime", "userIdentity.userId", "newEmail", "oldEmail","operator.email", "operator.sourceIp" as EventName, EventTime, TargetUserId, TargetUserEmail, TargetUserOldEmail, Admin, AdminIp nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User(Email, Password) Activities/Recent - Password Reset Activity**
```
_index=sumologic_audit_events _sourceCategory=users UserPasswordReset
| json "eventName", "eventTime", "operator.email", "operator.id", "operator.sourceIp", "userIdentity.userId", "userIdentity.userEmail" as EventName, EventTime, Admin, AdminId, AdminIp, TargetUserId, TargetUserEmail nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User(Email, Password) Activities/Trend - User Email Activity**
```
_index=sumologic_audit_events _sourceCategory=users (UserEmailChangeRequested OR UserEmailChanged)
| json "eventName", "operator.email", "operator.sourceIp"  as EventName, Admin, AdminIp nodrop
```

**Enterprise Audit - User & Role Management/Enterprise Audit - User(Email, Password) Activities/Trend - User Password Activity**
```
_index=sumologic_audit_events _sourceCategory=users (UserPasswordReset OR UserPasswordChanged)
| json "eventName", "operator.email", "operator.sourceIp"  as EventName, Admin, AdminIp nodrop
```


