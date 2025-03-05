# Parsers For AWS CloudTrail

## Parser:
```
| json "sourceIPAddress"
 `n```
### Use Cases:
Created and Deleted Network and Security Events, Created Resources, Deleted Resources Over Time, Failed Logins, Geo Location of All Users, Login Events By User, Login Results - One Day Time Comparison, Logins from Multiple IP, Logins from Outside the USA, Logins Over Time, Logins without MFA, Outlier - Failed Login, Outlier - Success Login, Top 10 Users



## Parser:
```
| json "sourceIPAddress"
| parse "\"eventName\":\"*\"" as eventName nodrop
| parse "\"userName\":\"*\"" as user_name nodrop
| json field=_raw "userIdentity.principalId" as principal_id nodrop
| parse regex field = principal_id ":(?<user_principal>.+)" nodrop
| parse "\"responseElements\":{\"ConsoleLogin\":\"*\"}" as loginResult nodrop
| parse "\"MFAUsed\":\"*\"" as mfaUsed nodrop
 `n```
### Use Cases:
Geo Location of All Users, Login Results - One Day Time Comparison, Logins Over Time, Outlier - Failed Login, Outlier - Success Login



## Parser:
```
| parse "\"eventName\":\"*\"" as eventName nodrop
| json "sourceIPAddress"
| parse "\"userName\":\"*\"" as user_name nodrop
| json field=_raw "userIdentity.principalId" as principal_id nodrop
| parse regex field = principal_id ":(?<user_principal>.+)" nodrop
| json field=_raw "responseElements.ConsoleLogin" as loginResult nodrop
| parse "\"MFAUsed\":\"*\"" as mfaUsed nodrop
 `n```
### Use Cases:
Geo Location of All Users, Login Events By User, Login Results - One Day Time Comparison, Logins from Multiple IP, Logins from Outside the USA, Logins Over Time, Logins without MFA, Outlier - Failed Login, Outlier - Success Login



## Parser:
```
| parse "\"eventName\":\"*\"" as eventName nodrop
| parse "\"responseElements\":{\"ConsoleLogin\":\"*\"}" as loginResult nodrop
 `n```
### Use Cases:
Created Resources, Failed Logins, Geo Location of All Users, Login Events By User, Login Results - One Day Time Comparison, Logins from Multiple IP, Logins from Outside the USA, Logins Over Time, Logins without MFA, Outlier - Failed Login, Outlier - Success Login



## Parser:
```
| parse "\"eventName\":\"*\"" as eventName nodrop
| parse "\"sourceIPAddress\":\"*\"" as sourceIPAddress nodrop
| parse "\"userName\":\"*\"" as user_name nodrop
| json field=_raw "userIdentity.principalId" as principal_id nodrop
| parse regex field = principal_id ":(?<user_principal>.+)" nodrop
| json field=_raw "responseElements.ConsoleLogin" as loginResult nodrop
| parse "\"MFAUsed\":\"*\"" as mfaUsed nodrop
 `n```
### Use Cases:
Geo Location of All Users, Login Events By User, Login Results - One Day Time Comparison, Logins from Multiple IP, Logins Over Time, Logins without MFA, Outlier - Failed Login, Outlier - Success Login



## Parser:
```
| parse "\"userName\":\"*\"" as user_name nodrop
| json field=_raw "userIdentity.principalId" as principal_id nodrop
| parse regex field = principal_id ":(?<user_principal>.+)" nodrop
 `n```
### Use Cases:
Created and Deleted Network and Security Events, Created Resources, Deleted Resources Over Time, Failed Logins, Geo Location of All Users, Login Events By User, Login Results - One Day Time Comparison, Logins from Multiple IP, Logins from Outside the USA, Logins Over Time, Logins without MFA, Outlier - Failed Login, Outlier - Success Login, Top 10 Users



