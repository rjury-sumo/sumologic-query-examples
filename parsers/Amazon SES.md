# Parsers For Amazon SES

**Amazon SES/Bounced Notifications/Bounce Type Trend**
```
_sourceCategory={{SESNotificationsDataSource}}  "\"notificationType\":\"Bounce\""
| json "notificationType" nodrop | json "bounce.bounceSubType" as bounceSubType nodrop | json "bounce.bounceType" as bounceType nodrop | json "bounce.bouncedRecipients" as bouncedRecipients nodrop
| parse regex field=bouncedRecipients "\"emailAddress\":\"(?<BouncedemailAddress>[^\"]*)\"" multi
| parse field=BouncedemailAddress "*@*" as name, domain
```

**Amazon SES/Bounced Notifications/Permanent Bounce - General**
```
_sourceCategory={{SESNotificationsDataSource}}  "\"notificationType\":\"Bounce\"" "\"bounceType\":\"Permanent\"" "\"bounceSubType\":\"General\""
| json "notificationType" nodrop | json "bounce.bounceSubType" as bounceSubType nodrop | json "bounce.bounceType" as bounceType nodrop | json "bounce.bouncedRecipients" as bouncedRecipients nodrop 
| parse regex field=bouncedRecipients "\"emailAddress\":\"(?<BouncedemailAddress>[^\"]*)\"" multi
| parse field=BouncedemailAddress "*@*" as name, domain
```

**Amazon SES/Bounced Notifications/Permanent Bounce - Sub Type Trend**
```
_sourceCategory={{SESNotificationsDataSource}}  "\"notificationType\":\"Bounce\"" "\"bounceType\":\"Permanent\""
| json "notificationType" nodrop | json "bounce.bounceSubType" as bounceSubType nodrop | json "bounce.bounceType" as bounceType nodrop | json "bounce.bouncedRecipients" as bouncedRecipients nodrop
| parse regex field=bouncedRecipients "\"emailAddress\":\"(?<BouncedemailAddress>[^\"]*)\"" multi
| parse field=BouncedemailAddress "*@*" as name, domain
```

**Amazon SES/Bounced Notifications/Permanent Bounce - Suppressed**
```
_sourceCategory={{SESNotificationsDataSource}}  "\"notificationType\":\"Bounce\"" "\"bounceType\":\"Permanent\"" "\"bounceSubType\":\"Suppressed\""
| json "notificationType" nodrop | json "bounce.bounceSubType" as bounceSubType nodrop | json "bounce.bounceType" as bounceType nodrop | json "bounce.bouncedRecipients" as bouncedRecipients nodrop 
| parse regex field=bouncedRecipients "\"emailAddress\":\"(?<BouncedemailAddress>[^\"]*)\"" multi
| parse field=BouncedemailAddress "*@*" as name, domain
```

**Amazon SES/Bounced Notifications/Top Bounced email Addresses**
```
_sourceCategory={{SESNotificationsDataSource}}  "\"notificationType\":\"Bounce\""
| json "notificationType" nodrop | json "bounce.bounceSubType" as bounceSubType nodrop | json "bounce.bounceType" as bounceType nodrop | json "bounce.bouncedRecipients" as bouncedRecipients nodrop
| parse regex field=bouncedRecipients "\"emailAddress\":\"(?<BouncedemailAddress>[^\"]*)\"" multi
| parse field=BouncedemailAddress "*@*" as name, domain
```

**Amazon SES/Bounced Notifications/Top Bounced email Domains**
```
_sourceCategory={{SESNotificationsDataSource}}  "\"notificationType\":\"Bounce\""
| json "notificationType" nodrop | json "bounce.bounceSubType" as bounceSubType nodrop | json "bounce.bounceType" as bounceType nodrop | json "bounce.bouncedRecipients" as bouncedRecipients nodrop
| parse regex field=bouncedRecipients "\"emailAddress\":\"(?<BouncedemailAddress>[^\"]*)\"" multi
| parse field=BouncedemailAddress "*@*" as name, domain
```

