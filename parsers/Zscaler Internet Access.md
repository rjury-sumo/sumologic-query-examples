# Parsers For Zscaler Internet Access

## Parser:
```
| json "sourcetype", "event.event_id", "event.protocol", "event.action", "event.urlcategory", "event.serverip", "event.location", "event.ClientIP", "event.user", "event.hostname", "event.clientpublicIP", "event.threatname", "event.threatcategory", "event.appname", "event.threatclass", "event.urlclass" as sourcetype,event_id,protocol,action,urlcategory,serverip,location,ClientIP,user,hostname,clientpublicIP,threatname,threatcategory, appname,threatclass,urlclass nodrop
 
```
### Use Cases:
Advanced Security Risk Categories, Advanced Security Risks by Category and Location, Advanced Security Risks by Category and Users, Allowed Requests, Allowed Response, Authenticated Users Blocked, Authenticated Users Blocked Over Time, Blocked Events Outliers, Blocked Traffic, Denied Events, Denied Requests, Denied Response, Denied to Allowed Ratio, Denied to Allowed Ratio - Outlier, Destination vs Source Volume by Category, DNS Logs, File Based Threats Outlier, File Classification Threats, File Threats by Risk Score, File Threats By User, Firewall Logs, General Activity by Super Category and Sub Category, General Browsing by Location, Location of Allowed Activities, Location of Denied Activites, Locations Blocked, Locations Blocked Over Time, Logs by Category, Logs by Source, MB In by Top 5 Countries, MB Out by Top 5 Countries, Non-General Activity by App Class, Non-General Activity by App Name, Non-General Activity Top Named Users, Outliers by Blocked Users, Protocol Transports Over Time, Server Locations, Threat Categories, Threats by App, Threats by File Class, Threats by File Types, Threats by Location and Category, Threats by User and Category, Threats Submitted to Sandbox, Top 10 Blocked Base URLs, Top 10 Blocked Locations, Top 10 Blocked URL Categories, Top 10 Blocked Users, Top 10 Reasons, Top 10 Requested URLs, Top 10 Slowest URLs, Top General Browsing by Named Users, Transactions, Transactions Allowed, Transactions Blocked, Transactions Over Time, Tunnel Events, Tunnel Logs, Users Over Time, Web Logs



## Parser:
```
| json "sourcetype", "event.user" as sourcetype, user
 
```
### Use Cases:
Advanced Security Risk Categories, Advanced Security Risks by Category and Location, Advanced Security Risks by Category and Users, Allowed Requests, Allowed Response, Authenticated Users Blocked, Authenticated Users Blocked Over Time, Blocked Events Outliers, Blocked Traffic, Denied Events, Denied Requests, Denied Response, Denied to Allowed Ratio, Denied to Allowed Ratio - Outlier, Destination vs Source Volume by Category, DNS Logs, File Based Threats Outlier, File Classification Threats, File Threats by Risk Score, File Threats By User, Firewall Logs, General Activity by Super Category and Sub Category, General Browsing by Location, Location of Allowed Activities, Location of Denied Activites, Locations Blocked, Locations Blocked Over Time, Logs by Category, Logs by Source, MB In by Top 5 Countries, MB Out by Top 5 Countries, Non-General Activity by App Class, Non-General Activity by App Name, Non-General Activity Top Named Users, Outliers by Blocked Users, Protocol Transports Over Time, Server Locations, Threat Categories, Threats by App, Threats by File Class, Threats by File Types, Threats by Location and Category, Threats by User and Category, Threats Submitted to Sandbox, Top 10 Blocked Base URLs, Top 10 Blocked Locations, Top 10 Blocked URL Categories, Top 10 Blocked Users, Top 10 Reasons, Top 10 Requested URLs, Top 10 Slowest URLs, Top General Browsing by Named Users, Transactions, Transactions Allowed, Transactions Blocked, Transactions Over Time, Tunnel Events, Tunnel Logs, Users Over Time, Web Logs



## Parser:
```
| json field=_raw "event.clientpublicIP", "event.user" as src_ip, src_user
 
```
### Use Cases:
Advanced Security Risk Categories, Advanced Security Risks by Category and Location, Advanced Security Risks by Category and Users, Allowed Requests, Allowed Response, Authenticated Users Blocked, Authenticated Users Blocked Over Time, Blocked Events Outliers, Blocked Traffic, Denied Events, Denied Requests, Denied Response, Denied to Allowed Ratio, Denied to Allowed Ratio - Outlier, Destination vs Source Volume by Category, DNS Logs, File Based Threats Outlier, File Classification Threats, File Threats by Risk Score, File Threats By User, Firewall Logs, General Activity by Super Category and Sub Category, General Browsing by Location, Location of Allowed Activities, Location of Denied Activites, Locations Blocked, Locations Blocked Over Time, Logs by Category, Logs by Source, MB In by Top 5 Countries, MB Out by Top 5 Countries, Non-General Activity by App Class, Non-General Activity by App Name, Non-General Activity Top Named Users, Outliers by Blocked Users, Protocol Transports Over Time, Server Locations, Threat Categories, Threats by App, Threats by File Class, Threats by File Types, Threats by Location and Category, Threats by User and Category, Threats Submitted to Sandbox, Top 10 Blocked Base URLs, Top 10 Blocked Locations, Top 10 Blocked URL Categories, Top 10 Blocked Users, Top 10 Reasons, Top 10 Requested URLs, Top 10 Slowest URLs, Top General Browsing by Named Users, Transactions, Transactions Allowed, Transactions Blocked, Transactions Over Time, Tunnel Events, Tunnel Logs, Users Over Time, Web Logs



## Parser:
```
| json field=_raw "event.clientpublicIP", "event.user" as src_ip, src_user
| json field=_raw "event.urlcategory", "event.urlsupercategory" as category, supercategory
 
```
### Use Cases:
Advanced Security Risk Categories, Advanced Security Risks by Category and Location, Advanced Security Risks by Category and Users, Allowed Requests, Allowed Response, Authenticated Users Blocked, Authenticated Users Blocked Over Time, Blocked Events Outliers, Blocked Traffic, Denied Events, Denied Requests, Denied Response, Denied to Allowed Ratio, Denied to Allowed Ratio - Outlier, Destination vs Source Volume by Category, DNS Logs, File Based Threats Outlier, File Classification Threats, File Threats by Risk Score, File Threats By User, Firewall Logs, General Activity by Super Category and Sub Category, General Browsing by Location, Location of Allowed Activities, Location of Denied Activites, Locations Blocked, Locations Blocked Over Time, Logs by Category, Logs by Source, MB In by Top 5 Countries, MB Out by Top 5 Countries, Non-General Activity by App Class, Non-General Activity by App Name, Non-General Activity Top Named Users, Outliers by Blocked Users, Protocol Transports Over Time, Server Locations, Threat Categories, Threats by App, Threats by File Class, Threats by File Types, Threats by Location and Category, Threats by User and Category, Threats Submitted to Sandbox, Top 10 Blocked Base URLs, Top 10 Blocked Locations, Top 10 Blocked URL Categories, Top 10 Blocked Users, Top 10 Reasons, Top 10 Requested URLs, Top 10 Slowest URLs, Top General Browsing by Named Users, Transactions, Transactions Allowed, Transactions Blocked, Transactions Over Time, Tunnel Events, Tunnel Logs, Users Over Time, Web Logs



