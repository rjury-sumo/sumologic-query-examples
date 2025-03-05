# Parsers For Barracuda WAF

## Parser:
```
| parse regex "(?<Activity_Time>\d\d\d\d-\d\d-\d\d\s{1,3}.* )(?<Unit_Name>[^ ]+) AUDIT(?<Log>.*)"
| split Log delim=' ' extract 2 as Admin_Name, 3 as Client_Type, 4 as Login_Ip, 5 as Login_Port, 6 as Transaction_Type, 7 as Transaction_Id, 8 as Command_Name, 9 as Change_Type, 10 as Object_Type, 11 as Object_Name, 12 as Variable_Name, 13 as Old_Value, 14 as New_Value, 15 as Additional_Data
 `n```
### Use Cases:
Admin Access Locations, Change Type Over Time, Client Access Type, Modified Object Types, Recent - Audit Logs, Top 10 Transaction Types, Top Admins, Unsuccessful Login Over Time



## Parser:
```
| parse regex "(?<Unit_Name>[^ ]+) AUDIT(?<Log>.*)"
| split Log delim=' ' extract 2 as Admin_Name, 3 as Client_Type, 4 as Login_Ip, 5 as Login_Port, 6 as Transaction_Type, 7 as Transaction_Id, 8 as Command_Name, 9 as Change_Type, 10 as Object_Type, 11 as Object_Name, 12 as Variable_Name, 13 as Old_Value, 14 as New_Value, 15 as Additional_Data
 `n```
### Use Cases:
Recent - Audit Logs



## Parser:
```
| parse regex "(?<Unit_Name>[^ ]+) NF(?<Log>.*)"
| parse field=Log " * * * * * * * * *" as Log_Level, Protocol, Source_Ip, Source_Port, Destination_Ip, Destination_Port, ACL_Policy, ACL_Name, Log_Details
 `n```
### Use Cases:
Admin Access Locations, Change Type Over Time, Client Access Type, Destination Locations, Modified Object Types, Outlier - Allowed Network Traffic, Outlier - Blocked Network Traffic, Recent - Audit Logs, Severity - Network Logs, Source Locations, Top 10 ACL Rules, Top 10 Destinations, Top 10 Sources, Top 10 Transaction Types, Top Admins, Unsuccessful Login Over Time



## Parser:
```
| parse regex "(?<Unit_Name>[^ ]+) SYS(?<Log>.*)"
| parse field=log " * * * *" as Module_Name, Log_Level, Event_Id, Log_Details
 `n```
### Use Cases:
Admin Access Locations, Change Type Over Time, Client Access Type, CPU usage Alert Outlier, Destination Locations, Firmware Storage Alert Outlier, Log Level Distribution - System Logs, Log Storage Alert Outlier, Memory Usage Alert Outlier, Modified Object Types, Outlier - Allowed Network Traffic, Outlier - Blocked Network Traffic, Recent - Audit Logs, Recent - Cluster Activities, Recent Alerts in System Logs, Severity - Network Logs, Source Locations, Top 10 ACL Rules, Top 10 Destinations, Top 10 Module Names, Top 10 Sources, Top 10 Transaction Types, Top Admins, Unsuccessful Login Over Time



## Parser:
```
| parse regex "(?<Unit_Name>[^ ]+) SYS(?<Log>.*)"
| parse field=log " * * * *" as Module_Name, Log_Level, Event_Id, Log_Details
| parse regex field=Log_Details "(?<Peer_Ip>\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3})"
 `n```
### Use Cases:
Admin Access Locations, Change Type Over Time, Client Access Type, Destination Locations, Modified Object Types, Outlier - Allowed Network Traffic, Outlier - Blocked Network Traffic, Recent - Audit Logs, Recent - Cluster Activities, Severity - Network Logs, Source Locations, Top 10 ACL Rules, Top 10 Destinations, Top 10 Sources, Top 10 Transaction Types, Top Admins, Unsuccessful Login Over Time



## Parser:
```
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 10 as Domain, 13 as Bytes_Sent, 2 as Service_Ip, 3 as Service_Port
 `n```
### Use Cases:
Admin Access Locations, Alerts Severity, Allowed Threat Locations, Allowed Traffic - Details, Allowed Traffic - Threat Intel, Allowed Traffic - Threat Intel - Actors, Allowed Traffic - Threat Intel - Confidence, Allowed Traffic by Attack Category, Allowed Traffic by Severity, Allowed Traffic by Unit Name, Attack Origins, Attack Trend, Attacks by Service IP, Blocked Threat Locations, Blocked Traffic - Details, Blocked Traffic - Threat Intel, Blocked Traffic - Threat Intel - Actors, Blocked Traffic - Threat Intel - Confidence, Blocked Traffic by Attack Category, Blocked Traffic by Severity, Blocked Traffic by Unit Name, Browsers and Operating Systems, Cache Performance, Change Type Over Time, Client Access Type, Client Errors Over Time, Client Location 4XX Errors, CPU usage Alert Outlier, Destination Locations, Error Responses by Server, Firmware Storage Alert Outlier, HTTP Methods Over Time, HTTP Protocols Over Time, HTTP Versions, Log Level Distribution - System Logs, Log Storage Alert Outlier, Memory Usage Alert Outlier, Modified Object Types, Outlier - Allowed Network Traffic, Outlier - Allowed Traffic, Outlier - Blocked Network Traffic, Outlier - Blocked Traffic, Recent - Attacks, Recent - Audit Logs, Recent - Cluster Activities, Recent Alerts in System Logs, Rule Distribution, Rule Type Distribution, Server Errors(5XX) Over Time, Severity - Network Logs, Source Locations, Top 10 ACL Rules, Top 10 Destinations, Top 10 Module Names, Top 10 OS Versions, Top 10 Sources, Top 10 Transaction Types, Top 5 Backend Servers, Top 5 Clients Causing 4XX Erros, Top 5 URIs - 404 Responses, Top Admins, Top Attacked Domains, Top Attacked Services, Top Attacked URLs, Top Attackers, Top Attacking Country/Region, Top Attacking Referrers, Top Attacking User Agents, Top Bots Observed, Top Client Errors, Top Clients by Bandwidth, Top Clients by Requests, Top Countries by Requests, Top Domains by Bandwidth, Top Referrers, Top Server Errors, Top Services by Bandwidth, Top URL by Bandwidth, Top URL by Requests, Total Request Size Over Time, Total Response Size Over Time, Unsuccessful Login Over Time, Visitor Platforms by Requests, Visitors Platform by Bandwidth, Visits by Countries Over Time



## Parser:
```
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 10 as Domain, 2 as Service_Ip, 3 as Service_Port
 `n```
### Use Cases:
Admin Access Locations, Alerts Severity, Allowed Threat Locations, Allowed Traffic - Details, Allowed Traffic - Threat Intel, Allowed Traffic - Threat Intel - Actors, Allowed Traffic - Threat Intel - Confidence, Allowed Traffic by Attack Category, Allowed Traffic by Severity, Allowed Traffic by Unit Name, Attack Origins, Attack Trend, Attacks by Service IP, Blocked Threat Locations, Blocked Traffic - Details, Blocked Traffic - Threat Intel, Blocked Traffic - Threat Intel - Actors, Blocked Traffic - Threat Intel - Confidence, Blocked Traffic by Attack Category, Blocked Traffic by Severity, Blocked Traffic by Unit Name, Browsers and Operating Systems, Cache Hit Percentage Over Time, Cache Performance, Change Type Over Time, Client Access Type, Client Errors Over Time, Client Location 4XX Errors, CPU usage Alert Outlier, Destination Locations, Error Responses by Server, Firmware Storage Alert Outlier, HTTP Methods Over Time, HTTP Protocols Over Time, HTTP Versions, Log Level Distribution - System Logs, Log Storage Alert Outlier, Memory Usage Alert Outlier, Modified Object Types, Outlier - Allowed Network Traffic, Outlier - Allowed Traffic, Outlier - Blocked Network Traffic, Outlier - Blocked Traffic, Recent - Attacks, Recent - Audit Logs, Recent - Cluster Activities, Recent Alerts in System Logs, Rule Distribution, Rule Type Distribution, Server Errors(5XX) Over Time, Severity - Network Logs, Source Locations, Top 10 ACL Rules, Top 10 Destinations, Top 10 Module Names, Top 10 OS Versions, Top 10 Sources, Top 10 Transaction Types, Top 5 Backend Servers, Top 5 Clients Causing 4XX Erros, Top 5 URIs - 404 Responses, Top Admins, Top Attacked Domains, Top Attacked Services, Top Attacked URLs, Top Attackers, Top Attacking Country/Region, Top Attacking Referrers, Top Attacking User Agents, Top Bots Observed, Top Client Errors, Top Clients by Bandwidth, Top Clients by Requests, Top Countries by Requests, Top Domains by Bandwidth, Top Domains by Requests, Top Referrers, Top Server Errors, Top Services by Bandwidth, Top URL by Bandwidth, Top URL by Requests, Total Request Size Over Time, Total Response Size Over Time, Unsuccessful Login Over Time, Visitor Platforms by Requests, Visitors Platform by Bandwidth, Visits by Countries Over Time



## Parser:
```
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 11 as HttpVersion, 4 as Client_Ip, 2 as Service_Ip, 3 as Service_Port, 21 as Response_Type, 17 as Backend_Server
 `n```
