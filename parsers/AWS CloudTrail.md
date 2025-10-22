# Parsers For AWS CloudTrail

**AWS CloudTrail/Console Logins - New/Geo Location of All Users**
```
_sourceCategory = Labs/AWS/CloudTrail 
| json "sourceIPAddress"
| parse "\"eventName\":\"*\"" as eventName nodrop
| parse "\"userName\":\"*\"" as user_name nodrop
| json field=_raw "userIdentity.principalId" as principal_id nodrop
| parse regex field = principal_id ":(?<user_principal>.+)" nodrop
| if (user_name="", user_principal, user_name) as user 
| parse "\"responseElements\":{\"ConsoleLogin\":\"*\"}" as loginResult nodrop
| parse "\"MFAUsed\":\"*\"" as mfaUsed nodrop
```

**AWS CloudTrail/Console Logins - New/Login Events By User**
```
_sourceCategory = Labs/AWS/CloudTrail* "ConsoleLogin"
| parse "\"eventName\":\"*\"" as eventName nodrop
| where eventName="ConsoleLogin"
| parse "\"sourceIPAddress\":\"*\"" as sourceIPAddress nodrop
| parse "\"userName\":\"*\"" as user_name nodrop
| json field=_raw "userIdentity.principalId" as principal_id nodrop
| parse regex field = principal_id ":(?<user_principal>.+)" nodrop
| if (user_name="", user_principal, user_name) as user 
| json field=_raw "responseElements.ConsoleLogin" as loginResult nodrop
| parse "\"MFAUsed\":\"*\"" as mfaUsed nodrop
```

**AWS CloudTrail/Console Logins - New/Login Results - One Day Time Comparison**
```
_sourceCategory = Labs/AWS/CloudTrail*  "ConsoleLogin" 
| parse "\"eventName\":\"*\"" as eventName nodrop
| where eventName="ConsoleLogin"
| parse "\"sourceIPAddress\":\"*\"" as sourceIPAddress nodrop
| parse "\"userName\":\"*\"" as user_name nodrop
| json field=_raw "userIdentity.principalId" as principal_id nodrop
| parse regex field = principal_id ":(?<user_principal>.+)" nodrop
| if (user_name="", user_principal, user_name) as user 
| json field=_raw "responseElements.ConsoleLogin" as loginResult nodrop
| parse "\"MFAUsed\":\"*\"" as mfaUsed nodrop
```

**AWS CloudTrail/Console Logins - New/Logins from Multiple IP**
```
_sourceCategory = Labs/AWS/CloudTrail*  "ConsoleLogin" 
| parse "\"eventName\":\"*\"" as eventName nodrop
| where eventName="ConsoleLogin"
| parse "\"sourceIPAddress\":\"*\"" as sourceIPAddress nodrop
| parse "\"userName\":\"*\"" as user_name nodrop
| json field=_raw "userIdentity.principalId" as principal_id nodrop
| parse regex field = principal_id ":(?<user_principal>.+)" nodrop
| if (user_name="", user_principal, user_name) as user 
| json field=_raw "responseElements.ConsoleLogin" as loginResult nodrop
| parse "\"MFAUsed\":\"*\"" as mfaUsed nodrop
```

**AWS CloudTrail/Console Logins - New/Logins from Outside the USA**
```
_sourceCategory = Labs/AWS/CloudTrail*  "ConsoleLogin" 
| parse "\"eventName\":\"*\"" as eventName nodrop
| where eventName="ConsoleLogin"
| json "sourceIPAddress"
| parse "\"userName\":\"*\"" as user_name nodrop
| json field=_raw "userIdentity.principalId" as principal_id nodrop
| parse regex field = principal_id ":(?<user_principal>.+)" nodrop
| if (user_name="", user_principal, user_name) as user 
| json field=_raw "responseElements.ConsoleLogin" as loginResult nodrop
| parse "\"MFAUsed\":\"*\"" as mfaUsed nodrop
```

