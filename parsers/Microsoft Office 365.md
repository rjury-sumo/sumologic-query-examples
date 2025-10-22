# Parsers For Microsoft Office 365

**Microsoft Office 365/Demo - Geo Lookup on Suspicious IP/Demo - Geo Lookup on Suspicious IP**
```
_sourceCategory={{Logsdatasource}}   CreationTime "Workload":"SharePoint" ClientIP
| json "ClientIP" as src_ip
```

**Microsoft Office 365/Demo - Honing on Suspicious User/Demo - Honing on Suspicious User**
```
_sourceCategory={{Logsdatasource}}   CreationTime "\"Workload\":\"SharePoint\"" ClientIP UserId
| json "ClientIP" as src_ip
| json "UserId" as userid
```

**Microsoft Office 365/Demo - Outlier/Demo - Outlier**
```
_sourceCategory={{Logsdatasource}}   "\"Workload\":\"SharePoint\"" "<EnterSuspiciousIP>"
| json "Workload" 
```

**Microsoft Office 365/Office 365 - Active Directory - Login Locations/Failed Logins from US**
```
_sourceCategory={{Logsdatasource}}   "\"Workload\":\"AzureActiveDirectory\"" (PasswordLogonInitialAuthUsingADFSFederatedToken or PasswordLogonInitialAuthUsingPassword or UserLoginFailed) failed
| json "Workload", "Operation", "ClientIP", "ResultStatus", "ObjectId", "UserId"
```

**Microsoft Office 365/Office 365 - Active Directory - Login Locations/Failed Logins Outside the US**
```
_sourceCategory={{Logsdatasource}}   "\"Workload\":\"AzureActiveDirectory\"" (PasswordLogonInitialAuthUsingADFSFederatedToken or PasswordLogonInitialAuthUsingPassword or UserLoginFailed) failed
| json "Workload", "Operation", "ClientIP", "ResultStatus", "ObjectId", "UserId"
```

**Microsoft Office 365/Office 365 - Active Directory - Login Locations/Successful Logins from US**
```
_sourceCategory={{Logsdatasource}}   "\"Workload\":\"AzureActiveDirectory\"" (PasswordLogonInitialAuthUsingADFSFederatedToken or PasswordLogonInitialAuthUsingPassword or UserLoggedIn) (success or Succeeded)
| json "Workload", "Operation", "ClientIP", "ResultStatus", "ObjectId", "UserId"
```

**Microsoft Office 365/Office 365 - Active Directory - Login Locations/Successful Logins Outside the US**
```
_sourceCategory={{Logsdatasource}}   "\"Workload\":\"AzureActiveDirectory\"" (PasswordLogonInitialAuthUsingADFSFederatedToken or PasswordLogonInitialAuthUsingPassword or UserLoggedIn) (success or Succeeded)
| json "Workload", "Operation", "ClientIP", "ResultStatus", "ObjectId", "UserId"
```

**Microsoft Office 365/Office 365 - Active Directory - Login Monitoring - New/Login Failure Outlier**
```
_sourceCategory = Labs/Microsoft/Office365 "\"Workload\":\"AzureActiveDirectory\"" (PasswordLogonInitialAuthUsingADFSFederatedToken or PasswordLogonInitialAuthUsingPassword or UserLoginFailed) failed
| json "Workload", "Operation", "ClientIP", "ResultStatus", "ObjectId", "UserId"
```

**Microsoft Office 365/Office 365 - Active Directory - Login Monitoring - New/Login Failures**
```
_sourceCategory = Labs/Microsoft/Office365 "\"Workload\":\"AzureActiveDirectory\"" (PasswordLogonInitialAuthUsingADFSFederatedToken or PasswordLogonInitialAuthUsingPassword or UserLoginFailed) failed
| json "Workload", "Operation", "ClientIP", "ResultStatus", "ObjectId", "UserId"
```

**Microsoft Office 365/Office 365 - Active Directory - Login Monitoring - New/Login Failures by ClientIP**
```
_sourceCategory = Labs/Microsoft/Office365 "\"Workload\":\"AzureActiveDirectory\"" (PasswordLogonInitialAuthUsingADFSFederatedToken or PasswordLogonInitialAuthUsingPassword or UserLoginFailed) failed
| json "Workload", "Operation", "ClientIP", "ResultStatus", "ObjectId", "UserId"
```

**Microsoft Office 365/Office 365 - Active Directory - Login Monitoring - New/Login Failures by Error**
```
_sourceCategory = Labs/Microsoft/Office365 "\"Workload\":\"AzureActiveDirectory\"" "LogonError" (PasswordLogonInitialAuthUsingADFSFederatedToken or PasswordLogonInitialAuthUsingPassword or UserLoginFailed) failed
| json "Workload", "Operation", "ClientIP", "ResultStatus", "ObjectId", "UserId", "LogonError"
```

**Microsoft Office 365/Office 365 - Active Directory - Login Monitoring - New/Login Failures by Operation**
```
_sourceCategory = Labs/Microsoft/Office365 "\"Workload\":\"AzureActiveDirectory\"" (PasswordLogonInitialAuthUsingADFSFederatedToken or PasswordLogonInitialAuthUsingPassword or UserLoginFailed) failed
| json "Workload", "Operation", "ClientIP", "ResultStatus", "ObjectId", "UserId"
```

**Microsoft Office 365/Office 365 - Active Directory - Login Monitoring - New/Login Failures by User - Trend**
```
_sourceCategory = Labs/Microsoft/Office365 "\"Workload\":\"AzureActiveDirectory\"" "LogonError" (PasswordLogonInitialAuthUsingADFSFederatedToken or PasswordLogonInitialAuthUsingPassword or UserLoginFailed) failed
| json "Workload", "Operation", "ClientIP", "ResultStatus", "ObjectId", "UserId", "LogonError"
```

**Microsoft Office 365/Office 365 - Active Directory - Login Monitoring - New/Logins Attempts from Multiple ClientIPs (within 15m)**
```
_sourceCategory = Labs/Microsoft/Office365 "\"Workload\":\"AzureActiveDirectory\"" (PasswordLogonInitialAuthUsingADFSFederatedToken or PasswordLogonInitialAuthUsingPassword or UserLoginFailed or UserLoggedIn)
| json "Workload", "Operation", "ClientIP", "ResultStatus", "ObjectId", "UserId"
```

**Microsoft Office 365/Office 365 - Active Directory - Login Monitoring - New/Successful Logins**
```
_sourceCategory = Labs/Microsoft/Office365 "\"Workload\":\"AzureActiveDirectory\"" (PasswordLogonInitialAuthUsingADFSFederatedToken or PasswordLogonInitialAuthUsingPassword or UserLoggedIn) (success or Succeeded)
| json "Workload", "Operation", "ClientIP", "ResultStatus", "ObjectId", "UserId"
```

**Microsoft Office 365/Office 365 - Active Directory - Login Monitoring - New/Successful Logins by ClientIP**
```
_sourceCategory = Labs/Microsoft/Office365 "\"Workload\":\"AzureActiveDirectory\"" (PasswordLogonInitialAuthUsingADFSFederatedToken or PasswordLogonInitialAuthUsingPassword or UserLoggedIn) (success or Succeeded)
| json "Workload", "Operation", "ClientIP", "ResultStatus", "ObjectId", "UserId"
```

**Microsoft Office 365/Office 365 - Active Directory - Login Monitoring - New/Successful Logins by Operation**
```
_sourceCategory = Labs/Microsoft/Office365 "\"Workload\":\"AzureActiveDirectory\"" (PasswordLogonInitialAuthUsingADFSFederatedToken or PasswordLogonInitialAuthUsingPassword or UserLoggedIn) (success or Succeeded)
| json "Workload", "Operation", "ClientIP", "ResultStatus", "ObjectId", "UserId"
```

**Microsoft Office 365/Office 365 - Active Directory - Login Monitoring/Login Failure Outlier**
```
_sourceCategory={{Logsdatasource}}   "\"Workload\":\"AzureActiveDirectory\"" (PasswordLogonInitialAuthUsingADFSFederatedToken or PasswordLogonInitialAuthUsingPassword or UserLoginFailed) failed
| json "Workload", "Operation", "ClientIP", "ResultStatus", "ObjectId", "UserId"
```

**Microsoft Office 365/Office 365 - Active Directory - Login Monitoring/Login Failures**
```
_sourceCategory={{Logsdatasource}}   "\"Workload\":\"AzureActiveDirectory\"" (PasswordLogonInitialAuthUsingADFSFederatedToken or PasswordLogonInitialAuthUsingPassword or UserLoginFailed) failed
| json "Workload", "Operation", "ClientIP", "ResultStatus", "ObjectId", "UserId"
```

**Microsoft Office 365/Office 365 - Active Directory - Login Monitoring/Login Failures by ClientIP**
```
_sourceCategory={{Logsdatasource}}   "\"Workload\":\"AzureActiveDirectory\"" (PasswordLogonInitialAuthUsingADFSFederatedToken or PasswordLogonInitialAuthUsingPassword or UserLoginFailed) failed
| json "Workload", "Operation", "ClientIP", "ResultStatus", "ObjectId", "UserId"
```

**Microsoft Office 365/Office 365 - Active Directory - Login Monitoring/Login Failures by Error**
```
_sourceCategory={{Logsdatasource}}   "\"Workload\":\"AzureActiveDirectory\"" "LogonError" (PasswordLogonInitialAuthUsingADFSFederatedToken or PasswordLogonInitialAuthUsingPassword or UserLoginFailed) failed
| json "Workload", "Operation", "ClientIP", "ResultStatus", "ObjectId", "UserId", "LogonError"
```

**Microsoft Office 365/Office 365 - Active Directory - Login Monitoring/Login Failures by Operation**
```
_sourceCategory={{Logsdatasource}}   "\"Workload\":\"AzureActiveDirectory\"" (PasswordLogonInitialAuthUsingADFSFederatedToken or PasswordLogonInitialAuthUsingPassword or UserLoginFailed) failed
| json "Workload", "Operation", "ClientIP", "ResultStatus", "ObjectId", "UserId"
```

**Microsoft Office 365/Office 365 - Active Directory - Login Monitoring/Login Failures by User - Trend**
```
_sourceCategory={{Logsdatasource}}   "\"Workload\":\"AzureActiveDirectory\"" "LogonError" (PasswordLogonInitialAuthUsingADFSFederatedToken or PasswordLogonInitialAuthUsingPassword or UserLoginFailed) failed
| json "Workload", "Operation", "ClientIP", "ResultStatus", "ObjectId", "UserId", "LogonError"
```

