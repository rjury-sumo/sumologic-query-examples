# Parsers For Enterprise Audit - User & Role Management

## Parser:
```
| json "eventName" as EventName nodrop
 
```
### Use Cases:
Account Locked Vs Account Unlocked, Active Admins, Active Admins performing Account Unlock, Active Admins Performing Password Resets, Authentication Source Comparison, Current Locked User count, Current Logged In Users, Distribution By Role Activities, Distribution By User Activities, Distribution By User Sessions, Email Change Requested Vs Email Changed, Events - Recent Sessions, Geo Location, Geo Location of Admins, Geo Location Of User Sessions, Locked Out Users Activity, Logged Out Users Count, One Day Time Shift Comparison, Password Reset Vs Password Changed, Recent - Email Change Activity, Recent - Password Reset Activity, Recent - Role Activities, Recent - Roles Assigned/Removed from User, Recent - Users Assigned/Removed from Roles, System Defined Vs User Defined, Timed Out Users Count, Top Capabilities Added To Roles, Top Roles Added To Users, Top Roles Removed From Users, Top Users, Top Users Added To Roles, Top Users By Activities, Top Users Removed From Roles, Trend - Role Events, Trend - User Email Activity, Trend - User Password Activity, Trend - UserLocked Vs Unlocked, Users Unlocked Activity



## Parser:
```
| json "eventName", "authenticationSource" as EventName, AuthenticationSource nodrop
 
```
### Use Cases:
Active Admins, Authentication Source Comparison, Geo Location of Admins, Locked Out Users Activity, One Day Time Shift Comparison, Recent - Roles Assigned/Removed from User, Recent - Users Assigned/Removed from Roles, Timed Out Users Count, Top Roles Added To Users, Top Roles Removed From Users, Top Users Added To Roles, Top Users Removed From Roles, Trend - UserLocked Vs Unlocked, Users Unlocked Activity



## Parser:
```
| json "eventName", "authenticationSource", "userSession.sourceIp" as EventName, AuthenticationSource, UserIp nodrop
 
```
### Use Cases:
Account Locked Vs Account Unlocked, Active Admins, Active Admins performing Account Unlock, Active Admins Performing Password Resets, Active Users Vs Inactive Users, Authentication Source Comparison, Current Locked User count, Current Logged In Users, Distribution By Role Activities, Distribution By User Activities, Distribution By User Sessions, Email Change Requested Vs Email Changed, Events - Recent Sessions, Geo Location, Geo Location of Admins, Geo Location Of User Sessions, Locked Out Users Activity, Logged Out Users Count, One Day Time Shift Comparison, Password Reset Vs Password Changed, Recent - Email Change Activity, Recent - Password Reset Activity, Recent - Role Activities, Recent - Roles Assigned/Removed from User, Recent - User Activities, Recent - Users Assigned/Removed from Roles, System Defined Vs User Defined, Timed Out Users Count, Top Capabilities Added To Roles, Top Roles Added To Users, Top Roles Removed From Users, Top Users, Top Users Added To Roles, Top Users By Activities, Top Users Removed From Roles, Trend - Role Events, Trend - User Email Activity, Trend - User Events, Trend - User Password Activity, Trend - UserLocked Vs Unlocked, Users Unlocked Activity



## Parser:
```
| json "eventName", "eventTime", "accountId" as EventName, EventTime, AccountId nodrop
| json "userSession.email", "userSession.id" as LoginUser, LoginUserId nodrop
| json "sessionIdentity.userEmail", "sessionIdentity.userId" as LogoutUser, LogoutUserId nodrop
| json "userIdentity.userEmail", "userIdentity.userId" as LockedUser, LockedUserId nodrop
| json "authenticationSource" as AuthenticationSource nodrop
 
```
### Use Cases:
Active Admins, Active Admins performing Account Unlock, Authentication Source Comparison, Events - Recent Sessions, Geo Location of Admins, Geo Location Of User Sessions, Locked Out Users Activity, Logged Out Users Count, One Day Time Shift Comparison, Recent - Roles Assigned/Removed from User, Recent - Users Assigned/Removed from Roles, Timed Out Users Count, Top Roles Added To Users, Top Roles Removed From Users, Top Users Added To Roles, Top Users Removed From Roles, Trend - UserLocked Vs Unlocked, Users Unlocked Activity



## Parser:
```
| json "eventName", "eventTime", "accountId", "operator" as EventName, EventTime, AccountId, operator nodrop
| json field=operator "email", "interface" as UnlockedBy , Interface nodrop
 
```
### Use Cases:
Active Admins, Active Admins performing Account Unlock, Authentication Source Comparison, Geo Location of Admins, Locked Out Users Activity, One Day Time Shift Comparison, Recent - Roles Assigned/Removed from User, Recent - Users Assigned/Removed from Roles, Timed Out Users Count, Top Roles Added To Users, Top Roles Removed From Users, Top Users Added To Roles, Top Users Removed From Roles, Trend - UserLocked Vs Unlocked, Users Unlocked Activity



## Parser:
```
| json "eventName", "eventTime", "accountId", "operator", "userSession.sourceIp" as EventName, EventTime, AccountId, operator, UserIp nodrop
| json field=operator "email", "interface" as UnlockedBy , Interface nodrop
 
```
### Use Cases:
Account Locked Vs Account Unlocked, Active Admins, Active Admins performing Account Unlock, Active Admins Performing Password Resets, Active Users Vs Inactive Users, Authentication Source Comparison, Current Locked User count, Current Logged In Users, Distribution By Role Activities, Distribution By User Activities, Distribution By User Sessions, Email Change Requested Vs Email Changed, Events - Recent Sessions, Geo Location, Geo Location of Admins, Geo Location Of User Sessions, Locked Out Users Activity, Logged Out Users Count, One Day Time Shift Comparison, Password Reset Vs Password Changed, Recent - Email Change Activity, Recent - Password Reset Activity, Recent - Role Activities, Recent - Roles Assigned/Removed from User, Recent - User Activities, Recent - Users Assigned/Removed from Roles, System Defined Vs User Defined, Timed Out Users Count, Top Capabilities Added To Roles, Top Roles Added To Users, Top Roles Removed From Users, Top Users, Top Users Added To Roles, Top Users By Activities, Top Users Removed From Roles, Trend - Role Events, Trend - User Email Activity, Trend - User Events, Trend - User Password Activity, Trend - UserLocked Vs Unlocked, Users Unlocked Activity