**Amazon SES/Bounced Notifications/Transient Bounce - Content Rejected**
```
_sourceCategory={{SESNotificationsDataSource}}  "\"notificationType\":\"Bounce\"" "\"bounceType\":\"Transient\"" "\"bounceSubType\":\"ContentRejected\""
| json "notificationType" nodrop | json "bounce.bounceSubType" as bounceSubType nodrop | json "bounce.bounceType" as bounceType nodrop | json "bounce.bouncedRecipients" as bouncedRecipients nodrop
| parse regex field=bouncedRecipients "\"emailAddress\":\"(?<BouncedemailAddress>[^\"]*)\"" multi
| parse field=BouncedemailAddress "*@*" as name, domain
```

**Amazon SES/Bounced Notifications/Transient Bounce - General**
```
_sourceCategory={{SESNotificationsDataSource}}  "\"notificationType\":\"Bounce\"" "\"bounceType\":\"Transient\"" "\"bounceSubType\":\"General\""
| json "notificationType" nodrop | json "bounce.bounceSubType" as bounceSubType nodrop | json "bounce.bounceType" as bounceType nodrop | json "bounce.bouncedRecipients" as bouncedRecipients nodrop
| parse regex field=bouncedRecipients "\"emailAddress\":\"(?<BouncedemailAddress>[^\"]*)\"" multi
| parse field=BouncedemailAddress "*@*" as name, domain
```

**Amazon SES/Bounced Notifications/Transient Bounce - MailBox Full**
```
_sourceCategory={{SESNotificationsDataSource}}  "\"notificationType\":\"Bounce\"" "\"bounceType\":\"Transient\"" "\"bounceSubType\":\"MailboxFull\""
| json "notificationType" nodrop | json "bounce.bounceSubType" as bounceSubType nodrop | json "bounce.bounceType" as bounceType nodrop | json "bounce.bouncedRecipients" as bouncedRecipients nodrop
| parse regex field=bouncedRecipients "\"emailAddress\":\"(?<BouncedemailAddress>[^\"]*)\"" multi
| parse field=BouncedemailAddress "*@*" as name, domain
```

**Amazon SES/Bounced Notifications/Transient Bounce - Sub Type Trend**
```
_sourceCategory={{SESNotificationsDataSource}}  "\"notificationType\":\"Bounce\"" "\"bounceType\":\"Transient\""
| json "notificationType" nodrop | json "bounce.bounceSubType" as bounceSubType nodrop | json "bounce.bounceType" as bounceType nodrop | json "bounce.bouncedRecipients" as bouncedRecipients nodrop
| parse regex field=bouncedRecipients "\"emailAddress\":\"(?<BouncedemailAddress>[^\"]*)\"" multi
| parse field=BouncedemailAddress "*@*" as name, domain
```

**Amazon SES/Bounced Notifications/Transient Bounce - SubType Breakup**
```
_sourceCategory={{SESNotificationsDataSource}}  "\"notificationType\":\"Bounce\"" "\"bounceType\":\"Transient\""
| json "notificationType" nodrop | json "bounce.bounceSubType" as bounceSubType nodrop | json "bounce.bounceType" as bounceType nodrop | json "bounce.bouncedRecipients" as bouncedRecipients nodrop
| parse regex field=bouncedRecipients "\"emailAddress\":\"(?<BouncedemailAddress>[^\"]*)\"" multi
| parse field=BouncedemailAddress "*@*" as name, domain
```

**Amazon SES/Bounced Notifications/Undetermined Bounce - Sub Type Trend**
```
_sourceCategory={{SESNotificationsDataSource}}  "\"notificationType\":\"Bounce\"" "\"bounceType\":\"Undetermined\""
| json "notificationType" nodrop | json "bounce.bounceSubType" as bounceSubType nodrop | json "bounce.bounceType" as bounceType nodrop | json "bounce.bouncedRecipients" as bouncedRecipients nodrop
| parse regex field=bouncedRecipients "\"emailAddress\":\"(?<BouncedemailAddress>[^\"]*)\"" multi
| parse field=BouncedemailAddress "*@*" as name, domain
```

