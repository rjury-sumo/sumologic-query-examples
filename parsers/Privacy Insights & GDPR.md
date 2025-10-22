# Parsers For Privacy Insights & GDPR

| use_case | parser |
|--- | --- |
| Privacy Insights & GDPR/Potential Emails - New/Potential Email Addresses in Logs | _sourceCategory=*<br>\| _raw as raw_message<br>\| parse regex "(?<email>[a-zA-Z0-9_\.-]+@[\da-zA-Z\.-]+\.[a-zA-Z\.]{2,6})" |
| Privacy Insights & GDPR/Potential Emails - New/Potential Email Addresses in Logs by Category | _sourceCategory=*<br>\| _raw as raw_message<br>\| parse regex "(?<email>[a-zA-Z0-9_\.-]+@[\da-zA-Z\.-]+\.[a-zA-Z\.]{2,6})" |
| Privacy Insights & GDPR/Potential Emails - New/Potential Email Addresses in Logs by Host | _sourceCategory=*<br>\| _raw as raw_message<br>\| parse regex "(?<email>[a-zA-Z0-9_\.-]+@[\da-zA-Z\.-]+\.[a-zA-Z\.]{2,6})" |
| Privacy Insights & GDPR/Potential Emails - New/Potential Email Addresses in Logs by Source Name | _sourceCategory=*<br>\| _raw as raw_message<br>\| parse regex "(?<email>[a-zA-Z0-9_\.-]+@[\da-zA-Z\.-]+\.[a-zA-Z\.]{2,6})" |