**AWS CloudTrail/Console Logins - New/Logins Over Time**
```
_sourceCategory = Labs/AWS/CloudTrail*  "ConsoleLogin" 
| parse "\"eventName\":\"*\"" as eventName nodrop
| where eventName="ConsoleLogin"
| parse "\"sourceIPAddress\":\"*\"" as sourceIPAddress nodrop
| parse "\"userName\":\"*\"" as user_name nodrop
| json field=_raw "userIdentity.principalId" as principal_id nodrop
| parse regex field = principal_id ":(?<user_principal>.+)" nodrop
| if (user_name="", user_principal, user_name) as user 
| json field=_raw "responseElements.ConsoleLogin" as loginResult nodrop
| parse "\"MFAUsed\":\"*\"" as mfaUsed nodrop
```

**AWS CloudTrail/Console Logins - New/Logins without MFA**
```
_sourceCategory = Labs/AWS/CloudTrail*  "ConsoleLogin" "\"MFAUsed\":\"No\""
| parse "\"eventName\":\"*\"" as eventName nodrop
| where eventName="ConsoleLogin"
| parse "\"sourceIPAddress\":\"*\"" as sourceIPAddress nodrop
| parse "\"userName\":\"*\"" as user_name nodrop
| json field=_raw "userIdentity.principalId" as principal_id nodrop
| parse regex field = principal_id ":(?<user_principal>.+)" nodrop
| if (user_name="", user_principal, user_name) as user 
| json field=_raw "responseElements.ConsoleLogin" as loginResult nodrop
| parse "\"MFAUsed\":\"*\"" as mfaUsed nodrop
```

**AWS CloudTrail/Console Logins - New/Outlier - Failed Login**
```
_sourceCategory = Labs/AWS/CloudTrail*  "ConsoleLogin" "Failure"
| parse "\"eventName\":\"*\"" as eventName nodrop
| where eventName="ConsoleLogin"
| parse "\"sourceIPAddress\":\"*\"" as sourceIPAddress nodrop
| parse "\"userName\":\"*\"" as user_name nodrop
| json field=_raw "userIdentity.principalId" as principal_id nodrop
| parse regex field = principal_id ":(?<user_principal>.+)" nodrop
| if (user_name="", user_principal, user_name) as user 
| json field=_raw "responseElements.ConsoleLogin" as loginResult nodrop
| where loginResult ="Failure"
| parse "\"MFAUsed\":\"*\"" as mfaUsed nodrop
```

**AWS CloudTrail/Console Logins - New/Outlier - Success Login**
```
_sourceCategory = Labs/AWS/CloudTrail*  "ConsoleLogin" "Success"
| parse "\"eventName\":\"*\"" as eventName nodrop
| where eventName="ConsoleLogin"
| parse "\"sourceIPAddress\":\"*\"" as sourceIPAddress nodrop
| parse "\"userName\":\"*\"" as user_name nodrop
| json field=_raw "userIdentity.principalId" as principal_id nodrop
| parse regex field = principal_id ":(?<user_principal>.+)" nodrop
| if (user_name="", user_principal, user_name) as user 
| json field=_raw "responseElements.ConsoleLogin" as loginResult nodrop
| where loginResult ="Success"
| parse "\"MFAUsed\":\"*\"" as mfaUsed nodrop
```

**AWS CloudTrail/Overview - New/Created and Deleted Network and Security Events**
```
_sourceCategory = Labs/AWS/CloudTrail* (*Security* OR *Network*) 
| parse "\"userName\":\"*\"" as user_name nodrop
| json field=_raw "userIdentity.principalId" as principal_id nodrop
| parse regex field = principal_id ":(?<user_principal>.+)" nodrop
| if (user_name="", user_principal, user_name) as user 
| parse "\"eventName\":\"*\"" as event
| parse regex field=event "^(?<event_type>[A-Z][a-z]+?)[A-Z]"
```

**AWS CloudTrail/Overview - New/Created Resources**
```
_sourceCategory = Labs/AWS/CloudTrail* (Create* OR Run*)
| parse "\"userName\":\"*\"" as user_name nodrop
| json field=_raw "userIdentity.principalId" as principal_id nodrop
| parse regex field = principal_id ":(?<user_principal>.+)" nodrop
| if (user_name="", user_principal, user_name) as user 
| parse "\"eventName\":\"*\"" as event_name
| parse regex field=event_name "^(?:Create|Run)(?<resource_type>[A-Z][A-Za-z]+)"
```