**Microsoft Office 365/Office 365 - Active Directory - Login Monitoring/Logins Attempts from Multiple ClientIPs (within 15m)**
```
_sourceCategory={{Logsdatasource}}   "\"Workload\":\"AzureActiveDirectory\"" (PasswordLogonInitialAuthUsingADFSFederatedToken or PasswordLogonInitialAuthUsingPassword or UserLoginFailed or UserLoggedIn)
| json "Workload", "Operation", "ClientIP", "ResultStatus", "ObjectId", "UserId"
```

**Microsoft Office 365/Office 365 - Active Directory - Login Monitoring/Successful Logins**
```
_sourceCategory={{Logsdatasource}}   "\"Workload\":\"AzureActiveDirectory\"" (PasswordLogonInitialAuthUsingADFSFederatedToken or PasswordLogonInitialAuthUsingPassword or UserLoggedIn) (success or Succeeded)
| json "Workload", "Operation", "ClientIP", "ResultStatus", "ObjectId", "UserId"
```

**Microsoft Office 365/Office 365 - Active Directory - Login Monitoring/Successful Logins by ClientIP**
```
_sourceCategory={{Logsdatasource}}   "\"Workload\":\"AzureActiveDirectory\"" (PasswordLogonInitialAuthUsingADFSFederatedToken or PasswordLogonInitialAuthUsingPassword or UserLoggedIn) (success or Succeeded)
| json "Workload", "Operation", "ClientIP", "ResultStatus", "ObjectId", "UserId"
```

**Microsoft Office 365/Office 365 - Active Directory - Login Monitoring/Successful Logins by Operation**
```
_sourceCategory={{Logsdatasource}}   "\"Workload\":\"AzureActiveDirectory\"" (PasswordLogonInitialAuthUsingADFSFederatedToken or PasswordLogonInitialAuthUsingPassword or UserLoggedIn) (success or Succeeded)
| json "Workload", "Operation", "ClientIP", "ResultStatus", "ObjectId", "UserId"
```

**Microsoft Office 365/Office 365 - Active Directory - User, Account Monitoring/Added and Deleted Users**
```
_sourceCategory={{Logsdatasource}}   "\"Workload\":\"AzureActiveDirectory\"" ("Add user" or "Delete user")
| json "Workload", "Operation", "ObjectId", "ResultStatus"
```

**Microsoft Office 365/Office 365 - Active Directory - User, Account Monitoring/Added and Deleted Users - Trend**
```
_sourceCategory={{Logsdatasource}}   "\"Workload\":\"AzureActiveDirectory\"" ("Add user" or "Delete user")
| json "Workload", "Operation", "ObjectId", "ResultStatus"
```

**Microsoft Office 365/Office 365 - Active Directory - User, Account Monitoring/Added or Removed Members from Group**
```
_sourceCategory={{Logsdatasource}}   "\"Workload\":\"AzureActiveDirectory\"" ("Add member to group." or "Remove member from group.") 
| json "ObjectId", "UserId", "Workload", "Operation", "ResultStatus"
```

**Microsoft Office 365/Office 365 - Active Directory - User, Account Monitoring/Password Resets and Changes**
```
_sourceCategory={{Logsdatasource}}   "\"Workload\":\"AzureActiveDirectory\"" ("Reset user password" or "Change user password")
| json "Workload", "Operation", "ObjectId", "ResultStatus"
```

**Microsoft Office 365/Office 365 - Active Directory - User, Account Monitoring/Password Resets and Changes - Trend**
```
_sourceCategory={{Logsdatasource}}   "\"Workload\":\"AzureActiveDirectory\"" ("Reset user password" or "Change user password")
| json "Workload", "Operation", "ObjectId", "ResultStatus"
```

**Microsoft Office 365/Office 365 - Active Directory Activity - New/AD Operations**
```
_sourceCategory = Labs/Microsoft/Office365 "\"Workload\":\"AzureActiveDirectory\""
| json "Workload"
| json "Operation"
```

**Microsoft Office 365/Office 365 - Active Directory Activity - New/AD Transactions by Client Location**
```
_sourceCategory = Labs/Microsoft/Office365 CreationTime "\"Workload\":\"AzureActiveDirectory\"" ClientIP
| json "Workload"
| json "ClientIP" as src_ip 
```

**Microsoft Office 365/Office 365 - Active Directory Activity - New/Failed Activity Overtime**
```
_sourceCategory = Labs/Microsoft/Office365 ResultStatus fail* "\"Workload\":\"AzureActiveDirectory\""
| json "Workload"
| json "ObjectId", "UserId","Operation","ResultStatus" as objectid, src_user, action, resultstatus
```

**Microsoft Office 365/Office 365 - Active Directory Activity - New/Top Client IPs**
```
_sourceCategory = Labs/Microsoft/Office365 CreationTime "\"Workload\":\"AzureActiveDirectory\"" ClientIP
| json "Workload"
| json "ClientIP" as src_ip 
```

**Microsoft Office 365/Office 365 - Active Directory Activity - New/Top Users by AAD Admin Activity**
```
_sourceCategory = Labs/Microsoft/Office365 CreationTime* "\"Workload\":\"AzureActiveDirectory\""
| json "Workload"
| json "UserId"
```

**Microsoft Office 365/Office 365 - Active Directory Activity/AD Operations**
```
_sourceCategory={{Logsdatasource}}   "\"Workload\":\"AzureActiveDirectory\""
| json "Workload"
| json "Operation"
```

**Microsoft Office 365/Office 365 - Active Directory Activity/AD Transactions by Client Location**
```
_sourceCategory={{Logsdatasource}}   CreationTime "\"Workload\":\"AzureActiveDirectory\"" ClientIP
| json "Workload"
| json "Operation"
| json "ClientIP" as src_ip 
```

**Microsoft Office 365/Office 365 - Active Directory Activity/Failed Activity Overtime**
```
_sourceCategory={{Logsdatasource}}   ResultStatus fail* "\"Workload\":\"AzureActiveDirectory\""
| json "Workload"
| json "ObjectId", "UserId","Operation","ResultStatus" as objectid, src_user, action, resultstatus
```

**Microsoft Office 365/Office 365 - Active Directory Activity/Top Client IPs**
```
_sourceCategory={{Logsdatasource}}   CreationTime "\"Workload\":\"AzureActiveDirectory\"" ClientIP
| json "Workload"
| json "ClientIP" as src_ip 
```

**Microsoft Office 365/Office 365 - Active Directory Activity/Top Users by AAD Admin Activity**
```
_sourceCategory={{Logsdatasource}}   CreationTime* "\"Workload\":\"AzureActiveDirectory\""
| json "Workload"
| json "UserId"
```

**Microsoft Office 365/Office 365 - Activity by Workload/Office 365 - Activity by Workload**
```
_sourceCategory={{Logsdatasource}}   Workload
| json "Workload" 
```

**Microsoft Office 365/Office 365 - All Transactions by Client Location/Office 365 - All Transactions by Client Location**
```
_sourceCategory={{Logsdatasource}}   CreationTime Workload (ClientIP or ClientIPAddress) 
| json "Workload"
| json "ClientIP" as src_ip_1 nodrop // for non-Exchange
| json "ClientIPAddress" as src_ip_2 nodrop //  for Exchange
```

**Microsoft Office 365/Office 365 - Azure Active Directory - Operations Trends/Office 365 - Azure Active Directory - Operations Trends**
```
_sourceCategory={{Logsdatasource}}   "\"Workload\":\"AzureActiveDirectory\"" "Operation"
| json "Workload", "Operation" 
```

**Microsoft Office 365/Office 365 - Azure Active Directory - Transactions by Client Location/Office 365 - Azure Active Directory - Transactions by Client Location**
```
_sourceCategory={{Logsdatasource}}   CreationTime ClientIP "\"Workload\":\"AzureActiveDirectory\""
| json "Workload"
| json "ClientIP"  as src_ip
```

**Microsoft Office 365/Office 365 - Exchange - Admin Audit - New/Configuration Changes (All)**
```
_sourceCategory = Labs/Microsoft/Office365 "\"Workload\":\"Exchange\"" "\"RecordType\":1" Parameters // 1 stands for ExchangeAdmin 
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"RecordType\":*," as recordType
| parse "\"Operation\":\"*\"" as Operation
| parse "\"Parameters\":*" as Parameters
| parse "\"UserId\":\"*\"" as UserId nodrop
| parse "\"ObjectId\":\"*\"" as ObjectId nodrop
| parse "\"OriginatingServer\":\"*\"" as OriginatingServer nodrop
| parse regex field=Parameters "\"Name\":\"(?<Name>[^\"]*)\",\n\s+\"Value\":\"(?<Value>[^\"]*)\"" multi
```

**Microsoft Office 365/Office 365 - Exchange - Admin Audit - New/Configuration Changes by External Access**
```
_sourceCategory = Labs/Microsoft/Office365 "\"Workload\":\"Exchange\"" "\"RecordType\":1" "\"ExternalAccess\":true" Parameters
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"RecordType\":*," as recordType
| parse "\"Operation\":\"*\"" as Operation
| parse "\"Parameters\":*" as Parameters
| parse "\"UserId\":\"*\"" as UserId
| parse "\"ObjectId\":\"*\"" as ObjectId
| parse "\"OriginatingServer\":\"*\"" as OriginatingServer  
| parse "\"ExternalAccess\":*," as ExternalAccess
| parse regex field=Parameters "\"Name\":\"(?<Name>[^\"]*)\",\n\s+\"Value\":\"(?<Value>[^\"]*)\"" multi
```

**Microsoft Office 365/Office 365 - Exchange - Admin Audit - New/Recent Parameter Changes**
```
_sourceCategory = Labs/Microsoft/Office365 "\"Workload\":\"Exchange\"" "\"RecordType\":1" Parameters
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"RecordType\":*," as recordType
| parse "\"Operation\":\"*\"" as Operation
| parse "\"Parameters\":*" as Parameters
| parse "\"UserId\":\"*\"" as UserId
| parse "\"ObjectId\":\"*\"" as ObjectId
| parse "\"OriginatingServer\":\"*\"" as OriginatingServer  
| parse regex field=Parameters "\"Name\":\"(?<Name>[^\"]*)\",\n\s+\"Value\":\"(?<Value>[^\"]*)\"" multi
```