## Parser:
```
| json field=_raw "event.clientpublicIP", "event.user", "event.action" as src_ip, src_user, action
 
```
### Use Cases:
Advanced Security Risk Categories, Advanced Security Risks by Category and Location, Advanced Security Risks by Category and Users, Allowed Requests, Allowed Response, Authenticated Users Blocked, Authenticated Users Blocked Over Time, Blocked Events Outliers, Blocked Traffic, Denied Events, Denied Requests, Denied Response, Denied to Allowed Ratio, Denied to Allowed Ratio - Outlier, Destination vs Source Volume by Category, DNS Logs, File Based Threats Outlier, File Classification Threats, File Threats by Risk Score, File Threats By User, Firewall Logs, General Activity by Super Category and Sub Category, General Browsing by Location, Location of Allowed Activities, Location of Denied Activites, Locations Blocked, Locations Blocked Over Time, Logs by Category, Logs by Source, MB In by Top 5 Countries, MB Out by Top 5 Countries, Non-General Activity by App Class, Non-General Activity by App Name, Non-General Activity Top Named Users, Outliers by Blocked Users, Protocol Transports Over Time, Server Locations, Threat Categories, Threats by App, Threats by File Class, Threats by File Types, Threats by Location and Category, Threats by User and Category, Threats Submitted to Sandbox, Top 10 Blocked Base URLs, Top 10 Blocked Locations, Top 10 Blocked URL Categories, Top 10 Blocked Users, Top 10 Reasons, Top 10 Requested URLs, Top 10 Slowest URLs, Top General Browsing by Named Users, Transactions, Transactions Allowed, Transactions Blocked, Transactions Over Time, Tunnel Events, Tunnel Logs, Users Over Time, Web Logs



## Parser:
```
| json field=_raw "event.clientpublicIP", "event.user", "event.appclass" as src_ip, src_user, appclass
 
```
### Use Cases:
Advanced Security Risk Categories, Advanced Security Risks by Category and Location, Advanced Security Risks by Category and Users, Allowed Requests, Allowed Response, Authenticated Users Blocked, Authenticated Users Blocked Over Time, Blocked Events Outliers, Blocked Traffic, Denied Events, Denied Requests, Denied Response, Denied to Allowed Ratio, Denied to Allowed Ratio - Outlier, Destination vs Source Volume by Category, DNS Logs, File Based Threats Outlier, File Classification Threats, File Threats by Risk Score, File Threats By User, Firewall Logs, General Activity by Super Category and Sub Category, General Browsing by Location, Location of Allowed Activities, Location of Denied Activites, Locations Blocked, Locations Blocked Over Time, Logs by Category, Logs by Source, MB In by Top 5 Countries, MB Out by Top 5 Countries, Non-General Activity by App Class, Non-General Activity by App Name, Non-General Activity Top Named Users, Outliers by Blocked Users, Protocol Transports Over Time, Server Locations, Threat Categories, Threats by App, Threats by File Class, Threats by File Types, Threats by Location and Category, Threats by User and Category, Threats Submitted to Sandbox, Top 10 Blocked Base URLs, Top 10 Blocked Locations, Top 10 Blocked URL Categories, Top 10 Blocked Users, Top 10 Reasons, Top 10 Requested URLs, Top 10 Slowest URLs, Top General Browsing by Named Users, Transactions, Transactions Allowed, Transactions Blocked, Transactions Over Time, Tunnel Events, Tunnel Logs, Users Over Time, Web Logs



## Parser:
```
| json field=_raw "event.clientpublicIP", "event.user", "event.appname" as src_ip, src_user, application
 
```
### Use Cases:
Advanced Security Risk Categories, Advanced Security Risks by Category and Location, Advanced Security Risks by Category and Users, Allowed Requests, Allowed Response, Authenticated Users Blocked, Authenticated Users Blocked Over Time, Blocked Events Outliers, Blocked Traffic, Denied Events, Denied Requests, Denied Response, Denied to Allowed Ratio, Denied to Allowed Ratio - Outlier, Destination vs Source Volume by Category, DNS Logs, File Based Threats Outlier, File Classification Threats, File Threats by Risk Score, File Threats By User, Firewall Logs, General Activity by Super Category and Sub Category, General Browsing by Location, Location of Allowed Activities, Location of Denied Activites, Locations Blocked, Locations Blocked Over Time, Logs by Category, Logs by Source, MB In by Top 5 Countries, MB Out by Top 5 Countries, Non-General Activity by App Class, Non-General Activity by App Name, Non-General Activity Top Named Users, Outliers by Blocked Users, Protocol Transports Over Time, Server Locations, Threat Categories, Threats by App, Threats by File Class, Threats by File Types, Threats by Location and Category, Threats by User and Category, Threats Submitted to Sandbox, Top 10 Blocked Base URLs, Top 10 Blocked Locations, Top 10 Blocked URL Categories, Top 10 Blocked Users, Top 10 Reasons, Top 10 Requested URLs, Top 10 Slowest URLs, Top General Browsing by Named Users, Transactions, Transactions Allowed, Transactions Blocked, Transactions Over Time, Tunnel Events, Tunnel Logs, Users Over Time, Web Logs



## Parser:
```
| json field=_raw "event.clientpublicIP", "event.user", "event.filetype", "event.threatname" as src_ip, src_user, filetype, threatname
 
```
### Use Cases:
Advanced Security Risk Categories, Advanced Security Risks by Category and Location, Advanced Security Risks by Category and Users, Allowed Requests, Allowed Response, Authenticated Users Blocked, Authenticated Users Blocked Over Time, Blocked Events Outliers, Blocked Traffic, Denied Events, Denied Requests, Denied Response, Denied to Allowed Ratio, Denied to Allowed Ratio - Outlier, Destination vs Source Volume by Category, DNS Logs, File Based Threats Outlier, File Classification Threats, File Threats by Risk Score, File Threats By User, Firewall Logs, General Activity by Super Category and Sub Category, General Browsing by Location, Location of Allowed Activities, Location of Denied Activites, Locations Blocked, Locations Blocked Over Time, Logs by Category, Logs by Source, MB In by Top 5 Countries, MB Out by Top 5 Countries, Non-General Activity by App Class, Non-General Activity by App Name, Non-General Activity Top Named Users, Outliers by Blocked Users, Protocol Transports Over Time, Server Locations, Threat Categories, Threats by App, Threats by File Class, Threats by File Types, Threats by Location and Category, Threats by User and Category, Threats Submitted to Sandbox, Top 10 Blocked Base URLs, Top 10 Blocked Locations, Top 10 Blocked URL Categories, Top 10 Blocked Users, Top 10 Reasons, Top 10 Requested URLs, Top 10 Slowest URLs, Top General Browsing by Named Users, Transactions, Transactions Allowed, Transactions Blocked, Transactions Over Time, Tunnel Events, Tunnel Logs, Users Over Time, Web Logs



## Parser:
```
| json field=_raw "event.clientpublicIP", "event.user", "event.filetype", "event.threatname", "event.appname" as src_ip, src_user, filetype, threat, application
 
```
### Use Cases:
Advanced Security Risk Categories, Advanced Security Risks by Category and Location, Advanced Security Risks by Category and Users, Allowed Requests, Allowed Response, Authenticated Users Blocked, Authenticated Users Blocked Over Time, Blocked Events Outliers, Blocked Traffic, Denied Events, Denied Requests, Denied Response, Denied to Allowed Ratio, Denied to Allowed Ratio - Outlier, Destination vs Source Volume by Category, DNS Logs, File Based Threats Outlier, File Classification Threats, File Threats by Risk Score, File Threats By User, Firewall Logs, General Activity by Super Category and Sub Category, General Browsing by Location, Location of Allowed Activities, Location of Denied Activites, Locations Blocked, Locations Blocked Over Time, Logs by Category, Logs by Source, MB In by Top 5 Countries, MB Out by Top 5 Countries, Non-General Activity by App Class, Non-General Activity by App Name, Non-General Activity Top Named Users, Outliers by Blocked Users, Protocol Transports Over Time, Server Locations, Threat Categories, Threats by App, Threats by File Class, Threats by File Types, Threats by Location and Category, Threats by User and Category, Threats Submitted to Sandbox, Top 10 Blocked Base URLs, Top 10 Blocked Locations, Top 10 Blocked URL Categories, Top 10 Blocked Users, Top 10 Reasons, Top 10 Requested URLs, Top 10 Slowest URLs, Top General Browsing by Named Users, Transactions, Transactions Allowed, Transactions Blocked, Transactions Over Time, Tunnel Events, Tunnel Logs, Users Over Time, Web Logs



