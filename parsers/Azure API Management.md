# Parsers For Azure API Management

## Parser:
```
| JSON "category"
 
```
### Use Cases:
Average Duration, Backend Request Duration by Backend Method, Backend Request Duration by Backend Url, Backend Requests by Response Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Backend Requests, Failed Backend Requests by Backend Method, Failed Backend Requests by Backend Protocol, Failed Backend Requests by Backend Url, Failed Request Details, Failed Requests, Failed Requests by Method, Failed Requests by Protocol, Failed Requests by Response Category, Failed Requests by Url, Overall Duration Vs Backend Duration, Recent Delete Operations, Recent Write Operations, Request Duration by Method, Request Duration by Url, Requests by Backend Response Code, Requests by Location, Requests by Response Code, Requests by Result Type, Requests Summary by API, Success Requests vs Failed Requests, Successful Requests by Client Protocol, Successful Requests by Method, Top 10 APIs With Highest Backend Execution Duration (ms), Top 10 APIs With Highest Number of Requests, Top 10 Failed API Urls, Top 10 Operations That Caused The Most Errors, Top 3 Caller IPs With Failures by Resource, Top Backend Url by Request Size, Top Backend Urls with Response Size, Top Operations with Request Size, Top Operations with Response Size, Total Failed Requests, Total Recommendation Events, Total Requests by Method, Total Requests by Response Code, Total Success Requests, Users / Applications by Operation type, Websocket Connection Details, Websocket Connections by Event Name



## Parser:
```
| json "category", "callerIpAddress", "properties.apiId", "properties.url" as category, callerIpAddress, apiId, url
| extract field=callerIpAddress "(?<request_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
 
```
### Use Cases:
Average Duration, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Backend Requests, Failed Backend Requests by Backend Method, Failed Backend Requests by Backend Protocol, Failed Backend Requests by Backend Url, Failed Request Details, Failed Requests, Failed Requests by Method, Failed Requests by Protocol, Failed Requests by Response Category, Failed Requests by Url, Recent Delete Operations, Recent Write Operations, Requests by Backend Response Code, Requests by Location, Requests by Response Code, Success Requests vs Failed Requests, Top 10 Failed API Urls, Top 10 Operations That Caused The Most Errors, Top 3 Caller IPs With Failures by Resource, Top Operations with Response Size, Total Failed Requests, Total Requests by Method, Total Requests by Response Code, Total Success Requests, Users / Applications by Operation type



## Parser:
```
| json "category", "durationMs", "properties.apiId", "properties.url" as category, durationMs, apiId, url
 
```
### Use Cases:
Average Duration, Backend Request Duration by Backend Url, Backend Requests by Response Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Backend Requests, Failed Backend Requests by Backend Method, Failed Backend Requests by Backend Protocol, Failed Backend Requests by Backend Url, Failed Request Details, Failed Requests, Failed Requests by Method, Failed Requests by Protocol, Failed Requests by Response Category, Failed Requests by Url, Overall Duration Vs Backend Duration, Recent Delete Operations, Recent Write Operations, Request Duration by Method, Request Duration by Url, Requests by Backend Response Code, Requests by Location, Requests by Response Code, Requests Summary by API, Success Requests vs Failed Requests, Top 10 APIs With Highest Number of Requests, Top 10 Failed API Urls, Top 10 Operations That Caused The Most Errors, Top 3 Caller IPs With Failures by Resource, Top Backend Url by Request Size, Top Backend Urls with Response Size, Top Operations with Request Size, Top Operations with Response Size, Total Failed Requests, Total Requests by Method, Total Requests by Response Code, Total Success Requests, Users / Applications by Operation type, Websocket Connection Details, Websocket Connections by Event Name



## Parser:
```
| json "category", "durationMs", "properties.apimSubscriptionId", "properties.method", "properties.apiId", "properties.url" as category, durationMs, subscription, method, apiId, url
 
```
### Use Cases:
Average Duration, Backend Request Duration by Backend Method, Backend Request Duration by Backend Url, Backend Requests by Response Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Backend Requests, Failed Backend Requests by Backend Method, Failed Backend Requests by Backend Protocol, Failed Backend Requests by Backend Url, Failed Policy Events, Failed Request Details, Failed Requests, Failed Requests by Method, Failed Requests by Protocol, Failed Requests by Response Category, Failed Requests by Subscription, Failed Requests by Url, Overall Duration Vs Backend Duration, Recent Changes in Subscription, Recent Delete Operations, Recent Recommendation Events, Recent Write Operations, Request Duration by Method, Request Duration by Subscription, Request Duration by Url, Requests by Backend Response Code, Requests by Location, Requests by Response Code, Requests by Result Type, Requests by Subscription, Requests Summary by API, Success Requests vs Failed Requests, Successful Requests by Client Protocol, Successful Requests by Method, Top 10 APIs With Highest Backend Execution Duration (ms), Top 10 APIs With Highest Number of Requests, Top 10 Failed API Urls, Top 10 Failed Subscription, Top 10 Operations That Caused The Most Errors, Top 3 Caller IPs With Failures by Resource, Top Backend Url by Request Size, Top Backend Urls with Response Size, Top Operations with Request Size, Top Operations with Response Size, Total Failed Policy Events, Total Failed Requests, Total Recommendation Events, Total Requests by Method, Total Requests by Response Code, Total Success Policy Events, Total Success Requests, Users / Applications by Operation type, Websocket Connection Details, Websocket Connections by Event Name



## Parser:
```
| json "category", "durationMs", "properties.method", "properties.apiId", "properties.url" as category, durationMs, method, apiId, url
 
```
### Use Cases:
Average Duration, Backend Requests by Response Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Backend Requests, Failed Backend Requests by Backend Method, Failed Backend Requests by Backend Protocol, Failed Backend Requests by Backend Url, Failed Request Details, Failed Requests, Failed Requests by Method, Failed Requests by Protocol, Failed Requests by Response Category, Failed Requests by Url, Recent Delete Operations, Recent Write Operations, Request Duration by Method, Requests by Backend Response Code, Requests by Location, Requests by Response Code, Requests Summary by API, Success Requests vs Failed Requests, Top 10 Failed API Urls, Top 10 Operations That Caused The Most Errors, Top 3 Caller IPs With Failures by Resource, Top Backend Url by Request Size, Top Backend Urls with Response Size, Top Operations with Request Size, Top Operations with Response Size, Total Failed Requests, Total Requests by Method, Total Requests by Response Code, Total Success Requests, Users / Applications by Operation type, Websocket Connection Details, Websocket Connections by Event Name