**Microsoft Office 365/Office 365 - Exchange - Admin Audit - New/Top 10 Active Users**
```
_sourceCategory = Labs/Microsoft/Office365 "\"Workload\":\"Exchange\"" "\"RecordType\":1" UserId
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"RecordType\":*," as recordType
| parse "\"Operation\":\"*\"" as Operation
| parse "\"Parameters\":*" as Parameters
| parse "\"UserId\":\"*\"" as UserId
| parse "\"ObjectId\":\"*\"" as ObjectId
| parse "\"OriginatingServer\":\"*\"" as OriginatingServer 
| parse "\"UserType\":*," as UserType
| if (UserType=0, "Regular", if (UserType=1, "Reserved", (if(UserType=2, "Admin", if (UserType=3, "DcAdmin", if (UserType=4, "System", if (UserType=5, "Application", if (UserType=6, "ServicePrincipal", "Unknown")))))))) as UserType 
| parse regex field=Parameters "\"Name\":\"(?<Name>[^\"]*)\",\n\s+\"Value\":\"(?<Value>[^\"]*)\"" multi
```

**Microsoft Office 365/Office 365 - Exchange - Admin Audit - New/Top 10 Operations**
```
_sourceCategory = Labs/Microsoft/Office365 "\"Workload\":\"Exchange\"" "\"RecordType\":1" Parameters Operation
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"RecordType\":*," as recordType
| parse "\"Operation\":\"*\"" as Operation
| parse "\"Parameters\":*" as Parameters
| parse "\"UserId\":\"*\"" as UserId
| parse "\"ObjectId\":\"*\"" as ObjectId
| parse "\"OriginatingServer\":\"*\"" as OriginatingServer  
| parse regex field=Parameters "\"Name\":\"(?<Name>[^\"]*)\",\n\s+\"Value\":\"(?<Value>[^\"]*)\"" multi
```

**Microsoft Office 365/Office 365 - Exchange - Admin Audit - New/User Types**
```
_sourceCategory = Labs/Microsoft/Office365 "\"Workload\":\"Exchange\"" "\"RecordType\":1" "UserType"
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"RecordType\":*," as recordType
| parse "\"Operation\":\"*\"" as Operation
| parse "\"Parameters\":*" as Parameters
| parse "\"UserId\":\"*\"" as UserId
| parse "\"ObjectId\":\"*\"" as ObjectId
| parse "\"OriginatingServer\":\"*\"" as OriginatingServer 
| parse "\"UserType\":*," as UserType
| if (UserType=0, "Regular", if (UserType=1, "Reserved", (if(UserType=2, "Admin", if (UserType=3, "DcAdmin", if (UserType=4, "System", if (UserType=5, "Application", if (UserType=6, "ServicePrincipal", "Unknown")))))))) as UserType 
| parse regex field=Parameters "\"Name\":\"(?<Name>[^\"]*)\",\n\s+\"Value\":\"(?<Value>[^\"]*)\"" multi
```

**Microsoft Office 365/Office 365 - Exchange - Admin Audit - New/Users Making Configuration Changes**
```
_sourceCategory = Labs/Microsoft/Office365 "\"Workload\":\"Exchange\"" "\"RecordType\":1" Parameters UserId
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"RecordType\":*," as recordType
| parse "\"Operation\":\"*\"" as Operation
| parse "\"Parameters\":*" as Parameters
| parse "\"UserId\":\"*\"" as UserId
| parse "\"ObjectId\":\"*\"" as ObjectId
| parse "\"OriginatingServer\":\"*\"" as OriginatingServer  
| parse regex field=Parameters "\"Name\":\"(?<Name>[^\"]*)\",\n\s+\"Value\":\"(?<Value>[^\"]*)\"" multi
```

**Microsoft Office 365/Office 365 - Exchange - Admin Audit/Configuration Changes (All)**
```
_sourceCategory={{Logsdatasource}}   "\"Workload\":\"Exchange\"" "\"RecordType\":1" Parameters // 1 stands for ExchangeAdmin 
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"RecordType\":*," as recordType
| parse "\"Operation\":\"*\"" as Operation
| parse "\"Parameters\":*" as Parameters
| parse "\"UserId\":\"*\"" as UserId nodrop
| parse "\"ObjectId\":\"*\"" as ObjectId nodrop
| parse "\"OriginatingServer\":\"*\"" as OriginatingServer nodrop
| parse regex field=Parameters "\"Name\":\"(?<Name>[^\"]*)\",\n\s+\"Value\":\"(?<Value>[^\"]*)\"" multi
```

**Microsoft Office 365/Office 365 - Exchange - Admin Audit/Configuration Changes by External Access**
```
_sourceCategory={{Logsdatasource}}   "\"Workload\":\"Exchange\"" "\"RecordType\":1" "\"ExternalAccess\":true" Parameters
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"RecordType\":*," as recordType
| parse "\"Operation\":\"*\"" as Operation
| parse "\"Parameters\":*" as Parameters
| parse "\"UserId\":\"*\"" as UserId
| parse "\"ObjectId\":\"*\"" as ObjectId
| parse "\"OriginatingServer\":\"*\"" as OriginatingServer  
| parse "\"ExternalAccess\":*," as ExternalAccess
| parse regex field=Parameters "\"Name\":\"(?<Name>[^\"]*)\",\n\s+\"Value\":\"(?<Value>[^\"]*)\"" multi
```

**Microsoft Office 365/Office 365 - Exchange - Admin Audit/Recent Parameter Changes**
```
_sourceCategory={{Logsdatasource}}   "\"Workload\":\"Exchange\"" "\"RecordType\":1" Parameters
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"RecordType\":*," as recordType
| parse "\"Operation\":\"*\"" as Operation
| parse "\"Parameters\":*" as Parameters
| parse "\"UserId\":\"*\"" as UserId
| parse "\"ObjectId\":\"*\"" as ObjectId
| parse "\"OriginatingServer\":\"*\"" as OriginatingServer  
| parse regex field=Parameters "\"Name\":\"(?<Name>[^\"]*)\",\n\s+\"Value\":\"(?<Value>[^\"]*)\"" multi
```

**Microsoft Office 365/Office 365 - Exchange - Admin Audit/Top 10 Active Users**
```
_sourceCategory={{Logsdatasource}}   "\"Workload\":\"Exchange\"" "\"RecordType\":1" UserId
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"RecordType\":*," as recordType
| parse "\"Operation\":\"*\"" as Operation
| parse "\"Parameters\":*" as Parameters
| parse "\"UserId\":\"*\"" as UserId
| parse "\"ObjectId\":\"*\"" as ObjectId
| parse "\"OriginatingServer\":\"*\"" as OriginatingServer 
| parse "\"UserType\":*," as UserType
| if (UserType=0, "Regular", if (UserType=1, "Reserved", (if(UserType=2, "Admin", if (UserType=3, "DcAdmin", if (UserType=4, "System", if (UserType=5, "Application", if (UserType=6, "ServicePrincipal", "Unknown")))))))) as UserType 
| parse regex field=Parameters "\"Name\":\"(?<Name>[^\"]*)\",\n\s+\"Value\":\"(?<Value>[^\"]*)\"" multi
```

**Microsoft Office 365/Office 365 - Exchange - Admin Audit/Top 10 Operations**
```
_sourceCategory={{Logsdatasource}}   "\"Workload\":\"Exchange\"" "\"RecordType\":1" Parameters Operation
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"RecordType\":*," as recordType
| parse "\"Operation\":\"*\"" as Operation
| parse "\"Parameters\":*" as Parameters
| parse "\"UserId\":\"*\"" as UserId
| parse "\"ObjectId\":\"*\"" as ObjectId
| parse "\"OriginatingServer\":\"*\"" as OriginatingServer  
| parse regex field=Parameters "\"Name\":\"(?<Name>[^\"]*)\",\n\s+\"Value\":\"(?<Value>[^\"]*)\"" multi
```

**Microsoft Office 365/Office 365 - Exchange - Admin Audit/User Types**
```
_sourceCategory={{Logsdatasource}}   "\"Workload\":\"Exchange\"" "\"RecordType\":1" "UserType"
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"RecordType\":*," as recordType
| parse "\"Operation\":\"*\"" as Operation
| parse "\"Parameters\":*" as Parameters
| parse "\"UserId\":\"*\"" as UserId
| parse "\"ObjectId\":\"*\"" as ObjectId
| parse "\"OriginatingServer\":\"*\"" as OriginatingServer 
| parse "\"UserType\":*," as UserType
| if (UserType=0, "Regular", if (UserType=1, "Reserved", (if(UserType=2, "Admin", if (UserType=3, "DcAdmin", if (UserType=4, "System", if (UserType=5, "Application", if (UserType=6, "ServicePrincipal", "Unknown")))))))) as UserType 
| parse regex field=Parameters "\"Name\":\"(?<Name>[^\"]*)\",\n\s+\"Value\":\"(?<Value>[^\"]*)\"" multi
```

**Microsoft Office 365/Office 365 - Exchange - Admin Audit/Users Making Configuration Changes**
```
_sourceCategory={{Logsdatasource}}   "\"Workload\":\"Exchange\"" "\"RecordType\":1" Parameters UserId
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"RecordType\":*," as recordType
| parse "\"Operation\":\"*\"" as Operation
| parse "\"Parameters\":*" as Parameters
| parse "\"UserId\":\"*\"" as UserId
| parse "\"ObjectId\":\"*\"" as ObjectId
| parse "\"OriginatingServer\":\"*\"" as OriginatingServer  
| parse regex field=Parameters "\"Name\":\"(?<Name>[^\"]*)\",\n\s+\"Value\":\"(?<Value>[^\"]*)\"" multi
```

**Microsoft Office 365/Office 365 - Exchange - Group Audit - New/Folders**
```
_sourceCategory = Labs/Microsoft/Office365 "\"Workload\":\"Exchange\"" "\"RecordType\":3" // 3 stands for ExchangeItemGroup
| parse "\"CreationTime\":\"*\"" as CreationTime
| parse "\"Workload\":\"*\"" as Workload | parse "\"RecordType\":*," as recordType
| parse "\"Operation\":\"*\"" as Operation | parse "\"UserId\":\"*\"" as UserId
| parse "\"ClientIPAddress\":\"*\"" as ClientIPAddress | parse "\"ClientInfoString\":\"*\"" as ClientInfoString
| parse "\"ClientProcessName\":\"*\""  as ClientProcessName | parse "\"ClientVersion\":\"*\"" as ClientVersion
| parse "\"ExternalAccess\":*," as ExternalAccess | parse "\"LogonType\":*," as LogonType 
| parse "\"AffectedItems\":[*]," as AffectedItems | parse "\"CrossMailboxOperation\":*," as CrossMailboxOperation | parse "\"Folder\":*" as Folder
| parse "\"OriginatingServer\":\"*\\r\\n\"" as OriginatingServer 
| if (LogonType=0, "Owner", if (LogonType=1, "Admin", (if(LogonType=2, "Delegated", if (LogonType=3, "Transport", if (LogonType=4, "SystemService", if (LogonType=5, "BestAccess", if (LogonType=6, "DelegatedAdmin", "Unknown")))))))) as LogonType 
| parse field=Folder "\"Id\":\"*\"," as Id | parse field=Folder "\"Path\":\"*\"" as Path  
```