**Amazon SES/CloudTrail Events by Event Name/Domain Event Details**
```
_sourceCategory={{CloudTrailLogsDataSource}}  "\"eventsource\":\"ses.amazonaws.com\"" *Domain*
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop
```

**Amazon SES/CloudTrail Events by Event Name/Domain Events**
```
_sourceCategory={{CloudTrailLogsDataSource}}  "\"eventsource\":\"ses.amazonaws.com\"" *Domain*
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop
```

**Amazon SES/CloudTrail Events by Event Name/Email Address Event Details**
```
_sourceCategory={{CloudTrailLogsDataSource}}  "\"eventsource\":\"ses.amazonaws.com\"" *EmailAddress*
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop
```

**Amazon SES/CloudTrail Events by Event Name/Email Address Events**
```
_sourceCategory={{CloudTrailLogsDataSource}}  "\"eventsource\":\"ses.amazonaws.com\"" *EmailAddress*
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop
```

**Amazon SES/CloudTrail Events by Event Name/Get Send Event Details**
```
_sourceCategory={{CloudTrailLogsDataSource}}  "\"eventsource\":\"ses.amazonaws.com\"" GetSend*
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop
```

**Amazon SES/CloudTrail Events by Event Name/Get Send Events**
```
_sourceCategory={{CloudTrailLogsDataSource}}  "\"eventsource\":\"ses.amazonaws.com\"" GetSend*
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop
```

**Amazon SES/CloudTrail Events by Event Name/Identity Event Details**
```
_sourceCategory={{CloudTrailLogsDataSource}}  "\"eventsource\":\"ses.amazonaws.com\"" *Identit*
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop
```

**Amazon SES/CloudTrail Events by Event Name/Identity Events**
```
_sourceCategory={{CloudTrailLogsDataSource}}  "\"eventsource\":\"ses.amazonaws.com\"" *Identit*
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop
```

**Amazon SES/CloudTrail Events by Event Name/Receipt Event Details**
```
_sourceCategory={{CloudTrailLogsDataSource}}  "\"eventsource\":\"ses.amazonaws.com\"" *Receipt*
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop
```

**Amazon SES/CloudTrail Events by Event Name/Receipt Events**
```
_sourceCategory={{CloudTrailLogsDataSource}}  "\"eventsource\":\"ses.amazonaws.com\"" *Receipt*
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop
```

**Amazon SES/CloudTrail Events Overview/Event Status**
```
_sourceCategory={{CloudTrailLogsDataSource}}  "\"eventsource\":\"ses.amazonaws.com\""
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop
```

**Amazon SES/CloudTrail Events Overview/Event Status Trend**
```
_sourceCategory={{CloudTrailLogsDataSource}}  "\"eventsource\":\"ses.amazonaws.com\""
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop
```

**Amazon SES/CloudTrail Events Overview/Events by User**
```
_sourceCategory={{CloudTrailLogsDataSource}}  "\"eventsource\":\"ses.amazonaws.com\""
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop
```

**Amazon SES/CloudTrail Events Overview/Events Trend by Event Name**
```
_sourceCategory={{CloudTrailLogsDataSource}}  "\"eventsource\":\"ses.amazonaws.com\""
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop
```

**Amazon SES/CloudTrail Events Overview/Failed Event Details**
```
_sourceCategory={{CloudTrailLogsDataSource}}  "\"eventsource\":\"ses.amazonaws.com\"" errorCode
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop
```

**Amazon SES/CloudTrail Events Overview/Failed Events**
```
_sourceCategory={{CloudTrailLogsDataSource}}  "\"eventsource\":\"ses.amazonaws.com\"" errorCode
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop
```

**Amazon SES/CloudTrail Events Overview/Failure Events Location**
```
_sourceCategory={{CloudTrailLogsDataSource}}  "\"eventSource\":\"ses.amazonaws.com\"" errorCode
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop
```

**Amazon SES/CloudTrail Events Overview/Successful Event Details**
```
_sourceCategory={{CloudTrailLogsDataSource}}  "\"eventsource\":\"ses.amazonaws.com\"" !errorCode
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop
```