## Parser:
```
| json "category", "isRequestSuccess", "properties.apiId", "durationMs", "properties.requestSize", "properties.responseSize", "properties.url", "properties.userId" as category, isRequestSuccess, apiId, durationMs, requestSize, responseSize, url, userId
 
```
### Use Cases:
Average Duration, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Backend Requests, Failed Backend Requests by Backend Method, Failed Backend Requests by Backend Protocol, Failed Backend Requests by Backend Url, Failed Request Details, Failed Requests, Failed Requests by Method, Failed Requests by Protocol, Failed Requests by Response Category, Failed Requests by Url, Recent Delete Operations, Recent Write Operations, Requests by Backend Response Code, Requests by Location, Requests by Response Code, Requests Summary by API, Success Requests vs Failed Requests, Top 10 Failed API Urls, Top 10 Operations That Caused The Most Errors, Top 3 Caller IPs With Failures by Resource, Top Operations with Response Size, Total Failed Requests, Total Requests by Method, Total Requests by Response Code, Total Success Requests, Users / Applications by Operation type, Websocket Connections by Event Name



## Parser:
```
| json "category", "isRequestSuccess", "properties.apiId", "properties.url" as category, isRequestSuccess , apiId, url
 
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Request Details, Failed Requests, Failed Requests by Method, Failed Requests by Response Category, Failed Requests by Url, Recent Delete Operations, Recent Write Operations, Requests by Backend Response Code, Requests by Response Code, Success Requests vs Failed Requests, Top 10 Operations That Caused The Most Errors, Top 3 Caller IPs With Failures by Resource, Total Failed Requests, Total Success Requests, Users / Applications by Operation type



## Parser:
```
| json "category", "isRequestSuccess", "properties.apiId", "properties.url" as category, isRequestSuccess, apiId, url
 
```
### Use Cases:
Average Duration, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Backend Requests, Failed Backend Requests by Backend Method, Failed Backend Requests by Backend Protocol, Failed Backend Requests by Backend Url, Failed Request Details, Failed Requests, Failed Requests by Method, Failed Requests by Protocol, Failed Requests by Response Category, Failed Requests by Url, Recent Delete Operations, Recent Write Operations, Requests by Backend Response Code, Requests by Response Code, Success Requests vs Failed Requests, Top 10 Failed API Urls, Top 10 Operations That Caused The Most Errors, Top 3 Caller IPs With Failures by Resource, Top Operations with Response Size, Total Failed Requests, Total Requests by Method, Total Requests by Response Code, Total Success Requests, Users / Applications by Operation type



## Parser:
```
| json "category", "isRequestSuccess", "properties.apiId", "properties.url", "callerIpAddress" as category, isRequestSuccess, apiId, url, callerIpAddress
 
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Request Details, Failed Requests by Method, Failed Requests by Response Category, Recent Delete Operations, Recent Write Operations, Requests by Backend Response Code, Requests by Response Code, Success Requests vs Failed Requests, Top 10 Operations That Caused The Most Errors, Top 3 Caller IPs With Failures by Resource, Total Failed Requests, Total Success Requests, Users / Applications by Operation type



## Parser:
```
| json "category", "isRequestSuccess", "properties.backendResponseCode", "properties.apiId", "properties.url" as category, isRequestSuccess, backendResponseCode, apiId, url
 
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Backend Requests, Failed Request Details, Failed Requests, Failed Requests by Method, Failed Requests by Response Category, Failed Requests by Url, Recent Delete Operations, Recent Write Operations, Requests by Backend Response Code, Requests by Response Code, Success Requests vs Failed Requests, Top 10 Operations That Caused The Most Errors, Top 3 Caller IPs With Failures by Resource, Total Failed Requests, Total Success Requests, Users / Applications by Operation type



## Parser:
```
| json "category", "isRequestSuccess", "properties.backendResponseCode", "properties.url", "properties.apiId" as category, isRequestSuccess, backendResponseCode, url, apiId
 
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Backend Requests, Failed Request Details, Failed Requests, Failed Requests by Method, Failed Requests by Response Category, Failed Requests by Url, Recent Delete Operations, Recent Write Operations, Requests by Backend Response Code, Requests by Response Code, Success Requests vs Failed Requests, Top 10 Failed API Urls, Top 10 Operations That Caused The Most Errors, Top 3 Caller IPs With Failures by Resource, Total Failed Requests, Total Success Requests, Users / Applications by Operation type



## Parser:
```
| json "category", "operationName", "identity.claims.idtyp", "identity.claims.name" as category, operationName, idtyp, name
| parse field=operationName "MICROSOFT.APIMANAGEMENT/SERVICE/SUBSCRIPTIONS/*/*" as operation_name, action
 
```
### Use Cases:
Average Duration, Backend Request Duration by Backend Method, Backend Request Duration by Backend Url, Backend Requests by Response Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Backend Requests, Failed Backend Requests by Backend Method, Failed Backend Requests by Backend Protocol, Failed Backend Requests by Backend Url, Failed Policy Events, Failed Request Details, Failed Requests, Failed Requests by Method, Failed Requests by Protocol, Failed Requests by Response Category, Failed Requests by Subscription, Failed Requests by Url, Overall Duration Vs Backend Duration, Recent Changes in Subscription, Recent Delete Operations, Recent Recommendation Events, Recent Write Operations, Request Duration by Method, Request Duration by Url, Requests by Backend Response Code, Requests by Location, Requests by Response Code, Requests by Result Type, Requests by Subscription, Requests Summary by API, Success Requests vs Failed Requests, Successful Requests by Client Protocol, Successful Requests by Method, Top 10 APIs With Highest Backend Execution Duration (ms), Top 10 APIs With Highest Number of Requests, Top 10 Failed API Urls, Top 10 Operations That Caused The Most Errors, Top 3 Caller IPs With Failures by Resource, Top Backend Url by Request Size, Top Backend Urls with Response Size, Top Operations with Request Size, Top Operations with Response Size, Total Failed Policy Events, Total Failed Requests, Total Recommendation Events, Total Requests by Method, Total Requests by Response Code, Total Success Policy Events, Total Success Requests, Users / Applications by Operation type, Websocket Connection Details, Websocket Connections by Event Name