**Microsoft Office 365/Office 365 - Exchange - Group Audit - New/Logon Types**
```
_sourceCategory = Labs/Microsoft/Office365 "\"Workload\":\"Exchange\"" "\"RecordType\":3" "LogonType" // 3 stands for ExchangeItemGroup
| parse "\"CreationTime\":\"*\"" as CreationTime
| parse "\"Workload\":\"*\"" as Workload | parse "\"RecordType\":*," as recordType
| parse "\"Operation\":\"*\"" as Operation | parse "\"UserId\":\"*\"" as UserId
| parse "\"ClientIPAddress\":\"*\"" as ClientIPAddress | parse "\"ClientInfoString\":\"*\"" as ClientInfoString
| parse "\"ClientProcessName\":\"*\""  as ClientProcessName | parse "\"ClientVersion\":\"*\"" as ClientVersion
| parse "\"ExternalAccess\":*," as ExternalAccess | parse "\"LogonType\":*," as LogonType 
| parse "\"AffectedItems\":[*]," as AffectedItems | parse "\"CrossMailboxOperation\":*," as CrossMailboxOperation | parse "\"Folder\":*" as Folder
| parse "\"OriginatingServer\":\"*\\r\\n\"" as OriginatingServer 
```

**Microsoft Office 365/Office 365 - Exchange - Group Audit - New/Recent Activities (All)**
```
_sourceCategory = Labs/Microsoft/Office365 "\"Workload\":\"Exchange\"" "\"RecordType\":3" // 3 stands for ExchangeItemGroup
| parse "\"CreationTime\":\"*\"" as CreationTime
| parse "\"Workload\":\"*\"" as Workload | parse "\"RecordType\":*," as recordType
| parse "\"Operation\":\"*\"" as Operation | parse "\"UserId\":\"*\"" as UserId
| parse "\"ClientIPAddress\":\"*\"" as ClientIPAddress | parse "\"ClientInfoString\":\"*\"" as ClientInfoString
| parse "\"ClientProcessName\":\"*\""  as ClientProcessName | parse "\"ClientVersion\":\"*\"" as ClientVersion
| parse "\"ExternalAccess\":*," as ExternalAccess | parse "\"LogonType\":*," as LogonType 
| parse "\"AffectedItems\":[*]," as AffectedItems | parse "\"CrossMailboxOperation\":*," as CrossMailboxOperation | parse "\"Folder\":*" as Folder
| parse "\"OriginatingServer\":\"*\\r\\n\"" as OriginatingServer 
```

**Microsoft Office 365/Office 365 - Exchange - Group Audit - New/Recent Activities (External Access)**
```
_sourceCategory = Labs/Microsoft/Office365 "\"Workload\":\"Exchange\"" "\"RecordType\":3" "\"ExternalAccess\":true" // 3 stands for ExchangeItemGroup
| parse "\"CreationTime\":\"*\"" as CreationTime
| parse "\"Workload\":\"*\"" as Workload | parse "\"RecordType\":*," as recordType
| parse "\"Operation\":\"*\"" as Operation | parse "\"UserId\":\"*\"" as UserId
| parse "\"ClientIPAddress\":\"*\"" as ClientIPAddress | parse "\"ClientInfoString\":\"*\"" as ClientInfoString
| parse "\"ClientProcessName\":\"*\""  as ClientProcessName | parse "\"ClientVersion\":\"*\"" as ClientVersion
| parse "\"ExternalAccess\":*," as ExternalAccess | parse "\"LogonType\":*," as LogonType 
| parse "\"AffectedItems\":[*]," as AffectedItems | parse "\"CrossMailboxOperation\":*," as CrossMailboxOperation | parse "\"Folder\":*" as Folder
| parse "\"OriginatingServer\":\"*\\r\\n\"" as OriginatingServer 
```

**Microsoft Office 365/Office 365 - Exchange - Group Audit - New/Top 10 Active Users**
```
_sourceCategory = Labs/Microsoft/Office365 "\"Workload\":\"Exchange\"" "\"RecordType\":3" // 3 stands for ExchangeItemGroup
| parse "\"Workload\":\"*\"" as Workload
| parse "\"RecordType\":*," as recordType
| parse "\"Operation\":\"*\"" as Operation
| parse "\"UserId\":\"*\"" as UserId
| parse "\"ClientIPAddress\":\"*\"" as ClientIPAddress
| parse "\"ClientInfoString\":\"*\"" as ClientInfoString
| parse "\"ClientProcessName\":\"*\""  as ClientProcessName
| parse "\"ClientVersion\":\"*\"" as ClientVersion
| parse "\"ExternalAccess\":*," as ExternalAccess
| parse "\"LogonType\":*," as LogonType
| parse "\"OriginatingServer\":\"*\"" as OriginatingServer
```

**Microsoft Office 365/Office 365 - Exchange - Group Audit - New/Top 10 Clients**
```
_sourceCategory = Labs/Microsoft/Office365 "\"Workload\":\"Exchange\"" "\"RecordType\":3" // 3 stands for ExchangeItemGroup
| parse "\"CreationTime\":\"*\"" as CreationTime
| parse "\"Workload\":\"*\"" as Workload | parse "\"RecordType\":*," as recordType
| parse "\"Operation\":\"*\"" as Operation | parse "\"UserId\":\"*\"" as UserId
| parse "\"ClientIPAddress\":\"*\"" as ClientIPAddress | parse "\"ClientInfoString\":\"*\"" as ClientInfoString
| parse "\"ClientProcessName\":\"*\""  as ClientProcessName | parse "\"ClientVersion\":\"*\"" as ClientVersion
| parse "\"ExternalAccess\":*," as ExternalAccess | parse "\"LogonType\":*," as LogonType 
| parse "\"AffectedItems\":[*]," as AffectedItems | parse "\"CrossMailboxOperation\":*," as CrossMailboxOperation | parse "\"Folder\":*" as Folder
| parse "\"OriginatingServer\":\"*\\r\\n\"" as OriginatingServer 
```

**Microsoft Office 365/Office 365 - Exchange - Group Audit - New/Top 10 Operations**
```
_sourceCategory = Labs/Microsoft/Office365 "\"Workload\":\"Exchange\"" "\"RecordType\":3" // 3 stands for ExchangeItemGroup
| parse "\"Workload\":\"*\"" as Workload
| parse "\"RecordType\":*," as recordType
| parse "\"Operation\":\"*\"" as Operation
| parse "\"UserId\":\"*\"" as UserId
| parse "\"ClientIPAddress\":\"*\"" as ClientIPAddress
| parse "\"ClientInfoString\":\"*\"" as ClientInfoString
| parse "\"ClientProcessName\":\"*\""  as ClientProcessName
| parse "\"ClientVersion\":\"*\"" as ClientVersion
| parse "\"ExternalAccess\":*," as ExternalAccess
| parse "\"LogonType\":*," as LogonType
| parse "\"OriginatingServer\":\"*\"" as OriginatingServer
```

**Microsoft Office 365/Office 365 - Exchange - Group Audit/Folders**
```
_sourceCategory={{Logsdatasource}}   "\"Workload\":\"Exchange\"" "\"RecordType\":3" // 3 stands for ExchangeItemGroup
| parse "\"CreationTime\":\"*\"" as CreationTime
| parse "\"Workload\":\"*\"" as Workload | parse "\"RecordType\":*," as recordType
| parse "\"Operation\":\"*\"" as Operation | parse "\"UserId\":\"*\"" as UserId
| parse "\"ClientIPAddress\":\"*\"" as ClientIPAddress | parse "\"ClientInfoString\":\"*\"" as ClientInfoString
| parse "\"ClientProcessName\":\"*\""  as ClientProcessName | parse "\"ClientVersion\":\"*\"" as ClientVersion
| parse "\"ExternalAccess\":*," as ExternalAccess | parse "\"LogonType\":*," as LogonType 
| parse "\"AffectedItems\":[*]," as AffectedItems | parse "\"CrossMailboxOperation\":*," as CrossMailboxOperation | parse "\"Folder\":*" as Folder
| parse "\"OriginatingServer\":\"*\\r\\n\"" as OriginatingServer 
| if (LogonType=0, "Owner", if (LogonType=1, "Admin", (if(LogonType=2, "Delegated", if (LogonType=3, "Transport", if (LogonType=4, "SystemService", if (LogonType=5, "BestAccess", if (LogonType=6, "DelegatedAdmin", "Unknown")))))))) as LogonType 
| parse field=Folder "\"Id\":\"*\"," as Id | parse field=Folder "\"Path\":\"*\"" as Path  
```

**Microsoft Office 365/Office 365 - Exchange - Group Audit/Logon Types**
```
_sourceCategory={{Logsdatasource}}   "\"Workload\":\"Exchange\"" "\"RecordType\":3" "LogonType" // 3 stands for ExchangeItemGroup
| parse "\"CreationTime\":\"*\"" as CreationTime
| parse "\"Workload\":\"*\"" as Workload | parse "\"RecordType\":*," as recordType
| parse "\"Operation\":\"*\"" as Operation | parse "\"UserId\":\"*\"" as UserId
| parse "\"ClientIPAddress\":\"*\"" as ClientIPAddress | parse "\"ClientInfoString\":\"*\"" as ClientInfoString
| parse "\"ClientProcessName\":\"*\""  as ClientProcessName | parse "\"ClientVersion\":\"*\"" as ClientVersion
| parse "\"ExternalAccess\":*," as ExternalAccess | parse "\"LogonType\":*," as LogonType 
| parse "\"AffectedItems\":[*]," as AffectedItems | parse "\"CrossMailboxOperation\":*," as CrossMailboxOperation | parse "\"Folder\":*" as Folder
| parse "\"OriginatingServer\":\"*\\r\\n\"" as OriginatingServer 
```