## Parser:
```
| json "eventName", "eventTime", "accountId", "userIdentity" as EventName, EventTime, AccountId, userIdentity nodrop
| json field=userIdentity "userEmail", "userId" as User, UserId nodrop
 
```
### Use Cases:
Active Admins, Geo Location of Admins, Locked Out Users Activity, Recent - Roles Assigned/Removed from User, Recent - Users Assigned/Removed from Roles, Top Roles Added To Users, Top Roles Removed From Users, Top Users Added To Roles, Top Users Removed From Roles



## Parser:
```
| json "eventName", "eventTime", "accountId", "userIdentity", "operator" as EventName, EventTime, AccountId, userIdentity, operator nodrop
| json field=userIdentity "userEmail", "userId" as User, UserId nodrop
| json field=operator "email", "sourceIp", "interface" as UnlockedBy, UnlockedByIp , Interface nodrop
 
```
### Use Cases:
Active Admins, Geo Location of Admins, Locked Out Users Activity, Recent - Roles Assigned/Removed from User, Recent - Users Assigned/Removed from Roles, Timed Out Users Count, Top Roles Added To Users, Top Roles Removed From Users, Top Users Added To Roles, Top Users Removed From Roles, Users Unlocked Activity



## Parser:
```
| json "eventName", "eventTime", "accountId", "userIdentity", "operator", "userSession.sourceIp" as EventName, EventTime, AccountId, userIdentity, operator, UserIp nodrop
| json field=userIdentity "userEmail", "userId" as User, UserId nodrop
| json field=operator "email", "sourceIp", "interface" as UnlockedBy, UnlockedByIp , Interface nodrop
 
```
### Use Cases:
Account Locked Vs Account Unlocked, Active Admins, Active Admins performing Account Unlock, Active Admins Performing Password Resets, Active Users Vs Inactive Users, Authentication Source Comparison, Current Locked User count, Current Logged In Users, Distribution By Role Activities, Distribution By User Activities, Distribution By User Sessions, Email Change Requested Vs Email Changed, Events - Recent Sessions, Geo Location, Geo Location of Admins, Geo Location Of User Sessions, Locked Out Users Activity, Logged Out Users Count, One Day Time Shift Comparison, Password Reset Vs Password Changed, Recent - Email Change Activity, Recent - Password Reset Activity, Recent - Role Activities, Recent - Roles Assigned/Removed from User, Recent - User Activities, Recent - Users Assigned/Removed from Roles, System Defined Vs User Defined, Timed Out Users Count, Top Capabilities Added To Roles, Top Roles Added To Users, Top Roles Removed From Users, Top Users, Top Users Added To Roles, Top Users By Activities, Top Users Removed From Roles, Trend - Role Events, Trend - User Email Activity, Trend - User Events, Trend - User Password Activity, Trend - UserLocked Vs Unlocked, Users Unlocked Activity



## Parser:
```
| json "eventName", "eventTime", "accountId", "userIdentity", "userSession.sourceIp" as EventName, EventTime, AccountId, userIdentity, UserIp nodrop
 
```
### Use Cases:
Account Locked Vs Account Unlocked, Active Admins, Active Admins performing Account Unlock, Active Admins Performing Password Resets, Active Users Vs Inactive Users, Authentication Source Comparison, Current Locked User count, Current Logged In Users, Distribution By Role Activities, Distribution By User Activities, Distribution By User Sessions, Email Change Requested Vs Email Changed, Events - Recent Sessions, Geo Location, Geo Location of Admins, Geo Location Of User Sessions, Locked Out Users Activity, Logged Out Users Count, One Day Time Shift Comparison, Password Reset Vs Password Changed, Recent - Email Change Activity, Recent - Password Reset Activity, Recent - Role Activities, Recent - Roles Assigned/Removed from User, Recent - User Activities, Recent - Users Assigned/Removed from Roles, System Defined Vs User Defined, Timed Out Users Count, Top Capabilities Added To Roles, Top Roles Added To Users, Top Roles Removed From Users, Top Users, Top Users Added To Roles, Top Users By Activities, Top Users Removed From Roles, Trend - Role Events, Trend - User Email Activity, Trend - User Events, Trend - User Password Activity, Trend - UserLocked Vs Unlocked, Users Unlocked Activity



## Parser:
```
| json "eventName", "eventTime", "accountId", "userIdentity", "userSession.sourceIp" as EventName, EventTime, AccountId, userIdentity, UserIp nodrop
| json field=userIdentity "userEmail", "userId" as User, UserId nodrop
 
```
### Use Cases:
Account Locked Vs Account Unlocked, Active Admins, Active Admins performing Account Unlock, Active Admins Performing Password Resets, Active Users Vs Inactive Users, Authentication Source Comparison, Current Locked User count, Current Logged In Users, Distribution By Role Activities, Distribution By User Activities, Distribution By User Sessions, Email Change Requested Vs Email Changed, Events - Recent Sessions, Geo Location, Geo Location of Admins, Geo Location Of User Sessions, Locked Out Users Activity, Logged Out Users Count, One Day Time Shift Comparison, Password Reset Vs Password Changed, Recent - Email Change Activity, Recent - Password Reset Activity, Recent - Role Activities, Recent - Roles Assigned/Removed from User, Recent - User Activities, Recent - Users Assigned/Removed from Roles, System Defined Vs User Defined, Timed Out Users Count, Top Capabilities Added To Roles, Top Roles Added To Users, Top Roles Removed From Users, Top Users, Top Users Added To Roles, Top Users By Activities, Top Users Removed From Roles, Trend - Role Events, Trend - User Email Activity, Trend - User Events, Trend - User Password Activity, Trend - UserLocked Vs Unlocked, Users Unlocked Activity



## Parser:
```
| json "eventName", "eventTime", "accountId", "userSession.sourceIp" as EventName, EventTime, AccountId, UserIp nodrop
| json "userSession.email", "userSession.id" as LoginUser, LoginUserId nodrop
| json "sessionIdentity.userEmail", "sessionIdentity.userId" as LogoutUser, LogoutUserId nodrop
| json "userIdentity.userEmail", "userIdentity.userId" as LockedUser, LockedUserId nodrop
| json "authenticationSource" as AuthenticationSource nodrop
 
```
### Use Cases:
Account Locked Vs Account Unlocked, Active Admins, Active Admins performing Account Unlock, Active Admins Performing Password Resets, Active Users Vs Inactive Users, Authentication Source Comparison, Current Locked User count, Current Logged In Users, Distribution By Role Activities, Distribution By User Activities, Distribution By User Sessions, Email Change Requested Vs Email Changed, Events - Recent Sessions, Geo Location, Geo Location of Admins, Geo Location Of User Sessions, Locked Out Users Activity, Logged Out Users Count, One Day Time Shift Comparison, Password Reset Vs Password Changed, Recent - Email Change Activity, Recent - Password Reset Activity, Recent - Role Activities, Recent - Roles Assigned/Removed from User, Recent - User Activities, Recent - Users Assigned/Removed from Roles, System Defined Vs User Defined, Timed Out Users Count, Top Capabilities Added To Roles, Top Roles Added To Users, Top Roles Removed From Users, Top Users, Top Users Added To Roles, Top Users By Activities, Top Users Removed From Roles, Trend - Role Events, Trend - User Email Activity, Trend - User Events, Trend - User Password Activity, Trend - UserLocked Vs Unlocked, Users Unlocked Activity