## Parser:
```
| JSON "category", "operationName", "resultType", "properties.recommendationName", "properties.recommendationCategory", "properties.recommendationImpact", "properties.recommendationResourceLink" as category, operationName, resultType, recommendationName, recommendationCategory, recommendationImpact, recommendationResourceLink 
| parse field=operationName "*/*/*/*" as provider, category, operation_name, action nodrop
 
```
### Use Cases:
Average Duration, Backend Request Duration by Backend Method, Backend Request Duration by Backend Url, Backend Requests by Response Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Backend Requests, Failed Backend Requests by Backend Method, Failed Backend Requests by Backend Protocol, Failed Backend Requests by Backend Url, Failed Policy Events, Failed Request Details, Failed Requests, Failed Requests by Method, Failed Requests by Protocol, Failed Requests by Response Category, Failed Requests by Url, Overall Duration Vs Backend Duration, Recent Delete Operations, Recent Recommendation Events, Recent Write Operations, Request Duration by Method, Request Duration by Url, Requests by Backend Response Code, Requests by Location, Requests by Response Code, Requests by Result Type, Requests Summary by API, Success Requests vs Failed Requests, Successful Requests by Client Protocol, Successful Requests by Method, Top 10 APIs With Highest Backend Execution Duration (ms), Top 10 APIs With Highest Number of Requests, Top 10 Failed API Urls, Top 10 Operations That Caused The Most Errors, Top 3 Caller IPs With Failures by Resource, Top Backend Url by Request Size, Top Backend Urls with Response Size, Top Operations with Request Size, Top Operations with Response Size, Total Failed Policy Events, Total Failed Requests, Total Recommendation Events, Total Requests by Method, Total Requests by Response Code, Total Success Policy Events, Total Success Requests, Users / Applications by Operation type, Websocket Connection Details, Websocket Connections by Event Name



## Parser:
```
| json "category", "properties.apiId", "properties.operationId", "properties.backendUrl", "properties.requestSize", "properties.url" as category, apiId, operationId, backendUrl, requestSize, url
 
```
### Use Cases:
Average Duration, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Backend Requests, Failed Backend Requests by Backend Method, Failed Backend Requests by Backend Protocol, Failed Backend Requests by Backend Url, Failed Request Details, Failed Requests, Failed Requests by Method, Failed Requests by Protocol, Failed Requests by Response Category, Failed Requests by Url, Recent Delete Operations, Recent Write Operations, Requests by Backend Response Code, Requests by Location, Requests by Response Code, Requests Summary by API, Success Requests vs Failed Requests, Top 10 Failed API Urls, Top 10 Operations That Caused The Most Errors, Top 3 Caller IPs With Failures by Resource, Top Backend Url by Request Size, Top Operations with Response Size, Total Failed Requests, Total Requests by Method, Total Requests by Response Code, Total Success Requests, Users / Applications by Operation type, Websocket Connections by Event Name



## Parser:
```
| json "category", "properties.apiId", "properties.operationId", "properties.backendUrl", "properties.responseSize", "properties.url" as category, apiId, operationId, backendUrl, responseSize, url
 
```
### Use Cases:
Average Duration, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Backend Requests, Failed Backend Requests by Backend Method, Failed Backend Requests by Backend Protocol, Failed Backend Requests by Backend Url, Failed Request Details, Failed Requests, Failed Requests by Method, Failed Requests by Protocol, Failed Requests by Response Category, Failed Requests by Url, Recent Delete Operations, Recent Write Operations, Requests by Backend Response Code, Requests by Location, Requests by Response Code, Requests Summary by API, Success Requests vs Failed Requests, Top 10 Failed API Urls, Top 10 Operations That Caused The Most Errors, Top 3 Caller IPs With Failures by Resource, Top Backend Url by Request Size, Top Backend Urls with Response Size, Top Operations with Request Size, Top Operations with Response Size, Total Failed Requests, Total Requests by Method, Total Requests by Response Code, Total Success Requests, Users / Applications by Operation type, Websocket Connections by Event Name



## Parser:
```
| json "category", "properties.apiId", "properties.operationId", "properties.requestSize", "properties.url" as category, apiId, operationId, requestSize, url
 
```
### Use Cases:
Average Duration, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Backend Requests, Failed Backend Requests by Backend Method, Failed Backend Requests by Backend Protocol, Failed Backend Requests by Backend Url, Failed Request Details, Failed Requests, Failed Requests by Method, Failed Requests by Protocol, Failed Requests by Response Category, Failed Requests by Url, Recent Delete Operations, Recent Write Operations, Requests by Backend Response Code, Requests by Location, Requests by Response Code, Requests Summary by API, Success Requests vs Failed Requests, Top 10 Failed API Urls, Top 10 Operations That Caused The Most Errors, Top 3 Caller IPs With Failures by Resource, Top Backend Url by Request Size, Top Operations with Request Size, Top Operations with Response Size, Total Failed Requests, Total Requests by Method, Total Requests by Response Code, Total Success Requests, Users / Applications by Operation type, Websocket Connections by Event Name