**Amazon SES/CloudTrail Events Overview/Successful Events**
```
_sourceCategory={{CloudTrailLogsDataSource}}  "\"eventsource\":\"ses.amazonaws.com\"" !errorCode
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop
```

**Amazon SES/CloudTrail Events Overview/Successful Events Location**
```
_sourceCategory={{CloudTrailLogsDataSource}}  "\"eventSource\":\"ses.amazonaws.com\"" !errorCode
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop  
```

**Amazon SES/CloudTrail Events Overview/Top Error Codes**
```
_sourceCategory={{CloudTrailLogsDataSource}}  "\"eventsource\":\"ses.amazonaws.com\"" errorCode
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop
```

**Amazon SES/CloudTrail Events Overview/Top Users**
```
_sourceCategory={{CloudTrailLogsDataSource}}  "\"eventsource\":\"ses.amazonaws.com\""
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop
```

**Amazon SES/Complaint Notifications/Complaint Feedback Type Trend**
```
_sourceCategory={{SESNotificationsDataSource}}  "\"notificationType\":\"Complaint\""
| json "notificationType", "mail" nodrop 
| json "complaint.complainedRecipients" as complainedRecipients nodrop
| json "complaint.complaintFeedbackType" as complaintFeedbackType nodrop
| parse regex field=complainedRecipients  "\"emailAddress\":\"(?<ComplaintemailAddress>[^\"]+)\"" multi
| parse field=ComplaintemailAddress "*@*" as name, domain
| json "complaint.userAgent" as userAgent nodrop
| json field=mail "sourceArn" nodrop | json field=mail "sendingAccountId" nodrop | json field=mail "sourceIp" nodrop | json field=mail "destination" nodrop | json field=mail "source" nodrop
| parse regex field=sourceArn "arn:aws:ses:(?<awsRegion>[^:]+):\d+:identity/(?<identity>.*)"
```

**Amazon SES/Complaint Notifications/Sending AccountId**
```
_sourceCategory={{SESNotificationsDataSource}}  "\"notificationType\":\"Complaint\""
| json "notificationType", "mail" nodrop
| json "complaint.complainedRecipients" as complainedRecipients nodrop
| json "complaint.complaintFeedbackType" as complaintFeedbackType nodrop
| parse regex field=complainedRecipients  "\"emailAddress\":\"(?<ComplaintemailAddress>[^\"]+)\"" multi
| parse field=ComplaintemailAddress "*@*" as name, domain
| json "complaint.userAgent" as userAgent nodrop
| json field=mail "sourceArn" nodrop | json field=mail "sendingAccountId" nodrop | json field=mail "sourceIp" nodrop | json field=mail "destination" nodrop | json field=mail "source" nodrop
| parse regex field=sourceArn "arn:aws:ses:(?<awsRegion>[^:]+):\d+:identity/(?<identity>.*)"
```

**Amazon SES/Complaint Notifications/Sending AWS Region**
```
_sourceCategory={{SESNotificationsDataSource}}  "\"notificationType\":\"Complaint\""
| json "notificationType", "mail" nodrop
| json "complaint.complainedRecipients" as complainedRecipients nodrop
| json "complaint.complaintFeedbackType" as complaintFeedbackType nodrop
| parse regex field=complainedRecipients  "\"emailAddress\":\"(?<ComplaintemailAddress>[^\"]+)\"" multi
| parse field=ComplaintemailAddress "*@*" as name, domain
| json "complaint.userAgent" as userAgent nodrop
| json field=mail "sourceArn" nodrop | json field=mail "sendingAccountId" nodrop | json field=mail "sourceIp" nodrop | json field=mail "destination" nodrop | json field=mail "source" nodrop
| parse regex field=sourceArn "arn:aws:ses:(?<awsRegion>[^:]+):\d+:identity/(?<identity>.*)"
```

