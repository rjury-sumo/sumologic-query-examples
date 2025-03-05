# Parsers For Amazon Kinesis - Streams

## Parser:
```
| json field=_raw "eventSource", "eventName", "awsRegion", "sourceIPAddress","userAgent" nodrop
| json field=_raw "requestParameters.streamName" as streamName nodrop
| json field=_raw "userIdentity.sessionContext.sessionIssuer.userName" as userName nodrop
```
### Use Cases:
Events, Events Over Time, Location of Events, Top 10 IAM Users



## Parser:
```
| json field=_raw "eventSource", "eventName", "awsRegion", "sourceIPAddress","userAgent" nodrop
| json field=_raw "requestParameters.streamName" as streamName nodrop
| json field=_raw "userIdentity.sessionContext.sessionIssuer.userName" as userName nodrop
| json field=_raw "userIdentity.userName" as userName nodrop
```
### Use Cases:
Events, Events Over Time, Kinesis API Calls Events by Region, Kinesis API Calls Events by User, Kinesis API Calls Summary Table, Location of Events, Top 10 IAM Users



## Parser:
```
| json field=_raw "eventSource", "eventName", "awsRegion", "sourceIPAddress","userAgent" nodrop
| json field=_raw "requestParameters.streamName" as streamName nodrop
| json field=_raw "userIdentity.sessionContext.sessionIssuer.userName" as userName nodrop
| json field=_raw "userIdentity.userName" as userName nodrop
| json field=_raw "errorCode" as error_code nodrop
| json field=_raw "errorMessage" as error_msg nodrop
```
### Use Cases:
Errors in Events, Events, Events Over Time, Kinesis API Calls Events by Region, Kinesis API Calls Events by User, Kinesis API Calls Summary Table, Location of Events, Top 10 IAM Users