## Parser:
```
| json "category", "properties.apiId", "properties.operationId", "properties.responseSize", "properties.url" as category, apiId, operationId, responseSize, url
 
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Backend Requests, Failed Backend Requests by Backend Method, Failed Backend Requests by Backend Protocol, Failed Backend Requests by Backend Url, Failed Request Details, Failed Requests, Failed Requests by Method, Failed Requests by Protocol, Failed Requests by Response Category, Failed Requests by Url, Recent Delete Operations, Recent Write Operations, Requests by Backend Response Code, Requests by Response Code, Success Requests vs Failed Requests, Top 10 Failed API Urls, Top 10 Operations That Caused The Most Errors, Top 3 Caller IPs With Failures by Resource, Top Operations with Response Size, Total Failed Requests, Total Requests by Method, Total Success Requests, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.backendMethod", "isRequestSuccess", "properties.apiId", "properties.url" as category, backendMethod, isRequestSuccess , apiId, url
 
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Backend Requests, Failed Backend Requests by Backend Method, Failed Backend Requests by Backend Protocol, Failed Request Details, Failed Requests, Failed Requests by Method, Failed Requests by Protocol, Failed Requests by Response Category, Failed Requests by Url, Recent Delete Operations, Recent Write Operations, Requests by Backend Response Code, Requests by Response Code, Success Requests vs Failed Requests, Top 10 Failed API Urls, Top 10 Operations That Caused The Most Errors, Top 3 Caller IPs With Failures by Resource, Total Failed Requests, Total Success Requests, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.backendProtocol", "isRequestSuccess", "properties.apiId", "properties.url" as category, backendProtocol, isRequestSuccess, apiId, url
 
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Backend Requests, Failed Backend Requests by Backend Protocol, Failed Request Details, Failed Requests, Failed Requests by Method, Failed Requests by Response Category, Failed Requests by Url, Recent Delete Operations, Recent Write Operations, Requests by Backend Response Code, Requests by Response Code, Success Requests vs Failed Requests, Top 10 Failed API Urls, Top 10 Operations That Caused The Most Errors, Top 3 Caller IPs With Failures by Resource, Total Failed Requests, Total Success Requests, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.backendResponseCode", "properties.apiId", "properties.url" as category, backendResponseCode, apiId, url
 
```
### Use Cases:
Average Duration, Backend Requests by Response Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Backend Requests, Failed Backend Requests by Backend Method, Failed Backend Requests by Backend Protocol, Failed Backend Requests by Backend Url, Failed Request Details, Failed Requests, Failed Requests by Method, Failed Requests by Protocol, Failed Requests by Response Category, Failed Requests by Url, Recent Delete Operations, Recent Write Operations, Requests by Backend Response Code, Requests by Location, Requests by Response Code, Requests Summary by API, Success Requests vs Failed Requests, Top 10 Failed API Urls, Top 10 Operations That Caused The Most Errors, Top 3 Caller IPs With Failures by Resource, Top Backend Url by Request Size, Top Backend Urls with Response Size, Top Operations with Request Size, Top Operations with Response Size, Total Failed Requests, Total Requests by Method, Total Requests by Response Code, Total Success Requests, Users / Applications by Operation type, Websocket Connection Details, Websocket Connections by Event Name



## Parser:
```
| json "category", "properties.backendTime", "properties.apiId", "properties.url" as category, backendTime, apiId, url
 
```
### Use Cases:
Average Duration, Backend Request Duration by Backend Url, Backend Requests by Response Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Backend Requests, Failed Backend Requests by Backend Method, Failed Backend Requests by Backend Protocol, Failed Backend Requests by Backend Url, Failed Request Details, Failed Requests, Failed Requests by Method, Failed Requests by Protocol, Failed Requests by Response Category, Failed Requests by Url, Overall Duration Vs Backend Duration, Recent Delete Operations, Recent Write Operations, Request Duration by Method, Request Duration by Url, Requests by Backend Response Code, Requests by Location, Requests by Response Code, Requests by Result Type, Requests Summary by API, Success Requests vs Failed Requests, Top 10 APIs With Highest Backend Execution Duration (ms), Top 10 APIs With Highest Number of Requests, Top 10 Failed API Urls, Top 10 Operations That Caused The Most Errors, Top 3 Caller IPs With Failures by Resource, Top Backend Url by Request Size, Top Backend Urls with Response Size, Top Operations with Request Size, Top Operations with Response Size, Total Failed Requests, Total Requests by Method, Total Requests by Response Code, Total Success Requests, Users / Applications by Operation type, Websocket Connection Details, Websocket Connections by Event Name



## Parser:
```
| json "category", "properties.backendTime", "properties.backendMethod", "properties.apiId", "properties.url" as category, backendTime, backendMethod, apiId, url
 
```
### Use Cases:
Average Duration, Backend Request Duration by Backend Method, Backend Request Duration by Backend Url, Backend Requests by Response Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Backend Requests, Failed Backend Requests by Backend Method, Failed Backend Requests by Backend Protocol, Failed Backend Requests by Backend Url, Failed Request Details, Failed Requests, Failed Requests by Method, Failed Requests by Protocol, Failed Requests by Response Category, Failed Requests by Url, Overall Duration Vs Backend Duration, Recent Delete Operations, Recent Write Operations, Request Duration by Method, Request Duration by Url, Requests by Backend Response Code, Requests by Location, Requests by Response Code, Requests by Result Type, Requests Summary by API, Success Requests vs Failed Requests, Top 10 APIs With Highest Backend Execution Duration (ms), Top 10 APIs With Highest Number of Requests, Top 10 Failed API Urls, Top 10 Operations That Caused The Most Errors, Top 3 Caller IPs With Failures by Resource, Top Backend Url by Request Size, Top Backend Urls with Response Size, Top Operations with Request Size, Top Operations with Response Size, Total Failed Requests, Total Requests by Method, Total Requests by Response Code, Total Success Requests, Users / Applications by Operation type, Websocket Connection Details, Websocket Connections by Event Name



## Parser:
```
| json "category", "properties.backendTime", "properties.backendUrl", "properties.apiId", "properties.url" as category, backendTime, backendUrl, apiId, url
 
```
### Use Cases:
Average Duration, Backend Request Duration by Backend Url, Backend Requests by Response Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Backend Requests, Failed Backend Requests by Backend Method, Failed Backend Requests by Backend Protocol, Failed Backend Requests by Backend Url, Failed Request Details, Failed Requests, Failed Requests by Method, Failed Requests by Protocol, Failed Requests by Response Category, Failed Requests by Url, Recent Delete Operations, Recent Write Operations, Request Duration by Method, Requests by Backend Response Code, Requests by Location, Requests by Response Code, Requests Summary by API, Success Requests vs Failed Requests, Top 10 Failed API Urls, Top 10 Operations That Caused The Most Errors, Top 3 Caller IPs With Failures by Resource, Top Backend Url by Request Size, Top Backend Urls with Response Size, Top Operations with Request Size, Top Operations with Response Size, Total Failed Requests, Total Requests by Method, Total Requests by Response Code, Total Success Requests, Users / Applications by Operation type, Websocket Connection Details, Websocket Connections by Event Name