**Amazon SES/Complaint Notifications/Sending Identity**
```
_sourceCategory={{SESNotificationsDataSource}}  "\"notificationType\":\"Complaint\""
| json "notificationType", "mail" nodrop
| json "complaint.complainedRecipients" as complainedRecipients nodrop
| json "complaint.complaintFeedbackType" as complaintFeedbackType nodrop
| parse regex field=complainedRecipients  "\"emailAddress\":\"(?<ComplaintemailAddress>[^\"]+)\"" multi
| parse field=ComplaintemailAddress "*@*" as name, domain
| json "complaint.userAgent" as userAgent nodrop
| json field=mail "sourceArn" nodrop | json field=mail "sendingAccountId" nodrop | json field=mail "sourceIp" nodrop | json field=mail "destination" nodrop | json field=mail "source" nodrop
| parse regex field=sourceArn "arn:aws:ses:(?<awsRegion>[^:]+):\d+:identity/(?<identity>.*)"
```

**Amazon SES/Complaint Notifications/Sending SourceIP**
```
_sourceCategory={{SESNotificationsDataSource}}  "\"notificationType\":\"Complaint\""
| json "notificationType", "mail" nodrop
| json "complaint.complainedRecipients" as complainedRecipients nodrop
| json "complaint.complaintFeedbackType" as complaintFeedbackType nodrop
| parse regex field=complainedRecipients  "\"emailAddress\":\"(?<ComplaintemailAddress>[^\"]+)\"" multi
| parse field=ComplaintemailAddress "*@*" as name, domain
| json "complaint.userAgent" as userAgent nodrop
| json field=mail "sourceArn" nodrop | json field=mail "sendingAccountId" nodrop | json field=mail "sourceIp" nodrop | json field=mail "destination" nodrop | json field=mail "source" nodrop
| parse regex field=sourceArn "arn:aws:ses:(?<awsRegion>[^:]+):\d+:identity/(?<identity>.*)"
```

**Amazon SES/Complaint Notifications/Top Complaint email Addresses**
```
_sourceCategory={{SESNotificationsDataSource}}  "\"notificationType\":\"Complaint\""
| json "notificationType", "mail" nodrop 
| json "complaint.complainedRecipients" as complainedRecipients nodrop
| json "complaint.complaintFeedbackType" as complaintFeedbackType nodrop
| parse regex field=complainedRecipients  "\"emailAddress\":\"(?<ComplaintemailAddress>[^\"]+)\"" multi
| parse field=ComplaintemailAddress "*@*" as name, domain
| json "complaint.userAgent" as userAgent nodrop
| json field=mail "sourceArn" nodrop | json field=mail "sendingAccountId" nodrop | json field=mail "sourceIp" nodrop | json field=mail "destination" nodrop | json field=mail "source" nodrop
| parse regex field=sourceArn "arn:aws:ses:(?<awsRegion>[^:]+):\d+:identity/(?<identity>.*)"
```

**Amazon SES/Complaint Notifications/Top Complaint email Domains**
```
_sourceCategory={{SESNotificationsDataSource}}  "\"notificationType\":\"Complaint\""
| json "notificationType", "mail" nodrop 
| json "complaint.complainedRecipients" as complainedRecipients nodrop
| json "complaint.complaintFeedbackType" as complaintFeedbackType nodrop
| parse regex field=complainedRecipients  "\"emailAddress\":\"(?<ComplaintemailAddress>[^\"]+)\"" multi
| parse field=ComplaintemailAddress "*@*" as name, domain
| json "complaint.userAgent" as userAgent nodrop
| json field=mail "sourceArn" nodrop | json field=mail "sendingAccountId" nodrop | json field=mail "sourceIp" nodrop | json field=mail "destination" nodrop | json field=mail "source" nodrop
| parse regex field=sourceArn "arn:aws:ses:(?<awsRegion>[^:]+):\d+:identity/(?<identity>.*)"
```

