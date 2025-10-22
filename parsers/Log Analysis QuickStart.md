# Parsers For Log Analysis QuickStart

**Log Analysis QuickStart/Visits/Frequent Email Addresses**
```
 _sourceCategory={{Logsdatasource}}  (user or email or login or userid or user_id)| parse regex "(?<email_address>[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[a-zA-Z]{2,4})" | count by email_address | sort by _count
```

**Log Analysis QuickStart/Visits/Frequent IP Addresses**
```
 _sourceCategory={{Logsdatasource}}  (*ip* OR *address*)| parse regex "(?<IP>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" | count by IP | sort by _count | limit 10
```

**Log Analysis QuickStart/Visits/Geo Location of All Users**
```
 _sourceCategory={{Logsdatasource}}  (*ip* OR *address*)| parse regex "(?<ip_address>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" | count as count by ip_address
```

**Log Analysis QuickStart/Visits/Observed IP Addresses by Type**
```
 _sourceCategory={{Logsdatasource}}  (*ip* OR *address*)| parse regex "(?<ip_address>\b(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?))(?:[^0-9])" multi
```

**Log Analysis QuickStart/Visits/Sessions**
```
 _sourceCategory={{Logsdatasource}}  session 
| parse regex "session_?(?:id)?[\s:-=]?(?<session_id>[^\s]+)" 
```