## Parser:
```
| json "category", "properties.backendUrl", "isRequestSuccess", "properties.apiId", "properties.url" as category, backendUrl, isRequestSuccess, apiId, url
 
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Backend Requests, Failed Backend Requests by Backend Method, Failed Backend Requests by Backend Protocol, Failed Backend Requests by Backend Url, Failed Request Details, Failed Requests, Failed Requests by Method, Failed Requests by Protocol, Failed Requests by Response Category, Failed Requests by Url, Recent Delete Operations, Recent Write Operations, Requests by Backend Response Code, Requests by Response Code, Success Requests vs Failed Requests, Top 10 Failed API Urls, Top 10 Operations That Caused The Most Errors, Top 3 Caller IPs With Failures by Resource, Total Failed Requests, Total Success Requests, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.clientProtocol", "isRequestSuccess", "properties.apiId", "properties.url" as category, clientProtocol, isRequestSuccess , apiId, url
 
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Backend Requests, Failed Backend Requests by Backend Protocol, Failed Request Details, Failed Requests, Failed Requests by Method, Failed Requests by Protocol, Failed Requests by Response Category, Failed Requests by Url, Recent Delete Operations, Recent Write Operations, Requests by Backend Response Code, Requests by Response Code, Success Requests vs Failed Requests, Top 10 Failed API Urls, Top 10 Operations That Caused The Most Errors, Top 3 Caller IPs With Failures by Resource, Total Failed Requests, Total Success Requests, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.clientProtocol", "isRequestSuccess", "properties.apiId", "properties.url" as category, clientProtocol, isRequestSuccess, apiId, url
 
```
### Use Cases:
Average Duration, Backend Request Duration by Backend Method, Backend Request Duration by Backend Url, Backend Requests by Response Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Backend Requests, Failed Backend Requests by Backend Method, Failed Backend Requests by Backend Protocol, Failed Backend Requests by Backend Url, Failed Request Details, Failed Requests, Failed Requests by Method, Failed Requests by Protocol, Failed Requests by Response Category, Failed Requests by Url, Overall Duration Vs Backend Duration, Recent Delete Operations, Recent Write Operations, Request Duration by Method, Request Duration by Url, Requests by Backend Response Code, Requests by Location, Requests by Response Code, Requests by Result Type, Requests Summary by API, Success Requests vs Failed Requests, Successful Requests by Client Protocol, Top 10 APIs With Highest Backend Execution Duration (ms), Top 10 APIs With Highest Number of Requests, Top 10 Failed API Urls, Top 10 Operations That Caused The Most Errors, Top 3 Caller IPs With Failures by Resource, Top Backend Url by Request Size, Top Backend Urls with Response Size, Top Operations with Request Size, Top Operations with Response Size, Total Failed Requests, Total Requests by Method, Total Requests by Response Code, Total Success Requests, Users / Applications by Operation type, Websocket Connection Details, Websocket Connections by Event Name



## Parser:
```
| json "category", "properties.eventName" as category, eventName
 
```
### Use Cases:
Average Duration, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Backend Requests, Failed Backend Requests by Backend Method, Failed Backend Requests by Backend Protocol, Failed Backend Requests by Backend Url, Failed Request Details, Failed Requests, Failed Requests by Method, Failed Requests by Protocol, Failed Requests by Response Category, Failed Requests by Url, Recent Delete Operations, Recent Write Operations, Requests by Backend Response Code, Requests by Location, Requests by Response Code, Success Requests vs Failed Requests, Top 10 Failed API Urls, Top 10 Operations That Caused The Most Errors, Top 3 Caller IPs With Failures by Resource, Top Operations with Response Size, Total Failed Requests, Total Requests by Method, Total Requests by Response Code, Total Success Requests, Users / Applications by Operation type, Websocket Connections by Event Name



## Parser:
```
| json "category", "properties.method", "isRequestSuccess", "properties.apiId", "properties.url" as category, method, isRequestSuccess , apiId, url
 
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Backend Requests, Failed Backend Requests by Backend Method, Failed Backend Requests by Backend Protocol, Failed Request Details, Failed Requests, Failed Requests by Method, Failed Requests by Protocol, Failed Requests by Response Category, Failed Requests by Url, Recent Delete Operations, Recent Write Operations, Requests by Backend Response Code, Requests by Response Code, Success Requests vs Failed Requests, Top 10 Failed API Urls, Top 10 Operations That Caused The Most Errors, Top 3 Caller IPs With Failures by Resource, Total Failed Requests, Total Success Requests, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.method", "isRequestSuccess", "properties.apiId", "properties.url" as category, method, isRequestSuccess, apiId, url
 
```
### Use Cases:
Average Duration, Backend Request Duration by Backend Method, Backend Request Duration by Backend Url, Backend Requests by Response Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Backend Requests, Failed Backend Requests by Backend Method, Failed Backend Requests by Backend Protocol, Failed Backend Requests by Backend Url, Failed Request Details, Failed Requests, Failed Requests by Method, Failed Requests by Protocol, Failed Requests by Response Category, Failed Requests by Url, Overall Duration Vs Backend Duration, Recent Delete Operations, Recent Write Operations, Request Duration by Method, Request Duration by Url, Requests by Backend Response Code, Requests by Location, Requests by Response Code, Requests by Result Type, Requests Summary by API, Success Requests vs Failed Requests, Successful Requests by Client Protocol, Successful Requests by Method, Top 10 APIs With Highest Backend Execution Duration (ms), Top 10 APIs With Highest Number of Requests, Top 10 Failed API Urls, Top 10 Operations That Caused The Most Errors, Top 3 Caller IPs With Failures by Resource, Top Backend Url by Request Size, Top Backend Urls with Response Size, Top Operations with Request Size, Top Operations with Response Size, Total Failed Requests, Total Requests by Method, Total Requests by Response Code, Total Success Requests, Users / Applications by Operation type, Websocket Connection Details, Websocket Connections by Event Name