**Amazon SES/Complaint Notifications/Top Complaint UserAgents**
```
_sourceCategory={{SESNotificationsDataSource}}  "\"notificationType\":\"Complaint\"" userAgent
| json "notificationType", "mail" nodrop 
| json "complaint.complainedRecipients" as complainedRecipients nodrop
| json "complaint.complaintFeedbackType" as complaintFeedbackType nodrop
| parse regex field=complainedRecipients  "\"emailAddress\":\"(?<ComplaintemailAddress>[^\"]+)\"" multi
| parse field=ComplaintemailAddress "*@*" as name, domain
| json "complaint.userAgent" as userAgent nodrop
| json field=mail "sourceArn" nodrop | json field=mail "sendingAccountId" nodrop | json field=mail "sourceIp" nodrop | json field=mail "destination" nodrop | json field=mail "source" nodrop
| parse regex field=sourceArn "arn:aws:ses:(?<awsRegion>[^:]+):\d+:identity/(?<identity>.*)"
```

**Amazon SES/Complaint Notifications/Top Source Generating Complaints**
```
_sourceCategory={{SESNotificationsDataSource}}  "\"notificationType\":\"Complaint\"" source
| json "notificationType", "mail" nodrop
| json "complaint.complainedRecipients" as complainedRecipients nodrop
| json "complaint.complaintFeedbackType" as complaintFeedbackType nodrop
| parse regex field=complainedRecipients  "\"emailAddress\":\"(?<ComplaintemailAddress>[^\"]+)\"" multi
| parse field=ComplaintemailAddress "*@*" as name, domain
| json "complaint.userAgent" as userAgent nodrop
| json field=mail "sourceArn" nodrop | json field=mail "sendingAccountId" nodrop | json field=mail "sourceIp" nodrop | json field=mail "destination" nodrop | json field=mail "source" nodrop
| parse regex field=sourceArn "arn:aws:ses:(?<awsRegion>[^:]+):\d+:identity/(?<identity>.*)"
```

**Amazon SES/Delivered Notifications/Delivery Processing Time Outlier**
```
_sourceCategory={{SESNotificationsDataSource}}  "\"notificationType\":\"Delivery\""
| json "notificationType" nodrop | json "mail.destination" as mailDestination nodrop | parse field=mailDestination "[*]" as deliveredemailAddressSet nodrop
| parse regex field=deliveredemailAddressSet "\"(?<deliveredemailAddress>[^\"]*)\"" multi
| parse field=deliveredemailAddress "*@*" as name, domain nodrop
| json "delivery.processingTimeMillis" as deliveryProcessingTimeMillis nodrop | json "delivery.remoteMtaIp" as remoteMtaIP nodrop | json "delivery.reportingMTA" as reportingMTA nodrop
```

**Amazon SES/Delivered Notifications/Delivery Trend**
```
_sourceCategory={{SESNotificationsDataSource}}  "\"notificationType\":\"Delivery\""
| json "notificationType" nodrop | json "mail.destination" as mailDestination nodrop | parse field=mailDestination "[*]" as deliveredemailAddressSet nodrop
| parse regex field=deliveredemailAddressSet "\"(?<deliveredemailAddress>[^\"]*)\"" multi
| parse field=deliveredemailAddress "*@*" as name, domain nodrop
| json "delivery.processingTimeMillis" as deliveryProcessingTimeMillis nodrop | json "delivery.remoteMtaIp" as remoteMtaIP nodrop | json "delivery.reportingMTA" as reportingMTA nodrop
```

**Amazon SES/Delivered Notifications/Reporting MTA IP Location**
```
_sourceCategory={{SESNotificationsDataSource}}   "\"notificationType\":\"Delivery\""
| json "notificationType" nodrop | json "mail.destination" as mailDestination nodrop | parse field=mailDestination "[*]" as deliveredemailAddressSet nodrop
| parse regex field=deliveredemailAddressSet "\"(?<deliveredemailAddress>[^\"]*)\"" multi
| parse field=deliveredemailAddress "*@*" as name, domain nodrop
| json "delivery.processingTimeMillis" as deliveryProcessingTimeMillis nodrop | json "delivery.remoteMtaIp" as remoteMtaIP nodrop | json "delivery.reportingMTA" as reportingMTA nodrop
```