### Use Cases:
Admin Access Locations, Alerts Severity, Allowed Threat Locations, Allowed Traffic - Details, Allowed Traffic - Threat Intel, Allowed Traffic - Threat Intel - Actors, Allowed Traffic - Threat Intel - Confidence, Allowed Traffic by Attack Category, Allowed Traffic by Severity, Allowed Traffic by Unit Name, Attack Origins, Attack Trend, Attacks by Service IP, Blocked Threat Locations, Blocked Traffic - Details, Blocked Traffic - Threat Intel, Blocked Traffic - Threat Intel - Actors, Blocked Traffic - Threat Intel - Confidence, Blocked Traffic by Attack Category, Blocked Traffic by Severity, Blocked Traffic by Unit Name, Browsers and Operating Systems, Change Type Over Time, Client Access Type, Client Location 4XX Errors, CPU usage Alert Outlier, Destination Locations, Error Responses by Server, Firmware Storage Alert Outlier, HTTP Protocols Over Time, HTTP Versions, Log Level Distribution - System Logs, Log Storage Alert Outlier, Memory Usage Alert Outlier, Modified Object Types, Outlier - Allowed Network Traffic, Outlier - Allowed Traffic, Outlier - Blocked Network Traffic, Outlier - Blocked Traffic, Recent - Attacks, Recent - Audit Logs, Recent - Cluster Activities, Recent Alerts in System Logs, Rule Distribution, Rule Type Distribution, Server Errors(5XX) Over Time, Severity - Network Logs, Source Locations, Top 10 ACL Rules, Top 10 Destinations, Top 10 Module Names, Top 10 OS Versions, Top 10 Sources, Top 10 Transaction Types, Top 5 Backend Servers, Top Admins, Top Attacked Domains, Top Attacked Services, Top Attacked URLs, Top Attackers, Top Attacking Country/Region, Top Attacking Referrers, Top Attacking User Agents, Top Bots Observed, Top Client Errors, Top Clients by Bandwidth, Top Clients by Requests, Top Countries by Requests, Top Referrers, Unsuccessful Login Over Time, Visitor Platforms by Requests, Visitors Platform by Bandwidth, Visits by Countries Over Time



## Parser:
```
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 13 as Bytes_Sent, 2 as Service_Ip, 3 as Service_Port
| parse regex "HTTP\/[\d\.]+\s+\d+\s+\d+\s+\d+\s+\d+\s+\d+\s+\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\s+\d+\s+\d+\s+(?<agent>.+)"
 `n```
### Use Cases:
Admin Access Locations, Alerts Severity, Allowed Threat Locations, Allowed Traffic - Details, Allowed Traffic - Threat Intel, Allowed Traffic - Threat Intel - Actors, Allowed Traffic - Threat Intel - Confidence, Allowed Traffic by Attack Category, Allowed Traffic by Severity, Allowed Traffic by Unit Name, Attack Origins, Attack Trend, Attacks by Service IP, Blocked Threat Locations, Blocked Traffic - Details, Blocked Traffic - Threat Intel, Blocked Traffic - Threat Intel - Actors, Blocked Traffic - Threat Intel - Confidence, Blocked Traffic by Attack Category, Blocked Traffic by Severity, Blocked Traffic by Unit Name, Change Type Over Time, Client Access Type, CPU usage Alert Outlier, Destination Locations, Firmware Storage Alert Outlier, Log Level Distribution - System Logs, Log Storage Alert Outlier, Memory Usage Alert Outlier, Modified Object Types, Outlier - Allowed Network Traffic, Outlier - Allowed Traffic, Outlier - Blocked Network Traffic, Outlier - Blocked Traffic, Recent - Attacks, Recent - Audit Logs, Recent - Cluster Activities, Recent Alerts in System Logs, Rule Distribution, Rule Type Distribution, Severity - Network Logs, Source Locations, Top 10 ACL Rules, Top 10 Destinations, Top 10 Module Names, Top 10 OS Versions, Top 10 Sources, Top 10 Transaction Types, Top Admins, Top Attacked Domains, Top Attacked Services, Top Attacked URLs, Top Attackers, Top Attacking Country/Region, Top Attacking Referrers, Top Attacking User Agents, Top Bots Observed, Top Clients by Bandwidth, Top Countries by Requests, Top Referrers, Unsuccessful Login Over Time, Visitor Platforms by Requests, Visitors Platform by Bandwidth, Visits by Countries Over Time



## Parser:
```
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 13 as Bytes_Sent, 4 as Client_Ip, 2 as Service_Ip, 3 as Service_Port, 21 as Response_Type, 17 as Backend_Server
 `n```
### Use Cases:
Admin Access Locations, Alerts Severity, Allowed Threat Locations, Allowed Traffic - Details, Allowed Traffic - Threat Intel, Allowed Traffic - Threat Intel - Actors, Allowed Traffic - Threat Intel - Confidence, Allowed Traffic by Attack Category, Allowed Traffic by Severity, Allowed Traffic by Unit Name, Attack Origins, Attack Trend, Attacks by Service IP, Blocked Threat Locations, Blocked Traffic - Details, Blocked Traffic - Threat Intel, Blocked Traffic - Threat Intel - Actors, Blocked Traffic - Threat Intel - Confidence, Blocked Traffic by Attack Category, Blocked Traffic by Severity, Blocked Traffic by Unit Name, Browsers and Operating Systems, Change Type Over Time, Client Access Type, Client Errors Over Time, Client Location 4XX Errors, CPU usage Alert Outlier, Destination Locations, Error Responses by Server, Firmware Storage Alert Outlier, HTTP Protocols Over Time, HTTP Versions, Log Level Distribution - System Logs, Log Storage Alert Outlier, Memory Usage Alert Outlier, Modified Object Types, Outlier - Allowed Network Traffic, Outlier - Allowed Traffic, Outlier - Blocked Network Traffic, Outlier - Blocked Traffic, Recent - Attacks, Recent - Audit Logs, Recent - Cluster Activities, Recent Alerts in System Logs, Rule Distribution, Rule Type Distribution, Server Errors(5XX) Over Time, Severity - Network Logs, Source Locations, Top 10 ACL Rules, Top 10 Destinations, Top 10 Module Names, Top 10 OS Versions, Top 10 Sources, Top 10 Transaction Types, Top 5 Backend Servers, Top 5 Clients Causing 4XX Erros, Top 5 URIs - 404 Responses, Top Admins, Top Attacked Domains, Top Attacked Services, Top Attacked URLs, Top Attackers, Top Attacking Country/Region, Top Attacking Referrers, Top Attacking User Agents, Top Bots Observed, Top Client Errors, Top Clients by Bandwidth, Top Clients by Requests, Top Countries by Requests, Top Referrers, Top Server Errors, Total Request Size Over Time, Total Response Size Over Time, Unsuccessful Login Over Time, Visitor Platforms by Requests, Visitors Platform by Bandwidth, Visits by Countries Over Time



## Parser:
```
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 14 as Bytes_Received, 4 as Client_Ip, 2 as Service_Ip, 3 as Service_Port, 21 as Response_Type, 17 as Backend_Server
 `n```
### Use Cases:
Admin Access Locations, Alerts Severity, Allowed Threat Locations, Allowed Traffic - Details, Allowed Traffic - Threat Intel, Allowed Traffic - Threat Intel - Actors, Allowed Traffic - Threat Intel - Confidence, Allowed Traffic by Attack Category, Allowed Traffic by Severity, Allowed Traffic by Unit Name, Attack Origins, Attack Trend, Attacks by Service IP, Blocked Threat Locations, Blocked Traffic - Details, Blocked Traffic - Threat Intel, Blocked Traffic - Threat Intel - Actors, Blocked Traffic - Threat Intel - Confidence, Blocked Traffic by Attack Category, Blocked Traffic by Severity, Blocked Traffic by Unit Name, Browsers and Operating Systems, Change Type Over Time, Client Access Type, Client Errors Over Time, Client Location 4XX Errors, CPU usage Alert Outlier, Destination Locations, Error Responses by Server, Firmware Storage Alert Outlier, HTTP Protocols Over Time, HTTP Versions, Log Level Distribution - System Logs, Log Storage Alert Outlier, Memory Usage Alert Outlier, Modified Object Types, Outlier - Allowed Network Traffic, Outlier - Allowed Traffic, Outlier - Blocked Network Traffic, Outlier - Blocked Traffic, Recent - Attacks, Recent - Audit Logs, Recent - Cluster Activities, Recent Alerts in System Logs, Rule Distribution, Rule Type Distribution, Server Errors(5XX) Over Time, Severity - Network Logs, Source Locations, Top 10 ACL Rules, Top 10 Destinations, Top 10 Module Names, Top 10 OS Versions, Top 10 Sources, Top 10 Transaction Types, Top 5 Backend Servers, Top 5 URIs - 404 Responses, Top Admins, Top Attacked Domains, Top Attacked Services, Top Attacked URLs, Top Attackers, Top Attacking Country/Region, Top Attacking Referrers, Top Attacking User Agents, Top Bots Observed, Top Client Errors, Top Clients by Bandwidth, Top Clients by Requests, Top Countries by Requests, Top Referrers, Top Server Errors, Total Request Size Over Time, Unsuccessful Login Over Time, Visitor Platforms by Requests, Visitors Platform by Bandwidth, Visits by Countries Over Time



## Parser:
```
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 2 as Service_Ip, 13 as Bytes_Sent, 3 as Service_Port
 `n```