## Parser:
```
| json "category", "properties.method", "properties.apiId", "properties.url" as category, method, apiId, url
 
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Backend Requests, Failed Backend Requests by Backend Method, Failed Backend Requests by Backend Protocol, Failed Backend Requests by Backend Url, Failed Request Details, Failed Requests, Failed Requests by Method, Failed Requests by Protocol, Failed Requests by Response Category, Failed Requests by Url, Recent Delete Operations, Recent Write Operations, Requests by Backend Response Code, Requests by Response Code, Success Requests vs Failed Requests, Top 10 Failed API Urls, Top 10 Operations That Caused The Most Errors, Top 3 Caller IPs With Failures by Resource, Total Failed Requests, Total Requests by Method, Total Success Requests, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.requestMethod" as category, requestMethod
 
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Requests by Method, Failed Requests by Response Category, Recent Delete Operations, Recent Write Operations, Top 10 Operations That Caused The Most Errors, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.requestPath", "properties.serviceName", "resultType","properties.responseCode", "properties.requestMethod" as category, requestPath, serviceName, resultType, responseCode, requestMethod
 
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Request Details, Failed Requests by Method, Failed Requests by Response Category, Recent Delete Operations, Recent Write Operations, Requests by Response Code, Success Requests vs Failed Requests, Top 10 Operations That Caused The Most Errors, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.responseCode" as category, responseCode
 
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Requests by Method, Failed Requests by Response Category, Recent Delete Operations, Recent Write Operations, Requests by Response Code, Success Requests vs Failed Requests, Top 10 Operations That Caused The Most Errors, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.responseCode", "properties.apiId", "properties.url" as category, responseCode, apiId, url
 
```
### Use Cases:
Average Duration, Backend Request Duration by Backend Url, Backend Requests by Response Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Backend Requests, Failed Backend Requests by Backend Method, Failed Backend Requests by Backend Protocol, Failed Backend Requests by Backend Url, Failed Request Details, Failed Requests, Failed Requests by Method, Failed Requests by Protocol, Failed Requests by Response Category, Failed Requests by Url, Overall Duration Vs Backend Duration, Recent Delete Operations, Recent Write Operations, Request Duration by Method, Requests by Backend Response Code, Requests by Location, Requests by Response Code, Requests Summary by API, Success Requests vs Failed Requests, Top 10 APIs With Highest Number of Requests, Top 10 Failed API Urls, Top 10 Operations That Caused The Most Errors, Top 3 Caller IPs With Failures by Resource, Top Backend Url by Request Size, Top Backend Urls with Response Size, Top Operations with Request Size, Top Operations with Response Size, Total Failed Requests, Total Requests by Method, Total Requests by Response Code, Total Success Requests, Users / Applications by Operation type, Websocket Connection Details, Websocket Connections by Event Name



## Parser:
```
| json "category", "properties.responseCode", "properties.apiId", "properties.url", "properties.backendUrl", "properties.backendResponseCode", "properties.method", "properties.userId" as category, responseCode, apiId, url, backendUrl,backendResponseCode, method, userId nodrop
 
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Backend Requests, Failed Request Details, Failed Requests, Failed Requests by Method, Failed Requests by Response Category, Failed Requests by Url, Recent Delete Operations, Recent Write Operations, Requests by Backend Response Code, Requests by Response Code, Success Requests vs Failed Requests, Top 10 Operations That Caused The Most Errors, Top 3 Caller IPs With Failures by Resource, Total Failed Requests, Total Success Requests, Users / Applications by Operation type



## Parser:
```
| json "category", "properties.source", "properties.destination", "properties.eventName" as category, source, destination, eventName
 
```
### Use Cases:
Average Duration, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Backend Requests, Failed Backend Requests by Backend Method, Failed Backend Requests by Backend Protocol, Failed Backend Requests by Backend Url, Failed Request Details, Failed Requests, Failed Requests by Method, Failed Requests by Protocol, Failed Requests by Response Category, Failed Requests by Url, Recent Delete Operations, Recent Write Operations, Requests by Backend Response Code, Requests by Location, Requests by Response Code, Requests Summary by API, Success Requests vs Failed Requests, Top 10 Failed API Urls, Top 10 Operations That Caused The Most Errors, Top 3 Caller IPs With Failures by Resource, Top Backend Url by Request Size, Top Backend Urls with Response Size, Top Operations with Request Size, Top Operations with Response Size, Total Failed Requests, Total Requests by Method, Total Requests by Response Code, Total Success Requests, Users / Applications by Operation type, Websocket Connection Details, Websocket Connections by Event Name



## Parser:
```
| JSON "category", "resultType" as category, resultType
 
```
### Use Cases:
Average Duration, Backend Request Duration by Backend Method, Backend Request Duration by Backend Url, Backend Requests by Response Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Backend Requests, Failed Backend Requests by Backend Method, Failed Backend Requests by Backend Protocol, Failed Backend Requests by Backend Url, Failed Policy Events, Failed Request Details, Failed Requests, Failed Requests by Method, Failed Requests by Protocol, Failed Requests by Response Category, Failed Requests by Url, Overall Duration Vs Backend Duration, Recent Delete Operations, Recent Recommendation Events, Recent Write Operations, Request Duration by Method, Request Duration by Url, Requests by Backend Response Code, Requests by Location, Requests by Response Code, Requests by Result Type, Requests Summary by API, Success Requests vs Failed Requests, Successful Requests by Client Protocol, Successful Requests by Method, Top 10 APIs With Highest Backend Execution Duration (ms), Top 10 APIs With Highest Number of Requests, Top 10 Failed API Urls, Top 10 Operations That Caused The Most Errors, Top 3 Caller IPs With Failures by Resource, Top Backend Url by Request Size, Top Backend Urls with Response Size, Top Operations with Request Size, Top Operations with Response Size, Total Failed Policy Events, Total Failed Requests, Total Recommendation Events, Total Requests by Method, Total Requests by Response Code, Total Success Policy Events, Total Success Requests, Users / Applications by Operation type, Websocket Connection Details, Websocket Connections by Event Name



## Parser:
```
| json "category", "resultType" as category, resultType
 
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Request Details, Failed Requests by Method, Failed Requests by Response Category, Recent Delete Operations, Recent Write Operations, Requests by Response Code, Success Requests vs Failed Requests, Top 10 Operations That Caused The Most Errors, Total Failed Requests, Total Success Requests, Users / Applications by Operation type



## Parser:
```
| json "category", "resultType", "properties.apiId", "properties.url" as category, resultType, apiId, url
 
```
### Use Cases:
Average Duration, Backend Request Duration by Backend Url, Backend Requests by Response Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Backend Requests, Failed Backend Requests by Backend Method, Failed Backend Requests by Backend Protocol, Failed Backend Requests by Backend Url, Failed Request Details, Failed Requests, Failed Requests by Method, Failed Requests by Protocol, Failed Requests by Response Category, Failed Requests by Url, Overall Duration Vs Backend Duration, Recent Delete Operations, Recent Write Operations, Request Duration by Method, Request Duration by Url, Requests by Backend Response Code, Requests by Location, Requests by Response Code, Requests by Result Type, Requests Summary by API, Success Requests vs Failed Requests, Top 10 APIs With Highest Number of Requests, Top 10 Failed API Urls, Top 10 Operations That Caused The Most Errors, Top 3 Caller IPs With Failures by Resource, Top Backend Url by Request Size, Top Backend Urls with Response Size, Top Operations with Request Size, Top Operations with Response Size, Total Failed Requests, Total Requests by Method, Total Requests by Response Code, Total Success Requests, Users / Applications by Operation type, Websocket Connection Details, Websocket Connections by Event Name