## Parser:
```
| json "eventName", "eventTime", "operator.email" as EventName, EventTime, Admin nodrop
 
```
### Use Cases:
Active Admins, Active Admins performing Account Unlock, Active Admins Performing Password Resets, Authentication Source Comparison, Current Locked User count, Current Logged In Users, Events - Recent Sessions, Geo Location of Admins, Geo Location Of User Sessions, Locked Out Users Activity, Logged Out Users Count, One Day Time Shift Comparison, Recent - Roles Assigned/Removed from User, Recent - Users Assigned/Removed from Roles, Timed Out Users Count, Top Roles Added To Users, Top Roles Removed From Users, Top Users Added To Roles, Top Users Removed From Roles, Trend - User Email Activity, Trend - UserLocked Vs Unlocked, Users Unlocked Activity



## Parser:
```
| json "eventName", "eventTime", "operator.email", "operator.id", "operator.sourceIp", "roleIdentity.roleId", "roleIdentity.roleName", "role.systemDefined", "to", "from" as EventName, EventTime, Admin, AdminId, AdminIp, RoleId, RoleName, SystemDefined, CurrentValue, PreviousValue nodrop
| json field=CurrentValue "systemDefined", "capabilities[*]" as SystemDefinedUpdated, Capabilities nodrop
| parse field=Capabilities "[*]" as Capabilities nodrop
 
```
### Use Cases:
Active Admins, Active Admins performing Account Unlock, Active Admins Performing Password Resets, Authentication Source Comparison, Current Locked User count, Current Logged In Users, Events - Recent Sessions, Geo Location, Geo Location of Admins, Geo Location Of User Sessions, Locked Out Users Activity, Logged Out Users Count, One Day Time Shift Comparison, Recent - Email Change Activity, Recent - Password Reset Activity, Recent - Role Activities, Recent - Roles Assigned/Removed from User, Recent - Users Assigned/Removed from Roles, Timed Out Users Count, Top Capabilities Added To Roles, Top Roles Added To Users, Top Roles Removed From Users, Top Users Added To Roles, Top Users Removed From Roles, Trend - User Email Activity, Trend - User Password Activity, Trend - UserLocked Vs Unlocked, Users Unlocked Activity



## Parser:
```
| json "eventName", "eventTime", "operator.email", "operator.id", "operator.sourceIp", "userIdentity.userId", "userIdentity.userEmail" as EventName, EventTime, Admin, AdminId, AdminIp, TargetUserId, TargetUserEmail nodrop
 
```
### Use Cases:
Account Locked Vs Account Unlocked, Active Admins, Active Admins performing Account Unlock, Active Admins Performing Password Resets, Active Users Vs Inactive Users, Authentication Source Comparison, Current Locked User count, Current Logged In Users, Distribution By Role Activities, Distribution By User Activities, Distribution By User Sessions, Email Change Requested Vs Email Changed, Events - Recent Sessions, Geo Location, Geo Location of Admins, Geo Location Of User Sessions, Locked Out Users Activity, Logged Out Users Count, One Day Time Shift Comparison, Password Reset Vs Password Changed, Recent - Email Change Activity, Recent - Password Reset Activity, Recent - Role Activities, Recent - Roles Assigned/Removed from User, Recent - User Activities, Recent - Users Assigned/Removed from Roles, System Defined Vs User Defined, Timed Out Users Count, Top Capabilities Added To Roles, Top Roles Added To Users, Top Roles Removed From Users, Top Users, Top Users Added To Roles, Top Users By Activities, Top Users Removed From Roles, Trend - Role Events, Trend - User Email Activity, Trend - User Events, Trend - User Password Activity, Trend - UserLocked Vs Unlocked, Users Unlocked Activity



## Parser:
```
| json "eventName", "eventTime", "operator.email", "operator.id", "operator.sourceIp", "userIdentity.userId", "userIdentity.userEmail", "user.firstName", "user.lastName", "user.active", "to", "from" as EventName, EventTime, Admin, AdminId, AdminIp, UserId, TargetUserEmail, TargetUserFirstName, TargetUserLastName, IsTargetUserActive, CurrentValue, PreviousValue nodrop
| json field=CurrentValue "firstName", "lastName", "active" as UpdatedFirstName, UpdatedLastName, UpdatedIsActive nodrop
 
```
### Use Cases:
Account Locked Vs Account Unlocked, Active Admins, Active Admins performing Account Unlock, Active Admins Performing Password Resets, Authentication Source Comparison, Current Locked User count, Current Logged In Users, Distribution By Role Activities, Distribution By User Activities, Distribution By User Sessions, Email Change Requested Vs Email Changed, Events - Recent Sessions, Geo Location, Geo Location of Admins, Geo Location Of User Sessions, Locked Out Users Activity, Logged Out Users Count, One Day Time Shift Comparison, Password Reset Vs Password Changed, Recent - Email Change Activity, Recent - Password Reset Activity, Recent - Role Activities, Recent - Roles Assigned/Removed from User, Recent - User Activities, Recent - Users Assigned/Removed from Roles, System Defined Vs User Defined, Timed Out Users Count, Top Capabilities Added To Roles, Top Roles Added To Users, Top Roles Removed From Users, Top Users, Top Users Added To Roles, Top Users By Activities, Top Users Removed From Roles, Trend - Role Events, Trend - User Email Activity, Trend - User Password Activity, Trend - UserLocked Vs Unlocked, Users Unlocked Activity



## Parser:
```
| json "eventName", "eventTime", "operator.email","operator.id","operator.sourceIp" as EventName, EventTime, Admin, AdminId, AdminIp nodrop
 
```
### Use Cases:
Account Locked Vs Account Unlocked, Active Admins, Active Admins performing Account Unlock, Active Admins Performing Password Resets, Active Users Vs Inactive Users, Authentication Source Comparison, Current Locked User count, Current Logged In Users, Distribution By Role Activities, Distribution By User Activities, Distribution By User Sessions, Email Change Requested Vs Email Changed, Events - Recent Sessions, Geo Location, Geo Location of Admins, Geo Location Of User Sessions, Locked Out Users Activity, Logged Out Users Count, One Day Time Shift Comparison, Password Reset Vs Password Changed, Recent - Email Change Activity, Recent - Password Reset Activity, Recent - Role Activities, Recent - Roles Assigned/Removed from User, Recent - User Activities, Recent - Users Assigned/Removed from Roles, System Defined Vs User Defined, Timed Out Users Count, Top Capabilities Added To Roles, Top Roles Added To Users, Top Roles Removed From Users, Top Users, Top Users Added To Roles, Top Users By Activities, Top Users Removed From Roles, Trend - Role Events, Trend - User Email Activity, Trend - User Events, Trend - User Password Activity, Trend - UserLocked Vs Unlocked, Users Unlocked Activity