### Use Cases:
Admin Access Locations, Alerts Severity, Allowed Threat Locations, Allowed Traffic - Details, Allowed Traffic - Threat Intel, Allowed Traffic - Threat Intel - Actors, Allowed Traffic - Threat Intel - Confidence, Allowed Traffic by Attack Category, Allowed Traffic by Severity, Allowed Traffic by Unit Name, Attack Origins, Attack Trend, Attacks by Service IP, Blocked Threat Locations, Blocked Traffic - Details, Blocked Traffic - Threat Intel, Blocked Traffic - Threat Intel - Actors, Blocked Traffic - Threat Intel - Confidence, Blocked Traffic by Attack Category, Blocked Traffic by Severity, Blocked Traffic by Unit Name, Browsers and Operating Systems, Cache Performance, Change Type Over Time, Client Access Type, Client Errors Over Time, Client Location 4XX Errors, CPU usage Alert Outlier, Destination Locations, Error Responses by Server, Firmware Storage Alert Outlier, HTTP Methods Over Time, HTTP Protocols Over Time, HTTP Versions, Log Level Distribution - System Logs, Log Storage Alert Outlier, Memory Usage Alert Outlier, Modified Object Types, Outlier - Allowed Network Traffic, Outlier - Allowed Traffic, Outlier - Blocked Network Traffic, Outlier - Blocked Traffic, Recent - Attacks, Recent - Audit Logs, Recent - Cluster Activities, Recent Alerts in System Logs, Rule Distribution, Rule Type Distribution, Server Errors(5XX) Over Time, Severity - Network Logs, Source Locations, Top 10 ACL Rules, Top 10 Destinations, Top 10 Module Names, Top 10 OS Versions, Top 10 Sources, Top 10 Transaction Types, Top 5 Backend Servers, Top 5 Clients Causing 4XX Erros, Top 5 URIs - 404 Responses, Top Admins, Top Attacked Domains, Top Attacked Services, Top Attacked URLs, Top Attackers, Top Attacking Country/Region, Top Attacking Referrers, Top Attacking User Agents, Top Bots Observed, Top Client Errors, Top Clients by Bandwidth, Top Clients by Requests, Top Countries by Requests, Top Referrers, Top Server Errors, Top Services by Bandwidth, Top URL by Bandwidth, Top URL by Requests, Total Request Size Over Time, Total Response Size Over Time, Unsuccessful Login Over Time, Visitor Platforms by Requests, Visitors Platform by Bandwidth, Visits by Countries Over Time



## Parser:
```
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 2 as Service_Ip, 16 as Time_Taken, 3 as Service_Port
 `n```
### Use Cases:
Admin Access Locations, Alerts Severity, Allowed Threat Locations, Allowed Traffic - Details, Allowed Traffic - Threat Intel, Allowed Traffic - Threat Intel - Actors, Allowed Traffic - Threat Intel - Confidence, Allowed Traffic by Attack Category, Allowed Traffic by Severity, Allowed Traffic by Unit Name, Attack Origins, Attack Trend, Attacks by Service IP, Blocked Threat Locations, Blocked Traffic - Details, Blocked Traffic - Threat Intel, Blocked Traffic - Threat Intel - Actors, Blocked Traffic - Threat Intel - Confidence, Blocked Traffic by Attack Category, Blocked Traffic by Severity, Blocked Traffic by Unit Name, Browsers and Operating Systems, Cache Hit Percentage Over Time, Cache Performance, Change Type Over Time, Client Access Type, Client Errors Over Time, Client Location 4XX Errors, CPU usage Alert Outlier, Destination Locations, Error Responses by Server, Firmware Storage Alert Outlier, HTTP Methods Over Time, HTTP Protocols Over Time, HTTP Versions, Log Level Distribution - System Logs, Log Storage Alert Outlier, Memory Usage Alert Outlier, Modified Object Types, Outlier - Allowed Network Traffic, Outlier - Allowed Traffic, Outlier - Blocked Network Traffic, Outlier - Blocked Traffic, Outlier - Server Errors(5XX), Performance (ms) by Service, Recent - Attacks, Recent - Audit Logs, Recent - Cluster Activities, Recent Alerts in System Logs, Rule Distribution, Rule Type Distribution, Server Errors(5XX) Over Time, Severity - Network Logs, Source Locations, Top 10 ACL Rules, Top 10 Destinations, Top 10 Module Names, Top 10 OS Versions, Top 10 Sources, Top 10 Transaction Types, Top 5 Backend Servers, Top 5 Clients Causing 4XX Erros, Top 5 URIs - 404 Responses, Top Admins, Top Attacked Domains, Top Attacked Services, Top Attacked URLs, Top Attackers, Top Attacking Country/Region, Top Attacking Referrers, Top Attacking User Agents, Top Bots Observed, Top Client Errors, Top Clients by Bandwidth, Top Clients by Requests, Top Countries by Requests, Top Domains by Bandwidth, Top Domains by Requests, Top Referrers, Top Server Errors, Top Services by Bandwidth, Top URL by Bandwidth, Top URL by Requests, Total Request Size Over Time, Total Response Size Over Time, Unsuccessful Login Over Time, Visitor Platforms by Requests, Visitors Platform by Bandwidth, Visits by Countries Over Time



## Parser:
```
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 2 as Service_Ip, 3 as Service_Port
 `n```
### Use Cases:
Admin Access Locations, Alerts Severity, Allowed Threat Locations, Allowed Traffic - Details, Allowed Traffic - Threat Intel, Allowed Traffic - Threat Intel - Actors, Allowed Traffic - Threat Intel - Confidence, Allowed Traffic by Attack Category, Allowed Traffic by Severity, Allowed Traffic by Unit Name, Attack Origins, Attack Trend, Attacks by Service IP, Blocked Threat Locations, Blocked Traffic - Details, Blocked Traffic - Threat Intel, Blocked Traffic - Threat Intel - Actors, Blocked Traffic - Threat Intel - Confidence, Blocked Traffic by Attack Category, Blocked Traffic by Severity, Blocked Traffic by Unit Name, Browsers and Operating Systems, Cache Hit Percentage, Cache Hit Percentage Over Time, Cache Performance, Change Type Over Time, Client Access Type, Client Errors Over Time, Client Location 4XX Errors, CPU usage Alert Outlier, Destination Locations, Error Responses by Server, Firmware Storage Alert Outlier, HTTP Methods Over Time, HTTP Protocols Over Time, HTTP Versions, Log Level Distribution - System Logs, Log Storage Alert Outlier, Memory Usage Alert Outlier, Modified Object Types, Outlier - Allowed Network Traffic, Outlier - Allowed Traffic, Outlier - Blocked Network Traffic, Outlier - Blocked Traffic, Outlier - Client Errors(4XX), Outlier - Server Errors(5XX), Outlier - Service Performance, Performance (ms) by Service, Recent - Attacks, Recent - Audit Logs, Recent - Cluster Activities, Recent Alerts in System Logs, Requests by Service IPs, Response Code Distribution, Rule Distribution, Rule Type Distribution, Server Errors(5XX) Over Time, Severity - Network Logs, Source Locations, Top 10 ACL Rules, Top 10 Destinations, Top 10 Module Names, Top 10 OS Versions, Top 10 Sources, Top 10 Transaction Types, Top 5 Backend Servers, Top 5 Clients Causing 4XX Erros, Top 5 URIs - 404 Responses, Top Admins, Top Attacked Domains, Top Attacked Services, Top Attacked URLs, Top Attackers, Top Attacking Country/Region, Top Attacking Referrers, Top Attacking User Agents, Top Bots Observed, Top Client Errors, Top Clients by Bandwidth, Top Clients by Requests, Top Countries by Requests, Top Domains by Bandwidth, Top Domains by Requests, Top Referrers, Top Server Errors, Top Services by Bandwidth, Top URL by Bandwidth, Top URL by Requests, Total Request Size Over Time, Total Response Size Over Time, Unsuccessful Login Over Time, Visitor Platforms by Requests, Visitors Platform by Bandwidth, Visitors Platform Over Time, Visits by Countries Over Time, Worldwide Location of Clients



## Parser:
```
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 2 as Service_Ip, 3 as Service_Port
| parse regex "HTTP\/[\d\.]+\s+\d+\s+\d+\s+\d+\s+\d+\s+\d+\s+\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\s+\d+\s+\d+\s+(?<agent>.+)"
 `n```
### Use Cases:
Admin Access Locations, Alerts Severity, Allowed Threat Locations, Allowed Traffic - Details, Allowed Traffic - Threat Intel, Allowed Traffic - Threat Intel - Actors, Allowed Traffic - Threat Intel - Confidence, Allowed Traffic by Attack Category, Allowed Traffic by Severity, Allowed Traffic by Unit Name, Attack Origins, Attack Trend, Attacks by Service IP, Blocked Threat Locations, Blocked Traffic - Details, Blocked Traffic - Threat Intel, Blocked Traffic - Threat Intel - Actors, Blocked Traffic - Threat Intel - Confidence, Blocked Traffic by Attack Category, Blocked Traffic by Severity, Blocked Traffic by Unit Name, Browsers and Operating Systems, Cache Hit Percentage, Cache Hit Percentage Over Time, Cache Performance, Change Type Over Time, Client Access Type, Client Errors Over Time, Client Location 4XX Errors, CPU usage Alert Outlier, Destination Locations, Error Responses by Server, Firmware Storage Alert Outlier, HTTP Methods Over Time, HTTP Protocols Over Time, HTTP Versions, Log Level Distribution - System Logs, Log Storage Alert Outlier, Memory Usage Alert Outlier, Modified Object Types, Outlier - Allowed Network Traffic, Outlier - Allowed Traffic, Outlier - Blocked Network Traffic, Outlier - Blocked Traffic, Outlier - Client Errors(4XX), Outlier - Server Errors(5XX), Outlier - Service Performance, Performance (ms) by Service, Recent - Attacks, Recent - Audit Logs, Recent - Cluster Activities, Recent Alerts in System Logs, Response Code Distribution, Rule Distribution, Rule Type Distribution, Server Errors(5XX) Over Time, Severity - Network Logs, Source Locations, Top 10 ACL Rules, Top 10 Destinations, Top 10 Module Names, Top 10 OS Versions, Top 10 Sources, Top 10 Transaction Types, Top 5 Backend Servers, Top 5 Clients Causing 4XX Erros, Top 5 URIs - 404 Responses, Top Admins, Top Attacked Domains, Top Attacked Services, Top Attacked URLs, Top Attackers, Top Attacking Country/Region, Top Attacking Referrers, Top Attacking User Agents, Top Bots Observed, Top Client Errors, Top Clients by Bandwidth, Top Clients by Requests, Top Countries by Requests, Top Domains by Bandwidth, Top Domains by Requests, Top Referrers, Top Server Errors, Top Services by Bandwidth, Top URL by Bandwidth, Top URL by Requests, Total Request Size Over Time, Total Response Size Over Time, Unsuccessful Login Over Time, Visitor Platforms by Requests, Visitors Platform by Bandwidth, Visitors Platform Over Time, Visits by Countries Over Time, Worldwide Location of Clients



## Parser:
```
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 2 as Service_Ip, 3 as Service_Port
| parse regex "HTTP\/[\d\.]+\s+\d+\s+\d+\s+\d+\s+\d+\s+\d+\s+\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\s+\d+\s+\d+\s+(?<agent>.+)"
| parse regex field=agent "(?<OS>Mac OS) (?<Version>[^;\)]+?)(?:;|\))" nodrop 
| parse regex field=agent "(?<OS>Windows)(?: NT | )(?<Version>[\d.]+)" nodrop 
| parse regex field=agent "(?<OS>Linux) (?<Version>\S+?)(?:\)|;)" nodrop 
| parse regex field=agent "\((?<OS>iPhone).+? CPU iPhone OS (?<Version>.+?) like Mac"  nodrop 
| parse regex field=agent "\((?<OS>iPad).+? CPU OS (?<Version>.+?) like Mac"  nodrop 
| parse regex field=agent " (?<OS>Android) (?<Version>[\d\.]+)" nodrop 
| parse regex "(?<OS>SAMSUNG).+?(?<Version>(?:GT-\w+|SGH-\w+|SPH-\w+|SCH-\w+))"
 `n```