## Parser:
```
| JSON "category", "resultType", "properties.message", "properties.resourceLocation", "properties.entity", "properties.policies" as category, resultType, message, resourceLocation, entity, policies
 
```
### Use Cases:
Average Duration, Backend Request Duration by Backend Method, Backend Request Duration by Backend Url, Backend Requests by Response Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Backend Requests, Failed Backend Requests by Backend Method, Failed Backend Requests by Backend Protocol, Failed Backend Requests by Backend Url, Failed Policy Events, Failed Request Details, Failed Requests, Failed Requests by Method, Failed Requests by Protocol, Failed Requests by Response Category, Failed Requests by Url, Overall Duration Vs Backend Duration, Recent Delete Operations, Recent Write Operations, Request Duration by Method, Request Duration by Url, Requests by Backend Response Code, Requests by Location, Requests by Response Code, Requests by Result Type, Requests Summary by API, Success Requests vs Failed Requests, Successful Requests by Client Protocol, Successful Requests by Method, Top 10 APIs With Highest Backend Execution Duration (ms), Top 10 APIs With Highest Number of Requests, Top 10 Failed API Urls, Top 10 Operations That Caused The Most Errors, Top 3 Caller IPs With Failures by Resource, Top Backend Url by Request Size, Top Backend Urls with Response Size, Top Operations with Request Size, Top Operations with Response Size, Total Failed Policy Events, Total Failed Requests, Total Recommendation Events, Total Requests by Method, Total Requests by Response Code, Total Success Policy Events, Total Success Requests, Users / Applications by Operation type, Websocket Connection Details, Websocket Connections by Event Name



## Parser:
```
| JSON "category", "resultType", "properties.message", "properties.resourceLocation", "properties.entity", "properties.policies" as category, resultType, message, resourceLocation, entity, policies
| parse field=entity "/subscriptions/*/resourceGroups/*/providers/*/*/*" as subscription_id, resource_group, providers, virtualMachineScaleSets, aks nodrop
 
```
### Use Cases:
Average Duration, Backend Request Duration by Backend Method, Backend Request Duration by Backend Url, Backend Requests by Response Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Backend Requests, Failed Backend Requests by Backend Method, Failed Backend Requests by Backend Protocol, Failed Backend Requests by Backend Url, Failed Request Details, Failed Requests, Failed Requests by Method, Failed Requests by Protocol, Failed Requests by Response Category, Failed Requests by Url, Overall Duration Vs Backend Duration, Recent Delete Operations, Recent Write Operations, Request Duration by Method, Request Duration by Url, Requests by Backend Response Code, Requests by Location, Requests by Response Code, Requests by Result Type, Requests Summary by API, Success Requests vs Failed Requests, Successful Requests by Client Protocol, Successful Requests by Method, Top 10 APIs With Highest Backend Execution Duration (ms), Top 10 APIs With Highest Number of Requests, Top 10 Failed API Urls, Top 10 Operations That Caused The Most Errors, Top 3 Caller IPs With Failures by Resource, Top Backend Url by Request Size, Top Backend Urls with Response Size, Top Operations with Request Size, Top Operations with Response Size, Total Failed Requests, Total Recommendation Events, Total Requests by Method, Total Requests by Response Code, Total Success Policy Events, Total Success Requests, Users / Applications by Operation type, Websocket Connection Details, Websocket Connections by Event Name



## Parser:
```
| json "category","properties.apimSubscriptionId", "properties.apiId", "properties.url" as category, apimSubscriptionId, apiId, url
 
```
### Use Cases:
Average Duration, Backend Request Duration by Backend Method, Backend Request Duration by Backend Url, Backend Requests by Response Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Backend Requests, Failed Backend Requests by Backend Method, Failed Backend Requests by Backend Protocol, Failed Backend Requests by Backend Url, Failed Policy Events, Failed Request Details, Failed Requests, Failed Requests by Method, Failed Requests by Protocol, Failed Requests by Response Category, Failed Requests by Subscription, Failed Requests by Url, Overall Duration Vs Backend Duration, Recent Delete Operations, Recent Recommendation Events, Recent Write Operations, Request Duration by Method, Request Duration by Url, Requests by Backend Response Code, Requests by Location, Requests by Response Code, Requests by Result Type, Requests by Subscription, Requests Summary by API, Success Requests vs Failed Requests, Successful Requests by Client Protocol, Successful Requests by Method, Top 10 APIs With Highest Backend Execution Duration (ms), Top 10 APIs With Highest Number of Requests, Top 10 Failed API Urls, Top 10 Operations That Caused The Most Errors, Top 3 Caller IPs With Failures by Resource, Top Backend Url by Request Size, Top Backend Urls with Response Size, Top Operations with Request Size, Top Operations with Response Size, Total Failed Policy Events, Total Failed Requests, Total Recommendation Events, Total Requests by Method, Total Requests by Response Code, Total Success Policy Events, Total Success Requests, Users / Applications by Operation type, Websocket Connection Details, Websocket Connections by Event Name



## Parser:
```
| json "category","properties.apimSubscriptionId", "properties.apiId","properties.url" as category, apimSubscriptionId, apiId, url
 
```
### Use Cases:
Average Duration, Backend Request Duration by Backend Method, Backend Request Duration by Backend Url, Backend Requests by Response Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Backend Requests, Failed Backend Requests by Backend Method, Failed Backend Requests by Backend Protocol, Failed Backend Requests by Backend Url, Failed Policy Events, Failed Request Details, Failed Requests, Failed Requests by Method, Failed Requests by Protocol, Failed Requests by Response Category, Failed Requests by Subscription, Failed Requests by Url, Overall Duration Vs Backend Duration, Recent Changes in Subscription, Recent Delete Operations, Recent Recommendation Events, Recent Write Operations, Request Duration by Method, Request Duration by Subscription, Request Duration by Url, Requests by Backend Response Code, Requests by Location, Requests by Response Code, Requests by Result Type, Requests by Subscription, Requests Summary by API, Success Requests vs Failed Requests, Successful Requests by Client Protocol, Successful Requests by Method, Top 10 APIs With Highest Backend Execution Duration (ms), Top 10 APIs With Highest Number of Requests, Top 10 Failed API Urls, Top 10 Failed Subscription, Top 10 Operations That Caused The Most Errors, Top 3 Caller IPs With Failures by Resource, Top Backend Url by Request Size, Top Backend Urls with Response Size, Top Operations with Request Size, Top Operations with Response Size, Total Failed Policy Events, Total Failed Requests, Total Recommendation Events, Total Requests by Method, Total Requests by Response Code, Total Requests by Subscription, Total Success Policy Events, Total Success Requests, Users / Applications by Operation type, Websocket Connection Details, Websocket Connections by Event Name



