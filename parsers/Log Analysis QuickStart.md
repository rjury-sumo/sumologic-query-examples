# Parsers For Log Analysis QuickStart

## Parser:
```
| parse regex "(?<email_address>[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[a-zA-Z]{2,4})" | count by email_address | 
```
### Use Cases:
Frequent Email Addresses, Frequent IP Addresses, Geo Location of All Users, Observed IP Addresses by Type, Sessions



## Parser:
```
| parse regex "(?<ip_address>\b(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?))(?:[^0-9])" multi
 
```
### Use Cases:
Frequent Email Addresses, Frequent IP Addresses, Geo Location of All Users, Observed IP Addresses by Type, Sessions



## Parser:
```
| parse regex "(?<ip_address>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" | count as count by ip_address
 
```
### Use Cases:
Frequent Email Addresses, Frequent IP Addresses, Geo Location of All Users, Observed IP Addresses by Type, Sessions



## Parser:
```
| parse regex "(?<IP>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" | count by IP | sort by _count | 
```
### Use Cases:
Frequent Email Addresses, Frequent IP Addresses, Geo Location of All Users, Observed IP Addresses by Type, Sessions



## Parser:
```
| parse regex "session_?(?:id)?[\s:-=]?(?<session_id>[^\s]+)" 
 
```
### Use Cases:
Frequent Email Addresses, Frequent IP Addresses, Geo Location of All Users, Observed IP Addresses by Type, Sessions