### Use Cases:
Admin Access Locations, Alerts Severity, Allowed Threat Locations, Allowed Traffic - Details, Allowed Traffic - Threat Intel, Allowed Traffic - Threat Intel - Actors, Allowed Traffic - Threat Intel - Confidence, Allowed Traffic by Attack Category, Allowed Traffic by Severity, Allowed Traffic by Unit Name, Attack Origins, Attack Trend, Attacks by Service IP, Blocked Threat Locations, Blocked Traffic - Details, Blocked Traffic - Threat Intel, Blocked Traffic - Threat Intel - Actors, Blocked Traffic - Threat Intel - Confidence, Blocked Traffic by Attack Category, Blocked Traffic by Severity, Blocked Traffic by Unit Name, Change Type Over Time, Client Access Type, CPU usage Alert Outlier, Destination Locations, Firmware Storage Alert Outlier, Log Level Distribution - System Logs, Log Storage Alert Outlier, Memory Usage Alert Outlier, Modified Object Types, Outlier - Allowed Network Traffic, Outlier - Allowed Traffic, Outlier - Blocked Network Traffic, Outlier - Blocked Traffic, Recent - Attacks, Recent - Audit Logs, Recent - Cluster Activities, Recent Alerts in System Logs, Rule Distribution, Rule Type Distribution, Severity - Network Logs, Source Locations, Top 10 ACL Rules, Top 10 Destinations, Top 10 Module Names, Top 10 OS Versions, Top 10 Sources, Top 10 Transaction Types, Top Admins, Top Attacked Domains, Top Attacked Services, Top Attacked URLs, Top Attackers, Top Attacking Country/Region, Top Attacking Referrers, Top Attacking User Agents, Top Countries by Requests, Top Referrers, Unsuccessful Login Over Time, Visitor Platforms by Requests



## Parser:
```
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 2 as Service_Ip, 3 as Service_Port, 12 as Response_Code
 `n```
### Use Cases:
Admin Access Locations, Alerts Severity, Allowed Threat Locations, Allowed Traffic - Details, Allowed Traffic - Threat Intel, Allowed Traffic - Threat Intel - Actors, Allowed Traffic - Threat Intel - Confidence, Allowed Traffic by Attack Category, Allowed Traffic by Severity, Allowed Traffic by Unit Name, Attack Origins, Attack Trend, Attacks by Service IP, Blocked Threat Locations, Blocked Traffic - Details, Blocked Traffic - Threat Intel, Blocked Traffic - Threat Intel - Actors, Blocked Traffic - Threat Intel - Confidence, Blocked Traffic by Attack Category, Blocked Traffic by Severity, Blocked Traffic by Unit Name, Browsers and Operating Systems, Cache Hit Percentage Over Time, Cache Performance, Change Type Over Time, Client Access Type, Client Errors Over Time, Client Location 4XX Errors, CPU usage Alert Outlier, Destination Locations, Error Responses by Server, Firmware Storage Alert Outlier, HTTP Methods Over Time, HTTP Protocols Over Time, HTTP Versions, Log Level Distribution - System Logs, Log Storage Alert Outlier, Memory Usage Alert Outlier, Modified Object Types, Outlier - Allowed Network Traffic, Outlier - Allowed Traffic, Outlier - Blocked Network Traffic, Outlier - Blocked Traffic, Outlier - Client Errors(4XX), Outlier - Server Errors(5XX), Performance (ms) by Service, Recent - Attacks, Recent - Audit Logs, Recent - Cluster Activities, Recent Alerts in System Logs, Response Code Distribution, Rule Distribution, Rule Type Distribution, Server Errors(5XX) Over Time, Severity - Network Logs, Source Locations, Top 10 ACL Rules, Top 10 Destinations, Top 10 Module Names, Top 10 OS Versions, Top 10 Sources, Top 10 Transaction Types, Top 5 Backend Servers, Top 5 Clients Causing 4XX Erros, Top 5 URIs - 404 Responses, Top Admins, Top Attacked Domains, Top Attacked Services, Top Attacked URLs, Top Attackers, Top Attacking Country/Region, Top Attacking Referrers, Top Attacking User Agents, Top Bots Observed, Top Client Errors, Top Clients by Bandwidth, Top Clients by Requests, Top Countries by Requests, Top Domains by Bandwidth, Top Domains by Requests, Top Referrers, Top Server Errors, Top Services by Bandwidth, Top URL by Bandwidth, Top URL by Requests, Total Request Size Over Time, Total Response Size Over Time, Unsuccessful Login Over Time, Visitor Platforms by Requests, Visitors Platform by Bandwidth, Visits by Countries Over Time, Worldwide Location of Clients



## Parser:
```
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 2 as Service_Ip, 3 as Service_Port, 15 as Cache_Hit
 `n```
### Use Cases:
Admin Access Locations, Alerts Severity, Allowed Threat Locations, Allowed Traffic - Details, Allowed Traffic - Threat Intel, Allowed Traffic - Threat Intel - Actors, Allowed Traffic - Threat Intel - Confidence, Allowed Traffic by Attack Category, Allowed Traffic by Severity, Allowed Traffic by Unit Name, Attack Origins, Attack Trend, Attacks by Service IP, Blocked Threat Locations, Blocked Traffic - Details, Blocked Traffic - Threat Intel, Blocked Traffic - Threat Intel - Actors, Blocked Traffic - Threat Intel - Confidence, Blocked Traffic by Attack Category, Blocked Traffic by Severity, Blocked Traffic by Unit Name, Browsers and Operating Systems, Cache Hit Percentage, Cache Hit Percentage Over Time, Cache Performance, Change Type Over Time, Client Access Type, Client Errors Over Time, Client Location 4XX Errors, CPU usage Alert Outlier, Destination Locations, Error Responses by Server, Firmware Storage Alert Outlier, HTTP Methods Over Time, HTTP Protocols Over Time, HTTP Versions, Log Level Distribution - System Logs, Log Storage Alert Outlier, Memory Usage Alert Outlier, Modified Object Types, Outlier - Allowed Network Traffic, Outlier - Allowed Traffic, Outlier - Blocked Network Traffic, Outlier - Blocked Traffic, Outlier - Client Errors(4XX), Outlier - Server Errors(5XX), Performance (ms) by Service, Recent - Attacks, Recent - Audit Logs, Recent - Cluster Activities, Recent Alerts in System Logs, Response Code Distribution, Rule Distribution, Rule Type Distribution, Server Errors(5XX) Over Time, Severity - Network Logs, Source Locations, Top 10 ACL Rules, Top 10 Destinations, Top 10 Module Names, Top 10 OS Versions, Top 10 Sources, Top 10 Transaction Types, Top 5 Backend Servers, Top 5 Clients Causing 4XX Erros, Top 5 URIs - 404 Responses, Top Admins, Top Attacked Domains, Top Attacked Services, Top Attacked URLs, Top Attackers, Top Attacking Country/Region, Top Attacking Referrers, Top Attacking User Agents, Top Bots Observed, Top Client Errors, Top Clients by Bandwidth, Top Clients by Requests, Top Countries by Requests, Top Domains by Bandwidth, Top Domains by Requests, Top Referrers, Top Server Errors, Top Services by Bandwidth, Top URL by Bandwidth, Top URL by Requests, Total Request Size Over Time, Total Response Size Over Time, Unsuccessful Login Over Time, Visitor Platforms by Requests, Visitors Platform by Bandwidth, Visits by Countries Over Time, Worldwide Location of Clients



