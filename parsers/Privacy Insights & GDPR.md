# Parsers For Privacy Insights & GDPR

**Privacy Insights & GDPR/Potential Emails - New/Potential Email Addresses in Logs**
```
_sourceCategory=*
| _raw as raw_message
| parse regex "(?<email>[a-zA-Z0-9_\.-]+@[\da-zA-Z\.-]+\.[a-zA-Z\.]{2,6})"
```

**Privacy Insights & GDPR/Potential Emails - New/Potential Email Addresses in Logs by Category**
```
_sourceCategory=*
| _raw as raw_message
| parse regex "(?<email>[a-zA-Z0-9_\.-]+@[\da-zA-Z\.-]+\.[a-zA-Z\.]{2,6})"
```

**Privacy Insights & GDPR/Potential Emails - New/Potential Email Addresses in Logs by Host**
```
_sourceCategory=*
| _raw as raw_message
| parse regex "(?<email>[a-zA-Z0-9_\.-]+@[\da-zA-Z\.-]+\.[a-zA-Z\.]{2,6})"
```

**Privacy Insights & GDPR/Potential Emails - New/Potential Email Addresses in Logs by Source Name**
```
_sourceCategory=*
| _raw as raw_message
| parse regex "(?<email>[a-zA-Z0-9_\.-]+@[\da-zA-Z\.-]+\.[a-zA-Z\.]{2,6})"
```