## Parser:
```
| json field=_raw "event.clientpublicIP", "event.user", "event.filetype", "event.threatname", "event.fileclass" as src_ip, src_user, filetype, threat, fileclass
 
```
### Use Cases:
Advanced Security Risk Categories, Advanced Security Risks by Category and Location, Advanced Security Risks by Category and Users, Allowed Requests, Allowed Response, Authenticated Users Blocked, Authenticated Users Blocked Over Time, Blocked Events Outliers, Blocked Traffic, Denied Events, Denied Requests, Denied Response, Denied to Allowed Ratio, Denied to Allowed Ratio - Outlier, Destination vs Source Volume by Category, DNS Logs, File Based Threats Outlier, File Classification Threats, File Threats by Risk Score, File Threats By User, Firewall Logs, General Activity by Super Category and Sub Category, General Browsing by Location, Location of Allowed Activities, Location of Denied Activites, Locations Blocked, Locations Blocked Over Time, Logs by Category, Logs by Source, MB In by Top 5 Countries, MB Out by Top 5 Countries, Non-General Activity by App Class, Non-General Activity by App Name, Non-General Activity Top Named Users, Outliers by Blocked Users, Protocol Transports Over Time, Server Locations, Threat Categories, Threats by App, Threats by File Class, Threats by File Types, Threats by Location and Category, Threats by User and Category, Threats Submitted to Sandbox, Top 10 Blocked Base URLs, Top 10 Blocked Locations, Top 10 Blocked URL Categories, Top 10 Blocked Users, Top 10 Reasons, Top 10 Requested URLs, Top 10 Slowest URLs, Top General Browsing by Named Users, Transactions, Transactions Allowed, Transactions Blocked, Transactions Over Time, Tunnel Events, Tunnel Logs, Users Over Time, Web Logs



## Parser:
```
| json field=_raw "event.clientpublicIP", "event.user", "event.filetype", "event.threatname", "event.pagerisk" as src_ip, src_user, filetype, threat, pagerisk
 
```
### Use Cases:
Advanced Security Risk Categories, Advanced Security Risks by Category and Location, Advanced Security Risks by Category and Users, Allowed Requests, Allowed Response, Authenticated Users Blocked, Authenticated Users Blocked Over Time, Blocked Events Outliers, Blocked Traffic, Denied Events, Denied Requests, Denied Response, Denied to Allowed Ratio, Denied to Allowed Ratio - Outlier, Destination vs Source Volume by Category, DNS Logs, File Based Threats Outlier, File Classification Threats, File Threats by Risk Score, File Threats By User, Firewall Logs, General Activity by Super Category and Sub Category, General Browsing by Location, Location of Allowed Activities, Location of Denied Activites, Locations Blocked, Locations Blocked Over Time, Logs by Category, Logs by Source, MB In by Top 5 Countries, MB Out by Top 5 Countries, Non-General Activity by App Class, Non-General Activity by App Name, Non-General Activity Top Named Users, Outliers by Blocked Users, Protocol Transports Over Time, Server Locations, Threat Categories, Threats by App, Threats by File Class, Threats by File Types, Threats by Location and Category, Threats by User and Category, Threats Submitted to Sandbox, Top 10 Blocked Base URLs, Top 10 Blocked Locations, Top 10 Blocked URL Categories, Top 10 Blocked Users, Top 10 Reasons, Top 10 Requested URLs, Top 10 Slowest URLs, Top General Browsing by Named Users, Transactions, Transactions Allowed, Transactions Blocked, Transactions Over Time, Tunnel Events, Tunnel Logs, Users Over Time, Web Logs



## Parser:
```
| json field=_raw "event.clientpublicIP", "event.user", "event.location" as src_ip, src_user, location
 
```
### Use Cases:
Advanced Security Risk Categories, Advanced Security Risks by Category and Location, Advanced Security Risks by Category and Users, Allowed Requests, Allowed Response, Authenticated Users Blocked, Authenticated Users Blocked Over Time, Blocked Events Outliers, Blocked Traffic, Denied Events, Denied Requests, Denied Response, Denied to Allowed Ratio, Denied to Allowed Ratio - Outlier, Destination vs Source Volume by Category, DNS Logs, File Based Threats Outlier, File Classification Threats, File Threats by Risk Score, File Threats By User, Firewall Logs, General Activity by Super Category and Sub Category, General Browsing by Location, Location of Allowed Activities, Location of Denied Activites, Locations Blocked, Locations Blocked Over Time, Logs by Category, Logs by Source, MB In by Top 5 Countries, MB Out by Top 5 Countries, Non-General Activity by App Class, Non-General Activity by App Name, Non-General Activity Top Named Users, Outliers by Blocked Users, Protocol Transports Over Time, Server Locations, Threat Categories, Threats by App, Threats by File Class, Threats by File Types, Threats by Location and Category, Threats by User and Category, Threats Submitted to Sandbox, Top 10 Blocked Base URLs, Top 10 Blocked Locations, Top 10 Blocked URL Categories, Top 10 Blocked Users, Top 10 Reasons, Top 10 Requested URLs, Top 10 Slowest URLs, Top General Browsing by Named Users, Transactions, Transactions Allowed, Transactions Blocked, Transactions Over Time, Tunnel Events, Tunnel Logs, Users Over Time, Web Logs



## Parser:
```
| json field=_raw "event.clientpublicIP", "event.user", "event.location", "event.action" as src_ip, src_user, location, action
 
```
### Use Cases:
Advanced Security Risk Categories, Advanced Security Risks by Category and Location, Advanced Security Risks by Category and Users, Allowed Requests, Allowed Response, Authenticated Users Blocked, Authenticated Users Blocked Over Time, Blocked Events Outliers, Blocked Traffic, Denied Events, Denied Requests, Denied Response, Denied to Allowed Ratio, Denied to Allowed Ratio - Outlier, Destination vs Source Volume by Category, DNS Logs, File Based Threats Outlier, File Classification Threats, File Threats by Risk Score, File Threats By User, Firewall Logs, General Activity by Super Category and Sub Category, General Browsing by Location, Location of Allowed Activities, Location of Denied Activites, Locations Blocked, Locations Blocked Over Time, Logs by Category, Logs by Source, MB In by Top 5 Countries, MB Out by Top 5 Countries, Non-General Activity by App Class, Non-General Activity by App Name, Non-General Activity Top Named Users, Outliers by Blocked Users, Protocol Transports Over Time, Server Locations, Threat Categories, Threats by App, Threats by File Class, Threats by File Types, Threats by Location and Category, Threats by User and Category, Threats Submitted to Sandbox, Top 10 Blocked Base URLs, Top 10 Blocked Locations, Top 10 Blocked URL Categories, Top 10 Blocked Users, Top 10 Reasons, Top 10 Requested URLs, Top 10 Slowest URLs, Top General Browsing by Named Users, Transactions, Transactions Allowed, Transactions Blocked, Transactions Over Time, Tunnel Events, Tunnel Logs, Users Over Time, Web Logs