## Parser:
```
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 2 as Service_Ip, 3 as Service_Port, 16 as Time_Taken
 `n```
### Use Cases:
Admin Access Locations, Alerts Severity, Allowed Threat Locations, Allowed Traffic - Details, Allowed Traffic - Threat Intel, Allowed Traffic - Threat Intel - Actors, Allowed Traffic - Threat Intel - Confidence, Allowed Traffic by Attack Category, Allowed Traffic by Severity, Allowed Traffic by Unit Name, Attack Origins, Attack Trend, Attacks by Service IP, Blocked Threat Locations, Blocked Traffic - Details, Blocked Traffic - Threat Intel, Blocked Traffic - Threat Intel - Actors, Blocked Traffic - Threat Intel - Confidence, Blocked Traffic by Attack Category, Blocked Traffic by Severity, Blocked Traffic by Unit Name, Browsers and Operating Systems, Cache Hit Percentage, Cache Hit Percentage Over Time, Cache Performance, Change Type Over Time, Client Access Type, Client Errors Over Time, Client Location 4XX Errors, CPU usage Alert Outlier, Destination Locations, Error Responses by Server, Firmware Storage Alert Outlier, HTTP Methods Over Time, HTTP Protocols Over Time, HTTP Versions, Log Level Distribution - System Logs, Log Storage Alert Outlier, Memory Usage Alert Outlier, Modified Object Types, Outlier - Allowed Network Traffic, Outlier - Allowed Traffic, Outlier - Blocked Network Traffic, Outlier - Blocked Traffic, Outlier - Client Errors(4XX), Outlier - Server Errors(5XX), Outlier - Service Performance, Performance (ms) by Service, Recent - Attacks, Recent - Audit Logs, Recent - Cluster Activities, Recent Alerts in System Logs, Response Code Distribution, Rule Distribution, Rule Type Distribution, Server Errors(5XX) Over Time, Severity - Network Logs, Source Locations, Top 10 ACL Rules, Top 10 Destinations, Top 10 Module Names, Top 10 OS Versions, Top 10 Sources, Top 10 Transaction Types, Top 5 Backend Servers, Top 5 Clients Causing 4XX Erros, Top 5 URIs - 404 Responses, Top Admins, Top Attacked Domains, Top Attacked Services, Top Attacked URLs, Top Attackers, Top Attacking Country/Region, Top Attacking Referrers, Top Attacking User Agents, Top Bots Observed, Top Client Errors, Top Clients by Bandwidth, Top Clients by Requests, Top Countries by Requests, Top Domains by Bandwidth, Top Domains by Requests, Top Referrers, Top Server Errors, Top Services by Bandwidth, Top URL by Bandwidth, Top URL by Requests, Total Request Size Over Time, Total Response Size Over Time, Unsuccessful Login Over Time, Visitor Platforms by Requests, Visitors Platform by Bandwidth, Visits by Countries Over Time, Worldwide Location of Clients



## Parser:
```
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 2 as Service_Ip, 3 as Service_Port, 4 as Client_Ip,12 as Response_Code
 `n```
### Use Cases:
Admin Access Locations, Alerts Severity, Allowed Threat Locations, Allowed Traffic - Details, Allowed Traffic - Threat Intel, Allowed Traffic - Threat Intel - Actors, Allowed Traffic - Threat Intel - Confidence, Allowed Traffic by Attack Category, Allowed Traffic by Severity, Allowed Traffic by Unit Name, Attack Origins, Attack Trend, Attacks by Service IP, Blocked Threat Locations, Blocked Traffic - Details, Blocked Traffic - Threat Intel, Blocked Traffic - Threat Intel - Actors, Blocked Traffic - Threat Intel - Confidence, Blocked Traffic by Attack Category, Blocked Traffic by Severity, Blocked Traffic by Unit Name, Browsers and Operating Systems, Cache Hit Percentage Over Time, Cache Performance, Change Type Over Time, Client Access Type, Client Errors Over Time, Client Location 4XX Errors, CPU usage Alert Outlier, Destination Locations, Error Responses by Server, Firmware Storage Alert Outlier, HTTP Methods Over Time, HTTP Protocols Over Time, HTTP Versions, Log Level Distribution - System Logs, Log Storage Alert Outlier, Memory Usage Alert Outlier, Modified Object Types, Outlier - Allowed Network Traffic, Outlier - Allowed Traffic, Outlier - Blocked Network Traffic, Outlier - Blocked Traffic, Outlier - Server Errors(5XX), Performance (ms) by Service, Recent - Attacks, Recent - Audit Logs, Recent - Cluster Activities, Recent Alerts in System Logs, Response Code Distribution, Rule Distribution, Rule Type Distribution, Server Errors(5XX) Over Time, Severity - Network Logs, Source Locations, Top 10 ACL Rules, Top 10 Destinations, Top 10 Module Names, Top 10 OS Versions, Top 10 Sources, Top 10 Transaction Types, Top 5 Backend Servers, Top 5 Clients Causing 4XX Erros, Top 5 URIs - 404 Responses, Top Admins, Top Attacked Domains, Top Attacked Services, Top Attacked URLs, Top Attackers, Top Attacking Country/Region, Top Attacking Referrers, Top Attacking User Agents, Top Bots Observed, Top Client Errors, Top Clients by Bandwidth, Top Clients by Requests, Top Countries by Requests, Top Domains by Bandwidth, Top Domains by Requests, Top Referrers, Top Server Errors, Top Services by Bandwidth, Top URL by Bandwidth, Top URL by Requests, Total Request Size Over Time, Total Response Size Over Time, Unsuccessful Login Over Time, Visitor Platforms by Requests, Visitors Platform by Bandwidth, Visits by Countries Over Time, Worldwide Location of Clients



## Parser:
```
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 25 as URL, 13 as Bytes_Sent, 2 as Service_Ip, 3 as Service_Port
 `n```
### Use Cases:
Admin Access Locations, Alerts Severity, Allowed Threat Locations, Allowed Traffic - Details, Allowed Traffic - Threat Intel, Allowed Traffic - Threat Intel - Actors, Allowed Traffic - Threat Intel - Confidence, Allowed Traffic by Attack Category, Allowed Traffic by Severity, Allowed Traffic by Unit Name, Attack Origins, Attack Trend, Attacks by Service IP, Blocked Threat Locations, Blocked Traffic - Details, Blocked Traffic - Threat Intel, Blocked Traffic - Threat Intel - Actors, Blocked Traffic - Threat Intel - Confidence, Blocked Traffic by Attack Category, Blocked Traffic by Severity, Blocked Traffic by Unit Name, Browsers and Operating Systems, Change Type Over Time, Client Access Type, Client Errors Over Time, Client Location 4XX Errors, CPU usage Alert Outlier, Destination Locations, Error Responses by Server, Firmware Storage Alert Outlier, HTTP Methods Over Time, HTTP Protocols Over Time, HTTP Versions, Log Level Distribution - System Logs, Log Storage Alert Outlier, Memory Usage Alert Outlier, Modified Object Types, Outlier - Allowed Network Traffic, Outlier - Allowed Traffic, Outlier - Blocked Network Traffic, Outlier - Blocked Traffic, Recent - Attacks, Recent - Audit Logs, Recent - Cluster Activities, Recent Alerts in System Logs, Rule Distribution, Rule Type Distribution, Server Errors(5XX) Over Time, Severity - Network Logs, Source Locations, Top 10 ACL Rules, Top 10 Destinations, Top 10 Module Names, Top 10 OS Versions, Top 10 Sources, Top 10 Transaction Types, Top 5 Backend Servers, Top 5 Clients Causing 4XX Erros, Top 5 URIs - 404 Responses, Top Admins, Top Attacked Domains, Top Attacked Services, Top Attacked URLs, Top Attackers, Top Attacking Country/Region, Top Attacking Referrers, Top Attacking User Agents, Top Bots Observed, Top Client Errors, Top Clients by Bandwidth, Top Clients by Requests, Top Countries by Requests, Top Referrers, Top Server Errors, Top URL by Bandwidth, Total Request Size Over Time, Total Response Size Over Time, Unsuccessful Login Over Time, Visitor Platforms by Requests, Visitors Platform by Bandwidth, Visits by Countries Over Time



## Parser:
```
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 25 as URL, 2 as Service_Ip, 3 as Service_Port
 `n```
### Use Cases:
Admin Access Locations, Alerts Severity, Allowed Threat Locations, Allowed Traffic - Details, Allowed Traffic - Threat Intel, Allowed Traffic - Threat Intel - Actors, Allowed Traffic - Threat Intel - Confidence, Allowed Traffic by Attack Category, Allowed Traffic by Severity, Allowed Traffic by Unit Name, Attack Origins, Attack Trend, Attacks by Service IP, Blocked Threat Locations, Blocked Traffic - Details, Blocked Traffic - Threat Intel, Blocked Traffic - Threat Intel - Actors, Blocked Traffic - Threat Intel - Confidence, Blocked Traffic by Attack Category, Blocked Traffic by Severity, Blocked Traffic by Unit Name, Browsers and Operating Systems, Cache Performance, Change Type Over Time, Client Access Type, Client Errors Over Time, Client Location 4XX Errors, CPU usage Alert Outlier, Destination Locations, Error Responses by Server, Firmware Storage Alert Outlier, HTTP Methods Over Time, HTTP Protocols Over Time, HTTP Versions, Log Level Distribution - System Logs, Log Storage Alert Outlier, Memory Usage Alert Outlier, Modified Object Types, Outlier - Allowed Network Traffic, Outlier - Allowed Traffic, Outlier - Blocked Network Traffic, Outlier - Blocked Traffic, Recent - Attacks, Recent - Audit Logs, Recent - Cluster Activities, Recent Alerts in System Logs, Rule Distribution, Rule Type Distribution, Server Errors(5XX) Over Time, Severity - Network Logs, Source Locations, Top 10 ACL Rules, Top 10 Destinations, Top 10 Module Names, Top 10 OS Versions, Top 10 Sources, Top 10 Transaction Types, Top 5 Backend Servers, Top 5 Clients Causing 4XX Erros, Top 5 URIs - 404 Responses, Top Admins, Top Attacked Domains, Top Attacked Services, Top Attacked URLs, Top Attackers, Top Attacking Country/Region, Top Attacking Referrers, Top Attacking User Agents, Top Bots Observed, Top Client Errors, Top Clients by Bandwidth, Top Clients by Requests, Top Countries by Requests, Top Referrers, Top Server Errors, Top URL by Bandwidth, Top URL by Requests, Total Request Size Over Time, Total Response Size Over Time, Unsuccessful Login Over Time, Visitor Platforms by Requests, Visitors Platform by Bandwidth, Visits by Countries Over Time