**Microsoft Office 365/Office 365 - Exchange - Group Audit/Recent Activities (All)**
```
_sourceCategory={{Logsdatasource}}   "\"Workload\":\"Exchange\"" "\"RecordType\":3" // 3 stands for ExchangeItemGroup
| parse "\"CreationTime\":\"*\"" as CreationTime
| parse "\"Workload\":\"*\"" as Workload | parse "\"RecordType\":*," as recordType
| parse "\"Operation\":\"*\"" as Operation | parse "\"UserId\":\"*\"" as UserId
| parse "\"ClientIPAddress\":\"*\"" as ClientIPAddress | parse "\"ClientInfoString\":\"*\"" as ClientInfoString
| parse "\"ClientProcessName\":\"*\""  as ClientProcessName | parse "\"ClientVersion\":\"*\"" as ClientVersion
| parse "\"ExternalAccess\":*," as ExternalAccess | parse "\"LogonType\":*," as LogonType 
| parse "\"AffectedItems\":[*]," as AffectedItems | parse "\"CrossMailboxOperation\":*," as CrossMailboxOperation | parse "\"Folder\":*" as Folder
| parse "\"OriginatingServer\":\"*\\r\\n\"" as OriginatingServer 
```

**Microsoft Office 365/Office 365 - Exchange - Group Audit/Recent Activities (External Access)**
```
_sourceCategory={{Logsdatasource}}   "\"Workload\":\"Exchange\"" "\"RecordType\":3" "\"ExternalAccess\":true" // 3 stands for ExchangeItemGroup
| parse "\"CreationTime\":\"*\"" as CreationTime
| parse "\"Workload\":\"*\"" as Workload | parse "\"RecordType\":*," as recordType
| parse "\"Operation\":\"*\"" as Operation | parse "\"UserId\":\"*\"" as UserId
| parse "\"ClientIPAddress\":\"*\"" as ClientIPAddress | parse "\"ClientInfoString\":\"*\"" as ClientInfoString
| parse "\"ClientProcessName\":\"*\""  as ClientProcessName | parse "\"ClientVersion\":\"*\"" as ClientVersion
| parse "\"ExternalAccess\":*," as ExternalAccess | parse "\"LogonType\":*," as LogonType 
| parse "\"AffectedItems\":[*]," as AffectedItems | parse "\"CrossMailboxOperation\":*," as CrossMailboxOperation | parse "\"Folder\":*" as Folder
| parse "\"OriginatingServer\":\"*\\r\\n\"" as OriginatingServer 
```

**Microsoft Office 365/Office 365 - Exchange - Group Audit/Top 10 Active Users**
```
_sourceCategory={{Logsdatasource}}   "\"Workload\":\"Exchange\"" "\"RecordType\":3" // 3 stands for ExchangeItemGroup
| parse "\"Workload\":\"*\"" as Workload
| parse "\"RecordType\":*," as recordType
| parse "\"Operation\":\"*\"" as Operation
| parse "\"UserId\":\"*\"" as UserId
| parse "\"ClientIPAddress\":\"*\"" as ClientIPAddress
| parse "\"ClientInfoString\":\"*\"" as ClientInfoString
| parse "\"ClientProcessName\":\"*\""  as ClientProcessName
| parse "\"ClientVersion\":\"*\"" as ClientVersion
| parse "\"ExternalAccess\":*," as ExternalAccess
| parse "\"LogonType\":*," as LogonType
| parse "\"OriginatingServer\":\"*\"" as OriginatingServer
```

**Microsoft Office 365/Office 365 - Exchange - Group Audit/Top 10 Clients**
```
_sourceCategory={{Logsdatasource}}   "\"Workload\":\"Exchange\"" "\"RecordType\":3" // 3 stands for ExchangeItemGroup
| parse "\"CreationTime\":\"*\"" as CreationTime
| parse "\"Workload\":\"*\"" as Workload | parse "\"RecordType\":*," as recordType
| parse "\"Operation\":\"*\"" as Operation | parse "\"UserId\":\"*\"" as UserId
| parse "\"ClientIPAddress\":\"*\"" as ClientIPAddress | parse "\"ClientInfoString\":\"*\"" as ClientInfoString
| parse "\"ClientProcessName\":\"*\""  as ClientProcessName | parse "\"ClientVersion\":\"*\"" as ClientVersion
| parse "\"ExternalAccess\":*," as ExternalAccess | parse "\"LogonType\":*," as LogonType 
| parse "\"AffectedItems\":[*]," as AffectedItems | parse "\"CrossMailboxOperation\":*," as CrossMailboxOperation | parse "\"Folder\":*" as Folder
| parse "\"OriginatingServer\":\"*\\r\\n\"" as OriginatingServer 
```

**Microsoft Office 365/Office 365 - Exchange - Group Audit/Top 10 Operations**
```
_sourceCategory={{Logsdatasource}}   "\"Workload\":\"Exchange\"" "\"RecordType\":3" // 3 stands for ExchangeItemGroup
| parse "\"Workload\":\"*\"" as Workload
| parse "\"RecordType\":*," as recordType
| parse "\"Operation\":\"*\"" as Operation
| parse "\"UserId\":\"*\"" as UserId
| parse "\"ClientIPAddress\":\"*\"" as ClientIPAddress
| parse "\"ClientInfoString\":\"*\"" as ClientInfoString
| parse "\"ClientProcessName\":\"*\""  as ClientProcessName
| parse "\"ClientVersion\":\"*\"" as ClientVersion
| parse "\"ExternalAccess\":*," as ExternalAccess
| parse "\"LogonType\":*," as LogonType
| parse "\"OriginatingServer\":\"*\"" as OriginatingServer
```

**Microsoft Office 365/Office 365 - Exchange - Mailbox Audit - Client Locations - New/Clients by Country Over Time**
```
_sourceCategory = Labs/Microsoft/Office365 CreationTime "\"Workload\":\"Exchange\"" "\"RecordType\":2" ClientIPAddress // 2 stands for ExchangeItem - Events from an Exchange mailbox audit log for actions that are performed on a single item, such as creating or receiving an email message.
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"RecordType\":*," as RecordType
| parse "\"ClientIPAddress\":\"*\"" as ClientIPAddress 
```

**Microsoft Office 365/Office 365 - Exchange - Mailbox Audit - Client Locations - New/Clients by State Over Time**
```
_sourceCategory = Labs/Microsoft/Office365 CreationTime "\"Workload\":\"Exchange\"" "\"RecordType\":2" ClientIPAddress // 2 stands for ExchangeItem - Events from an Exchange mailbox audit log for actions that are performed on a single item, such as creating or receiving an email message.
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"RecordType\":*," as RecordType 
| parse "\"ClientIPAddress\":\"*\"" as ClientIPAddress 
```

**Microsoft Office 365/Office 365 - Exchange - Mailbox Audit - Client Locations - New/United States Clients**
```
_sourceCategory = Labs/Microsoft/Office365 "\"Workload\":\"Exchange\"" "\"RecordType\":2" ClientIPAddress // 2 stands for ExchangeItem - Events from an Exchange mailbox audit log for actions that are performed on a single item, such as creating or receiving an email message.
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"RecordType\":*," as RecordType 
| parse "\"ClientIPAddress\":\"*\"" as ClientIPAddress 
```

**Microsoft Office 365/Office 365 - Exchange - Mailbox Audit - Client Locations - New/Worldwide Clients**
```
_sourceCategory = Labs/Microsoft/Office365 "\"Workload\":\"Exchange\"" "\"RecordType\":2" ClientIPAddress // 2 stands for ExchangeItem - Events from an Exchange mailbox audit log for actions that are performed on a single item, such as creating or receiving an email message.
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"RecordType\":*," as RecordType 
| parse "\"ClientIPAddress\":\"*\"" as ClientIPAddress 
```

**Microsoft Office 365/Office 365 - Exchange - Mailbox Audit - Client Locations/Clients by Country Over Time**
```
_sourceCategory={{Logsdatasource}}   CreationTime "\"Workload\":\"Exchange\"" "\"RecordType\":2" ClientIPAddress // 2 stands for ExchangeItem - Events from an Exchange mailbox audit log for actions that are performed on a single item, such as creating or receiving an email message.
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"RecordType\":*," as RecordType
| parse "\"ClientIPAddress\":\"*\"" as ClientIPAddress 
```

**Microsoft Office 365/Office 365 - Exchange - Mailbox Audit - Client Locations/Clients by State Over Time**
```
_sourceCategory={{Logsdatasource}}   CreationTime "\"Workload\":\"Exchange\"" "\"RecordType\":2" ClientIPAddress // 2 stands for ExchangeItem - Events from an Exchange mailbox audit log for actions that are performed on a single item, such as creating or receiving an email message.
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"RecordType\":*," as RecordType 
| parse "\"ClientIPAddress\":\"*\"" as ClientIPAddress 
```

**Microsoft Office 365/Office 365 - Exchange - Mailbox Audit - Client Locations/United States Clients**
```
_sourceCategory={{Logsdatasource}}   "\"Workload\":\"Exchange\"" "\"RecordType\":2" ClientIPAddress // 2 stands for ExchangeItem - Events from an Exchange mailbox audit log for actions that are performed on a single item, such as creating or receiving an email message.
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"RecordType\":*," as RecordType 
| parse "\"ClientIPAddress\":\"*\"" as ClientIPAddress 
```

**Microsoft Office 365/Office 365 - Exchange - Mailbox Audit - Client Locations/Worldwide Clients**
```
_sourceCategory={{Logsdatasource}}   "\"Workload\":\"Exchange\"" "\"RecordType\":2" ClientIPAddress // 2 stands for ExchangeItem - Events from an Exchange mailbox audit log for actions that are performed on a single item, such as creating or receiving an email message.
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"RecordType\":*," as RecordType 
| parse "\"ClientIPAddress\":\"*\"" as ClientIPAddress 
```