## Parser:
```
| json field=_raw "event.clientpublicIP", "event.user", "event.location", "event.action", "event.reason" as src_ip, src_user, location, action, reason
 
```
### Use Cases:
Advanced Security Risk Categories, Advanced Security Risks by Category and Location, Advanced Security Risks by Category and Users, Allowed Requests, Allowed Response, Authenticated Users Blocked, Authenticated Users Blocked Over Time, Blocked Events Outliers, Blocked Traffic, Denied Events, Denied Requests, Denied Response, Denied to Allowed Ratio, Denied to Allowed Ratio - Outlier, Destination vs Source Volume by Category, DNS Logs, File Based Threats Outlier, File Classification Threats, File Threats by Risk Score, File Threats By User, Firewall Logs, General Activity by Super Category and Sub Category, General Browsing by Location, Location of Allowed Activities, Location of Denied Activites, Locations Blocked, Locations Blocked Over Time, Logs by Category, Logs by Source, MB In by Top 5 Countries, MB Out by Top 5 Countries, Non-General Activity by App Class, Non-General Activity by App Name, Non-General Activity Top Named Users, Outliers by Blocked Users, Protocol Transports Over Time, Server Locations, Threat Categories, Threats by App, Threats by File Class, Threats by File Types, Threats by Location and Category, Threats by User and Category, Threats Submitted to Sandbox, Top 10 Blocked Base URLs, Top 10 Blocked Locations, Top 10 Blocked URL Categories, Top 10 Blocked Users, Top 10 Reasons, Top 10 Requested URLs, Top 10 Slowest URLs, Top General Browsing by Named Users, Transactions, Transactions Allowed, Transactions Blocked, Transactions Over Time, Tunnel Events, Tunnel Logs, Users Over Time, Web Logs



## Parser:
```
| json field=_raw "event.clientpublicIP", "event.user", "event.location", "event.action", "event.reason", "event.urlcategory" as src_ip, src_user, location, action, reason, urlcategory
 
```
### Use Cases:
Advanced Security Risk Categories, Advanced Security Risks by Category and Location, Advanced Security Risks by Category and Users, Allowed Requests, Allowed Response, Authenticated Users Blocked, Authenticated Users Blocked Over Time, Blocked Events Outliers, Blocked Traffic, Denied Events, Denied Requests, Denied Response, Denied to Allowed Ratio, Denied to Allowed Ratio - Outlier, Destination vs Source Volume by Category, DNS Logs, File Based Threats Outlier, File Classification Threats, File Threats by Risk Score, File Threats By User, Firewall Logs, General Activity by Super Category and Sub Category, General Browsing by Location, Location of Allowed Activities, Location of Denied Activites, Locations Blocked, Locations Blocked Over Time, Logs by Category, Logs by Source, MB In by Top 5 Countries, MB Out by Top 5 Countries, Non-General Activity by App Class, Non-General Activity by App Name, Non-General Activity Top Named Users, Outliers by Blocked Users, Protocol Transports Over Time, Server Locations, Threat Categories, Threats by App, Threats by File Class, Threats by File Types, Threats by Location and Category, Threats by User and Category, Threats Submitted to Sandbox, Top 10 Blocked Base URLs, Top 10 Blocked Locations, Top 10 Blocked URL Categories, Top 10 Blocked Users, Top 10 Reasons, Top 10 Requested URLs, Top 10 Slowest URLs, Top General Browsing by Named Users, Transactions, Transactions Allowed, Transactions Blocked, Transactions Over Time, Tunnel Events, Tunnel Logs, Users Over Time, Web Logs



## Parser:
```
| json field=_raw "event.clientpublicIP", "event.user", "event.threatname", "event.filetype" as src_ip, src_user, threat, filetype
 
```
### Use Cases:
Advanced Security Risk Categories, Advanced Security Risks by Category and Location, Advanced Security Risks by Category and Users, Allowed Requests, Allowed Response, Authenticated Users Blocked, Authenticated Users Blocked Over Time, Blocked Events Outliers, Blocked Traffic, Denied Events, Denied Requests, Denied Response, Denied to Allowed Ratio, Denied to Allowed Ratio - Outlier, Destination vs Source Volume by Category, DNS Logs, File Based Threats Outlier, File Classification Threats, File Threats by Risk Score, File Threats By User, Firewall Logs, General Activity by Super Category and Sub Category, General Browsing by Location, Location of Allowed Activities, Location of Denied Activites, Locations Blocked, Locations Blocked Over Time, Logs by Category, Logs by Source, MB In by Top 5 Countries, MB Out by Top 5 Countries, Non-General Activity by App Class, Non-General Activity by App Name, Non-General Activity Top Named Users, Outliers by Blocked Users, Protocol Transports Over Time, Server Locations, Threat Categories, Threats by App, Threats by File Class, Threats by File Types, Threats by Location and Category, Threats by User and Category, Threats Submitted to Sandbox, Top 10 Blocked Base URLs, Top 10 Blocked Locations, Top 10 Blocked URL Categories, Top 10 Blocked Users, Top 10 Reasons, Top 10 Requested URLs, Top 10 Slowest URLs, Top General Browsing by Named Users, Transactions, Transactions Allowed, Transactions Blocked, Transactions Over Time, Tunnel Events, Tunnel Logs, Users Over Time, Web Logs



## Parser:
```
| json field=_raw "event.clientpublicIP", "event.user", "event.url", "event.action" as src_ip, src_user, url, action
| parse regex field=url "(?<baseurl>.+?)[:/]" nodrop
 
```
### Use Cases:
Advanced Security Risk Categories, Advanced Security Risks by Category and Location, Advanced Security Risks by Category and Users, Allowed Requests, Allowed Response, Authenticated Users Blocked, Authenticated Users Blocked Over Time, Blocked Events Outliers, Blocked Traffic, Denied Events, Denied Requests, Denied Response, Denied to Allowed Ratio, Denied to Allowed Ratio - Outlier, Destination vs Source Volume by Category, DNS Logs, File Based Threats Outlier, File Classification Threats, File Threats by Risk Score, File Threats By User, Firewall Logs, General Activity by Super Category and Sub Category, General Browsing by Location, Location of Allowed Activities, Location of Denied Activites, Locations Blocked, Locations Blocked Over Time, Logs by Category, Logs by Source, MB In by Top 5 Countries, MB Out by Top 5 Countries, Non-General Activity by App Class, Non-General Activity by App Name, Non-General Activity Top Named Users, Outliers by Blocked Users, Protocol Transports Over Time, Server Locations, Threat Categories, Threats by App, Threats by File Class, Threats by File Types, Threats by Location and Category, Threats by User and Category, Threats Submitted to Sandbox, Top 10 Blocked Base URLs, Top 10 Blocked Locations, Top 10 Blocked URL Categories, Top 10 Blocked Users, Top 10 Reasons, Top 10 Requested URLs, Top 10 Slowest URLs, Top General Browsing by Named Users, Transactions, Transactions Allowed, Transactions Blocked, Transactions Over Time, Tunnel Events, Tunnel Logs, Users Over Time, Web Logs