## Parser:
```
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 27 as referrer, 2 as Service_Ip, 3 as Service_Port
 `n```
### Use Cases:
Admin Access Locations, Alerts Severity, Allowed Threat Locations, Allowed Traffic - Details, Allowed Traffic - Threat Intel, Allowed Traffic - Threat Intel - Actors, Allowed Traffic - Threat Intel - Confidence, Allowed Traffic by Attack Category, Allowed Traffic by Severity, Allowed Traffic by Unit Name, Attack Origins, Attack Trend, Attacks by Service IP, Blocked Threat Locations, Blocked Traffic - Details, Blocked Traffic - Threat Intel, Blocked Traffic - Threat Intel - Actors, Blocked Traffic - Threat Intel - Confidence, Blocked Traffic by Attack Category, Blocked Traffic by Severity, Blocked Traffic by Unit Name, Change Type Over Time, Client Access Type, CPU usage Alert Outlier, Destination Locations, Firmware Storage Alert Outlier, Log Level Distribution - System Logs, Log Storage Alert Outlier, Memory Usage Alert Outlier, Modified Object Types, Outlier - Allowed Network Traffic, Outlier - Allowed Traffic, Outlier - Blocked Network Traffic, Outlier - Blocked Traffic, Recent - Attacks, Recent - Audit Logs, Recent - Cluster Activities, Recent Alerts in System Logs, Rule Distribution, Rule Type Distribution, Severity - Network Logs, Source Locations, Top 10 ACL Rules, Top 10 Destinations, Top 10 Module Names, Top 10 Sources, Top 10 Transaction Types, Top Admins, Top Attacked Domains, Top Attacked Services, Top Attacked URLs, Top Attackers, Top Attacking Country/Region, Top Attacking Referrers, Top Attacking User Agents, Top Countries by Requests, Top Referrers, Unsuccessful Login Over Time



## Parser:
```
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 29 as agent, 2 as Service_Ip, 3 as Service_Port
| parse regex field=agent "(?<bot_name>facebook)externalhit?\W+" nodrop
| parse regex field=agent "Feedfetcher-(?<bot_name>Google?)\S+" nodrop
| parse regex field=agent "(?<bot_name>PaperLiBot?)/.+" nodrop
| parse regex field=agent "(?<bot_name>TweetmemeBot?)/.+" nodrop
| parse regex field=agent "(?<bot_name>msn?)bot\W" nodrop
| parse regex field=agent "(?<bot_name>Nutch?)-.+" nodrop
| parse regex field=agent "(?<bot_name>Google?)bot\W" nodrop
| parse regex field=agent "Feedfetcher-(?<bot_name>Google?)\W" nodrop
| parse regex field=agent "(?<bot_name>Yahoo?)!\s+Slurp[;/].+" nodrop
| parse regex field=agent "(?<bot_name>bing?)bot\W" nodrop
| parse regex field=agent "(?<bot_name>Bing?)Preview\W" nodrop
| parse regex field=agent "(?<bot_name>Sogou?)\s+web\s" nodrop
| parse regex field=agent "(?<bot_name>Yandex?)Bot\W" nodrop
| parse regex field=agent "(?<bot_name>rogerbot?)\W" nodrop
| parse regex field=agent "(?<bot_name>AddThis\.com?)\s+robot\s+" nodrop
| parse regex field=agent "(?<bot_name>ShareThis?)Fetcher/.+" nodrop
| parse regex field=agent "(?<bot_name>Ahrefs?)Bot/.+" nodrop
| parse regex field=agent "(?<bot_name>MetaURI?)\s+API/.+" nodrop
| parse regex field=agent "(?<bot_name>Showyou?)Bot\s+" nodrop
| parse regex field=agent "(?<bot_name>Google?)Producer;" nodrop
| parse regex field=agent "(?<bot_name>Ezooms?)\W" nodrop
| parse regex field=agent "(?<bot_name>Rockmelt?)Embedder\s+" nodrop 
| parse regex field=agent "(?<bot_name>Sosospider?)\W" nodrop 
| parse regex field=agent "(?<bot_name>Baidu?)spider" nodrop
| parse regex field=agent "(?<bot_name>Exabot?)\W" nodrop
| parse regex field=agent "(?<bot_name>Slackbot?)\W" nodrop
 `n```
### Use Cases:
Admin Access Locations, Alerts Severity, Allowed Threat Locations, Allowed Traffic - Details, Allowed Traffic - Threat Intel, Allowed Traffic - Threat Intel - Actors, Allowed Traffic - Threat Intel - Confidence, Allowed Traffic by Attack Category, Allowed Traffic by Severity, Allowed Traffic by Unit Name, Attack Origins, Attack Trend, Attacks by Service IP, Blocked Threat Locations, Blocked Traffic - Details, Blocked Traffic - Threat Intel, Blocked Traffic - Threat Intel - Actors, Blocked Traffic - Threat Intel - Confidence, Blocked Traffic by Attack Category, Blocked Traffic by Severity, Blocked Traffic by Unit Name, Change Type Over Time, Client Access Type, CPU usage Alert Outlier, Destination Locations, Firmware Storage Alert Outlier, Log Level Distribution - System Logs, Log Storage Alert Outlier, Memory Usage Alert Outlier, Modified Object Types, Outlier - Allowed Network Traffic, Outlier - Allowed Traffic, Outlier - Blocked Network Traffic, Outlier - Blocked Traffic, Recent - Attacks, Recent - Audit Logs, Recent - Cluster Activities, Recent Alerts in System Logs, Rule Distribution, Rule Type Distribution, Severity - Network Logs, Source Locations, Top 10 ACL Rules, Top 10 Destinations, Top 10 Module Names, Top 10 OS Versions, Top 10 Sources, Top 10 Transaction Types, Top Admins, Top Attacked Domains, Top Attacked Services, Top Attacked URLs, Top Attackers, Top Attacking Country/Region, Top Attacking Referrers, Top Attacking User Agents, Top Bots Observed, Top Clients by Bandwidth, Top Countries by Requests, Top Referrers, Unsuccessful Login Over Time, Visitor Platforms by Requests, Visits by Countries Over Time



## Parser:
```
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 4 as Client_Ip, 13 as Bytes_Sent, 2 as Service_Ip, 3 as Service_Port
 `n```
### Use Cases:
Admin Access Locations, Alerts Severity, Allowed Threat Locations, Allowed Traffic - Details, Allowed Traffic - Threat Intel, Allowed Traffic - Threat Intel - Actors, Allowed Traffic - Threat Intel - Confidence, Allowed Traffic by Attack Category, Allowed Traffic by Severity, Allowed Traffic by Unit Name, Attack Origins, Attack Trend, Attacks by Service IP, Blocked Threat Locations, Blocked Traffic - Details, Blocked Traffic - Threat Intel, Blocked Traffic - Threat Intel - Actors, Blocked Traffic - Threat Intel - Confidence, Blocked Traffic by Attack Category, Blocked Traffic by Severity, Blocked Traffic by Unit Name, Change Type Over Time, Client Access Type, CPU usage Alert Outlier, Destination Locations, Firmware Storage Alert Outlier, Log Level Distribution - System Logs, Log Storage Alert Outlier, Memory Usage Alert Outlier, Modified Object Types, Outlier - Allowed Network Traffic, Outlier - Allowed Traffic, Outlier - Blocked Network Traffic, Outlier - Blocked Traffic, Recent - Attacks, Recent - Audit Logs, Recent - Cluster Activities, Recent Alerts in System Logs, Rule Distribution, Rule Type Distribution, Severity - Network Logs, Source Locations, Top 10 ACL Rules, Top 10 Destinations, Top 10 Module Names, Top 10 OS Versions, Top 10 Sources, Top 10 Transaction Types, Top Admins, Top Attacked Domains, Top Attacked Services, Top Attacked URLs, Top Attackers, Top Attacking Country/Region, Top Attacking Referrers, Top Attacking User Agents, Top Clients by Bandwidth, Top Countries by Requests, Top Referrers, Unsuccessful Login Over Time, Visitor Platforms by Requests



## Parser:
```
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 4 as Client_Ip, 2 as Service_Ip, 3 as Service_Port
 `n```