## Parser:
```
| json "eventName", "eventTime", "operator.email","operator.id","operator.sourceIp", "roleIdentity.roleId","roleIdentity.roleName", "usersAdded[*].userEmail", "usersDeleted[*].userEmail" as EventName, EventTime, Admin, AdminId, AdminIp, RoleId, RoleName, UsersAdded, UsersRemoved nodrop
| parse field=UsersAdded "[*]" as UsersAdded nodrop
| parse field=UsersRemoved "[*]" as UsersRemoved nodrop
 
```
### Use Cases:
Account Locked Vs Account Unlocked, Active Admins, Active Admins performing Account Unlock, Active Admins Performing Password Resets, Active Users Vs Inactive Users, Authentication Source Comparison, Current Locked User count, Current Logged In Users, Distribution By Role Activities, Distribution By User Activities, Distribution By User Sessions, Email Change Requested Vs Email Changed, Events - Recent Sessions, Geo Location, Geo Location of Admins, Geo Location Of User Sessions, Locked Out Users Activity, Logged Out Users Count, One Day Time Shift Comparison, Password Reset Vs Password Changed, Recent - Email Change Activity, Recent - Password Reset Activity, Recent - Role Activities, Recent - Roles Assigned/Removed from User, Recent - User Activities, Recent - Users Assigned/Removed from Roles, System Defined Vs User Defined, Timed Out Users Count, Top Capabilities Added To Roles, Top Roles Added To Users, Top Roles Removed From Users, Top Users, Top Users Added To Roles, Top Users By Activities, Top Users Removed From Roles, Trend - Role Events, Trend - User Email Activity, Trend - User Events, Trend - User Password Activity, Trend - UserLocked Vs Unlocked, Users Unlocked Activity



## Parser:
```
| json "eventName", "eventTime", "operator.email","operator.id","operator.sourceIp", "userIdentity.userId","userIdentity.userEmail", "rolesAdded[*].roleName", "rolesDeleted[*].roleName" as EventName, EventTime, Admin, AdminId, AdminIp, TargetUserId, TargetUserEmail, RolesAdded, RolesRemoved nodrop
| parse field=RolesAdded "[*]" as RolesAdded nodrop
| parse field=RolesRemoved "[*]" as RolesRemoved nodrop
 
```
### Use Cases:
Account Locked Vs Account Unlocked, Active Admins, Active Admins performing Account Unlock, Active Admins Performing Password Resets, Active Users Vs Inactive Users, Authentication Source Comparison, Current Locked User count, Current Logged In Users, Distribution By Role Activities, Distribution By User Activities, Distribution By User Sessions, Email Change Requested Vs Email Changed, Events - Recent Sessions, Geo Location, Geo Location of Admins, Geo Location Of User Sessions, Locked Out Users Activity, Logged Out Users Count, One Day Time Shift Comparison, Password Reset Vs Password Changed, Recent - Email Change Activity, Recent - Password Reset Activity, Recent - Role Activities, Recent - Roles Assigned/Removed from User, Recent - User Activities, Recent - Users Assigned/Removed from Roles, System Defined Vs User Defined, Timed Out Users Count, Top Capabilities Added To Roles, Top Roles Added To Users, Top Roles Removed From Users, Top Users, Top Users Added To Roles, Top Users By Activities, Top Users Removed From Roles, Trend - Role Events, Trend - User Email Activity, Trend - User Events, Trend - User Password Activity, Trend - UserLocked Vs Unlocked, Users Unlocked Activity



## Parser:
```
| json "eventName", "eventTime", "operator.sourceIp" as EventName, EventTime, AdminIp nodrop
 
```
### Use Cases:
Account Locked Vs Account Unlocked, Active Admins, Active Admins performing Account Unlock, Active Admins Performing Password Resets, Active Users Vs Inactive Users, Authentication Source Comparison, Current Locked User count, Current Logged In Users, Distribution By Role Activities, Distribution By User Activities, Distribution By User Sessions, Email Change Requested Vs Email Changed, Events - Recent Sessions, Geo Location, Geo Location of Admins, Geo Location Of User Sessions, Locked Out Users Activity, Logged Out Users Count, One Day Time Shift Comparison, Password Reset Vs Password Changed, Recent - Email Change Activity, Recent - Password Reset Activity, Recent - Role Activities, Recent - Roles Assigned/Removed from User, Recent - User Activities, Recent - Users Assigned/Removed from Roles, System Defined Vs User Defined, Timed Out Users Count, Top Capabilities Added To Roles, Top Roles Added To Users, Top Roles Removed From Users, Top Users, Top Users Added To Roles, Top Users By Activities, Top Users Removed From Roles, Trend - Role Events, Trend - User Email Activity, Trend - User Events, Trend - User Password Activity, Trend - UserLocked Vs Unlocked, Users Unlocked Activity



## Parser:
```
| json "eventName", "eventTime", "rolesAdded[*]" as EventName, EventTime, RolesAdded nodrop
| parse regex field=RolesAdded "\"roleName\":\"(?<RoleName>.*?)\"" multi
 
```
### Use Cases:
Top Roles Added To Users



## Parser:
```
| json "eventName", "eventTime", "rolesAdded[*]","operator.sourceIp" as EventName, EventTime, RolesAdded, AdminIp nodrop
| parse regex field=RolesAdded "\"roleName\":\"(?<RoleName>.*?)\"" multi
 
```
### Use Cases:
Account Locked Vs Account Unlocked, Active Admins, Active Admins performing Account Unlock, Active Admins Performing Password Resets, Active Users Vs Inactive Users, Authentication Source Comparison, Current Locked User count, Current Logged In Users, Distribution By Role Activities, Distribution By User Activities, Distribution By User Sessions, Email Change Requested Vs Email Changed, Events - Recent Sessions, Geo Location, Geo Location of Admins, Geo Location Of User Sessions, Locked Out Users Activity, Logged Out Users Count, One Day Time Shift Comparison, Password Reset Vs Password Changed, Recent - Email Change Activity, Recent - Password Reset Activity, Recent - Role Activities, Recent - Roles Assigned/Removed from User, Recent - User Activities, Recent - Users Assigned/Removed from Roles, System Defined Vs User Defined, Timed Out Users Count, Top Capabilities Added To Roles, Top Roles Added To Users, Top Roles Removed From Users, Top Users, Top Users Added To Roles, Top Users By Activities, Top Users Removed From Roles, Trend - Role Events, Trend - User Email Activity, Trend - User Events, Trend - User Password Activity, Trend - UserLocked Vs Unlocked, Users Unlocked Activity