## Parser:
```
| json field=_raw "event.clientpublicIP", "event.user", "event.urlcategory", "event.action" as src_ip, src_user, category, action
 
```
### Use Cases:
Advanced Security Risk Categories, Advanced Security Risks by Category and Location, Advanced Security Risks by Category and Users, Allowed Requests, Allowed Response, Authenticated Users Blocked, Authenticated Users Blocked Over Time, Blocked Events Outliers, Blocked Traffic, Denied Events, Denied Requests, Denied Response, Denied to Allowed Ratio, Denied to Allowed Ratio - Outlier, Destination vs Source Volume by Category, DNS Logs, File Based Threats Outlier, File Classification Threats, File Threats by Risk Score, File Threats By User, Firewall Logs, General Activity by Super Category and Sub Category, General Browsing by Location, Location of Allowed Activities, Location of Denied Activites, Locations Blocked, Locations Blocked Over Time, Logs by Category, Logs by Source, MB In by Top 5 Countries, MB Out by Top 5 Countries, Non-General Activity by App Class, Non-General Activity by App Name, Non-General Activity Top Named Users, Outliers by Blocked Users, Protocol Transports Over Time, Server Locations, Threat Categories, Threats by App, Threats by File Class, Threats by File Types, Threats by Location and Category, Threats by User and Category, Threats Submitted to Sandbox, Top 10 Blocked Base URLs, Top 10 Blocked Locations, Top 10 Blocked URL Categories, Top 10 Blocked Users, Top 10 Reasons, Top 10 Requested URLs, Top 10 Slowest URLs, Top General Browsing by Named Users, Transactions, Transactions Allowed, Transactions Blocked, Transactions Over Time, Tunnel Events, Tunnel Logs, Users Over Time, Web Logs



## Parser:
```
| json field=_raw "event.clientpublicIP", "event.user", "event.urlcategory", "event.reason", "event.urlclass", "event.threatname", "event.location" as src_ip, src_user, category, reason, urlclass, threatname, location
 
```
### Use Cases:
Advanced Security Risk Categories, Advanced Security Risks by Category and Location, Advanced Security Risks by Category and Users, Allowed Requests, Allowed Response, Authenticated Users Blocked, Authenticated Users Blocked Over Time, Blocked Events Outliers, Blocked Traffic, Denied Events, Denied Requests, Denied Response, Denied to Allowed Ratio, Denied to Allowed Ratio - Outlier, Destination vs Source Volume by Category, DNS Logs, File Based Threats Outlier, File Classification Threats, File Threats by Risk Score, File Threats By User, Firewall Logs, General Activity by Super Category and Sub Category, General Browsing by Location, Location of Allowed Activities, Location of Denied Activites, Locations Blocked, Locations Blocked Over Time, Logs by Category, Logs by Source, MB In by Top 5 Countries, MB Out by Top 5 Countries, Non-General Activity by App Class, Non-General Activity by App Name, Non-General Activity Top Named Users, Outliers by Blocked Users, Protocol Transports Over Time, Server Locations, Threat Categories, Threats by App, Threats by File Class, Threats by File Types, Threats by Location and Category, Threats by User and Category, Threats Submitted to Sandbox, Top 10 Blocked Base URLs, Top 10 Blocked Locations, Top 10 Blocked URL Categories, Top 10 Blocked Users, Top 10 Reasons, Top 10 Requested URLs, Top 10 Slowest URLs, Top General Browsing by Named Users, Transactions, Transactions Allowed, Transactions Blocked, Transactions Over Time, Tunnel Events, Tunnel Logs, Users Over Time, Web Logs



## Parser:
```
| json field=_raw "event.clientpublicIP", "event.user", "event.urlcategory", "event.reason", "event.urlclass", "event.threatname", "event.location", "event.action" as src_ip, src_user, category, reason, urlclass, threatname, location,action
 
```
### Use Cases:
Advanced Security Risk Categories, Advanced Security Risks by Category and Location, Advanced Security Risks by Category and Users, Allowed Requests, Allowed Response, Authenticated Users Blocked, Authenticated Users Blocked Over Time, Blocked Events Outliers, Blocked Traffic, Denied Events, Denied Requests, Denied Response, Denied to Allowed Ratio, Denied to Allowed Ratio - Outlier, Destination vs Source Volume by Category, DNS Logs, File Based Threats Outlier, File Classification Threats, File Threats by Risk Score, File Threats By User, Firewall Logs, General Activity by Super Category and Sub Category, General Browsing by Location, Location of Allowed Activities, Location of Denied Activites, Locations Blocked, Locations Blocked Over Time, Logs by Category, Logs by Source, MB In by Top 5 Countries, MB Out by Top 5 Countries, Non-General Activity by App Class, Non-General Activity by App Name, Non-General Activity Top Named Users, Outliers by Blocked Users, Protocol Transports Over Time, Server Locations, Threat Categories, Threats by App, Threats by File Class, Threats by File Types, Threats by Location and Category, Threats by User and Category, Threats Submitted to Sandbox, Top 10 Blocked Base URLs, Top 10 Blocked Locations, Top 10 Blocked URL Categories, Top 10 Blocked Users, Top 10 Reasons, Top 10 Requested URLs, Top 10 Slowest URLs, Top General Browsing by Named Users, Transactions, Transactions Allowed, Transactions Blocked, Transactions Over Time, Tunnel Events, Tunnel Logs, Users Over Time, Web Logs



## Parser:
```
| json field=_raw "event.clientpublicIP", "event.user", "event.urlcategory", "event.reason", "event.urlclass", "event.threatname", "event.threatcategory" as src_ip, src_user, category, reason, urlclass, threatname, threatcategory
 
```
### Use Cases:
Advanced Security Risk Categories, Advanced Security Risks by Category and Location, Advanced Security Risks by Category and Users, Allowed Requests, Allowed Response, Authenticated Users Blocked, Authenticated Users Blocked Over Time, Blocked Events Outliers, Blocked Traffic, Denied Events, Denied Requests, Denied Response, Denied to Allowed Ratio, Denied to Allowed Ratio - Outlier, Destination vs Source Volume by Category, DNS Logs, File Based Threats Outlier, File Classification Threats, File Threats by Risk Score, File Threats By User, Firewall Logs, General Activity by Super Category and Sub Category, General Browsing by Location, Location of Allowed Activities, Location of Denied Activites, Locations Blocked, Locations Blocked Over Time, Logs by Category, Logs by Source, MB In by Top 5 Countries, MB Out by Top 5 Countries, Non-General Activity by App Class, Non-General Activity by App Name, Non-General Activity Top Named Users, Outliers by Blocked Users, Protocol Transports Over Time, Server Locations, Threat Categories, Threats by App, Threats by File Class, Threats by File Types, Threats by Location and Category, Threats by User and Category, Threats Submitted to Sandbox, Top 10 Blocked Base URLs, Top 10 Blocked Locations, Top 10 Blocked URL Categories, Top 10 Blocked Users, Top 10 Reasons, Top 10 Requested URLs, Top 10 Slowest URLs, Top General Browsing by Named Users, Transactions, Transactions Allowed, Transactions Blocked, Transactions Over Time, Tunnel Events, Tunnel Logs, Users Over Time, Web Logs