## Parser:
```
| json "category","properties.apimSubscriptionId", "properties.apiId","properties.url", "properties.responseCode" as category, apimSubscriptionId, apiId, url, responseCode
 
```
### Use Cases:
Average Duration, Backend Request Duration by Backend Method, Backend Request Duration by Backend Url, Backend Requests by Response Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Backend Requests, Failed Backend Requests by Backend Method, Failed Backend Requests by Backend Protocol, Failed Backend Requests by Backend Url, Failed Policy Events, Failed Request Details, Failed Requests, Failed Requests by Method, Failed Requests by Protocol, Failed Requests by Response Category, Failed Requests by Subscription, Failed Requests by Url, Overall Duration Vs Backend Duration, Recent Delete Operations, Recent Recommendation Events, Recent Write Operations, Request Duration by Method, Request Duration by Url, Requests by Backend Response Code, Requests by Location, Requests by Response Code, Requests by Result Type, Requests Summary by API, Success Requests vs Failed Requests, Successful Requests by Client Protocol, Successful Requests by Method, Top 10 APIs With Highest Backend Execution Duration (ms), Top 10 APIs With Highest Number of Requests, Top 10 Failed API Urls, Top 10 Operations That Caused The Most Errors, Top 3 Caller IPs With Failures by Resource, Top Backend Url by Request Size, Top Backend Urls with Response Size, Top Operations with Request Size, Top Operations with Response Size, Total Failed Policy Events, Total Failed Requests, Total Recommendation Events, Total Requests by Method, Total Requests by Response Code, Total Success Policy Events, Total Success Requests, Users / Applications by Operation type, Websocket Connection Details, Websocket Connections by Event Name



## Parser:
```
| json "category","properties.apimSubscriptionId", "properties.url", "properties.method", "properties.responseCode", "properties.apiId"  as category, apimSubscriptionId, url, method, responseCode, apiId
 
```
### Use Cases:
Average Duration, Backend Request Duration by Backend Method, Backend Request Duration by Backend Url, Backend Requests by Response Code, Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Failed Backend Requests, Failed Backend Requests by Backend Method, Failed Backend Requests by Backend Protocol, Failed Backend Requests by Backend Url, Failed Policy Events, Failed Request Details, Failed Requests, Failed Requests by Method, Failed Requests by Protocol, Failed Requests by Response Category, Failed Requests by Subscription, Failed Requests by Url, Overall Duration Vs Backend Duration, Recent Changes in Subscription, Recent Delete Operations, Recent Recommendation Events, Recent Write Operations, Request Duration by Method, Request Duration by Url, Requests by Backend Response Code, Requests by Location, Requests by Response Code, Requests by Result Type, Requests by Subscription, Requests Summary by API, Success Requests vs Failed Requests, Successful Requests by Client Protocol, Successful Requests by Method, Top 10 APIs With Highest Backend Execution Duration (ms), Top 10 APIs With Highest Number of Requests, Top 10 Failed API Urls, Top 10 Failed Subscription, Top 10 Operations That Caused The Most Errors, Top 3 Caller IPs With Failures by Resource, Top Backend Url by Request Size, Top Backend Urls with Response Size, Top Operations with Request Size, Top Operations with Response Size, Total Failed Policy Events, Total Failed Requests, Total Recommendation Events, Total Requests by Method, Total Requests by Response Code, Total Success Policy Events, Total Success Requests, Users / Applications by Operation type, Websocket Connection Details, Websocket Connections by Event Name



## Parser:
```
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid" as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid nodrop
 
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Recent Delete Operations, Top 10 Operations That Caused The Most Errors, Users / Applications by Operation type



## Parser:
```
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid", "$['identity']['claims']['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name']","$['identity']['claims']['http://schemas.microsoft.com/claims/authnmethodsreferences']"  as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid, identity_claims_name, authmethods nodrop
 
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Recent Delete Operations, Recent Write Operations, Top 10 Operations That Caused The Most Errors, Users / Applications by Operation type



## Parser:
```
| JSON "properties.statusCode", "properties.message", "resultType", "category", "operationName", "callerIpAddress", "resultSignature", "level", "identity.claims.idtyp", "identity.claims.name", "identity.claims.appid", "properties.entity", "$['identity']['claims']['http://schemas.xmlsoap.org/ws/2005/05/identity/claims/name']","$['identity']['claims']['http://schemas.microsoft.com/claims/authnmethodsreferences']" as statusCode, message, resultType, category, operationName, callerIpAddress, resultSignature, level, idtyp, name, appid, entity, identity_claims_name, authmethods nodrop
 
```
### Use Cases:
Recent Delete Operations, Top 10 Operations That Caused The Most Errors



## Parser:
```
| json "resultType", "category" as resultType, category
 
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Distribution by Status, Recent Delete Operations, Top 10 Operations That Caused The Most Errors, Users / Applications by Operation type



## Parser:
```
| json "resultType", "category", "operationName", "resourceId" as resultType, category, operationName, resourceid
 
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Recent Delete Operations, Top 10 Operations That Caused The Most Errors



## Parser:
```
| json "resultType", "category", "operationName", "resourceId" as resultType, category, operationName, resourceid
| parse field=operationName "*/*/*" as provider_name, resource_type, operation_name
 
```
### Use Cases:
Distribution  by Operation Type (Read, Write and Delete), Distribution by Operations, Recent Delete Operations, Top 10 Operations That Caused The Most Errors



## Parser:
```
| json "resultType", "operationName", "properties.statusMessage", "category"  as resultType, operationName, failureMessage, category nodrop
| parse field=operationname "*/*/*" as provider_name, resource_type, operation nodrop
 
```
### Use Cases:
Top 10 Operations That Caused The Most Errors