## Parser:
```
| parse "\"userName\":\"*\"" as user_name nodrop
| json field=_raw "userIdentity.principalId" as principal_id nodrop
| parse regex field = principal_id ":(?<user_principal>.+)" nodrop
| parse "\"eventName\":\"*\"" as event
| parse regex field=event "^(?<event_type>[A-Z][a-z]+?)[A-Z]"
 `n```
### Use Cases:
Created and Deleted Network and Security Events, Created Resources, Failed Logins, Geo Location of All Users, Login Events By User, Login Results - One Day Time Comparison, Logins from Multiple IP, Logins from Outside the USA, Logins Over Time, Logins without MFA, Outlier - Failed Login, Outlier - Success Login, Top 10 Users



## Parser:
```
| parse "\"userName\":\"*\"" as user_name nodrop
| json field=_raw "userIdentity.principalId" as principal_id nodrop
| parse regex field = principal_id ":(?<user_principal>.+)" nodrop
| parse "\"eventName\":\"*\"" as event_name
 `n```
### Use Cases:
Created and Deleted Network and Security Events, Created Resources, Deleted Resources Over Time, Failed Logins, Geo Location of All Users, Launched and Terminated Instances by User, Login Events By User, Login Results - One Day Time Comparison, Logins from Multiple IP, Logins from Outside the USA, Logins Over Time, Logins without MFA, Outlier - Failed Login, Outlier - Success Login, Top 10 Activities by Administrative Users, Top 10 Users



## Parser:
```
| parse "\"userName\":\"*\"" as user_name nodrop
| json field=_raw "userIdentity.principalId" as principal_id nodrop
| parse regex field = principal_id ":(?<user_principal>.+)" nodrop
| parse "\"eventName\":\"*\"" as event_name
| parse "awsRegion\":\"*\"" as aws_Region 
| parse regex field=event_name "^(?<event_type>[A-Z][a-z]+?)[A-Z]"
| parse regex "sourceIPAddress\":\"(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\""
 `n```
### Use Cases:
Created and Deleted Network and Security Events, Created Resources, Deleted Resources Over Time, Failed Logins, Geo Location of All Users, Launched and Terminated Instances by User, Login Events By User, Login Results - One Day Time Comparison, Logins from Multiple IP, Logins from Outside the USA, Logins Over Time, Logins without MFA, Outlier - Failed Login, Outlier - Success Login, Recent Activity by Administrative Users, Top 10 Activities by Administrative Users, Top 10 Users



## Parser:
```
| parse "\"userName\":\"*\"" as user_name nodrop
| json field=_raw "userIdentity.principalId" as principal_id nodrop
| parse regex field = principal_id ":(?<user_principal>.+)" nodrop
| parse "\"eventName\":\"*\"" as event_name
| parse regex field=event_name "^(?:Create|Run)(?<resource_type>[A-Z][A-Za-z]+)"
 `n```
### Use Cases:
Created Resources, Geo Location of All Users, Login Events By User, Login Results - One Day Time Comparison, Logins from Multiple IP, Logins from Outside the USA, Logins Over Time, Logins without MFA, Outlier - Failed Login, Outlier - Success Login



## Parser:
```
| parse "\"userName\":\"*\"" as user_name nodrop
| json field=_raw "userIdentity.principalId" as principal_id nodrop
| parse regex field = principal_id ":(?<user_principal>.+)" nodrop
| parse "\"eventName\":\"*\"" as event_name
| parse regex field=event_name "^(?:Delete)(?<resource_type>[A-Z][A-Za-z]+)"
 `n```
### Use Cases:
Created and Deleted Network and Security Events, Created Resources, Deleted Resources Over Time, Failed Logins, Geo Location of All Users, Login Events By User, Login Results - One Day Time Comparison, Logins from Multiple IP, Logins from Outside the USA, Logins Over Time, Logins without MFA, Outlier - Failed Login, Outlier - Success Login, Top 10 Users



## Parser:
```
| parse "\"userName\":\"*\"" as user_name nodrop
| json field=_raw "userIdentity.principalId" as principal_id nodrop
| parse regex field = principal_id ":(?<user_principal>.+)" nodrop
| parse "\"eventName\":\"*\"" as event_name
| parse regex field=event_name "^(?<event_type>[A-Z][a-z]+?)[A-Z]"
 `n```
### Use Cases:
Administrative Activities Over Time, Created and Deleted Network and Security Events, Created Resources, Deleted Resources Over Time, Failed Logins, Geo Location of All Users, Launched and Terminated Instances by User, Login Events By User, Login Results - One Day Time Comparison, Logins from Multiple IP, Logins from Outside the USA, Logins Over Time, Logins without MFA, Outlier - Failed Login, Outlier - Success Login, Recent Activity by Administrative Users, Top 10 Activities by Administrative Users, Top 10 Users


