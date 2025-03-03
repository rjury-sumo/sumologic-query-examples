# Privacy Insights & GDPR

## Searches

### Log Searches

- **Potential Email Addresses in Logs**: from Dashboard: Privacy Insights & GDPR/Potential Emails - New 
- **Potential Email Addresses in Logs by Category**: from Dashboard: Privacy Insights & GDPR/Potential Emails - New 
- **Potential Email Addresses in Logs by Host**: from Dashboard: Privacy Insights & GDPR/Potential Emails - New 
- **Potential Email Addresses in Logs by Source Name**: from Dashboard: Privacy Insights & GDPR/Potential Emails - New

### Metric Searches


## Search Table

|app\_topic|search\_name|type|origin|search|
|:--|:--|:--|:--|:--|
|Privacy Insights & GDPR|Potential Email Addresses in Logs|Logs|Privacy Insights & GDPR/Potential Emails - New|\_sourceCategory=\*<br />\| \_raw as raw\_message<br />\| parse regex "(?\<email\>[a-zA-Z0-9\_\\.-]+@[\\da-zA-Z\\.-]+\\.[a-zA-Z\\.]{2,6})"<br />\|where if ("{{email}}" = "\*", true, email matches "{{email}}") AND if ("{{raw\_message}}" = "\*", true, raw\_message matches "{{raw\_message}}")<br />\|count \_sourceCategory, \_sourceName, \_sourceHost, email<br />\| limit 1000<br />\| sort \_count|
|Privacy Insights & GDPR|Potential Email Addresses in Logs by Category|Logs|Privacy Insights & GDPR/Potential Emails - New|\_sourceCategory=\*<br />\| \_raw as raw\_message<br />\| parse regex "(?\<email\>[a-zA-Z0-9\_\\.-]+@[\\da-zA-Z\\.-]+\\.[a-zA-Z\\.]{2,6})"<br />\|where if ("{{email}}" = "\*", true, email matches "{{email}}") AND if ("{{raw\_message}}" = "\*", true, raw\_message matches "{{raw\_message}}")<br />\|count \_sourceCategory<br />\| limit 1000<br />\| sort \_count|
|Privacy Insights & GDPR|Potential Email Addresses in Logs by Host|Logs|Privacy Insights & GDPR/Potential Emails - New|\_sourceCategory=\*<br />\| \_raw as raw\_message<br />\| parse regex "(?\<email\>[a-zA-Z0-9\_\\.-]+@[\\da-zA-Z\\.-]+\\.[a-zA-Z\\.]{2,6})"<br />\|where if ("{{email}}" = "\*", true, email matches "{{email}}") AND if ("{{raw\_message}}" = "\*", true, raw\_message matches "{{raw\_message}}")<br />\|count \_sourceHost<br />\| limit 1000<br />\| sort \_count|
|Privacy Insights & GDPR|Potential Email Addresses in Logs by Source Name|Logs|Privacy Insights & GDPR/Potential Emails - New|\_sourceCategory=\*<br />\| \_raw as raw\_message<br />\| parse regex "(?\<email\>[a-zA-Z0-9\_\\.-]+@[\\da-zA-Z\\.-]+\\.[a-zA-Z\\.]{2,6})"<br />\|where if ("{{email}}" = "\*", true, email matches "{{email}}") AND if ("{{raw\_message}}" = "\*", true, raw\_message matches "{{raw\_message}}")<br />\|count \_sourceName<br />\| limit 1000<br />\| sort \_count|