**Microsoft Office 365/Office 365 - Exchange - Mailbox Audit - New/External Access**
```
_sourceCategory = Labs/Microsoft/Office365 "\"Workload\":\"Exchange\"" "\"RecordType\":2" "\"ExternalAccess\":true" // 2 stands for ExchangeItem - Events from an Exchange mailbox audit log for actions that are performed on a single item, such as creating or receiving an email message.
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"RecordType\":*," as RecordType 
| parse "\"Operation\":\"*\"" as Operation
| parse "\"ClientIPAddress\":\"*\"" as ClientIPAddress
| parse "\"ExternalAccess\":*," as ExternalAccess
| parse "\"OriginatingServer\":\"*\\r\\n\"," as OriginatingServer 
| parse "\"OrganizationName\":\"*\"," as OrganizationName 
| parse "\"MailboxOwnerUPN\":\"*\"," as MailboxOwnerUPN 
| parse "\"LogonType\":*," as LogonType
| parse "\"UserType\":*," as UserType
| parse "\"UserId\":\"*\"" as UserId
```

**Microsoft Office 365/Office 365 - Exchange - Mailbox Audit - New/Logon Types**
```
_sourceCategory = Labs/Microsoft/Office365 "\"Workload\":\"Exchange\"" LogonType
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"LogonType\":*," as LogonType
```

**Microsoft Office 365/Office 365 - Exchange - Mailbox Audit - New/Top 10 Clients**
```
_sourceCategory = Labs/Microsoft/Office365 CreationTime "\"Workload\":\"Exchange\"" "\"RecordType\":2" ClientIPAddress (ClientVersion or ClientMachineName or ClientProcessName) // 2 stands for ExchangeItem - Events from an Exchange mailbox audit log for actions that are performed on a single item, such as creating or receiving an email message.
| parse "\"RecordType\":*," as RecordType 
| parse "\"ClientIPAddress\":\"*\"" as ClientIPAddress 
| parse "\"ClientMachineName\":\"*\"" as  ClientMachineName nodrop
| parse "\"ClientProcessName\":\"*\"" as  ClientProcessName nodrop
| parse "\"ClientVersion\":\"*\"" as  ClientVersion nodrop
| parse "\"Workload\":\"*\"" as Workload
```

**Microsoft Office 365/Office 365 - Exchange - Mailbox Audit - New/Top 10 Email Clients Used**
```
_sourceCategory = Labs/Microsoft/Office365 CreationTime "\"Workload\":\"Exchange\"" "\"RecordType\":2" ClientInfoString // 2 stands for ExchangeItem - Events from an Exchange mailbox audit log for actions that are performed on a single item, such as creating or receiving an email message.
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"RecordType\":*," as RecordType 
| parse "\"ClientIPAddress\":\"*\"" as ClientIPAddress 
| parse "\"ClientInfoString\":\"*\"" as ClientInfoString
| parse "\"ClientProcessName\":\"*\"" as  ClientProcessName nodrop
| parse "\"ClientVersion\":\"*\"" as  ClientVersion nodrop
| where Workload="Exchange" and RecordType=2 
| parse regex field=ClientInfoString "^Client=(?<email_client>[^\"]*)" nodrop
| parse regex field=ClientInfoString "^Client=(?<email_client>[^\;]*);(?<email_client_version>.*);$" nodrop
| parse field=email_client "*;User=" as email_client nodrop
```

**Microsoft Office 365/Office 365 - Exchange - Mailbox Audit - New/Top 10 IPs**
```
_sourceCategory = Labs/Microsoft/Office365 CreationTime "\"Workload\":\"Exchange\"" "\"RecordType\":2" ClientIPAddress // 2 stands for ExchangeItem - Events from an Exchange mailbox audit log for actions that are performed on a single item, such as creating or receiving an email message.
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"RecordType\":*," as RecordType 
| parse "\"ClientIPAddress\":\"*\"" as ClientIPAddress 
```

**Microsoft Office 365/Office 365 - Exchange - Mailbox Audit - New/Top 10 Operations**
```
_sourceCategory = Labs/Microsoft/Office365 CreationTime "\"Workload\":\"Exchange\"" "\"RecordType\":2" ClientIPAddress // 2 stands for ExchangeItem - Events from an Exchange mailbox audit log for actions that are performed on a single item, such as creating or receiving an email message.
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"RecordType\":*," as RecordType 
| parse "\"Operation\":\"*\"" as Operation
| parse "\"ClientIPAddress\":\"*\"" as ClientIPAddress 
```

**Microsoft Office 365/Office 365 - Exchange - Mailbox Audit - New/Top 10 Users**
```
_sourceCategory = Labs/Microsoft/Office365 CreationTime "\"Workload\":\"Exchange\"" "\"RecordType\":2" ClientIPAddress // 2 stands for ExchangeItem - Events from an Exchange mailbox audit log for actions that are performed on a single item, such as creating or receiving an email message.
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"RecordType\":*," as RecordType 
| parse "\"UserId\":\"*\"" as userId
| parse "\"ClientIPAddress\":\"*\"" as ClientIPAddress 
```

**Microsoft Office 365/Office 365 - Exchange - Mailbox Audit/External Access**
```
_sourceCategory={{Logsdatasource}}   "\"Workload\":\"Exchange\"" "\"RecordType\":2" "\"ExternalAccess\":true" // 2 stands for ExchangeItem - Events from an Exchange mailbox audit log for actions that are performed on a single item, such as creating or receiving an email message.
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"RecordType\":*," as RecordType 
| parse "\"Operation\":\"*\"" as Operation
| parse "\"ClientIPAddress\":\"*\"" as ClientIPAddress
| parse "\"ExternalAccess\":*," as ExternalAccess
| parse "\"OriginatingServer\":\"*\\r\\n\"," as OriginatingServer 
| parse "\"OrganizationName\":\"*\"," as OrganizationName 
| parse "\"MailboxOwnerUPN\":\"*\"," as MailboxOwnerUPN 
| parse "\"LogonType\":*," as LogonType
| parse "\"UserType\":*," as UserType
| parse "\"UserId\":\"*\"" as UserId
```

**Microsoft Office 365/Office 365 - Exchange - Mailbox Audit/Logon Types**
```
_sourceCategory={{Logsdatasource}}   "\"Workload\":\"Exchange\"" LogonType
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"LogonType\":*," as LogonType
```

**Microsoft Office 365/Office 365 - Exchange - Mailbox Audit/Top 10 Clients**
```
_sourceCategory={{Logsdatasource}}   CreationTime "\"Workload\":\"Exchange\"" "\"RecordType\":2" ClientIPAddress (ClientVersion or ClientMachineName or ClientProcessName) // 2 stands for ExchangeItem - Events from an Exchange mailbox audit log for actions that are performed on a single item, such as creating or receiving an email message.
| parse "\"RecordType\":*," as RecordType 
| parse "\"ClientIPAddress\":\"*\"" as ClientIPAddress 
| parse "\"ClientMachineName\":\"*\"" as  ClientMachineName nodrop
| parse "\"ClientProcessName\":\"*\"" as  ClientProcessName nodrop
| parse "\"ClientVersion\":\"*\"" as  ClientVersion nodrop
| parse "\"Workload\":\"*\"" as Workload
```

**Microsoft Office 365/Office 365 - Exchange - Mailbox Audit/Top 10 Email Clients Used**
```
_sourceCategory={{Logsdatasource}}   CreationTime "\"Workload\":\"Exchange\"" "\"RecordType\":2" ClientInfoString // 2 stands for ExchangeItem - Events from an Exchange mailbox audit log for actions that are performed on a single item, such as creating or receiving an email message.
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"RecordType\":*," as RecordType 
| parse "\"ClientIPAddress\":\"*\"" as ClientIPAddress 
| parse "\"ClientInfoString\":\"*\"" as ClientInfoString
| parse "\"ClientProcessName\":\"*\"" as  ClientProcessName nodrop
| parse "\"ClientVersion\":\"*\"" as  ClientVersion nodrop
| where Workload="Exchange" and RecordType=2 
| parse regex field=ClientInfoString "^Client=(?<email_client>[^\"]*)" nodrop
| parse regex field=ClientInfoString "^Client=(?<email_client>[^\;]*);(?<email_client_version>.*);$" nodrop
| parse field=email_client "*;User=" as email_client nodrop
```

**Microsoft Office 365/Office 365 - Exchange - Mailbox Audit/Top 10 IPs**
```
_sourceCategory={{Logsdatasource}}   CreationTime "\"Workload\":\"Exchange\"" "\"RecordType\":2" ClientIPAddress // 2 stands for ExchangeItem - Events from an Exchange mailbox audit log for actions that are performed on a single item, such as creating or receiving an email message.
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"RecordType\":*," as RecordType 
| parse "\"ClientIPAddress\":\"*\"" as ClientIPAddress 
```

**Microsoft Office 365/Office 365 - Exchange - Mailbox Audit/Top 10 Operations**
```
_sourceCategory={{Logsdatasource}}   CreationTime "\"Workload\":\"Exchange\"" "\"RecordType\":2" ClientIPAddress // 2 stands for ExchangeItem - Events from an Exchange mailbox audit log for actions that are performed on a single item, such as creating or receiving an email message.
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"RecordType\":*," as RecordType 
| parse "\"Operation\":\"*\"" as Operation
| parse "\"ClientIPAddress\":\"*\"" as ClientIPAddress 
```

**Microsoft Office 365/Office 365 - Exchange - Mailbox Audit/Top 10 Users**
```
_sourceCategory={{Logsdatasource}}   CreationTime "\"Workload\":\"Exchange\"" "\"RecordType\":2" ClientIPAddress // 2 stands for ExchangeItem - Events from an Exchange mailbox audit log for actions that are performed on a single item, such as creating or receiving an email message.
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"RecordType\":*," as RecordType 
| parse "\"UserId\":\"*\"" as userId
| parse "\"ClientIPAddress\":\"*\"" as ClientIPAddress 
```

**Microsoft Office 365/Office 365 - Exchange - Operations Trends/Office 365 - Exchange - Operations Trends**
```
_sourceCategory={{Logsdatasource}}   "\"Workload\":\"Exchange\"" "Operation"
| json "Workload","Operation"
```

**Microsoft Office 365/Office 365 - Exchange - Top Users/Office 365 - Exchange - Top Users**
```
_sourceCategory={{Logsdatasource}}   CreationTime "\"Workload\":\"Exchange\"" UserId
| json "UserId" as user 
```

**Microsoft Office 365/Office 365 - Exchange - Transactions by Client Location/Office 365 - Exchange - Transactions by Client Location**
```
_sourceCategory={{Logsdatasource}}   CreationTime ClientIPAddress "\"Workload\":\"Exchange\""
| json "Workload"
| json "ClientIPAddress"  as src_ip
```

**Microsoft Office 365/Office 365 - Overview - New/Azure AD Operations Trends**
```
_sourceCategory = Labs/Microsoft/Office365 Workload CreationTime "\"Workload\":\"AzureActiveDirectory\""
| json "Operation", "Workload"
```