## Parser:
```
| json field=_raw "event.clientpublicIP", "event.user", "event.urlcategory", "event.reason", "event.urlclass", "event.threatname", "event.threatcategory", "event.location" as src_ip, src_user, category, reason, urlclass, threatname, threatcategory, location
 
```
### Use Cases:
Advanced Security Risk Categories, Advanced Security Risks by Category and Location, Advanced Security Risks by Category and Users, Allowed Requests, Allowed Response, Authenticated Users Blocked, Authenticated Users Blocked Over Time, Blocked Events Outliers, Blocked Traffic, Denied Events, Denied Requests, Denied Response, Denied to Allowed Ratio, Denied to Allowed Ratio - Outlier, Destination vs Source Volume by Category, DNS Logs, File Based Threats Outlier, File Classification Threats, File Threats by Risk Score, File Threats By User, Firewall Logs, General Activity by Super Category and Sub Category, General Browsing by Location, Location of Allowed Activities, Location of Denied Activites, Locations Blocked, Locations Blocked Over Time, Logs by Category, Logs by Source, MB In by Top 5 Countries, MB Out by Top 5 Countries, Non-General Activity by App Class, Non-General Activity by App Name, Non-General Activity Top Named Users, Outliers by Blocked Users, Protocol Transports Over Time, Server Locations, Threat Categories, Threats by App, Threats by File Class, Threats by File Types, Threats by Location and Category, Threats by User and Category, Threats Submitted to Sandbox, Top 10 Blocked Base URLs, Top 10 Blocked Locations, Top 10 Blocked URL Categories, Top 10 Blocked Users, Top 10 Reasons, Top 10 Requested URLs, Top 10 Slowest URLs, Top General Browsing by Named Users, Transactions, Transactions Allowed, Transactions Blocked, Transactions Over Time, Tunnel Events, Tunnel Logs, Users Over Time, Web Logs



## Parser:
```
| json field=_raw "event.filetype", "event.threatname", "event.user" as filetype, threatname, user
 
```
### Use Cases:
Advanced Security Risk Categories, Advanced Security Risks by Category and Location, Advanced Security Risks by Category and Users, Allowed Requests, Allowed Response, Authenticated Users Blocked, Authenticated Users Blocked Over Time, Blocked Events Outliers, Blocked Traffic, Denied Events, Denied Requests, Denied Response, Denied to Allowed Ratio, Denied to Allowed Ratio - Outlier, Destination vs Source Volume by Category, DNS Logs, File Based Threats Outlier, File Classification Threats, File Threats by Risk Score, File Threats By User, Firewall Logs, General Activity by Super Category and Sub Category, General Browsing by Location, Location of Allowed Activities, Location of Denied Activites, Locations Blocked, Locations Blocked Over Time, Logs by Category, Logs by Source, MB In by Top 5 Countries, MB Out by Top 5 Countries, Non-General Activity by App Class, Non-General Activity by App Name, Non-General Activity Top Named Users, Outliers by Blocked Users, Protocol Transports Over Time, Server Locations, Threat Categories, Threats by App, Threats by File Class, Threats by File Types, Threats by Location and Category, Threats by User and Category, Threats Submitted to Sandbox, Top 10 Blocked Base URLs, Top 10 Blocked Locations, Top 10 Blocked URL Categories, Top 10 Blocked Users, Top 10 Reasons, Top 10 Requested URLs, Top 10 Slowest URLs, Top General Browsing by Named Users, Transactions, Transactions Allowed, Transactions Blocked, Transactions Over Time, Tunnel Events, Tunnel Logs, Users Over Time, Web Logs



## Parser:
```
| json field=_raw "event.protocol", "event.user" as protocol, src_user
 
```
### Use Cases:
Advanced Security Risk Categories, Advanced Security Risks by Category and Location, Advanced Security Risks by Category and Users, Allowed Requests, Allowed Response, Authenticated Users Blocked, Authenticated Users Blocked Over Time, Blocked Events Outliers, Blocked Traffic, Denied Events, Denied Requests, Denied Response, Denied to Allowed Ratio, Denied to Allowed Ratio - Outlier, Destination vs Source Volume by Category, DNS Logs, File Based Threats Outlier, File Classification Threats, File Threats by Risk Score, File Threats By User, Firewall Logs, General Activity by Super Category and Sub Category, General Browsing by Location, Location of Allowed Activities, Location of Denied Activites, Locations Blocked, Locations Blocked Over Time, Logs by Category, Logs by Source, MB In by Top 5 Countries, MB Out by Top 5 Countries, Non-General Activity by App Class, Non-General Activity by App Name, Non-General Activity Top Named Users, Outliers by Blocked Users, Protocol Transports Over Time, Server Locations, Threat Categories, Threats by App, Threats by File Class, Threats by File Types, Threats by Location and Category, Threats by User and Category, Threats Submitted to Sandbox, Top 10 Blocked Base URLs, Top 10 Blocked Locations, Top 10 Blocked URL Categories, Top 10 Blocked Users, Top 10 Reasons, Top 10 Requested URLs, Top 10 Slowest URLs, Top General Browsing by Named Users, Transactions, Transactions Allowed, Transactions Blocked, Transactions Over Time, Tunnel Events, Tunnel Logs, Users Over Time, Web Logs



## Parser:
```
| json field=_raw "event.Recordtype", "event.tunneltype", "event.user", "event.sourceip", "event.destinationip", "event.event", "event.location" as Recordtype, tunneltype, user, sourceip, destinationip, event, location
 
```
### Use Cases:
Advanced Security Risk Categories, Advanced Security Risks by Category and Location, Advanced Security Risks by Category and Users, Allowed Requests, Allowed Response, Authenticated Users Blocked, Authenticated Users Blocked Over Time, Blocked Events Outliers, Blocked Traffic, Denied Events, Denied Requests, Denied Response, Denied to Allowed Ratio, Denied to Allowed Ratio - Outlier, Destination vs Source Volume by Category, DNS Logs, File Based Threats Outlier, File Classification Threats, File Threats by Risk Score, File Threats By User, Firewall Logs, General Activity by Super Category and Sub Category, General Browsing by Location, Location of Allowed Activities, Location of Denied Activites, Locations Blocked, Locations Blocked Over Time, Logs by Category, Logs by Source, MB In by Top 5 Countries, MB Out by Top 5 Countries, Non-General Activity by App Class, Non-General Activity by App Name, Non-General Activity Top Named Users, Outliers by Blocked Users, Protocol Transports Over Time, Server Locations, Threat Categories, Threats by App, Threats by File Class, Threats by File Types, Threats by Location and Category, Threats by User and Category, Threats Submitted to Sandbox, Top 10 Blocked Base URLs, Top 10 Blocked Locations, Top 10 Blocked URL Categories, Top 10 Blocked Users, Top 10 Reasons, Top 10 Requested URLs, Top 10 Slowest URLs, Top General Browsing by Named Users, Transactions, Transactions Allowed, Transactions Blocked, Transactions Over Time, Tunnel Events, Tunnel Logs, Users Over Time, Web Logs



## Parser:
```
| json field=_raw "event.urlcategory", "event.action", "event.user" as category, action, user
 
```
### Use Cases:
Advanced Security Risk Categories, Advanced Security Risks by Category and Location, Advanced Security Risks by Category and Users, Allowed Requests, Allowed Response, Authenticated Users Blocked, Authenticated Users Blocked Over Time, Blocked Events Outliers, Blocked Traffic, Denied Events, Denied Requests, Denied Response, Denied to Allowed Ratio, Denied to Allowed Ratio - Outlier, Destination vs Source Volume by Category, DNS Logs, File Based Threats Outlier, File Classification Threats, File Threats by Risk Score, File Threats By User, Firewall Logs, General Activity by Super Category and Sub Category, General Browsing by Location, Location of Allowed Activities, Location of Denied Activites, Locations Blocked, Locations Blocked Over Time, Logs by Category, Logs by Source, MB In by Top 5 Countries, MB Out by Top 5 Countries, Non-General Activity by App Class, Non-General Activity by App Name, Non-General Activity Top Named Users, Outliers by Blocked Users, Protocol Transports Over Time, Server Locations, Threat Categories, Threats by App, Threats by File Class, Threats by File Types, Threats by Location and Category, Threats by User and Category, Threats Submitted to Sandbox, Top 10 Blocked Base URLs, Top 10 Blocked Locations, Top 10 Blocked URL Categories, Top 10 Blocked Users, Top 10 Reasons, Top 10 Requested URLs, Top 10 Slowest URLs, Top General Browsing by Named Users, Transactions, Transactions Allowed, Transactions Blocked, Transactions Over Time, Tunnel Events, Tunnel Logs, Users Over Time, Web Logs