## Parser:
```
| json "eventName", "eventTime", "rolesDeleted[*]" as EventName, EventTime, RolesRemoved nodrop
| parse regex field=RolesRemoved "\"roleName\":\"(?<RoleName>.*?)\"" multi
 
```
### Use Cases:
Active Admins, Geo Location of Admins, Recent - Roles Assigned/Removed from User, Recent - Users Assigned/Removed from Roles, Top Roles Added To Users, Top Roles Removed From Users, Top Users Removed From Roles



## Parser:
```
| json "eventName", "eventTime", "rolesDeleted[*]", "operator.sourceIp" as EventName, EventTime, RolesRemoved, AdminIp nodrop
| parse regex field=RolesRemoved "\"roleName\":\"(?<RoleName>.*?)\"" multi
 
```
### Use Cases:
Account Locked Vs Account Unlocked, Active Admins, Active Admins performing Account Unlock, Active Admins Performing Password Resets, Active Users Vs Inactive Users, Authentication Source Comparison, Current Locked User count, Current Logged In Users, Distribution By Role Activities, Distribution By User Activities, Distribution By User Sessions, Email Change Requested Vs Email Changed, Events - Recent Sessions, Geo Location, Geo Location of Admins, Geo Location Of User Sessions, Locked Out Users Activity, Logged Out Users Count, One Day Time Shift Comparison, Password Reset Vs Password Changed, Recent - Email Change Activity, Recent - Password Reset Activity, Recent - Role Activities, Recent - Roles Assigned/Removed from User, Recent - User Activities, Recent - Users Assigned/Removed from Roles, System Defined Vs User Defined, Timed Out Users Count, Top Capabilities Added To Roles, Top Roles Added To Users, Top Roles Removed From Users, Top Users, Top Users Added To Roles, Top Users By Activities, Top Users Removed From Roles, Trend - Role Events, Trend - User Email Activity, Trend - User Events, Trend - User Password Activity, Trend - UserLocked Vs Unlocked, Users Unlocked Activity



## Parser:
```
| json "eventName", "eventTime", "userIdentity.userId", "newEmail", "oldEmail" as EventName, EventTime, TargetUserId, TargetUserEmail, TargetUserOldEmail nodrop
 
```
### Use Cases:
Active Admins, Active Admins performing Account Unlock, Active Admins Performing Password Resets, Authentication Source Comparison, Current Locked User count, Current Logged In Users, Events - Recent Sessions, Geo Location, Geo Location of Admins, Geo Location Of User Sessions, Locked Out Users Activity, Logged Out Users Count, One Day Time Shift Comparison, Recent - Email Change Activity, Recent - Password Reset Activity, Recent - Roles Assigned/Removed from User, Recent - Users Assigned/Removed from Roles, Timed Out Users Count, Top Roles Added To Users, Top Roles Removed From Users, Top Users Added To Roles, Top Users Removed From Roles, Trend - User Email Activity, Trend - User Password Activity, Trend - UserLocked Vs Unlocked, Users Unlocked Activity



## Parser:
```
| json "eventName", "eventTime", "userIdentity.userId", "newEmail", "oldEmail","operator.email", "operator.sourceIp" as EventName, EventTime, TargetUserId, TargetUserEmail, TargetUserOldEmail, Admin, AdminIp nodrop
 
```
### Use Cases:
Account Locked Vs Account Unlocked, Active Admins, Active Admins performing Account Unlock, Active Admins Performing Password Resets, Active Users Vs Inactive Users, Authentication Source Comparison, Current Locked User count, Current Logged In Users, Distribution By Role Activities, Distribution By User Activities, Distribution By User Sessions, Email Change Requested Vs Email Changed, Events - Recent Sessions, Geo Location, Geo Location of Admins, Geo Location Of User Sessions, Locked Out Users Activity, Logged Out Users Count, One Day Time Shift Comparison, Password Reset Vs Password Changed, Recent - Email Change Activity, Recent - Password Reset Activity, Recent - Role Activities, Recent - Roles Assigned/Removed from User, Recent - User Activities, Recent - Users Assigned/Removed from Roles, System Defined Vs User Defined, Timed Out Users Count, Top Capabilities Added To Roles, Top Roles Added To Users, Top Roles Removed From Users, Top Users, Top Users Added To Roles, Top Users By Activities, Top Users Removed From Roles, Trend - Role Events, Trend - User Email Activity, Trend - User Events, Trend - User Password Activity, Trend - UserLocked Vs Unlocked, Users Unlocked Activity



## Parser:
```
| json "eventName", "eventTime", "usersAdded[*]" as EventName, EventTime, UsersAdded nodrop
| parse regex field=UsersAdded "\"userEmail\":\"(?<TargetUserEmail>.*?)\"" multi
 
```
### Use Cases:
Active Admins, Geo Location of Admins, Recent - Roles Assigned/Removed from User, Recent - Users Assigned/Removed from Roles, Top Roles Added To Users, Top Roles Removed From Users, Top Users Added To Roles, Top Users Removed From Roles



## Parser:
```
| json "eventName", "eventTime", "usersAdded[*]", "operator.sourceIp" as EventName, EventTime, UsersAdded, AdminIp nodrop
| parse regex field=UsersAdded "\"userEmail\":\"(?<TargetUserEmail>.*?)\"" multi
 
```
### Use Cases:
Account Locked Vs Account Unlocked, Active Admins, Active Admins performing Account Unlock, Active Admins Performing Password Resets, Active Users Vs Inactive Users, Authentication Source Comparison, Current Locked User count, Current Logged In Users, Distribution By Role Activities, Distribution By User Activities, Distribution By User Sessions, Email Change Requested Vs Email Changed, Events - Recent Sessions, Geo Location, Geo Location of Admins, Geo Location Of User Sessions, Locked Out Users Activity, Logged Out Users Count, One Day Time Shift Comparison, Password Reset Vs Password Changed, Recent - Email Change Activity, Recent - Password Reset Activity, Recent - Role Activities, Recent - Roles Assigned/Removed from User, Recent - User Activities, Recent - Users Assigned/Removed from Roles, System Defined Vs User Defined, Timed Out Users Count, Top Capabilities Added To Roles, Top Roles Added To Users, Top Roles Removed From Users, Top Users, Top Users Added To Roles, Top Users By Activities, Top Users Removed From Roles, Trend - Role Events, Trend - User Email Activity, Trend - User Events, Trend - User Password Activity, Trend - UserLocked Vs Unlocked, Users Unlocked Activity