**Microsoft Office 365/Office 365 - Overview - New/Exchange Operations**
```
_sourceCategory = Labs/Microsoft/Office365 "\"Workload\":\"Exchange\""
| json "Operation", "Workload"
```

**Microsoft Office 365/Office 365 - Overview - New/Failed Activity by Workload**
```
_sourceCategory = Labs/Microsoft/Office365 Workload Operation "ResultStatus" fail* 
| json "Workload", "ResultStatus", "Operation" 
```

**Microsoft Office 365/Office 365 - Overview - New/SharePoint Operations**
```
_sourceCategory = Labs/Microsoft/Office365 CreationTime Workload ("\"Workload\":\"SharePoint\"" or "\"Workload\":\"OneDrive\"")
| json "Operation", "Workload"
```

**Microsoft Office 365/Office 365 - Overview - New/Successful Activity by Workload**
```
_sourceCategory = Labs/Microsoft/Office365 Workload Operation ResultStatus
| json "Workload", "ResultStatus" nodrop
```

**Microsoft Office 365/Office 365 - Overview/Azure AD Operations Trends**
```
_sourceCategory={{Logsdatasource}}   Workload CreationTime "\"Workload\":\"AzureActiveDirectory\""
| json "Operation", "Workload"
```

**Microsoft Office 365/Office 365 - Overview/Exchange Operations**
```
_sourceCategory={{Logsdatasource}}   "\"Workload\":\"Exchange\""
| parse "\"Workload\":\"*\"" as Workload
| parse "\"Operation\":\"*\"" as Operation
```

**Microsoft Office 365/Office 365 - Overview/Failed Activity by Workload**
```
_sourceCategory={{Logsdatasource}}   Workload Operation "ResultStatus" fail* 
| json "Workload", "ResultStatus", "Operation" 
```

**Microsoft Office 365/Office 365 - Overview/SharePoint Operations**
```
_sourceCategory={{Logsdatasource}}   CreationTime Workload ("\"Workload\":\"SharePoint\"" or "\"Workload\":\"OneDrive\"")
| json "Operation", "Workload"
```

**Microsoft Office 365/Office 365 - Overview/Successful Activity by Workload**
```
_sourceCategory={{Logsdatasource}}   Workload Operation ResultStatus
| json "Workload", "ResultStatus" nodrop
```

**Microsoft Office 365/Office 365 - SharePoint - Content Insight/Content Checked In and Out Recently**
```
_sourceCategory={{Logsdatasource}}   Workload  (FileCheckedOut or FileCheckedIn)
| parse "\"UserId\":\"*\"" as userId
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"Operation\":\"*\"" as operation
| parse "\"SourceFileName\":\"*\"" as SourceFileName
| parse "\"SourceRelativeUrl\":\"*\"" as SourceRelativeUrl
```

**Microsoft Office 365/Office 365 - SharePoint - Content Insight/File Type Accessed**
```
_sourceCategory={{Logsdatasource}}   Workload ItemType File  SourceFileExtension
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"SourceFileExtension\":\"*\"" as filetype
| parse "\"ItemType\":\"*\"" as itemtype
```

**Microsoft Office 365/Office 365 - SharePoint - Content Insight/Most Downloaded Content**
```
_sourceCategory={{Logsdatasource}}   Workload Operation FileDownloaded  UserId
| parse "\"UserId\":\"*\"" as userId
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"Operation\":\"*\"" as operation
| parse "\"SourceFileName\":\"*\"" as SourceFileName
| parse "\"SourceRelativeUrl\":\"*\"" as SourceRelativeUrl
```

**Microsoft Office 365/Office 365 - SharePoint - Content Insight/Recently Uploaded Content**
```
_sourceCategory={{Logsdatasource}}   Workload  operation FileUploaded
| parse "\"UserId\":\"*\"" as userId
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"Operation\":\"*\"" as operation
| parse "\"SourceFileName\":\"*\"" as SourceFileName
| parse "\"SourceRelativeUrl\":\"*\"" as SourceRelativeUrl
```

**Microsoft Office 365/Office 365 - SharePoint - Content Insight/Top 10 Most Viewed Content**
```
_sourceCategory={{Logsdatasource}}   Workload  Operation (FileViewed or FileAccessed)
| parse "\"UserId\":\"*\"" as userId
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"Operation\":\"*\"" as operation
| parse "\"SourceFileName\":\"*\"" as SourceFileName
| parse "\"SourceRelativeUrl\":\"*\"" as SourceRelativeUrl
```

**Microsoft Office 365/Office 365 - SharePoint - Content Insight/Top 10 SiteUrl Accessed**
```
_sourceCategory={{Logsdatasource}}   Workload SiteUrl 
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"SiteUrl\":\"*\"" as siteUrl
```

**Microsoft Office 365/Office 365 - SharePoint - Content Insight/Top SharePoint Resources**
```
_sourceCategory={{Logsdatasource}}   Workload   SourceRelativeUrl SourceFileName
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"SourceRelativeUrl\":\"*\"" as SourceRelativeUrl
| parse "\"SourceFileName\":\"*\"" as sourcefilename
```

**Microsoft Office 365/Office 365 - SharePoint - Log Parser/Office 365 - SharePoint - Log Parser**
```
_sourceCategory={{Logsdatasource}}   Workload SiteUrl 
| parse "\"UserId\":\"*\"" as userId
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"SiteUrl\":\"*\"" as siteUrl
| parse "\"ClientIP\":\"*\"" as clientIP
```

**Microsoft Office 365/Office 365 - SharePoint - One Drive - Transactions by Client Location/Office 365 - SharePoint - One Drive - Transactions by Client Location**
```
_sourceCategory={{Logsdatasource}}   CreationTime ClientIP ("\"Workload\":\"SharePoint\"" or "\"Workload\":\"OneDrive\"")
| json "Workload", "Operation"
| json "ClientIP"  as src_ip
```

**Microsoft Office 365/Office 365 - SharePoint - Shared Content Non-Domain Activities/Recent Uploads by Non-Domain Users**
```
_sourceCategory={{Logsdatasource}}   Workload  "\"Operation\":\"FileUploaded\"" UserId
| parse "\"UserId\":\"*\"" as userId
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"Operation\":\"*\"" as operation
| parse "\"SourceFileName\":\"*\"" as SourceFileName
| parse "\"SourceRelativeUrl\":\"*\"" as SourceRelativeUrl
| where workLoad in ("SharePoint", "OneDrive")  and operation="FileUploaded"
| parse field=userId "*@*" as username, targetdomain
```

**Microsoft Office 365/Office 365 - SharePoint - Shared Content Non-Domain Activities/Top 10 Content Download by Non-Domain Users**
```
_sourceCategory={{Logsdatasource}}   Workload "\"Operation\":\"FileDownloaded\"" UserId
| parse "\"UserId\":\"*\"" as userId
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"Operation\":\"*\"" as operation
| parse "\"SourceFileName\":\"*\"" as SourceFileName
| parse "\"SourceRelativeUrl\":\"*\"" as SourceRelativeUrl
| where workLoad in ("SharePoint", "OneDrive")  and operation="FileDownloaded"
| parse field=userId "*@*" as username, targetdomain
```

**Microsoft Office 365/Office 365 - SharePoint - Shared Content Non-Domain Activities/Top 10 Content Viewed by Non-Domain Users**
```
_sourceCategory={{Logsdatasource}}   Workload  ("\"Operation\":\"FileViewed\"" or "\"Operation\":\"FileAccessed\"") UserId
| parse "\"UserId\":\"*\"" as userId
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"Operation\":\"*\"" as operation
| parse "\"SourceFileName\":\"*\"" as SourceFileName
| parse "\"SourceRelativeUrl\":\"*\"" as SourceRelativeUrl
| where workLoad in ("SharePoint", "OneDrive") and operation in ("FileViewed", "FileAccessed")
| parse field=userId "*@*" as username, targetdomain
```

**Microsoft Office 365/Office 365 - SharePoint - Shared Content Non-Domain Activities/Top 10 Non-Domain Users Downloading**
```
_sourceCategory={{Logsdatasource}}   Workload  "\"Operation\":\"FileDownloaded\"" UserId
| parse "\"UserId\":\"*\"" as userId
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"Operation\":\"*\"" as operation
| parse "\"SourceFileName\":\"*\"" as SourceFileName
| parse "\"SourceRelativeUrl\":\"*\"" as SourceRelativeUrl
| where workLoad in ("SharePoint", "OneDrive")  and operation="FileDownloaded"
| parse field=userId "*@*" as username, targetdomain
```

**Microsoft Office 365/Office 365 - SharePoint - Shared Content Non-Domain Activities/Top 10 Non-Domain Users Uploading**
```
_sourceCategory={{Logsdatasource}}   Workload  "\"Operation\":\"FileUploaded\"" UserId
| parse "\"UserId\":\"*\"" as userId
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"Operation\":\"*\"" as operation
| parse "\"SourceFileName\":\"*\"" as SourceFileName
| parse "\"SourceRelativeUrl\":\"*\"" as SourceRelativeUrl
| where workLoad in ("SharePoint", "OneDrive") and operation="FileUploaded"
| parse field=userId "*@*" as username, targetdomain
```

**Microsoft Office 365/Office 365 - SharePoint - Shared Content Non-Domain Activities/Top 10 Non-Domain Users Viewing Content**
```
_sourceCategory={{Logsdatasource}}   Workload  ("\"Operation\":\"FileViewed\"" or "\"Operation\":\"FileAccessed\"") UserId
| parse "\"UserId\":\"*\"" as userId
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"Operation\":\"*\"" as operation
| where workLoad in ("SharePoint", "OneDrive")  and operation in ("FileViewed", "FileAccessed")
| parse field=userId "*@*" as username, targetdomain
```

**Microsoft Office 365/Office 365 - SharePoint - Shared Content Non-Domain Activities/Top 10 Non-Domain Users With Access**
```
_sourceCategory={{Logsdatasource}}   Workload  UserId Operation (access* or send* or *sharing* or *shared*) 
| parse "\"Workload\":\"*\"" as workLoad | parse "\"UserId\":\"*\"" as userId | parse "\"ObjectId\":\"*\"" as ObjectId | parse "\"Operation\":\"*\"" as operation | parse "\"UserSharedWith\":\"*\"" as UserSharedWith nodrop | parse "\"TargetUserOrGroupName\":\"*\"" as TargetUserOrGroupName nodrop
| parse field=UserSharedWith "*@*" as targetusername, targetdomain nodrop
| parse field=TargetUserOrGroupName "*@*" as target_username, target_domain nodrop
```

