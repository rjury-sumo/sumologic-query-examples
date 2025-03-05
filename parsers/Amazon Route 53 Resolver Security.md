# Parsers For Amazon Route 53 Resolver Security

## Parser:
```
| json "answers[*].Rdata" as response
| extract field=response "(?<response>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"  multi 
```
### Use Cases:
Alerted DNS Queries by Instance ID Over Time, Anomalies within Alerted DNS Queries, Anomalies within Blocked DNS Queries, Blocked DNS Queries by Instance ID Over Time, IPv4 Resolution by Geo Location, Threat Outlier, Top 10 Blocked Domains?, Total Hits from Threat Intel Source



## Parser:
```
| json "answers[*].Rdata" as response nodrop
| extract field=response "(?<response>\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"  multi nodrop
```
### Use Cases:
Alerted DNS Queries by Instance ID Over Time, Alerted DNS Queries by Rule Group ID & Domain List ID, Alerted Queries by Instance ID and Source Address, Alerted Queries by Instance ID and Source Address? (Top 10), Alerted Queries IPv4 Resolution by GeoLocation, Anomalies within Alerted DNS Queries, Anomalies within Blocked DNS Queries, Anomolies within Alerted DNS Queries, Anomolies within Blocked?DNS Queries, Blocked DNS Queries by Instance ID Over Time, Blocked Queries by Instance ID and Source Address, Blocked?DNS Queries by Instance ID Over Time, Blocked?DNS Queries by Rule Group ID & Domain List ID, Blocked?Queries by Instance ID and Source Address? (Top 10), Bytes Sent Over DNS Requests by Instance ID, Bytes Sent Over DNS Requests by VPC, DNS Queries by Instance ID and Source Address, DNS Queries by Type and VPC-ID, IPv4 Resolution by Geo Location, Resolver Query Logs Detail, Reverse DNS Query to Non-Existent Domain by Instance ID, Reverse DNS Query to Non-Existent Domain by Query Name, Reverse DNS Query to Non-Existent Domain by Query Name & Instance ID, Successful Reverse DNS Query by Instance ID, Successful Reverse DNS Query by Query Name & Instance ID, Successful Reverse DNS Query by Query Name?, Threat Outlier, Threats Over Time, Top 10 Alerted Domains, Top 10 Blocked Domains?, Top 10 Blocked?Domains, Top 50 Domains by Query Length and InstanceID, Top 50 Highest Entropy Domains, Total Hits from Threat Intel Source



## Parser:
```
| json "answers[*].Rdata" as response nodrop
| extract field=response "\"(?<response>.*?)\"" multi nodrop
```
### Use Cases:
Alerted DNS Queries by Instance ID Over Time, Alerted DNS Queries by Rule Group ID & Domain List ID, Alerted Queries by Instance ID and Source Address, Alerted Queries by Instance ID and Source Address? (Top 10), Alerted Queries IPv4 Resolution by GeoLocation, Anomalies within Alerted DNS Queries, Anomalies within Blocked DNS Queries, Anomolies within Alerted DNS Queries, Anomolies within Blocked?DNS Queries, Blocked DNS Queries by Instance ID Over Time, Blocked Queries by Instance ID and Source Address, Blocked?DNS Queries by Instance ID Over Time, Blocked?DNS Queries by Rule Group ID & Domain List ID, Blocked?Queries by Instance ID and Source Address? (Top 10), Bytes Sent Over DNS Requests by Instance ID, Bytes Sent Over DNS Requests by VPC, IPv4 Resolution by Geo Location, Resolver Query Logs Detail, Reverse DNS Query to Non-Existent Domain by Instance ID, Reverse DNS Query to Non-Existent Domain by Query Name, Reverse DNS Query to Non-Existent Domain by Query Name & Instance ID, Successful Reverse DNS Query by Instance ID, Successful Reverse DNS Query by Query Name & Instance ID, Successful Reverse DNS Query by Query Name?, Threat Outlier, Threats Over Time, Top 10 Alerted Domains, Top 10 Blocked Domains?, Top 10 Blocked?Domains, Top 50 Domains by Query Length and InstanceID, Top 50 Highest Entropy Domains, Total Hits from Threat Intel Source