## Parser:
```
| json "eventName", "eventTime", "usersDeleted[*]" as EventName, EventTime, UsersRemoved nodrop
| parse regex field=UsersRemoved "\"userEmail\":\"(?<TargetUserEmail>.*?)\"" multi
 
```
### Use Cases:
Active Admins, Geo Location of Admins, Recent - Roles Assigned/Removed from User, Recent - Users Assigned/Removed from Roles, Top Roles Added To Users, Top Users Removed From Roles



## Parser:
```
| json "eventName", "eventTime", "usersDeleted[*]","operator.sourceIp" as EventName, EventTime, UsersRemoved, AdminIp nodrop
| parse regex field=UsersRemoved "\"userEmail\":\"(?<TargetUserEmail>.*?)\"" multi
 
```
### Use Cases:
Account Locked Vs Account Unlocked, Active Admins, Active Admins performing Account Unlock, Active Admins Performing Password Resets, Active Users Vs Inactive Users, Authentication Source Comparison, Current Locked User count, Current Logged In Users, Distribution By Role Activities, Distribution By User Activities, Distribution By User Sessions, Email Change Requested Vs Email Changed, Events - Recent Sessions, Geo Location, Geo Location of Admins, Geo Location Of User Sessions, Locked Out Users Activity, Logged Out Users Count, One Day Time Shift Comparison, Password Reset Vs Password Changed, Recent - Email Change Activity, Recent - Password Reset Activity, Recent - Role Activities, Recent - Roles Assigned/Removed from User, Recent - User Activities, Recent - Users Assigned/Removed from Roles, System Defined Vs User Defined, Timed Out Users Count, Top Capabilities Added To Roles, Top Roles Added To Users, Top Roles Removed From Users, Top Users, Top Users Added To Roles, Top Users By Activities, Top Users Removed From Roles, Trend - Role Events, Trend - User Email Activity, Trend - User Events, Trend - User Password Activity, Trend - UserLocked Vs Unlocked, Users Unlocked Activity



## Parser:
```
| json "eventName", "operator.email" as EventName, User nodrop
| json "userSession.email" as LoginUser nodrop
| json "sessionIdentity.userEmail" as LogoutUser nodrop
| json "userIdentity.userEmail" as LockedUser nodrop
 
```
### Use Cases:
Active Admins, Active Admins performing Account Unlock, Active Admins Performing Password Resets, Authentication Source Comparison, Current Locked User count, Current Logged In Users, Distribution By Role Activities, Distribution By User Activities, Email Change Requested Vs Email Changed, Events - Recent Sessions, Geo Location, Geo Location of Admins, Geo Location Of User Sessions, Locked Out Users Activity, Logged Out Users Count, One Day Time Shift Comparison, Password Reset Vs Password Changed, Recent - Email Change Activity, Recent - Password Reset Activity, Recent - Role Activities, Recent - Roles Assigned/Removed from User, Recent - Users Assigned/Removed from Roles, System Defined Vs User Defined, Timed Out Users Count, Top Capabilities Added To Roles, Top Roles Added To Users, Top Roles Removed From Users, Top Users, Top Users Added To Roles, Top Users By Activities, Top Users Removed From Roles, Trend - Role Events, Trend - User Email Activity, Trend - User Password Activity, Trend - UserLocked Vs Unlocked, Users Unlocked Activity



## Parser:
```
| json "eventName", "operator.email", "operator.sourceIp"  as EventName, Admin, AdminIp nodrop
 
```
### Use Cases:
Account Locked Vs Account Unlocked, Active Admins, Active Admins performing Account Unlock, Active Admins Performing Password Resets, Active Users Vs Inactive Users, Authentication Source Comparison, Current Locked User count, Current Logged In Users, Distribution By Role Activities, Distribution By User Activities, Distribution By User Sessions, Email Change Requested Vs Email Changed, Events - Recent Sessions, Geo Location, Geo Location of Admins, Geo Location Of User Sessions, Locked Out Users Activity, Logged Out Users Count, One Day Time Shift Comparison, Password Reset Vs Password Changed, Recent - Email Change Activity, Recent - Password Reset Activity, Recent - Role Activities, Recent - Roles Assigned/Removed from User, Recent - User Activities, Recent - Users Assigned/Removed from Roles, System Defined Vs User Defined, Timed Out Users Count, Top Capabilities Added To Roles, Top Roles Added To Users, Top Roles Removed From Users, Top Users, Top Users Added To Roles, Top Users By Activities, Top Users Removed From Roles, Trend - Role Events, Trend - User Email Activity, Trend - User Events, Trend - User Password Activity, Trend - UserLocked Vs Unlocked, Users Unlocked Activity



## Parser:
```
| json "eventName", "operator.email", "operator.sourceIp" as EventName, Admin, AdminIp nodrop
 
```
### Use Cases:
Account Locked Vs Account Unlocked, Active Admins, Active Admins performing Account Unlock, Active Admins Performing Password Resets, Active Users Vs Inactive Users, Authentication Source Comparison, Current Locked User count, Current Logged In Users, Distribution By Role Activities, Distribution By User Activities, Distribution By User Sessions, Email Change Requested Vs Email Changed, Events - Recent Sessions, Geo Location, Geo Location of Admins, Geo Location Of User Sessions, Locked Out Users Activity, Logged Out Users Count, One Day Time Shift Comparison, Password Reset Vs Password Changed, Recent - Email Change Activity, Recent - Password Reset Activity, Recent - Role Activities, Recent - Roles Assigned/Removed from User, Recent - User Activities, Recent - Users Assigned/Removed from Roles, System Defined Vs User Defined, Timed Out Users Count, Top Capabilities Added To Roles, Top Roles Added To Users, Top Roles Removed From Users, Top Users, Top Users Added To Roles, Top Users By Activities, Top Users Removed From Roles, Trend - Role Events, Trend - User Email Activity, Trend - User Events, Trend - User Password Activity, Trend - UserLocked Vs Unlocked, Users Unlocked Activity



