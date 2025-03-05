# Parsers For Amazon SES

## Parser:
```
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop
 
```
### Use Cases:
Bounce Type Trend, Domain Event Details, Domain Events, Email Address Event Details, Email Address Events, Event Status, Event Status Trend, Events by User, Events Trend by Event Name, Failed Event Details, Failed Events, Failure Events Location, Get Send Event Details, Get Send Events, Identity Event Details, Identity Events, Permanent Bounce - General, Permanent Bounce - Sub Type Trend, Permanent Bounce - Suppressed, Receipt Event Details, Receipt Events, Successful Event Details, Successful Events, Top Bounced email Addresses, Top Bounced email Domains, Top Error Codes, Top Users, Transient Bounce - Content Rejected, Transient Bounce - General, Transient Bounce - MailBox Full, Transient Bounce - Sub Type Trend, Transient Bounce - SubType Breakup, Undetermined Bounce - Sub Type Trend



## Parser:
```
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop  
 
```
### Use Cases:
Bounce Type Trend, Domain Event Details, Domain Events, Email Address Event Details, Email Address Events, Event Status, Event Status Trend, Events by User, Events Trend by Event Name, Failed Event Details, Failed Events, Failure Events Location, Get Send Event Details, Get Send Events, Identity Event Details, Identity Events, Permanent Bounce - General, Permanent Bounce - Sub Type Trend, Permanent Bounce - Suppressed, Receipt Event Details, Receipt Events, Successful Event Details, Successful Events, Successful Events Location, Top Bounced email Addresses, Top Bounced email Domains, Top Error Codes, Top Users, Transient Bounce - Content Rejected, Transient Bounce - General, Transient Bounce - MailBox Full, Transient Bounce - Sub Type Trend, Transient Bounce - SubType Breakup, Undetermined Bounce - Sub Type Trend



## Parser:
```
| json "notificationType" nodrop | json "bounce.bounceSubType" as bounceSubType nodrop | json "bounce.bounceType" as bounceType nodrop | json "bounce.bouncedRecipients" as bouncedRecipients nodrop
| parse regex field=bouncedRecipients "\"emailAddress\":\"(?<BouncedemailAddress>[^\"]*)\"" multi
| parse field=BouncedemailAddress "*@*" as name, domain
 
```
### Use Cases:
Bounce Type Trend, Permanent Bounce - Sub Type Trend, Permanent Bounce - Suppressed, Top Bounced email Addresses, Top Bounced email Domains, Transient Bounce - Content Rejected, Transient Bounce - General, Transient Bounce - MailBox Full, Transient Bounce - Sub Type Trend, Transient Bounce - SubType Breakup, Undetermined Bounce - Sub Type Trend



## Parser:
```
| json "notificationType" nodrop | json "bounce.bounceSubType" as bounceSubType nodrop | json "bounce.bounceType" as bounceType nodrop | json "bounce.bouncedRecipients" as bouncedRecipients nodrop 
| parse regex field=bouncedRecipients "\"emailAddress\":\"(?<BouncedemailAddress>[^\"]*)\"" multi
| parse field=BouncedemailAddress "*@*" as name, domain
 
```
### Use Cases:
Bounce Type Trend, Permanent Bounce - General, Permanent Bounce - Sub Type Trend, Permanent Bounce - Suppressed, Top Bounced email Addresses, Top Bounced email Domains, Transient Bounce - Content Rejected, Transient Bounce - General, Transient Bounce - MailBox Full, Transient Bounce - Sub Type Trend, Transient Bounce - SubType Breakup, Undetermined Bounce - Sub Type Trend



## Parser:
```
| json "notificationType" nodrop | json "mail.destination" as mailDestination nodrop | parse field=mailDestination "[*]" as deliveredemailAddressSet nodrop
| parse regex field=deliveredemailAddressSet "\"(?<deliveredemailAddress>[^\"]*)\"" multi
| parse field=deliveredemailAddress "*@*" as name, domain nodrop
| json "delivery.processingTimeMillis" as deliveryProcessingTimeMillis nodrop | json "delivery.remoteMtaIp" as remoteMtaIP nodrop | json "delivery.reportingMTA" as reportingMTA nodrop
 
```
### Use Cases:
Bounce Type Trend, Complaint Feedback Type Trend, Delivery Processing Time Outlier, Delivery Trend, Domain Event Details, Domain Events, Email Address Event Details, Email Address Events, Event Status, Event Status Trend, Events by User, Events Trend by Event Name, Failed Event Details, Failed Events, Failure Events Location, Get Send Event Details, Get Send Events, Identity Event Details, Identity Events, Permanent Bounce - General, Permanent Bounce - Sub Type Trend, Permanent Bounce - Suppressed, Receipt Event Details, Receipt Events, Reporting MTA IP Location, Sending AccountId, Sending AWS Region, Sending Identity, Sending SourceIP, Successful Event Details, Successful Events, Successful Events Location, Top Bounced email Addresses, Top Bounced email Domains, Top Complaint email Addresses, Top Complaint email Domains, Top Complaint UserAgents, Top Delivered email destinations, Top Delivered email Domains, Top Error Codes, Top Reporting MTA, Top Source Generating Complaints, Top Users, Transient Bounce - Content Rejected, Transient Bounce - General, Transient Bounce - MailBox Full, Transient Bounce - Sub Type Trend, Transient Bounce - SubType Breakup, Undetermined Bounce - Sub Type Trend