**AWS CloudTrail/Overview - New/Deleted Resources Over Time**
```
_sourceCategory = Labs/AWS/CloudTrail* Delete*
| parse "\"userName\":\"*\"" as user_name nodrop
| json field=_raw "userIdentity.principalId" as principal_id nodrop
| parse regex field = principal_id ":(?<user_principal>.+)" nodrop
| if (user_name="", user_principal, user_name) as user 
| parse "\"eventName\":\"*\"" as event_name
| parse regex field=event_name "^(?:Delete)(?<resource_type>[A-Z][A-Za-z]+)"
```

**AWS CloudTrail/Overview - New/Failed Logins**
```
_sourceCategory = Labs/AWS/CloudTrail* ConsoleLogin Failure
| parse "\"eventName\":\"*\"" as eventName nodrop
| parse "\"responseElements\":{\"ConsoleLogin\":\"*\"}" as loginResult nodrop
```

**AWS CloudTrail/Overview - New/Geo Location of All Users**
```
_sourceCategory = Labs/AWS/CloudTrail* sourceIPAddress 
| json "sourceIPAddress"
```

**AWS CloudTrail/Overview - New/Top 10 Users**
```
_sourceCategory = Labs/AWS/CloudTrail*
| parse "\"userName\":\"*\"" as user_name nodrop
| json field=_raw "userIdentity.principalId" as principal_id nodrop
| parse regex field = principal_id ":(?<user_principal>.+)" nodrop
```

**AWS CloudTrail/User Monitoring - New/Administrative Activities Over Time**
```
_sourceCategory = Labs/AWS/CloudTrail* 
| parse "\"userName\":\"*\"" as user_name nodrop
| json field=_raw "userIdentity.principalId" as principal_id nodrop
| parse regex field = principal_id ":(?<user_principal>.+)" nodrop
| if (user_name="", user_principal, user_name) as user 
| parse "\"eventName\":\"*\"" as event_name
| parse regex field=event_name "^(?<event_type>[A-Z][a-z]+?)[A-Z]"
```

**AWS CloudTrail/User Monitoring - New/Geo Location of All Users**
```
_sourceCategory = Labs/AWS/CloudTrail* sourceIPAddress 
| json "sourceIPAddress"
```

**AWS CloudTrail/User Monitoring - New/Launched and Terminated Instances by User**
```
_sourceCategory = Labs/AWS/CloudTrail*  ("TerminateInstances" OR "RunInstances")
| parse "\"userName\":\"*\"" as user_name nodrop
| json field=_raw "userIdentity.principalId" as principal_id nodrop
| parse regex field = principal_id ":(?<user_principal>.+)" nodrop
| if (user_name="", user_principal, user_name) as user 
| parse "\"eventName\":\"*\"" as event_name
```

**AWS CloudTrail/User Monitoring - New/Recent Activity by Administrative Users**
```
_sourceCategory = Labs/AWS/CloudTrail* 
| parse "\"userName\":\"*\"" as user_name nodrop
| json field=_raw "userIdentity.principalId" as principal_id nodrop
| parse regex field = principal_id ":(?<user_principal>.+)" nodrop
| if (user_name="", user_principal, user_name) as user 
| parse "\"eventName\":\"*\"" as event_name
| parse "awsRegion\":\"*\"" as aws_Region 
| parse regex field=event_name "^(?<event_type>[A-Z][a-z]+?)[A-Z]"
| parse regex "sourceIPAddress\":\"(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\""
```

**AWS CloudTrail/User Monitoring - New/Top 10 Activities by Administrative Users**
```
_sourceCategory = Labs/AWS/CloudTrail* 
| parse "\"userName\":\"*\"" as user_name nodrop
| json field=_raw "userIdentity.principalId" as principal_id nodrop
| parse regex field = principal_id ":(?<user_principal>.+)" nodrop
| if (user_name="", user_principal, user_name) as user 
| parse "\"eventName\":\"*\"" as event_name
| parse regex field=event_name "^(?<event_type>[A-Z][a-z]+?)[A-Z]"
```

**AWS CloudTrail/User Monitoring - New/Top 10 Users**
```
_sourceCategory = Labs/AWS/CloudTrail*
| parse "\"userName\":\"*\"" as user_name nodrop
| json field=_raw "userIdentity.principalId" as principal_id nodrop
| parse regex field = principal_id ":(?<user_principal>.+)" nodrop
```