**Microsoft Office 365/Office 365 - SharePoint - Shared Content Non-Domain Activities/Top 10 Users Sharing Outside Domain**
```
_sourceCategory={{Logsdatasource}}   Workload SiteUrl  UserId Operation (access* or send* or *sharing* or *shared*) 
| parse "\"Workload\":\"*\"" as workLoad | parse "\"UserId\":\"*\"" as userId | parse "\"ObjectId\":\"*\"" as ObjectId | parse "\"Operation\":\"*\"" as operation  | parse "\"UserSharedWith\":\"*\"" as UserSharedWith nodrop | parse "\"TargetUserOrGroupName\":\"*\"" as TargetUserOrGroupName nodrop 
| parse field=UserSharedWith "*@*" as targetusername, targetdomain nodrop
| parse field=TargetUserOrGroupName "*@*" as target_username, target_domain nodrop
```

**Microsoft Office 365/Office 365 - SharePoint - User Activity - New/Top 10 Active IPs**
```
_sourceCategory = Labs/Microsoft/Office365 "\"Workload\":\"SharePoint\"" ClientIP
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"ClientIP\":\"*\"" as clientIP
```

**Microsoft Office 365/Office 365 - SharePoint - User Activity - New/Top 10 Active Users**
```
_sourceCategory = Labs/Microsoft/Office365 "\"Workload\":\"SharePoint\"" UserId
| parse "\"UserId\":\"*\"" as userId
| parse "\"Workload\":\"*\"" as workLoad
```

**Microsoft Office 365/Office 365 - SharePoint - User Activity - New/Top 10 Users Downloading Content**
```
_sourceCategory = Labs/Microsoft/Office365 "\"Workload\":\"SharePoint\"" "\"Operation\":\"FileDownloaded\"" UserId
| parse "\"UserId\":\"*\"" as userId
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"Operation\":\"*\"" as operation
```

**Microsoft Office 365/Office 365 - SharePoint - User Activity - New/Top 10 Users Involved in Sharing Operations**
```
_sourceCategory = Labs/Microsoft/Office365 "\"Workload\":\"SharePoint\"" UserId Operation (access* or send* or *sharing* or *shared*) 
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"UserId\":\"*\"" as userId
| parse "\"Operation\":\"*\"" as operation | tolowercase (operation) as opr
```

**Microsoft Office 365/Office 365 - SharePoint - User Activity - New/Top 10 Users Uploading Content**
```
_sourceCategory = Labs/Microsoft/Office365 "\"Workload\":\"SharePoint\"" "\"Operation\":\"FileUploaded\"" UserId
| parse "\"UserId\":\"*\"" as userId
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"Operation\":\"*\"" as operation
```

**Microsoft Office 365/Office 365 - SharePoint - User Activity - New/Top Sharing Activities by User ID**
```
_sourceCategory = Labs/Microsoft/Office365 "\"Workload\":\"SharePoint\"" UserId Operation (access* or send* or *sharing* or *shared*) 
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"UserId\":\"*\"" as userId
| parse "\"Operation\":\"*\"" as operation | tolowercase (operation) as opr
```

**Microsoft Office 365/Office 365 - SharePoint - User Activity/Top 10 Active IPs**
```
_sourceCategory={{Logsdatasource}}   Workload ClientIP
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"ClientIP\":\"*\"" as clientIP
```

**Microsoft Office 365/Office 365 - SharePoint - User Activity/Top 10 Active Users**
```
_sourceCategory={{Logsdatasource}}   Workload  UserId
| parse "\"UserId\":\"*\"" as userId
| parse "\"Workload\":\"*\"" as workLoad
```

**Microsoft Office 365/Office 365 - SharePoint - User Activity/Top 10 Users Downloading Content**
```
_sourceCategory={{Logsdatasource}}   Workload  "\"Operation\":\"FileDownloaded\"" UserId
| parse "\"UserId\":\"*\"" as userId
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"Operation\":\"*\"" as operation
```

**Microsoft Office 365/Office 365 - SharePoint - User Activity/Top 10 Users Involved in Sharing Operations**
```
_sourceCategory={{Logsdatasource}}   Workload  UserId Operation (access* or send* or *sharing* or *shared*) 
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"UserId\":\"*\"" as userId
| parse "\"Operation\":\"*\"" as operation | tolowercase (operation) as opr
```

**Microsoft Office 365/Office 365 - SharePoint - User Activity/Top 10 Users Uploading Content**
```
_sourceCategory={{Logsdatasource}}   Workload  "\"Operation\":\"FileUploaded\"" UserId
| parse "\"UserId\":\"*\"" as userId
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"Operation\":\"*\"" as operation
```

**Microsoft Office 365/Office 365 - SharePoint - User Activity/Top Sharing Activities by User ID**
```
_sourceCategory={{Logsdatasource}}   Workload UserId Operation (access* or send* or *sharing* or *shared*) 
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"UserId\":\"*\"" as userId
| parse "\"Operation\":\"*\"" as operation | tolowercase (operation) as opr
```

**Microsoft Office 365/Office 365 - SharePoint - Visitor Locations - New/United States Visitors**
```
_sourceCategory = Labs/Microsoft/Office365 "\"Workload\":\"SharePoint\"" ClientIP
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"ClientIP\":\"*\"" as clientIP
```

**Microsoft Office 365/Office 365 - SharePoint - Visitor Locations - New/Visits by Country Over Time**
```
_sourceCategory = Labs/Microsoft/Office365 "\"Workload\":\"SharePoint\"" ClientIP
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"ClientIP\":\"*\"" as clientIP
```

**Microsoft Office 365/Office 365 - SharePoint - Visitor Locations - New/Visits by State Over Time**
```
_sourceCategory = Labs/Microsoft/Office365 "\"Workload\":\"SharePoint\"" ClientIP
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"ClientIP\":\"*\"" as clientIP
```

**Microsoft Office 365/Office 365 - SharePoint - Visitor Locations - New/Worldwide Visitors**
```
_sourceCategory = Labs/Microsoft/Office365 "\"Workload\":\"SharePoint\"" ClientIP
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"ClientIP\":\"*\"" as clientIP
```

**Microsoft Office 365/Office 365 - SharePoint - Visitor Locations/United States Visitors**
```
_sourceCategory={{Logsdatasource}}   Workload  ClientIP
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"ClientIP\":\"*\"" as clientIP
```

**Microsoft Office 365/Office 365 - SharePoint - Visitor Locations/Visits by Country Over Time**
```
_sourceCategory={{Logsdatasource}}   Workload ClientIP
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"ClientIP\":\"*\"" as clientIP
```

**Microsoft Office 365/Office 365 - SharePoint - Visitor Locations/Visits by US States Over Time**
```
_sourceCategory={{Logsdatasource}}   Workload  ClientIP
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"ClientIP\":\"*\"" as clientIP
```

**Microsoft Office 365/Office 365 - SharePoint - Visitor Locations/Worldwide Visitors**
```
_sourceCategory={{Logsdatasource}}   Workload  ClientIP
| parse "\"Workload\":\"*\"" as workLoad
| parse "\"ClientIP\":\"*\"" as clientIP
```

**Microsoft Office 365/Office 365 - Sharepoint or OneDrive - Operations Trends/Office 365 - Sharepoint or OneDrive - Operations Trends**
```
_sourceCategory={{Logsdatasource}}   ("\"Workload\":\"SharePoint\"" or "\"Workload\":\"OneDrive\"") "Operation"
| json "Workload", "Operation"
```

**Microsoft Office 365/Office 365 - Usage by Location - New/Azure AD Transactions by Client Location**
```
_sourceCategory = Labs/Microsoft/Office365 CreationTime "\"Workload\":\"AzureActiveDirectory\"" "ClientIP"
| json "Workload"
| json "ClientIP" as src_ip 
```

**Microsoft Office 365/Office 365 - Usage by Location - New/Exchange  Transactions by Client Location**
```
_sourceCategory = Labs/Microsoft/Office365 CreationTime ClientIPAddress "\"Workload\":\"Exchange\""
| json "Workload"
| json "ClientIPAddress"  as src_ip
```

**Microsoft Office 365/Office 365 - Usage by Location - New/Office 365 Transactions by Client Location**
```
_sourceCategory = Labs/Microsoft/Office365 CreationTime Workload (ClientIP or ClientIPAddress) 
| json "Workload"
| json "ClientIP" as src_ip_1 nodrop // for non-Exchange
| json "ClientIPAddress" as src_ip_2 nodrop //  for Exchange
```

**Microsoft Office 365/Office 365 - Usage by Location - New/SP and  OD Transactions by Client Location**
```
_sourceCategory = Labs/Microsoft/Office365 CreationTime "ClientIP" ( "\"Workload\":\"SharePoint\"" or  "\"Workload\":\"OneDrive\"" ) 
| json "Workload", "Operation"
| json "ClientIP" as src_ip
```

**Microsoft Office 365/Office 365 - Usage by Location/Azure AD Transactions by Client Location**
```
_sourceCategory={{Logsdatasource}}   CreationTime "\"Workload\":\"AzureActiveDirectory\"" "ClientIP"
| json "Workload"
| json "ClientIP" as src_ip 
```

**Microsoft Office 365/Office 365 - Usage by Location/Exchange  Transactions by Client Location**
```
_sourceCategory={{Logsdatasource}}   CreationTime ClientIPAddress "\"Workload\":\"Exchange\""
| parse "\"Workload\":\"*\"" as Workload
| parse "\"ClientIPAddress\":\"*\"" as src_ip 
```

**Microsoft Office 365/Office 365 - Usage by Location/Office 365 Transactions by Client Location**
```
_sourceCategory={{Logsdatasource}}   CreationTime Workload (ClientIP or ClientIPAddress) 
| json "Workload"
| json "ClientIP" as src_ip_1 nodrop // for non-Exchange
| json "ClientIPAddress" as src_ip_2 nodrop //  for Exchange
```

**Microsoft Office 365/Office 365 - Usage by Location/SP and  OD Transactions by Client Location**
```
_sourceCategory={{Logsdatasource}}   CreationTime "ClientIP" ( "\"Workload\":\"SharePoint\"" or  "\"Workload\":\"OneDrive\"" ) 
| json "Workload", "Operation"
| json "ClientIP" as src_ip
```