### Use Cases:
Admin Access Locations, Alerts Severity, Allowed Threat Locations, Allowed Traffic - Details, Allowed Traffic - Threat Intel, Allowed Traffic - Threat Intel - Actors, Allowed Traffic - Threat Intel - Confidence, Allowed Traffic by Attack Category, Allowed Traffic by Severity, Allowed Traffic by Unit Name, Attack Origins, Attack Trend, Attacks by Service IP, Blocked Threat Locations, Blocked Traffic - Details, Blocked Traffic - Threat Intel, Blocked Traffic - Threat Intel - Actors, Blocked Traffic - Threat Intel - Confidence, Blocked Traffic by Attack Category, Blocked Traffic by Severity, Blocked Traffic by Unit Name, Browsers and Operating Systems, Cache Hit Percentage Over Time, Cache Performance, Change Type Over Time, Client Access Type, Client Errors Over Time, Client Location 4XX Errors, CPU usage Alert Outlier, Destination Locations, Error Responses by Server, Firmware Storage Alert Outlier, HTTP Methods Over Time, HTTP Protocols Over Time, HTTP Versions, Log Level Distribution - System Logs, Log Storage Alert Outlier, Memory Usage Alert Outlier, Modified Object Types, Outlier - Allowed Network Traffic, Outlier - Allowed Traffic, Outlier - Blocked Network Traffic, Outlier - Blocked Traffic, Outlier - Server Errors(5XX), Performance (ms) by Service, Recent - Attacks, Recent - Audit Logs, Recent - Cluster Activities, Recent Alerts in System Logs, Rule Distribution, Rule Type Distribution, Server Errors(5XX) Over Time, Severity - Network Logs, Source Locations, Top 10 ACL Rules, Top 10 Destinations, Top 10 Module Names, Top 10 OS Versions, Top 10 Sources, Top 10 Transaction Types, Top 5 Backend Servers, Top 5 Clients Causing 4XX Erros, Top 5 URIs - 404 Responses, Top Admins, Top Attacked Domains, Top Attacked Services, Top Attacked URLs, Top Attackers, Top Attacking Country/Region, Top Attacking Referrers, Top Attacking User Agents, Top Bots Observed, Top Client Errors, Top Clients by Bandwidth, Top Clients by Requests, Top Countries by Requests, Top Domains by Bandwidth, Top Domains by Requests, Top Referrers, Top Server Errors, Top Services by Bandwidth, Top URL by Bandwidth, Top URL by Requests, Total Request Size Over Time, Total Response Size Over Time, Unsuccessful Login Over Time, Visitor Platforms by Requests, Visitors Platform by Bandwidth, Visits by Countries Over Time, Worldwide Location of Clients



## Parser:
```
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 4 as Client_Ip, 2 as Service_Ip, 3 as Service_Port, 21 as Response_Type, 12 as Response_Code, 17 as Backend_Server
 `n```
### Use Cases:
Admin Access Locations, Alerts Severity, Allowed Threat Locations, Allowed Traffic - Details, Allowed Traffic - Threat Intel, Allowed Traffic - Threat Intel - Actors, Allowed Traffic - Threat Intel - Confidence, Allowed Traffic by Attack Category, Allowed Traffic by Severity, Allowed Traffic by Unit Name, Attack Origins, Attack Trend, Attacks by Service IP, Blocked Threat Locations, Blocked Traffic - Details, Blocked Traffic - Threat Intel, Blocked Traffic - Threat Intel - Actors, Blocked Traffic - Threat Intel - Confidence, Blocked Traffic by Attack Category, Blocked Traffic by Severity, Blocked Traffic by Unit Name, Browsers and Operating Systems, Change Type Over Time, Client Access Type, Client Errors Over Time, Client Location 4XX Errors, CPU usage Alert Outlier, Destination Locations, Error Responses by Server, Firmware Storage Alert Outlier, HTTP Protocols Over Time, HTTP Versions, Log Level Distribution - System Logs, Log Storage Alert Outlier, Memory Usage Alert Outlier, Modified Object Types, Outlier - Allowed Network Traffic, Outlier - Allowed Traffic, Outlier - Blocked Network Traffic, Outlier - Blocked Traffic, Recent - Attacks, Recent - Audit Logs, Recent - Cluster Activities, Recent Alerts in System Logs, Rule Distribution, Rule Type Distribution, Server Errors(5XX) Over Time, Severity - Network Logs, Source Locations, Top 10 ACL Rules, Top 10 Destinations, Top 10 Module Names, Top 10 OS Versions, Top 10 Sources, Top 10 Transaction Types, Top 5 Backend Servers, Top 5 Clients Causing 4XX Erros, Top 5 URIs - 404 Responses, Top Admins, Top Attacked Domains, Top Attacked Services, Top Attacked URLs, Top Attackers, Top Attacking Country/Region, Top Attacking Referrers, Top Attacking User Agents, Top Bots Observed, Top Client Errors, Top Clients by Bandwidth, Top Clients by Requests, Top Countries by Requests, Top Referrers, Top Server Errors, Total Request Size Over Time, Unsuccessful Login Over Time, Visitor Platforms by Requests, Visitors Platform by Bandwidth, Visits by Countries Over Time



## Parser:
```
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 4 as Client_Ip, 2 as Service_Ip, 3 as Service_Port, 21 as Response_Type, 17 as Backend_Server
 `n```
### Use Cases:
Admin Access Locations, Alerts Severity, Allowed Threat Locations, Allowed Traffic - Details, Allowed Traffic - Threat Intel, Allowed Traffic - Threat Intel - Actors, Allowed Traffic - Threat Intel - Confidence, Allowed Traffic by Attack Category, Allowed Traffic by Severity, Allowed Traffic by Unit Name, Attack Origins, Attack Trend, Attacks by Service IP, Blocked Threat Locations, Blocked Traffic - Details, Blocked Traffic - Threat Intel, Blocked Traffic - Threat Intel - Actors, Blocked Traffic - Threat Intel - Confidence, Blocked Traffic by Attack Category, Blocked Traffic by Severity, Blocked Traffic by Unit Name, Browsers and Operating Systems, Change Type Over Time, Client Access Type, CPU usage Alert Outlier, Destination Locations, Firmware Storage Alert Outlier, Log Level Distribution - System Logs, Log Storage Alert Outlier, Memory Usage Alert Outlier, Modified Object Types, Outlier - Allowed Network Traffic, Outlier - Allowed Traffic, Outlier - Blocked Network Traffic, Outlier - Blocked Traffic, Recent - Attacks, Recent - Audit Logs, Recent - Cluster Activities, Recent Alerts in System Logs, Rule Distribution, Rule Type Distribution, Server Errors(5XX) Over Time, Severity - Network Logs, Source Locations, Top 10 ACL Rules, Top 10 Destinations, Top 10 Module Names, Top 10 OS Versions, Top 10 Sources, Top 10 Transaction Types, Top 5 Backend Servers, Top Admins, Top Attacked Domains, Top Attacked Services, Top Attacked URLs, Top Attackers, Top Attacking Country/Region, Top Attacking Referrers, Top Attacking User Agents, Top Bots Observed, Top Clients by Bandwidth, Top Clients by Requests, Top Countries by Requests, Top Referrers, Unsuccessful Login Over Time, Visitor Platforms by Requests, Visitors Platform by Bandwidth, Visits by Countries Over Time



## Parser:
```
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 4 as Client_Ip, 25 as URL, 2 as Service_Ip, 3 as Service_Port, 21 as Response_Type, 12 as Response_Code, 17 as Backend_Server
 `n```
### Use Cases:
Admin Access Locations, Alerts Severity, Allowed Threat Locations, Allowed Traffic - Details, Allowed Traffic - Threat Intel, Allowed Traffic - Threat Intel - Actors, Allowed Traffic - Threat Intel - Confidence, Allowed Traffic by Attack Category, Allowed Traffic by Severity, Allowed Traffic by Unit Name, Attack Origins, Attack Trend, Attacks by Service IP, Blocked Threat Locations, Blocked Traffic - Details, Blocked Traffic - Threat Intel, Blocked Traffic - Threat Intel - Actors, Blocked Traffic - Threat Intel - Confidence, Blocked Traffic by Attack Category, Blocked Traffic by Severity, Blocked Traffic by Unit Name, Browsers and Operating Systems, Change Type Over Time, Client Access Type, Client Errors Over Time, Client Location 4XX Errors, CPU usage Alert Outlier, Destination Locations, Error Responses by Server, Firmware Storage Alert Outlier, HTTP Protocols Over Time, HTTP Versions, Log Level Distribution - System Logs, Log Storage Alert Outlier, Memory Usage Alert Outlier, Modified Object Types, Outlier - Allowed Network Traffic, Outlier - Allowed Traffic, Outlier - Blocked Network Traffic, Outlier - Blocked Traffic, Recent - Attacks, Recent - Audit Logs, Recent - Cluster Activities, Recent Alerts in System Logs, Rule Distribution, Rule Type Distribution, Server Errors(5XX) Over Time, Severity - Network Logs, Source Locations, Top 10 ACL Rules, Top 10 Destinations, Top 10 Module Names, Top 10 OS Versions, Top 10 Sources, Top 10 Transaction Types, Top 5 Backend Servers, Top 5 URIs - 404 Responses, Top Admins, Top Attacked Domains, Top Attacked Services, Top Attacked URLs, Top Attackers, Top Attacking Country/Region, Top Attacking Referrers, Top Attacking User Agents, Top Bots Observed, Top Client Errors, Top Clients by Bandwidth, Top Clients by Requests, Top Countries by Requests, Top Referrers, Top Server Errors, Unsuccessful Login Over Time, Visitor Platforms by Requests, Visitors Platform by Bandwidth, Visits by Countries Over Time



## Parser:
```
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 8 as Http_Method, 4 as Client_Ip, 2 as Service_Ip, 3 as Service_Port, 21 as Response_Type, 17 as Backend_Server
 `n```