## Parser:
```
| json field=_raw "event.user" ,"event.requestsize", "event.responsesize", "event.urlcategory", "event.action" as src_user, src_bytes, dest_bytes, category, action
 
```
### Use Cases:
Advanced Security Risk Categories, Advanced Security Risks by Category and Location, Advanced Security Risks by Category and Users, Allowed Requests, Allowed Response, Authenticated Users Blocked, Authenticated Users Blocked Over Time, Blocked Events Outliers, Blocked Traffic, Denied Events, Denied Requests, Denied Response, Denied to Allowed Ratio, Denied to Allowed Ratio - Outlier, Destination vs Source Volume by Category, DNS Logs, File Based Threats Outlier, File Classification Threats, File Threats by Risk Score, File Threats By User, Firewall Logs, General Activity by Super Category and Sub Category, General Browsing by Location, Location of Allowed Activities, Location of Denied Activites, Locations Blocked, Locations Blocked Over Time, Logs by Category, Logs by Source, MB In by Top 5 Countries, MB Out by Top 5 Countries, Non-General Activity by App Class, Non-General Activity by App Name, Non-General Activity Top Named Users, Outliers by Blocked Users, Protocol Transports Over Time, Server Locations, Threat Categories, Threats by App, Threats by File Class, Threats by File Types, Threats by Location and Category, Threats by User and Category, Threats Submitted to Sandbox, Top 10 Blocked Base URLs, Top 10 Blocked Locations, Top 10 Blocked URL Categories, Top 10 Blocked Users, Top 10 Reasons, Top 10 Requested URLs, Top 10 Slowest URLs, Top General Browsing by Named Users, Transactions, Transactions Allowed, Transactions Blocked, Transactions Over Time, Tunnel Events, Tunnel Logs, Users Over Time, Web Logs



## Parser:
```
| json field=_raw "event.user", "event.department", "event.location", "event.reqaction", "event.resaction", "event.reqrulelabel", "event.resrulelabel", "event.dns_req", "event.dns_reqtype" , "event.dns_resp", "event.durationms", "event.srv_dip", "event.clt_sip", "event.category"  as user, department, location, reqaction, resaction, reqrulelabel, resrulelabel, dns_req, dns_reqtype, dns_resp, durationms, srv_dip, clt_sip, category
 
```
### Use Cases:
Advanced Security Risk Categories, Advanced Security Risks by Category and Location, Advanced Security Risks by Category and Users, Allowed Requests, Allowed Response, Authenticated Users Blocked, Authenticated Users Blocked Over Time, Blocked Events Outliers, Blocked Traffic, Denied Events, Denied Requests, Denied Response, Denied to Allowed Ratio, Denied to Allowed Ratio - Outlier, Destination vs Source Volume by Category, DNS Logs, File Based Threats Outlier, File Classification Threats, File Threats by Risk Score, File Threats By User, Firewall Logs, General Activity by Super Category and Sub Category, General Browsing by Location, Location of Allowed Activities, Location of Denied Activites, Locations Blocked, Locations Blocked Over Time, Logs by Category, Logs by Source, MB In by Top 5 Countries, MB Out by Top 5 Countries, Non-General Activity by App Class, Non-General Activity by App Name, Non-General Activity Top Named Users, Outliers by Blocked Users, Protocol Transports Over Time, Server Locations, Threat Categories, Threats by App, Threats by File Class, Threats by File Types, Threats by Location and Category, Threats by User and Category, Threats Submitted to Sandbox, Top 10 Blocked Base URLs, Top 10 Blocked Locations, Top 10 Blocked URL Categories, Top 10 Blocked Users, Top 10 Reasons, Top 10 Requested URLs, Top 10 Slowest URLs, Top General Browsing by Named Users, Transactions, Transactions Allowed, Transactions Blocked, Transactions Over Time, Tunnel Events, Tunnel Logs, Users Over Time, Web Logs



## Parser:
```
| json field=_raw "event.user", "event.location" as src_user, location
 
```
### Use Cases:
Advanced Security Risk Categories, Advanced Security Risks by Category and Location, Advanced Security Risks by Category and Users, Allowed Requests, Allowed Response, Authenticated Users Blocked, Authenticated Users Blocked Over Time, Blocked Events Outliers, Blocked Traffic, Denied Events, Denied Requests, Denied Response, Denied to Allowed Ratio, Denied to Allowed Ratio - Outlier, Destination vs Source Volume by Category, DNS Logs, File Based Threats Outlier, File Classification Threats, File Threats by Risk Score, File Threats By User, Firewall Logs, General Activity by Super Category and Sub Category, General Browsing by Location, Location of Allowed Activities, Location of Denied Activites, Locations Blocked, Locations Blocked Over Time, Logs by Category, Logs by Source, MB In by Top 5 Countries, MB Out by Top 5 Countries, Non-General Activity by App Class, Non-General Activity by App Name, Non-General Activity Top Named Users, Outliers by Blocked Users, Protocol Transports Over Time, Server Locations, Threat Categories, Threats by App, Threats by File Class, Threats by File Types, Threats by Location and Category, Threats by User and Category, Threats Submitted to Sandbox, Top 10 Blocked Base URLs, Top 10 Blocked Locations, Top 10 Blocked URL Categories, Top 10 Blocked Users, Top 10 Reasons, Top 10 Requested URLs, Top 10 Slowest URLs, Top General Browsing by Named Users, Transactions, Transactions Allowed, Transactions Blocked, Transactions Over Time, Tunnel Events, Tunnel Logs, Users Over Time, Web Logs



## Parser:
```
| json field=_raw "event.user", "event.requestsize", "event.serverip", "event.threatname", "event.action" as src_user,src_bytes, dest_ip, threatname, action
 
```
### Use Cases:
Advanced Security Risk Categories, Advanced Security Risks by Category and Location, Advanced Security Risks by Category and Users, Allowed Requests, Allowed Response, Authenticated Users Blocked, Authenticated Users Blocked Over Time, Blocked Events Outliers, Blocked Traffic, Denied Events, Denied Requests, Denied Response, Denied to Allowed Ratio, Denied to Allowed Ratio - Outlier, Destination vs Source Volume by Category, DNS Logs, File Based Threats Outlier, File Classification Threats, File Threats by Risk Score, File Threats By User, Firewall Logs, General Activity by Super Category and Sub Category, General Browsing by Location, Location of Allowed Activities, Location of Denied Activites, Locations Blocked, Locations Blocked Over Time, Logs by Category, Logs by Source, MB In by Top 5 Countries, MB Out by Top 5 Countries, Non-General Activity by App Class, Non-General Activity by App Name, Non-General Activity Top Named Users, Outliers by Blocked Users, Protocol Transports Over Time, Server Locations, Threat Categories, Threats by App, Threats by File Class, Threats by File Types, Threats by Location and Category, Threats by User and Category, Threats Submitted to Sandbox, Top 10 Blocked Base URLs, Top 10 Blocked Locations, Top 10 Blocked URL Categories, Top 10 Blocked Users, Top 10 Reasons, Top 10 Requested URLs, Top 10 Slowest URLs, Top General Browsing by Named Users, Transactions, Transactions Allowed, Transactions Blocked, Transactions Over Time, Tunnel Events, Tunnel Logs, Users Over Time, Web Logs