## Parser:
```
| json "eventName", "operator.sourceIp" as EventName, AdminIp
 
```
### Use Cases:
Active Admins, Active Admins performing Account Unlock, Active Admins Performing Password Resets, Authentication Source Comparison, Current Locked User count, Current Logged In Users, Events - Recent Sessions, Geo Location, Geo Location of Admins, Geo Location Of User Sessions, Locked Out Users Activity, Logged Out Users Count, One Day Time Shift Comparison, Recent - Roles Assigned/Removed from User, Recent - Users Assigned/Removed from Roles, Timed Out Users Count, Top Roles Added To Users, Top Roles Removed From Users, Top Users Added To Roles, Top Users Removed From Roles, Trend - User Email Activity, Trend - UserLocked Vs Unlocked, Users Unlocked Activity



## Parser:
```
| json "eventName", "role.systemDefined","operator.email", "operator.sourceIp"  as EventName, SystemDefined, Admin, AdminIp nodrop
 
```
### Use Cases:
Active Admins, Active Admins performing Account Unlock, Active Admins Performing Password Resets, Authentication Source Comparison, Current Locked User count, Current Logged In Users, Events - Recent Sessions, Geo Location, Geo Location of Admins, Geo Location Of User Sessions, Locked Out Users Activity, Logged Out Users Count, One Day Time Shift Comparison, Recent - Email Change Activity, Recent - Password Reset Activity, Recent - Role Activities, Recent - Roles Assigned/Removed from User, Recent - Users Assigned/Removed from Roles, System Defined Vs User Defined, Timed Out Users Count, Top Capabilities Added To Roles, Top Roles Added To Users, Top Roles Removed From Users, Top Users Added To Roles, Top Users Removed From Roles, Trend - Role Events, Trend - User Email Activity, Trend - User Password Activity, Trend - UserLocked Vs Unlocked, Users Unlocked Activity



## Parser:
```
| json "eventName", "to.capabilities", "operator.email", "operator.sourceIp"  as EventName, capabilities_updated, Admin, AdminIp nodrop
 
```
### Use Cases:
Active Admins, Active Admins performing Account Unlock, Active Admins Performing Password Resets, Authentication Source Comparison, Current Locked User count, Current Logged In Users, Events - Recent Sessions, Geo Location, Geo Location of Admins, Geo Location Of User Sessions, Locked Out Users Activity, Logged Out Users Count, One Day Time Shift Comparison, Recent - Email Change Activity, Recent - Password Reset Activity, Recent - Role Activities, Recent - Roles Assigned/Removed from User, Recent - Users Assigned/Removed from Roles, Timed Out Users Count, Top Capabilities Added To Roles, Top Roles Added To Users, Top Roles Removed From Users, Top Users Added To Roles, Top Users Removed From Roles, Trend - Role Events, Trend - User Email Activity, Trend - User Password Activity, Trend - UserLocked Vs Unlocked, Users Unlocked Activity



## Parser:
```
| json "eventName", "to.capabilities", "operator.email", "operator.sourceIp"  as EventName, capabilities_updated, Admin, AdminIp nodrop
| parse regex field=capabilities_updated "\"(?<Capability>.*?)\"" multi nodrop
 
```
### Use Cases:
Active Admins, Active Admins performing Account Unlock, Active Admins Performing Password Resets, Authentication Source Comparison, Current Locked User count, Current Logged In Users, Events - Recent Sessions, Geo Location, Geo Location of Admins, Geo Location Of User Sessions, Locked Out Users Activity, Logged Out Users Count, One Day Time Shift Comparison, Recent - Email Change Activity, Recent - Password Reset Activity, Recent - Roles Assigned/Removed from User, Recent - Users Assigned/Removed from Roles, Timed Out Users Count, Top Capabilities Added To Roles, Top Roles Added To Users, Top Roles Removed From Users, Top Users Added To Roles, Top Users Removed From Roles, Trend - User Email Activity, Trend - User Password Activity, Trend - UserLocked Vs Unlocked, Users Unlocked Activity



## Parser:
```
| json "eventName", "userIdentity.userEmail" as EventName, UserId nodrop
 
```
### Use Cases:
Active Admins, Active Admins performing Account Unlock, Authentication Source Comparison, Current Locked User count, Current Logged In Users, Events - Recent Sessions, Geo Location of Admins, Geo Location Of User Sessions, Locked Out Users Activity, Logged Out Users Count, One Day Time Shift Comparison, Recent - Roles Assigned/Removed from User, Recent - Users Assigned/Removed from Roles, Timed Out Users Count, Top Roles Added To Users, Top Roles Removed From Users, Top Users Added To Roles, Top Users Removed From Roles, Trend - UserLocked Vs Unlocked, Users Unlocked Activity



## Parser:
```
| json "eventName", "userIdentity.userEmail", "userSession.sourceIp" as EventName, UserId, UserIp nodrop
 
```
### Use Cases:
Account Locked Vs Account Unlocked, Active Admins, Active Admins performing Account Unlock, Active Admins Performing Password Resets, Active Users Vs Inactive Users, Authentication Source Comparison, Current Locked User count, Current Logged In Users, Distribution By Role Activities, Distribution By User Activities, Distribution By User Sessions, Email Change Requested Vs Email Changed, Events - Recent Sessions, Geo Location, Geo Location of Admins, Geo Location Of User Sessions, Locked Out Users Activity, Logged Out Users Count, One Day Time Shift Comparison, Password Reset Vs Password Changed, Recent - Email Change Activity, Recent - Password Reset Activity, Recent - Role Activities, Recent - Roles Assigned/Removed from User, Recent - User Activities, Recent - Users Assigned/Removed from Roles, System Defined Vs User Defined, Timed Out Users Count, Top Capabilities Added To Roles, Top Roles Added To Users, Top Roles Removed From Users, Top Users, Top Users Added To Roles, Top Users By Activities, Top Users Removed From Roles, Trend - Role Events, Trend - User Email Activity, Trend - User Events, Trend - User Password Activity, Trend - UserLocked Vs Unlocked, Users Unlocked Activity



## Parser:
```
| json "eventName", "userIdentity.userId", "user.active", "to.active", "operator.email", "operator.sourceIp" as EventName, UserId, ActiveCreated, ActiveUpdated,  Admin, AdminIp nodrop
 
```
### Use Cases:
Account Locked Vs Account Unlocked, Active Admins, Active Admins performing Account Unlock, Active Admins Performing Password Resets, Active Users Vs Inactive Users, Authentication Source Comparison, Current Locked User count, Current Logged In Users, Distribution By Role Activities, Distribution By User Activities, Distribution By User Sessions, Email Change Requested Vs Email Changed, Events - Recent Sessions, Geo Location, Geo Location of Admins, Geo Location Of User Sessions, Locked Out Users Activity, Logged Out Users Count, One Day Time Shift Comparison, Password Reset Vs Password Changed, Recent - Email Change Activity, Recent - Password Reset Activity, Recent - Role Activities, Recent - Roles Assigned/Removed from User, Recent - User Activities, Recent - Users Assigned/Removed from Roles, System Defined Vs User Defined, Timed Out Users Count, Top Capabilities Added To Roles, Top Roles Added To Users, Top Roles Removed From Users, Top Users, Top Users Added To Roles, Top Users By Activities, Top Users Removed From Roles, Trend - Role Events, Trend - User Email Activity, Trend - User Events, Trend - User Password Activity, Trend - UserLocked Vs Unlocked, Users Unlocked Activity