### Use Cases:
Admin Access Locations, Alerts Severity, Allowed Threat Locations, Allowed Traffic - Details, Allowed Traffic - Threat Intel, Allowed Traffic - Threat Intel - Actors, Allowed Traffic - Threat Intel - Confidence, Allowed Traffic by Attack Category, Allowed Traffic by Severity, Allowed Traffic by Unit Name, Attack Origins, Attack Trend, Attacks by Service IP, Blocked Threat Locations, Blocked Traffic - Details, Blocked Traffic - Threat Intel, Blocked Traffic - Threat Intel - Actors, Blocked Traffic - Threat Intel - Confidence, Blocked Traffic by Attack Category, Blocked Traffic by Severity, Blocked Traffic by Unit Name, Browsers and Operating Systems, Change Type Over Time, Client Access Type, Client Errors Over Time, Client Location 4XX Errors, CPU usage Alert Outlier, Destination Locations, Error Responses by Server, Firmware Storage Alert Outlier, HTTP Methods Over Time, HTTP Protocols Over Time, HTTP Versions, Log Level Distribution - System Logs, Log Storage Alert Outlier, Memory Usage Alert Outlier, Modified Object Types, Outlier - Allowed Network Traffic, Outlier - Allowed Traffic, Outlier - Blocked Network Traffic, Outlier - Blocked Traffic, Recent - Attacks, Recent - Audit Logs, Recent - Cluster Activities, Recent Alerts in System Logs, Rule Distribution, Rule Type Distribution, Server Errors(5XX) Over Time, Severity - Network Logs, Source Locations, Top 10 ACL Rules, Top 10 Destinations, Top 10 Module Names, Top 10 OS Versions, Top 10 Sources, Top 10 Transaction Types, Top 5 Backend Servers, Top 5 Clients Causing 4XX Erros, Top 5 URIs - 404 Responses, Top Admins, Top Attacked Domains, Top Attacked Services, Top Attacked URLs, Top Attackers, Top Attacking Country/Region, Top Attacking Referrers, Top Attacking User Agents, Top Bots Observed, Top Client Errors, Top Clients by Bandwidth, Top Clients by Requests, Top Countries by Requests, Top Referrers, Top Server Errors, Total Request Size Over Time, Total Response Size Over Time, Unsuccessful Login Over Time, Visitor Platforms by Requests, Visitors Platform by Bandwidth, Visits by Countries Over Time



## Parser:
```
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 9 as Http_Protocol, 4 as Client_Ip, 2 as Service_Ip, 3 as Service_Port, 21 as Response_Type, 17 as Backend_Server
 `n```
### Use Cases:
Admin Access Locations, Alerts Severity, Allowed Threat Locations, Allowed Traffic - Details, Allowed Traffic - Threat Intel, Allowed Traffic - Threat Intel - Actors, Allowed Traffic - Threat Intel - Confidence, Allowed Traffic by Attack Category, Allowed Traffic by Severity, Allowed Traffic by Unit Name, Attack Origins, Attack Trend, Attacks by Service IP, Blocked Threat Locations, Blocked Traffic - Details, Blocked Traffic - Threat Intel, Blocked Traffic - Threat Intel - Actors, Blocked Traffic - Threat Intel - Confidence, Blocked Traffic by Attack Category, Blocked Traffic by Severity, Blocked Traffic by Unit Name, Browsers and Operating Systems, Change Type Over Time, Client Access Type, CPU usage Alert Outlier, Destination Locations, Firmware Storage Alert Outlier, HTTP Protocols Over Time, Log Level Distribution - System Logs, Log Storage Alert Outlier, Memory Usage Alert Outlier, Modified Object Types, Outlier - Allowed Network Traffic, Outlier - Allowed Traffic, Outlier - Blocked Network Traffic, Outlier - Blocked Traffic, Recent - Attacks, Recent - Audit Logs, Recent - Cluster Activities, Recent Alerts in System Logs, Rule Distribution, Rule Type Distribution, Server Errors(5XX) Over Time, Severity - Network Logs, Source Locations, Top 10 ACL Rules, Top 10 Destinations, Top 10 Module Names, Top 10 OS Versions, Top 10 Sources, Top 10 Transaction Types, Top 5 Backend Servers, Top Admins, Top Attacked Domains, Top Attacked Services, Top Attacked URLs, Top Attackers, Top Attacking Country/Region, Top Attacking Referrers, Top Attacking User Agents, Top Bots Observed, Top Clients by Bandwidth, Top Clients by Requests, Top Countries by Requests, Top Referrers, Unsuccessful Login Over Time, Visitor Platforms by Requests, Visitors Platform by Bandwidth, Visits by Countries Over Time



## Parser:
```
| parse regex "(?<Unit_Name>[^ ]+) WF(?<Log>.*)"
| parse field=Log " * * * * * * * * * * [*] * * * * \"*\" * * * * *" as Severity, Attack_Type, Client_Ip, Client_Port, Service_Ip, Service_Port, Rule, Rule_Type, Action, Follow_Up_Action, Attack_Details, Method, URL, Protocol, Session_Id, User_Agent, Proxy_Ip, Proxy_Port, User, Referrer, UID
 `n```
### Use Cases:
Admin Access Locations, Alerts Severity, Allowed Threat Locations, Allowed Traffic - Details, Allowed Traffic - Threat Intel, Allowed Traffic - Threat Intel - Actors, Allowed Traffic - Threat Intel - Confidence, Allowed Traffic by Attack Category, Allowed Traffic by Severity, Allowed Traffic by Unit Name, Attack Origins, Attack Trend, Attacks by Service IP, Blocked Threat Locations, Blocked Traffic - Details, Blocked Traffic - Threat Intel, Blocked Traffic - Threat Intel - Actors, Blocked Traffic - Threat Intel - Confidence, Blocked Traffic by Attack Category, Blocked Traffic by Severity, Blocked Traffic by Unit Name, Change Type Over Time, Client Access Type, CPU usage Alert Outlier, Destination Locations, Firmware Storage Alert Outlier, Log Level Distribution - System Logs, Log Storage Alert Outlier, Memory Usage Alert Outlier, Modified Object Types, Outlier - Allowed Network Traffic, Outlier - Allowed Traffic, Outlier - Blocked Network Traffic, Outlier - Blocked Traffic, Recent - Attacks, Recent - Audit Logs, Recent - Cluster Activities, Recent Alerts in System Logs, Rule Distribution, Rule Type Distribution, Severity - Network Logs, Source Locations, Top 10 ACL Rules, Top 10 Destinations, Top 10 Module Names, Top 10 Sources, Top 10 Transaction Types, Top Admins, Top Attacked Domains, Top Attacked Services, Top Attacked URLs, Top Attackers, Top Attacking Country/Region, Top Attacking Referrers, Top Attacking User Agents, Unsuccessful Login Over Time



## Parser:
```
| parse regex "(?<Unit_Name>[^ ]+) WF(?<Log>.*)"
| parse field=Log " * * * * * * * * * * [*] * * * * \"*\" * * * * *" as Severity, Attack_Type, Client_Ip, Client_Port, Service_Ip, Service_Port, Rule, Rule_Type, Action, Follow_Up_Action, Attack_Details, Method, URL, Protocol, Session_Id, User_Agent, Proxy_Ip, Proxy_Port, User, Referrer, UID
| json field=raw "labels[*].name" as label_name 
 `n```
### Use Cases:
Admin Access Locations, Alerts Severity, Allowed Threat Locations, Allowed Traffic - Details, Allowed Traffic - Threat Intel, Allowed Traffic - Threat Intel - Actors, Allowed Traffic - Threat Intel - Confidence, Attack Origins, Attack Trend, Attacks by Service IP, Blocked Traffic - Details, Blocked Traffic - Threat Intel, Blocked Traffic - Threat Intel - Actors, Blocked Traffic - Threat Intel - Confidence, Change Type Over Time, Client Access Type, CPU usage Alert Outlier, Destination Locations, Firmware Storage Alert Outlier, Log Level Distribution - System Logs, Log Storage Alert Outlier, Memory Usage Alert Outlier, Modified Object Types, Outlier - Allowed Network Traffic, Outlier - Allowed Traffic, Outlier - Blocked Network Traffic, Recent - Audit Logs, Recent - Cluster Activities, Recent Alerts in System Logs, Rule Distribution, Rule Type Distribution, Severity - Network Logs, Source Locations, Top 10 ACL Rules, Top 10 Destinations, Top 10 Module Names, Top 10 Sources, Top 10 Transaction Types, Top Admins, Top Attacked Domains, Top Attacked Services, Top Attacked URLs, Top Attackers, Top Attacking Country/Region, Top Attacking Referrers, Top Attacking User Agents, Unsuccessful Login Over Time



## Parser:
```
| parse regex "(?<Unit_Name>[^ ]+) WF(?<Log>.*)"
| parse field=Log " * * * * * * * * * * [*] * * * * \"*\" * * * * *" as Severity, Attack_Type, Client_Ip, Client_Port, Service_Ip, Service_Port, Rule, Rule_Type, Action, Follow_Up_Action, Attack_Details, Method, URL, Protocol, Session_Id, User_Agent, Proxy_Ip, Proxy_Port, User, Referrer, UID
| split URL delim='/' extract 1 as Host
 `n```
### Use Cases:
Admin Access Locations, Allowed Traffic - Threat Intel - Actors, Allowed Traffic - Threat Intel - Confidence, Attack Origins, Attack Trend, Change Type Over Time, Client Access Type, CPU usage Alert Outlier, Destination Locations, Firmware Storage Alert Outlier, Log Level Distribution - System Logs, Log Storage Alert Outlier, Memory Usage Alert Outlier, Modified Object Types, Outlier - Allowed Network Traffic, Outlier - Blocked Network Traffic, Recent - Audit Logs, Recent - Cluster Activities, Recent Alerts in System Logs, Rule Distribution, Severity - Network Logs, Source Locations, Top 10 ACL Rules, Top 10 Destinations, Top 10 Module Names, Top 10 Sources, Top 10 Transaction Types, Top Admins, Top Attacked Domains, Top Attacked Services, Top Attacked URLs, Top Attackers, Top Attacking User Agents, Unsuccessful Login Over Time


