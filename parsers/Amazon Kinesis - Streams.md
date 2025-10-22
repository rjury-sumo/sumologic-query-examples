# Parsers For Amazon Kinesis - Streams

**Amazon Kinesis - Streams/Events/Errors in Events**
```
_sourceCategory={{Logsdatasource}}  "kinesis.amazonaws.com" errorCode
| json field=_raw "eventSource", "eventName", "awsRegion", "sourceIPAddress","userAgent" nodrop
| json field=_raw "requestParameters.streamName" as streamName nodrop
| json field=_raw "userIdentity.sessionContext.sessionIssuer.userName" as userName nodrop
| json field=_raw "userIdentity.userName" as userName nodrop
| json field=_raw "errorCode" as error_code nodrop
| json field=_raw "errorMessage" as error_msg nodrop
```

**Amazon Kinesis - Streams/Events/Events**
```
_sourceCategory={{Logsdatasource}}  "kinesis.amazonaws.com"
| json field=_raw "eventSource", "eventName", "awsRegion", "sourceIPAddress","userAgent" nodrop
| json field=_raw "requestParameters.streamName" as streamName nodrop
| json field=_raw "userIdentity.sessionContext.sessionIssuer.userName" as userName nodrop
| json field=_raw "userIdentity.userName" as userName nodrop
```

**Amazon Kinesis - Streams/Events/Events Over Time**
```
_sourceCategory={{Logsdatasource}}  "kinesis.amazonaws.com"
| json field=_raw "eventSource", "eventName", "awsRegion", "sourceIPAddress","userAgent" nodrop
| json field=_raw "requestParameters.streamName" as streamName nodrop
| json field=_raw "userIdentity.sessionContext.sessionIssuer.userName" as userName nodrop
```

**Amazon Kinesis - Streams/Events/Kinesis API Calls Events by Region**
```
_sourceCategory={{Logsdatasource}} "kinesis.amazonaws.com"
| json field=_raw "eventSource", "eventName", "awsRegion", "sourceIPAddress","userAgent" nodrop
| json field=_raw "requestParameters.streamName" as streamName nodrop
| json field=_raw "userIdentity.sessionContext.sessionIssuer.userName" as userName nodrop
| json field=_raw "userIdentity.userName" as userName nodrop
```

**Amazon Kinesis - Streams/Events/Kinesis API Calls Events by User**
```
_sourceCategory={{Logsdatasource}}  "kinesis.amazonaws.com"
| json field=_raw "eventSource", "eventName", "awsRegion", "sourceIPAddress","userAgent" nodrop
| json field=_raw "requestParameters.streamName" as streamName nodrop
| json field=_raw "userIdentity.sessionContext.sessionIssuer.userName" as userName nodrop
| json field=_raw "userIdentity.userName" as userName nodrop
```

**Amazon Kinesis - Streams/Events/Kinesis API Calls Summary Table**
```
_sourceCategory={{Logsdatasource}}  "kinesis.amazonaws.com"
| json field=_raw "eventSource", "eventName", "awsRegion", "sourceIPAddress","userAgent" nodrop
| json field=_raw "requestParameters.streamName" as streamName nodrop
| json field=_raw "userIdentity.sessionContext.sessionIssuer.userName" as userName nodrop
| json field=_raw "userIdentity.userName" as userName nodrop
```

**Amazon Kinesis - Streams/Events/Location of Events**
```
_sourceCategory={{Logsdatasource}}  "kinesis.amazonaws.com"
| json field=_raw "eventSource", "eventName", "awsRegion", "sourceIPAddress","userAgent" nodrop
| json field=_raw "requestParameters.streamName" as streamName nodrop
| json field=_raw "userIdentity.sessionContext.sessionIssuer.userName" as userName nodrop
```

**Amazon Kinesis - Streams/Events/Top 10 IAM Users**
```
_sourceCategory={{Logsdatasource}}  "kinesis.amazonaws.com" 
| json field=_raw "eventSource", "eventName", "awsRegion", "sourceIPAddress","userAgent" nodrop
| json field=_raw "requestParameters.streamName" as streamName nodrop
| json field=_raw "userIdentity.sessionContext.sessionIssuer.userName" as userName nodrop
| json field=_raw "userIdentity.userName" as userName nodrop
```