## Parser:
```
| json "eventName", "userSession.id", "sessionIdentity.userId" as EventName, LoginUserId, LogoutUserID nodrop
 
```
### Use Cases:
Active Admins, Active Admins performing Account Unlock, Authentication Source Comparison, Current Logged In Users, Events - Recent Sessions, Geo Location of Admins, Geo Location Of User Sessions, Locked Out Users Activity, Logged Out Users Count, One Day Time Shift Comparison, Recent - Roles Assigned/Removed from User, Recent - Users Assigned/Removed from Roles, Timed Out Users Count, Top Roles Added To Users, Top Roles Removed From Users, Top Users Added To Roles, Top Users Removed From Roles, Trend - UserLocked Vs Unlocked, Users Unlocked Activity



## Parser:
```
| json "eventName", "userSession.id", "sessionIdentity.userId", "userSession.sourceIp"  as EventName, LoginUserId, LogoutUserID, UserIp nodrop
 
```
### Use Cases:
Account Locked Vs Account Unlocked, Active Admins, Active Admins performing Account Unlock, Active Admins Performing Password Resets, Active Users Vs Inactive Users, Authentication Source Comparison, Current Locked User count, Current Logged In Users, Distribution By Role Activities, Distribution By User Activities, Distribution By User Sessions, Email Change Requested Vs Email Changed, Events - Recent Sessions, Geo Location, Geo Location of Admins, Geo Location Of User Sessions, Locked Out Users Activity, Logged Out Users Count, One Day Time Shift Comparison, Password Reset Vs Password Changed, Recent - Email Change Activity, Recent - Password Reset Activity, Recent - Role Activities, Recent - Roles Assigned/Removed from User, Recent - User Activities, Recent - Users Assigned/Removed from Roles, System Defined Vs User Defined, Timed Out Users Count, Top Capabilities Added To Roles, Top Roles Added To Users, Top Roles Removed From Users, Top Users, Top Users Added To Roles, Top Users By Activities, Top Users Removed From Roles, Trend - Role Events, Trend - User Email Activity, Trend - User Events, Trend - User Password Activity, Trend - UserLocked Vs Unlocked, Users Unlocked Activity



## Parser:
```
| json "eventName", "userSession.sourceIp"  as EventName, UserIp nodrop
 
```
### Use Cases:
Account Locked Vs Account Unlocked, Active Admins, Active Admins performing Account Unlock, Active Admins Performing Password Resets, Active Users Vs Inactive Users, Authentication Source Comparison, Current Locked User count, Current Logged In Users, Distribution By Role Activities, Distribution By User Activities, Distribution By User Sessions, Email Change Requested Vs Email Changed, Events - Recent Sessions, Geo Location, Geo Location of Admins, Geo Location Of User Sessions, Locked Out Users Activity, Logged Out Users Count, One Day Time Shift Comparison, Password Reset Vs Password Changed, Recent - Email Change Activity, Recent - Password Reset Activity, Recent - Role Activities, Recent - Roles Assigned/Removed from User, Recent - User Activities, Recent - Users Assigned/Removed from Roles, System Defined Vs User Defined, Timed Out Users Count, Top Capabilities Added To Roles, Top Roles Added To Users, Top Roles Removed From Users, Top Users, Top Users Added To Roles, Top Users By Activities, Top Users Removed From Roles, Trend - Role Events, Trend - User Email Activity, Trend - User Events, Trend - User Password Activity, Trend - UserLocked Vs Unlocked, Users Unlocked Activity



## Parser:
```
| json "eventName", "userSession.sourceIp" as EventName, UserIp nodrop
 
```
### Use Cases:
Account Locked Vs Account Unlocked, Active Admins, Active Admins performing Account Unlock, Active Admins Performing Password Resets, Active Users Vs Inactive Users, Authentication Source Comparison, Current Locked User count, Current Logged In Users, Distribution By Role Activities, Distribution By User Activities, Distribution By User Sessions, Email Change Requested Vs Email Changed, Events - Recent Sessions, Geo Location, Geo Location of Admins, Geo Location Of User Sessions, Locked Out Users Activity, Logged Out Users Count, One Day Time Shift Comparison, Password Reset Vs Password Changed, Recent - Email Change Activity, Recent - Password Reset Activity, Recent - Role Activities, Recent - Roles Assigned/Removed from User, Recent - User Activities, Recent - Users Assigned/Removed from Roles, System Defined Vs User Defined, Timed Out Users Count, Top Capabilities Added To Roles, Top Roles Added To Users, Top Roles Removed From Users, Top Users, Top Users Added To Roles, Top Users By Activities, Top Users Removed From Roles, Trend - Role Events, Trend - User Email Activity, Trend - User Events, Trend - User Password Activity, Trend - UserLocked Vs Unlocked, Users Unlocked Activity



## Parser:
```
| json "eventName", "userSession.sourceIp" as EventName,UserIp  nodrop 
 
```
### Use Cases:
Account Locked Vs Account Unlocked, Active Admins, Active Admins performing Account Unlock, Active Admins Performing Password Resets, Active Users Vs Inactive Users, Authentication Source Comparison, Current Locked User count, Current Logged In Users, Distribution By Role Activities, Distribution By User Activities, Distribution By User Sessions, Email Change Requested Vs Email Changed, Events - Recent Sessions, Geo Location, Geo Location of Admins, Geo Location Of User Sessions, Locked Out Users Activity, Logged Out Users Count, One Day Time Shift Comparison, Password Reset Vs Password Changed, Recent - Email Change Activity, Recent - Password Reset Activity, Recent - Role Activities, Recent - Roles Assigned/Removed from User, Recent - User Activities, Recent - Users Assigned/Removed from Roles, System Defined Vs User Defined, Timed Out Users Count, Top Capabilities Added To Roles, Top Roles Added To Users, Top Roles Removed From Users, Top Users, Top Users Added To Roles, Top Users By Activities, Top Users Removed From Roles, Trend - Role Events, Trend - User Email Activity, Trend - User Events, Trend - User Password Activity, Trend - UserLocked Vs Unlocked, Users Unlocked Activity