## Parser:
```
| json field=_raw "event.user", "event.responsesize", "event.serverip", "event.threatname", "event.action" as src_user,dest_bytes, dest_ip, threatname, action
 
```
### Use Cases:
Advanced Security Risk Categories, Advanced Security Risks by Category and Location, Advanced Security Risks by Category and Users, Allowed Requests, Allowed Response, Authenticated Users Blocked, Authenticated Users Blocked Over Time, Blocked Events Outliers, Blocked Traffic, Denied Events, Denied Requests, Denied Response, Denied to Allowed Ratio, Denied to Allowed Ratio - Outlier, Destination vs Source Volume by Category, DNS Logs, File Based Threats Outlier, File Classification Threats, File Threats by Risk Score, File Threats By User, Firewall Logs, General Activity by Super Category and Sub Category, General Browsing by Location, Location of Allowed Activities, Location of Denied Activites, Locations Blocked, Locations Blocked Over Time, Logs by Category, Logs by Source, MB In by Top 5 Countries, MB Out by Top 5 Countries, Non-General Activity by App Class, Non-General Activity by App Name, Non-General Activity Top Named Users, Outliers by Blocked Users, Protocol Transports Over Time, Server Locations, Threat Categories, Threats by App, Threats by File Class, Threats by File Types, Threats by Location and Category, Threats by User and Category, Threats Submitted to Sandbox, Top 10 Blocked Base URLs, Top 10 Blocked Locations, Top 10 Blocked URL Categories, Top 10 Blocked Users, Top 10 Reasons, Top 10 Requested URLs, Top 10 Slowest URLs, Top General Browsing by Named Users, Transactions, Transactions Allowed, Transactions Blocked, Transactions Over Time, Tunnel Events, Tunnel Logs, Users Over Time, Web Logs



## Parser:
```
| json field=_raw "sourcetype", "event.Recordtype", "event.tunneltype", "event.user", "event.sourceip", "event.destinationip", "event.event", "event.location" as sourcetype,Recordtype, tunneltype, user, sourceip, destinationip, event, location nodrop
 
```
### Use Cases:
Advanced Security Risk Categories, Advanced Security Risks by Category and Location, Advanced Security Risks by Category and Users, Allowed Requests, Allowed Response, Authenticated Users Blocked, Authenticated Users Blocked Over Time, Blocked Events Outliers, Blocked Traffic, Denied Events, Denied Requests, Denied Response, Denied to Allowed Ratio, Denied to Allowed Ratio - Outlier, Destination vs Source Volume by Category, DNS Logs, File Based Threats Outlier, File Classification Threats, File Threats by Risk Score, File Threats By User, Firewall Logs, General Activity by Super Category and Sub Category, General Browsing by Location, Location of Allowed Activities, Location of Denied Activites, Locations Blocked, Locations Blocked Over Time, Logs by Category, Logs by Source, MB In by Top 5 Countries, MB Out by Top 5 Countries, Non-General Activity by App Class, Non-General Activity by App Name, Non-General Activity Top Named Users, Outliers by Blocked Users, Protocol Transports Over Time, Server Locations, Threat Categories, Threats by App, Threats by File Class, Threats by File Types, Threats by Location and Category, Threats by User and Category, Threats Submitted to Sandbox, Top 10 Blocked Base URLs, Top 10 Blocked Locations, Top 10 Blocked URL Categories, Top 10 Blocked Users, Top 10 Reasons, Top 10 Requested URLs, Top 10 Slowest URLs, Top General Browsing by Named Users, Transactions, Transactions Allowed, Transactions Blocked, Transactions Over Time, Tunnel Events, Tunnel Logs, Users Over Time, Web Logs



## Parser:
```
| json field=_raw "sourcetype", "event.user", "event.department", "event.location", "event.reqaction", "event.resaction", "event.reqrulelabel", "event.resrulelabel", "event.dns_req", "event.dns_reqtype" , "event.dns_resp", "event.durationms", "event.srv_dip", "event.clt_sip", "event.category"  as sourcetype, user, department, location, reqaction, resaction, reqrulelabel, resrulelabel, dns_req, dns_reqtype, dns_resp, durationms, srv_dip, clt_sip, category nodrop
 
```
### Use Cases:
Advanced Security Risk Categories, Advanced Security Risks by Category and Location, Advanced Security Risks by Category and Users, Allowed Requests, Allowed Response, Authenticated Users Blocked, Authenticated Users Blocked Over Time, Blocked Events Outliers, Blocked Traffic, Denied Events, Denied Requests, Denied Response, Denied to Allowed Ratio, Denied to Allowed Ratio - Outlier, Destination vs Source Volume by Category, DNS Logs, File Based Threats Outlier, File Classification Threats, File Threats by Risk Score, File Threats By User, Firewall Logs, General Activity by Super Category and Sub Category, General Browsing by Location, Location of Allowed Activities, Location of Denied Activites, Locations Blocked, Locations Blocked Over Time, Logs by Category, Logs by Source, MB In by Top 5 Countries, MB Out by Top 5 Countries, Non-General Activity by App Class, Non-General Activity by App Name, Non-General Activity Top Named Users, Outliers by Blocked Users, Protocol Transports Over Time, Server Locations, Threat Categories, Threats by App, Threats by File Class, Threats by File Types, Threats by Location and Category, Threats by User and Category, Threats Submitted to Sandbox, Top 10 Blocked Base URLs, Top 10 Blocked Locations, Top 10 Blocked URL Categories, Top 10 Blocked Users, Top 10 Reasons, Top 10 Requested URLs, Top 10 Slowest URLs, Top General Browsing by Named Users, Transactions, Transactions Allowed, Transactions Blocked, Transactions Over Time, Tunnel Events, Tunnel Logs, Users Over Time, Web Logs



## Parser:
```
| json field=_raw "sourcetype", "event.user", "event.locationname", "event.action", "event.tuntype", "event.protocol", "event.destcountry", "event.rulelable", "event.threatcat", "event.threatname" as sourcetype, user, location, action, tuntype, protocol, destcountry, rulelable, threat_category, threat_name nodrop
 
```
### Use Cases:
Advanced Security Risk Categories, Advanced Security Risks by Category and Location, Advanced Security Risks by Category and Users, Allowed Requests, Allowed Response, Authenticated Users Blocked, Authenticated Users Blocked Over Time, Blocked Events Outliers, Blocked Traffic, Denied Events, Denied Requests, Denied Response, Denied to Allowed Ratio, Denied to Allowed Ratio - Outlier, Destination vs Source Volume by Category, DNS Logs, File Based Threats Outlier, File Classification Threats, File Threats by Risk Score, File Threats By User, Firewall Logs, General Activity by Super Category and Sub Category, General Browsing by Location, Location of Allowed Activities, Location of Denied Activites, Locations Blocked, Locations Blocked Over Time, Logs by Category, Logs by Source, MB In by Top 5 Countries, MB Out by Top 5 Countries, Non-General Activity by App Class, Non-General Activity by App Name, Non-General Activity Top Named Users, Outliers by Blocked Users, Protocol Transports Over Time, Server Locations, Threat Categories, Threats by App, Threats by File Class, Threats by File Types, Threats by Location and Category, Threats by User and Category, Threats Submitted to Sandbox, Top 10 Blocked Base URLs, Top 10 Blocked Locations, Top 10 Blocked URL Categories, Top 10 Blocked Users, Top 10 Reasons, Top 10 Requested URLs, Top 10 Slowest URLs, Top General Browsing by Named Users, Transactions, Transactions Allowed, Transactions Blocked, Transactions Over Time, Tunnel Events, Tunnel Logs, Users Over Time, Web Logs