## Parser:
```
| json "answers[*].Rdata" as response nodrop
| extract field=response "\"(?<response>.*?)\"" multi nodrop
| json field=raw "labels[*].name" as label_name 
```
### Use Cases:
Alerted DNS Queries by Instance ID Over Time, Alerted DNS Queries by Rule Group ID & Domain List ID, Alerted Queries by Instance ID and Source Address, Alerted Queries by Instance ID and Source Address? (Top 10), Alerted Queries IPv4 Resolution by GeoLocation, Anomalies within Alerted DNS Queries, Anomalies within Blocked DNS Queries, Anomolies within Alerted DNS Queries, Anomolies within Blocked?DNS Queries, Blocked DNS Queries by Instance ID Over Time, Blocked Queries by Instance ID and Source Address, Blocked?DNS Queries by Instance ID Over Time, Blocked?DNS Queries by Rule Group ID & Domain List ID, Blocked?Queries by Instance ID and Source Address? (Top 10), Bytes Sent Over DNS Requests by Instance ID, Bytes Sent Over DNS Requests by VPC, DNS Queries by Instance ID and Source Address, DNS Queries by Type and VPC-ID, IPv4 Resolution by Geo Location, Resolver Query Logs Detail, Reverse DNS Query to Non-Existent Domain by Instance ID, Reverse DNS Query to Non-Existent Domain by Query Name, Reverse DNS Query to Non-Existent Domain by Query Name & Instance ID, Successful Reverse DNS Query by Instance ID, Successful Reverse DNS Query by Query Name & Instance ID, Successful Reverse DNS Query by Query Name?, Threat by Actor, Threat by Malicious Confidence, Threat Count, Threat Outlier, Threat Table, Threat Table?, Threats by Instance ID, Threats Over Time, Threats Over Time by Instance ID, Top 10 Alerted Domains, Top 10 Blocked Domains?, Top 10 Blocked?Domains, Top 50 Domains by Query Length and InstanceID, Top 50 Highest Entropy Domains, Total Hits from Threat Intel Source



## Parser:
```
| json "answers[*].Rdata" as response nodrop
| extract field=response "\"(?<response>.*?)\"" multi nodrop
| parse regex field=query_name "(?:\S+\.|)(?<root>\S+\.?)\.(?<tld>\S+)" nodrop
```
### Use Cases:
Alerted DNS Queries by Instance ID Over Time, Alerted DNS Queries by Rule Group ID & Domain List ID, Alerted Queries by Instance ID and Source Address, Alerted Queries by Instance ID and Source Address? (Top 10), Alerted Queries IPv4 Resolution by GeoLocation, Anomalies within Alerted DNS Queries, Anomalies within Blocked DNS Queries, Anomolies within Alerted DNS Queries, Anomolies within Blocked?DNS Queries, Blocked DNS Queries by Instance ID Over Time, Blocked Queries by Instance ID and Source Address, Blocked?DNS Queries by Instance ID Over Time, Blocked?DNS Queries by Rule Group ID & Domain List ID, Blocked?Queries by Instance ID and Source Address? (Top 10), Bytes Sent Over DNS Requests by Instance ID, Bytes Sent Over DNS Requests by VPC, IPv4 Resolution by Geo Location, Resolver Query Logs Detail, Reverse DNS Query to Non-Existent Domain by Instance ID, Reverse DNS Query to Non-Existent Domain by Query Name, Reverse DNS Query to Non-Existent Domain by Query Name & Instance ID, Successful Reverse DNS Query by Instance ID, Successful Reverse DNS Query by Query Name & Instance ID, Successful Reverse DNS Query by Query Name?, Threat Outlier, Threats Over Time, Top 10 Alerted Domains, Top 10 Blocked Domains?, Top 10 Blocked?Domains, Top 50 Domains by Query Length and InstanceID, Top 50 Highest Entropy Domains, Total Hits from Threat Intel Source



## Parser:
```
| json field=raw "labels[*].name" as label_name 
```
### Use Cases:
Alerted DNS Queries by Instance ID Over Time, Alerted DNS Queries by Rule Group ID & Domain List ID, Alerted Queries by Instance ID and Source Address, Alerted Queries by Instance ID and Source Address? (Top 10), Alerted Queries IPv4 Resolution by GeoLocation, Anomalies within Alerted DNS Queries, Anomalies within Blocked DNS Queries, Anomolies within Alerted DNS Queries, Anomolies within Blocked?DNS Queries, Blocked DNS Queries by Instance ID Over Time, Blocked Queries by Instance ID and Source Address, Blocked?DNS Queries by Instance ID Over Time, Blocked?DNS Queries by Rule Group ID & Domain List ID, Blocked?Queries by Instance ID and Source Address? (Top 10), Bytes Sent Over DNS Requests by Instance ID, Bytes Sent Over DNS Requests by VPC, IPv4 Resolution by Geo Location, Resolver Query Logs Detail, Reverse DNS Query to Non-Existent Domain by Instance ID, Reverse DNS Query to Non-Existent Domain by Query Name, Reverse DNS Query to Non-Existent Domain by Query Name & Instance ID, Successful Reverse DNS Query by Instance ID, Successful Reverse DNS Query by Query Name & Instance ID, Successful Reverse DNS Query by Query Name?, Threat Outlier, Threats Over Time, Top 10 Alerted Domains, Top 10 Blocked Domains?, Top 10 Blocked?Domains, Top 50 Domains by Query Length and InstanceID, Top 50 Highest Entropy Domains, Total Hits from Threat Intel Source



## Parser:
```
| parse regex field=query_name "(?:\S+\.|)(?<root>\S+\.?)\.(?<tld>\S+)" nodrop
```
### Use Cases:
Alerted DNS Queries by Instance ID Over Time, Anomalies within Alerted DNS Queries, Anomalies within Blocked DNS Queries, Blocked DNS Queries by Instance ID Over Time, IPv4 Resolution by Geo Location, Threat Outlier, Top 10 Alerted Domains, Top 10 Blocked Domains?, Top 50 Highest Entropy Domains, Total Hits from Threat Intel Source