**Amazon SES/Delivered Notifications/Top Delivered email destinations**
```
_sourceCategory={{SESNotificationsDataSource}}  "\"notificationType\":\"Delivery\""
| json "notificationType" nodrop | json "mail.destination" as mailDestination nodrop | parse field=mailDestination "[*]" as deliveredemailAddressSet nodrop
| parse regex field=deliveredemailAddressSet "\"(?<deliveredemailAddress>[^\"]*)\"" multi
| parse field=deliveredemailAddress "*@*" as name, domain nodrop
| json "delivery.processingTimeMillis" as deliveryProcessingTimeMillis nodrop | json "delivery.remoteMtaIp" as remoteMtaIP nodrop | json "delivery.reportingMTA" as reportingMTA nodrop
```

**Amazon SES/Delivered Notifications/Top Delivered email Domains**
```
_sourceCategory={{SESNotificationsDataSource}}   "\"notificationType\":\"Delivery\""
| json "notificationType" nodrop | json "mail.destination" as mailDestination nodrop | parse field=mailDestination "[*]" as deliveredemailAddressSet nodrop
| parse regex field=deliveredemailAddressSet "\"(?<deliveredemailAddress>[^\"]*)\"" multi
| parse field=deliveredemailAddress "*@*" as name, domain nodrop
| json "delivery.processingTimeMillis" as deliveryProcessingTimeMillis nodrop | json "delivery.remoteMtaIp" as remoteMtaIP nodrop | json "delivery.reportingMTA" as reportingMTA nodrop
```

**Amazon SES/Delivered Notifications/Top Reporting MTA**
```
_sourceCategory={{SESNotificationsDataSource}}   "\"notificationType\":\"Delivery\""
| json "notificationType" nodrop | json "mail.destination" as mailDestination nodrop | parse field=mailDestination "[*]" as deliveredemailAddressSet nodrop
| parse regex field=deliveredemailAddressSet "\"(?<deliveredemailAddress>[^\"]*)\"" multi
| parse field=deliveredemailAddress "*@*" as name, domain nodrop
| json "delivery.processingTimeMillis" as deliveryProcessingTimeMillis nodrop | json "delivery.remoteMtaIp" as remoteMtaIP nodrop | json "delivery.reportingMTA" as reportingMTA nodrop
```

**Amazon SES/Notification Overview/Mail Sending AccountId**
```
_sourceCategory={{SESNotificationsDataSource}}  mail sendingAccountId
| json "notificationType" nodrop | json "mail.source" as mailSource nodrop | json "mail.sourceIp" as mailSourceIP nodrop | json "mail.sendingAccountId" as mailSendingAccountId nodrop
```

**Amazon SES/Notification Overview/Mail Source**
```
_sourceCategory={{SESNotificationsDataSource}}  mail source
| json "notificationType" nodrop | json "mail.source" as mailSource nodrop | json "mail.sourceIp" as mailSourceIP nodrop | json "mail.sendingAccountId" as mailSendingAccountId nodrop
```

**Amazon SES/Notification Overview/Mail Source IP Locations**
```
_sourceCategory={{SESNotificationsDataSource}}  mail sourceIp
| json "notificationType" nodrop | json "mail.source" as mailSource nodrop | json "mail.sourceIp" as mailSourceIP nodrop | json "mail.sendingAccountId" as mailSendingAccountId nodrop
```

**Amazon SES/Notification Overview/Notification Type Trend**
```
_sourceCategory={{SESNotificationsDataSource}}  notificationType
| json "notificationType" nodrop | json "mail.source" as mailSource nodrop | json "mail.sourceIp" as mailSourceIP nodrop | json "mail.sendingAccountId" as mailSendingAccountId nodrop
```

**Amazon SES/Notification Overview/Notification Types**
```
_sourceCategory={{SESNotificationsDataSource}}  notificationType
| json "notificationType" nodrop | json "mail.source" as mailSource nodrop | json "mail.sourceIp" as mailSourceIP nodrop | json "mail.sendingAccountId" as mailSendingAccountId nodrop
```