## Parser:
```
| json "notificationType" nodrop | json "mail.source" as mailSource nodrop | json "mail.sourceIp" as mailSourceIP nodrop | json "mail.sendingAccountId" as mailSendingAccountId nodrop
 
```
### Use Cases:
Bounce Type Trend, Complaint Feedback Type Trend, Delivery Processing Time Outlier, Delivery Trend, Domain Event Details, Domain Events, Email Address Event Details, Email Address Events, Event Status, Event Status Trend, Events by User, Events Trend by Event Name, Failed Event Details, Failed Events, Failure Events Location, Get Send Event Details, Get Send Events, Identity Event Details, Identity Events, Mail Sending AccountId, Mail Source, Mail Source IP Locations, Notification Type Trend, Notification Types, Permanent Bounce - General, Permanent Bounce - Sub Type Trend, Permanent Bounce - Suppressed, Receipt Event Details, Receipt Events, Reporting MTA IP Location, Sending AccountId, Sending AWS Region, Sending Identity, Sending SourceIP, Successful Event Details, Successful Events, Successful Events Location, Top Bounced email Addresses, Top Bounced email Domains, Top Complaint email Addresses, Top Complaint email Domains, Top Complaint UserAgents, Top Delivered email destinations, Top Delivered email Domains, Top Error Codes, Top Reporting MTA, Top Source Generating Complaints, Top Users, Transient Bounce - Content Rejected, Transient Bounce - General, Transient Bounce - MailBox Full, Transient Bounce - Sub Type Trend, Transient Bounce - SubType Breakup, Undetermined Bounce - Sub Type Trend



## Parser:
```
| json "notificationType", "mail" nodrop
| json "complaint.complainedRecipients" as complainedRecipients nodrop
| json "complaint.complaintFeedbackType" as complaintFeedbackType nodrop
| parse regex field=complainedRecipients  "\"emailAddress\":\"(?<ComplaintemailAddress>[^\"]+)\"" multi
| parse field=ComplaintemailAddress "*@*" as name, domain
| json "complaint.userAgent" as userAgent nodrop
| json field=mail "sourceArn" nodrop | json field=mail "sendingAccountId" nodrop | json field=mail "sourceIp" nodrop | json field=mail "destination" nodrop | json field=mail "source" nodrop
| parse regex field=sourceArn "arn:aws:ses:(?<awsRegion>[^:]+):\d+:identity/(?<identity>.*)"
 
```
### Use Cases:
Bounce Type Trend, Complaint Feedback Type Trend, Domain Event Details, Domain Events, Email Address Event Details, Email Address Events, Event Status, Event Status Trend, Events by User, Events Trend by Event Name, Failed Event Details, Failed Events, Failure Events Location, Get Send Event Details, Get Send Events, Identity Event Details, Identity Events, Permanent Bounce - General, Permanent Bounce - Sub Type Trend, Permanent Bounce - Suppressed, Receipt Event Details, Receipt Events, Sending AccountId, Sending AWS Region, Sending Identity, Sending SourceIP, Successful Event Details, Successful Events, Successful Events Location, Top Bounced email Addresses, Top Bounced email Domains, Top Complaint email Addresses, Top Complaint email Domains, Top Complaint UserAgents, Top Error Codes, Top Source Generating Complaints, Top Users, Transient Bounce - Content Rejected, Transient Bounce - General, Transient Bounce - MailBox Full, Transient Bounce - Sub Type Trend, Transient Bounce - SubType Breakup, Undetermined Bounce - Sub Type Trend



## Parser:
```
| json "notificationType", "mail" nodrop 
| json "complaint.complainedRecipients" as complainedRecipients nodrop
| json "complaint.complaintFeedbackType" as complaintFeedbackType nodrop
| parse regex field=complainedRecipients  "\"emailAddress\":\"(?<ComplaintemailAddress>[^\"]+)\"" multi
| parse field=ComplaintemailAddress "*@*" as name, domain
| json "complaint.userAgent" as userAgent nodrop
| json field=mail "sourceArn" nodrop | json field=mail "sendingAccountId" nodrop | json field=mail "sourceIp" nodrop | json field=mail "destination" nodrop | json field=mail "source" nodrop
| parse regex field=sourceArn "arn:aws:ses:(?<awsRegion>[^:]+):\d+:identity/(?<identity>.*)"
 
```
### Use Cases:
Bounce Type Trend, Complaint Feedback Type Trend, Domain Event Details, Domain Events, Email Address Event Details, Email Address Events, Event Status, Event Status Trend, Events by User, Events Trend by Event Name, Failed Event Details, Failed Events, Failure Events Location, Get Send Event Details, Get Send Events, Identity Event Details, Identity Events, Permanent Bounce - General, Permanent Bounce - Sub Type Trend, Permanent Bounce - Suppressed, Receipt Event Details, Receipt Events, Successful Event Details, Successful Events, Successful Events Location, Top Bounced email Addresses, Top Bounced email Domains, Top Complaint email Addresses, Top Complaint email Domains, Top Complaint UserAgents, Top Error Codes, Top Users, Transient Bounce - Content Rejected, Transient Bounce - General, Transient Bounce - MailBox Full, Transient Bounce - Sub Type Trend, Transient Bounce - SubType Breakup, Undetermined Bounce - Sub Type Trend


