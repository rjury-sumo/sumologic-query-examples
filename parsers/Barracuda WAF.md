# Parsers For Barracuda WAF

**Barracuda WAF/Admin Activities/Admin Access Locations**
```
_sourceCategory={{_sourceCategory}} " AUDIT "
| parse regex "(?<Activity_Time>\d\d\d\d-\d\d-\d\d\s{1,3}.* )(?<Unit_Name>[^ ]+) AUDIT(?<Log>.*)"
| split Log delim=' ' extract 2 as Admin_Name, 3 as Client_Type, 4 as Login_Ip, 5 as Login_Port, 6 as Transaction_Type, 7 as Transaction_Id, 8 as Command_Name, 9 as Change_Type, 10 as Object_Type, 11 as Object_Name, 12 as Variable_Name, 13 as Old_Value, 14 as New_Value, 15 as Additional_Data
```

**Barracuda WAF/Admin Activities/Change Type Over Time**
```
_sourceCategory={{_sourceCategory}} " AUDIT "
| parse regex "(?<Activity_Time>\d\d\d\d-\d\d-\d\d\s{1,3}.* )(?<Unit_Name>[^ ]+) AUDIT(?<Log>.*)"
| split Log delim=' ' extract 2 as Admin_Name, 3 as Client_Type, 4 as Login_Ip, 5 as Login_Port, 6 as Transaction_Type, 7 as Transaction_Id, 8 as Command_Name, 9 as Change_Type, 10 as Object_Type, 11 as Object_Name, 12 as Variable_Name, 13 as Old_Value, 14 as New_Value, 15 as Additional_Data
```

**Barracuda WAF/Admin Activities/Client Access Type**
```
_sourceCategory={{_sourceCategory}} " AUDIT "
| parse regex "(?<Activity_Time>\d\d\d\d-\d\d-\d\d\s{1,3}.* )(?<Unit_Name>[^ ]+) AUDIT(?<Log>.*)"
| split Log delim=' ' extract 2 as Admin_Name, 3 as Client_Type, 4 as Login_Ip, 5 as Login_Port, 6 as Transaction_Type, 7 as Transaction_Id, 8 as Command_Name, 9 as Change_Type, 10 as Object_Type, 11 as Object_Name, 12 as Variable_Name, 13 as Old_Value, 14 as New_Value, 15 as Additional_Data
```

**Barracuda WAF/Admin Activities/Modified Object Types**
```
_sourceCategory={{_sourceCategory}} " AUDIT "
| parse regex "(?<Activity_Time>\d\d\d\d-\d\d-\d\d\s{1,3}.* )(?<Unit_Name>[^ ]+) AUDIT(?<Log>.*)"
| split Log delim=' ' extract 2 as Admin_Name, 3 as Client_Type, 4 as Login_Ip, 5 as Login_Port, 6 as Transaction_Type, 7 as Transaction_Id, 8 as Command_Name, 9 as Change_Type, 10 as Object_Type, 11 as Object_Name, 12 as Variable_Name, 13 as Old_Value, 14 as New_Value, 15 as Additional_Data
```

**Barracuda WAF/Admin Activities/Recent - Audit Logs**
```
_sourceCategory={{_sourceCategory}} " AUDIT "
| parse regex "(?<Unit_Name>[^ ]+) AUDIT(?<Log>.*)"
| split Log delim=' ' extract 2 as Admin_Name, 3 as Client_Type, 4 as Login_Ip, 5 as Login_Port, 6 as Transaction_Type, 7 as Transaction_Id, 8 as Command_Name, 9 as Change_Type, 10 as Object_Type, 11 as Object_Name, 12 as Variable_Name, 13 as Old_Value, 14 as New_Value, 15 as Additional_Data
```

**Barracuda WAF/Admin Activities/Top 10 Transaction Types**
```
_sourceCategory={{_sourceCategory}} " AUDIT "
| parse regex "(?<Activity_Time>\d\d\d\d-\d\d-\d\d\s{1,3}.* )(?<Unit_Name>[^ ]+) AUDIT(?<Log>.*)"
| split Log delim=' ' extract 2 as Admin_Name, 3 as Client_Type, 4 as Login_Ip, 5 as Login_Port, 6 as Transaction_Type, 7 as Transaction_Id, 8 as Command_Name, 9 as Change_Type, 10 as Object_Type, 11 as Object_Name, 12 as Variable_Name, 13 as Old_Value, 14 as New_Value, 15 as Additional_Data
```

**Barracuda WAF/Admin Activities/Top Admins**
```
_sourceCategory={{_sourceCategory}} " AUDIT "
| parse regex "(?<Activity_Time>\d\d\d\d-\d\d-\d\d\s{1,3}.* )(?<Unit_Name>[^ ]+) AUDIT(?<Log>.*)"
| split Log delim=' ' extract 2 as Admin_Name, 3 as Client_Type, 4 as Login_Ip, 5 as Login_Port, 6 as Transaction_Type, 7 as Transaction_Id, 8 as Command_Name, 9 as Change_Type, 10 as Object_Type, 11 as Object_Name, 12 as Variable_Name, 13 as Old_Value, 14 as New_Value, 15 as Additional_Data
```

**Barracuda WAF/Admin Activities/Unsuccessful Login Over Time**
```
_sourceCategory={{_sourceCategory}} " AUDIT " "UNSUCCESSFUL_LOGIN"
| parse regex "(?<Activity_Time>\d\d\d\d-\d\d-\d\d\s{1,3}.* )(?<Unit_Name>[^ ]+) AUDIT(?<Log>.*)"
| split Log delim=' ' extract 2 as Admin_Name, 3 as Client_Type, 4 as Login_Ip, 5 as Login_Port, 6 as Transaction_Type, 7 as Transaction_Id, 8 as Command_Name, 9 as Change_Type, 10 as Object_Type, 11 as Object_Name, 12 as Variable_Name, 13 as Old_Value, 14 as New_Value, 15 as Additional_Data
```

**Barracuda WAF/Client Traffic/Browsers and Operating Systems**
```
_sourceCategory={{_sourceCategory}} " TR "
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 2 as Service_Ip, 3 as Service_Port
| parse regex "HTTP\/[\d\.]+\s+\d+\s+\d+\s+\d+\s+\d+\s+\d+\s+\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\s+\d+\s+\d+\s+(?<agent>.+)"
```

**Barracuda WAF/Client Traffic/Top 10 OS Versions**
```
_sourceCategory={{_sourceCategory}} " TR "
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
```

**Barracuda WAF/Client Traffic/Top Bots Observed**
```
_sourceCategory={{_sourceCategory}} " TR " ("Googlebot" OR "AskJeeves" OR "Digger" OR "Lycos" OR "msnbot" OR "Inktomi Slurp" OR "Yahoo" OR "Nutch" OR "bingbot" OR
"BingPreview" OR "Mediapartners-Google" OR "proximic" OR "AhrefsBot" OR "AdsBot-Google" OR "Ezooms" OR "AddThis.com" OR "facebookexternalhit" OR
"MetaURI" OR "Feedfetcher-Google" OR "PaperLiBot" OR "TweetmemeBot" OR "Sogou web spider" OR "GoogleProducer" OR "RockmeltEmbedder" OR
"ShareThisFetcher" OR "YandexBot" OR "rogerbot-crawler" OR "ShowyouBot" OR "Baiduspider" OR "Sosospider" OR "Exabot" OR "Slackbot")
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
```

**Barracuda WAF/Client Traffic/Top Clients by Bandwidth**
```
_sourceCategory={{_sourceCategory}} " TR "
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 4 as Client_Ip, 13 as Bytes_Sent, 2 as Service_Ip, 3 as Service_Port
```

**Barracuda WAF/Client Traffic/Top Clients by Requests**
```
_sourceCategory={{_sourceCategory}} " TR "
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 4 as Client_Ip, 2 as Service_Ip, 3 as Service_Port
```

**Barracuda WAF/Client Traffic/Top Countries by Requests**
```
_sourceCategory={{_sourceCategory}} " TR "
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 4 as Client_Ip, 2 as Service_Ip, 3 as Service_Port
```

**Barracuda WAF/Client Traffic/Top Referrers**
```
_sourceCategory={{_sourceCategory}} " TR "
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 27 as referrer, 2 as Service_Ip, 3 as Service_Port
```

**Barracuda WAF/Client Traffic/Visitor Platforms by Requests**
```
_sourceCategory={{_sourceCategory}} " TR "
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 2 as Service_Ip, 3 as Service_Port
| parse regex "HTTP\/[\d\.]+\s+\d+\s+\d+\s+\d+\s+\d+\s+\d+\s+\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\s+\d+\s+\d+\s+(?<agent>.+)"
```

**Barracuda WAF/Client Traffic/Visitors Platform by Bandwidth**
```
_sourceCategory={{_sourceCategory}} " TR "
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 13 as Bytes_Sent, 2 as Service_Ip, 3 as Service_Port
| parse regex "HTTP\/[\d\.]+\s+\d+\s+\d+\s+\d+\s+\d+\s+\d+\s+\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\s+\d+\s+\d+\s+(?<agent>.+)"
```

**Barracuda WAF/Client Traffic/Visits by Countries Over Time**
```
_sourceCategory={{_sourceCategory}} " TR "
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 4 as Client_Ip, 2 as Service_Ip, 3 as Service_Port
```

**Barracuda WAF/Network Activities/Destination Locations**
```
_sourceCategory={{_sourceCategory}} " NF "
| parse regex "(?<Unit_Name>[^ ]+) NF(?<Log>.*)"
| parse field=Log " * * * * * * * * *" as Log_Level, Protocol, Source_Ip, Source_Port, Destination_Ip, Destination_Port, ACL_Policy, ACL_Name, Log_Details
```

**Barracuda WAF/Network Activities/Outlier - Allowed Network Traffic**
```
_sourceCategory={{_sourceCategory}} " NF "
| parse regex "(?<Unit_Name>[^ ]+) NF(?<Log>.*)"
| parse field=Log " * * * * * * * * *" as Log_Level, Protocol, Source_Ip, Source_Port, Destination_Ip, Destination_Port, ACL_Policy, ACL_Name, Log_Details
```

**Barracuda WAF/Network Activities/Outlier - Blocked Network Traffic**
```
_sourceCategory={{_sourceCategory}} " NF "
| parse regex "(?<Unit_Name>[^ ]+) NF(?<Log>.*)"
| parse field=Log " * * * * * * * * *" as Log_Level, Protocol, Source_Ip, Source_Port, Destination_Ip, Destination_Port, ACL_Policy, ACL_Name, Log_Details
```

**Barracuda WAF/Network Activities/Severity - Network Logs**
```
_sourceCategory={{_sourceCategory}} " NF "
| parse regex "(?<Unit_Name>[^ ]+) NF(?<Log>.*)"
| parse field=Log " * * * * * * * * *" as Log_Level, Protocol, Source_Ip, Source_Port, Destination_Ip, Destination_Port, ACL_Policy, ACL_Name, Log_Details
```

**Barracuda WAF/Network Activities/Source Locations**
```
_sourceCategory={{_sourceCategory}} " NF "
| parse regex "(?<Unit_Name>[^ ]+) NF(?<Log>.*)"
| parse field=Log " * * * * * * * * *" as Log_Level, Protocol, Source_Ip, Source_Port, Destination_Ip, Destination_Port, ACL_Policy, ACL_Name, Log_Details
```

**Barracuda WAF/Network Activities/Top 10 ACL Rules**
```
_sourceCategory={{_sourceCategory}} " NF "
| parse regex "(?<Unit_Name>[^ ]+) NF(?<Log>.*)"
| parse field=Log " * * * * * * * * *" as Log_Level, Protocol, Source_Ip, Source_Port, Destination_Ip, Destination_Port, ACL_Policy, ACL_Name, Log_Details
```

**Barracuda WAF/Network Activities/Top 10 Destinations**
```
_sourceCategory={{_sourceCategory}} " NF "
| parse regex "(?<Unit_Name>[^ ]+) NF(?<Log>.*)"
| parse field=Log " * * * * * * * * *" as Log_Level, Protocol, Source_Ip, Source_Port, Destination_Ip, Destination_Port, ACL_Policy, ACL_Name, Log_Details
```

**Barracuda WAF/Network Activities/Top 10 Sources**
```
_sourceCategory={{_sourceCategory}} " NF "
| parse regex "(?<Unit_Name>[^ ]+) NF(?<Log>.*)"
| parse field=Log " * * * * * * * * *" as Log_Level, Protocol, Source_Ip, Source_Port, Destination_Ip, Destination_Port, ACL_Policy, ACL_Name, Log_Details
```

**Barracuda WAF/Security Overview/Alerts Severity**
```
_sourceCategory={{_sourceCategory}} " WF "
| parse regex "(?<Unit_Name>[^ ]+) WF(?<Log>.*)"
| parse field=Log " * * * * * * * * * * [*] * * * * \"*\" * * * * *" as Severity, Attack_Type, Client_Ip, Client_Port, Service_Ip, Service_Port, Rule, Rule_Type, Action, Follow_Up_Action, Attack_Details, Method, URL, Protocol, Session_Id, User_Agent, Proxy_Ip, Proxy_Port, User, Referrer, UID
```

**Barracuda WAF/Security Overview/Allowed Traffic - Threat Intel - Actors**
```
_sourceCategory={{_sourceCategory}} " WF " ("LOG" OR "WARN" OR "CLOAK")
| parse regex "(?<Unit_Name>[^ ]+) WF(?<Log>.*)"
| parse field=Log " * * * * * * * * * * [*] * * * * \"*\" * * * * *" as Severity, Attack_Type, Client_Ip, Client_Port, Service_Ip, Service_Port, Rule, Rule_Type, Action, Follow_Up_Action, Attack_Details, Method, URL, Protocol, Session_Id, User_Agent, Proxy_Ip, Proxy_Port, User, Referrer, UID
```

**Barracuda WAF/Security Overview/Allowed Traffic - Threat Intel - Confidence**
```
_sourceCategory={{_sourceCategory}} " WF " ("LOG" OR "WARN" OR "CLOAK")
| parse regex "(?<Unit_Name>[^ ]+) WF(?<Log>.*)"
| parse field=Log " * * * * * * * * * * [*] * * * * \"*\" * * * * *" as Severity, Attack_Type, Client_Ip, Client_Port, Service_Ip, Service_Port, Rule, Rule_Type, Action, Follow_Up_Action, Attack_Details, Method, URL, Protocol, Session_Id, User_Agent, Proxy_Ip, Proxy_Port, User, Referrer, UID
```

**Barracuda WAF/Security Overview/Attack Origins**
```
_sourceCategory={{_sourceCategory}} " WF "
| parse regex "(?<Unit_Name>[^ ]+) WF(?<Log>.*)"
| parse field=Log " * * * * * * * * * * [*] * * * * \"*\" * * * * *" as Severity, Attack_Type, Client_Ip, Client_Port, Service_Ip, Service_Port, Rule, Rule_Type, Action, Follow_Up_Action, Attack_Details, Method, URL, Protocol, Session_Id, User_Agent, Proxy_Ip, Proxy_Port, User, Referrer, UID
```

**Barracuda WAF/Security Overview/Attack Trend**
```
_sourceCategory={{_sourceCategory}} " WF "
| parse regex "(?<Unit_Name>[^ ]+) WF(?<Log>.*)"
| parse field=Log " * * * * * * * * * * [*] * * * * \"*\" * * * * *" as Severity, Attack_Type, Client_Ip, Client_Port, Service_Ip, Service_Port, Rule, Rule_Type, Action, Follow_Up_Action, Attack_Details, Method, URL, Protocol, Session_Id, User_Agent, Proxy_Ip, Proxy_Port, User, Referrer, UID
```

**Barracuda WAF/Security Overview/Attacks by Service IP**
```
_sourceCategory={{_sourceCategory}} " WF "
| parse regex "(?<Unit_Name>[^ ]+) WF(?<Log>.*)"
| parse field=Log " * * * * * * * * * * [*] * * * * \"*\" * * * * *" as Severity, Attack_Type, Client_Ip, Client_Port, Service_Ip, Service_Port, Rule, Rule_Type, Action, Follow_Up_Action, Attack_Details, Method, URL, Protocol, Session_Id, User_Agent, Proxy_Ip, Proxy_Port, User, Referrer, UID
```

**Barracuda WAF/Security Overview/Blocked Traffic - Threat Intel - Actors**
```
_sourceCategory={{_sourceCategory}} " WF " ("DENY")
| parse regex "(?<Unit_Name>[^ ]+) WF(?<Log>.*)"
| parse field=Log " * * * * * * * * * * [*] * * * * \"*\" * * * * *" as Severity, Attack_Type, Client_Ip, Client_Port, Service_Ip, Service_Port, Rule, Rule_Type, Action, Follow_Up_Action, Attack_Details, Method, URL, Protocol, Session_Id, User_Agent, Proxy_Ip, Proxy_Port, User, Referrer, UID
```

**Barracuda WAF/Security Overview/Blocked Traffic - Threat Intel - Confidence**
```
_sourceCategory={{_sourceCategory}} " WF " ("DENY")
| parse regex "(?<Unit_Name>[^ ]+) WF(?<Log>.*)"
| parse field=Log " * * * * * * * * * * [*] * * * * \"*\" * * * * *" as Severity, Attack_Type, Client_Ip, Client_Port, Service_Ip, Service_Port, Rule, Rule_Type, Action, Follow_Up_Action, Attack_Details, Method, URL, Protocol, Session_Id, User_Agent, Proxy_Ip, Proxy_Port, User, Referrer, UID
```

**Barracuda WAF/Security Overview/Region**
```
_sourceCategory={{_sourceCategory}} " WF "
| parse regex "(?<Unit_Name>[^ ]+) WF(?<Log>.*)"
| parse field=Log " * * * * * * * * * * [*] * * * * \"*\" * * * * *" as Severity, Attack_Type, Client_Ip, Client_Port, Service_Ip, Service_Port, Rule, Rule_Type, Action, Follow_Up_Action, Attack_Details, Method, URL, Protocol, Session_Id, User_Agent, Proxy_Ip, Proxy_Port, User, Referrer, UID
```

**Barracuda WAF/Security Overview/Rule Distribution**
```
_sourceCategory={{_sourceCategory}} " WF "
| parse regex "(?<Unit_Name>[^ ]+) WF(?<Log>.*)"
| parse field=Log " * * * * * * * * * * [*] * * * * \"*\" * * * * *" as Severity, Attack_Type, Client_Ip, Client_Port, Service_Ip, Service_Port, Rule, Rule_Type, Action, Follow_Up_Action, Attack_Details, Method, URL, Protocol, Session_Id, User_Agent, Proxy_Ip, Proxy_Port, User, Referrer, UID
```

**Barracuda WAF/Security Overview/Rule Type Distribution**
```
_sourceCategory={{_sourceCategory}} " WF "
| parse regex "(?<Unit_Name>[^ ]+) WF(?<Log>.*)"
| parse field=Log " * * * * * * * * * * [*] * * * * \"*\" * * * * *" as Severity, Attack_Type, Client_Ip, Client_Port, Service_Ip, Service_Port, Rule, Rule_Type, Action, Follow_Up_Action, Attack_Details, Method, URL, Protocol, Session_Id, User_Agent, Proxy_Ip, Proxy_Port, User, Referrer, UID
```

**Barracuda WAF/Security Overview/Top Attacked Domains**
```
_sourceCategory={{_sourceCategory}} " WF "
| parse regex "(?<Unit_Name>[^ ]+) WF(?<Log>.*)"
| parse field=Log " * * * * * * * * * * [*] * * * * \"*\" * * * * *" as Severity, Attack_Type, Client_Ip, Client_Port, Service_Ip, Service_Port, Rule, Rule_Type, Action, Follow_Up_Action, Attack_Details, Method, URL, Protocol, Session_Id, User_Agent, Proxy_Ip, Proxy_Port, User, Referrer, UID
| split URL delim='/' extract 1 as Host
```

**Barracuda WAF/Security Overview/Top Attacked Services**
```
_sourceCategory={{_sourceCategory}} " WF "
| parse regex "(?<Unit_Name>[^ ]+) WF(?<Log>.*)"
| parse field=Log " * * * * * * * * * * [*] * * * * \"*\" * * * * *" as Severity, Attack_Type, Client_Ip, Client_Port, Service_Ip, Service_Port, Rule, Rule_Type, Action, Follow_Up_Action, Attack_Details, Method, URL, Protocol, Session_Id, User_Agent, Proxy_Ip, Proxy_Port, User, Referrer, UID
```

**Barracuda WAF/Security Overview/Top Attacked URLs**
```
_sourceCategory={{_sourceCategory}} " WF "
| parse regex "(?<Unit_Name>[^ ]+) WF(?<Log>.*)"
| parse field=Log " * * * * * * * * * * [*] * * * * \"*\" * * * * *" as Severity, Attack_Type, Client_Ip, Client_Port, Service_Ip, Service_Port, Rule, Rule_Type, Action, Follow_Up_Action, Attack_Details, Method, URL, Protocol, Session_Id, User_Agent, Proxy_Ip, Proxy_Port, User, Referrer, UID
```

**Barracuda WAF/Security Overview/Top Attackers**
```
_sourceCategory={{_sourceCategory}} " WF "
| parse regex "(?<Unit_Name>[^ ]+) WF(?<Log>.*)"
| parse field=Log " * * * * * * * * * * [*] * * * * \"*\" * * * * *" as Severity, Attack_Type, Client_Ip, Client_Port, Service_Ip, Service_Port, Rule, Rule_Type, Action, Follow_Up_Action, Attack_Details, Method, URL, Protocol, Session_Id, User_Agent, Proxy_Ip, Proxy_Port, User, Referrer, UID
```

**Barracuda WAF/Security Overview/Top Attacking Referrers**
```
_sourceCategory={{_sourceCategory}} " WF "
| parse regex "(?<Unit_Name>[^ ]+) WF(?<Log>.*)"
| parse field=Log " * * * * * * * * * * [*] * * * * \"*\" * * * * *" as Severity, Attack_Type, Client_Ip, Client_Port, Service_Ip, Service_Port, Rule, Rule_Type, Action, Follow_Up_Action, Attack_Details, Method, URL, Protocol, Session_Id, User_Agent, Proxy_Ip, Proxy_Port, User, Referrer, UID
```

**Barracuda WAF/Security Overview/Top Attacking User Agents**
```
_sourceCategory={{_sourceCategory}} " WF "
| parse regex "(?<Unit_Name>[^ ]+) WF(?<Log>.*)"
| parse field=Log " * * * * * * * * * * [*] * * * * \"*\" * * * * *" as Severity, Attack_Type, Client_Ip, Client_Port, Service_Ip, Service_Port, Rule, Rule_Type, Action, Follow_Up_Action, Attack_Details, Method, URL, Protocol, Session_Id, User_Agent, Proxy_Ip, Proxy_Port, User, Referrer, UID
```

**Barracuda WAF/Server Traffic/Client Errors Over Time**
```
_sourceCategory={{_sourceCategory}} " TR "
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 4 as Client_Ip, 2 as Service_Ip, 3 as Service_Port, 21 as Response_Type, 12 as Response_Code, 17 as Backend_Server
```

**Barracuda WAF/Server Traffic/Client Location 4XX Errors**
```
_sourceCategory={{_sourceCategory}} " TR "
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 4 as Client_Ip, 2 as Service_Ip, 3 as Service_Port, 21 as Response_Type, 12 as Response_Code, 17 as Backend_Server
```

**Barracuda WAF/Server Traffic/Error Responses by Server**
```
_sourceCategory={{_sourceCategory}} " TR " SERVER
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 4 as Client_Ip, 2 as Service_Ip, 3 as Service_Port, 21 as Response_Type, 12 as Response_Code, 17 as Backend_Server
```

**Barracuda WAF/Server Traffic/HTTP Methods Over Time**
```
_sourceCategory={{_sourceCategory}} " TR "
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 8 as Http_Method, 4 as Client_Ip, 2 as Service_Ip, 3 as Service_Port, 21 as Response_Type, 17 as Backend_Server
```

**Barracuda WAF/Server Traffic/HTTP Protocols Over Time**
```
_sourceCategory={{_sourceCategory}} " TR "
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 9 as Http_Protocol, 4 as Client_Ip, 2 as Service_Ip, 3 as Service_Port, 21 as Response_Type, 17 as Backend_Server
```

**Barracuda WAF/Server Traffic/HTTP Versions**
```
_sourceCategory={{_sourceCategory}} " TR "
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 11 as HttpVersion, 4 as Client_Ip, 2 as Service_Ip, 3 as Service_Port, 21 as Response_Type, 17 as Backend_Server
```

**Barracuda WAF/Server Traffic/Server Errors(5XX) Over Time**
```
_sourceCategory={{_sourceCategory}} " TR "
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 4 as Client_Ip, 2 as Service_Ip, 3 as Service_Port, 21 as Response_Type, 12 as Response_Code, 17 as Backend_Server
```

**Barracuda WAF/Server Traffic/Top 5 Backend Servers**
```
_sourceCategory={{_sourceCategory}} " TR "
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 4 as Client_Ip, 2 as Service_Ip, 3 as Service_Port, 21 as Response_Type, 17 as Backend_Server
```

**Barracuda WAF/Server Traffic/Top 5 Clients Causing 4XX Erros**
```
_sourceCategory={{_sourceCategory}} " TR "
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 4 as Client_Ip, 2 as Service_Ip, 3 as Service_Port, 21 as Response_Type, 12 as Response_Code, 17 as Backend_Server
```

**Barracuda WAF/Server Traffic/Top 5 URIs - 404 Responses**
```
_sourceCategory={{_sourceCategory}} " TR "
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 4 as Client_Ip, 25 as URL, 2 as Service_Ip, 3 as Service_Port, 21 as Response_Type, 12 as Response_Code, 17 as Backend_Server
```

**Barracuda WAF/Server Traffic/Top Client Errors**
```
_sourceCategory={{_sourceCategory}} " TR "
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 4 as Client_Ip, 2 as Service_Ip, 3 as Service_Port, 21 as Response_Type, 12 as Response_Code, 17 as Backend_Server
```

**Barracuda WAF/Server Traffic/Top Server Errors**
```
_sourceCategory={{_sourceCategory}} " TR "
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 4 as Client_Ip, 2 as Service_Ip, 3 as Service_Port, 21 as Response_Type, 12 as Response_Code, 17 as Backend_Server
```

**Barracuda WAF/Server Traffic/Total Request Size Over Time**
```
_sourceCategory={{_sourceCategory}} " TR "
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 14 as Bytes_Received, 4 as Client_Ip, 2 as Service_Ip, 3 as Service_Port, 21 as Response_Type, 17 as Backend_Server
```

**Barracuda WAF/Server Traffic/Total Response Size Over Time**
```
_sourceCategory={{_sourceCategory}} " TR "
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 13 as Bytes_Sent, 4 as Client_Ip, 2 as Service_Ip, 3 as Service_Port, 21 as Response_Type, 17 as Backend_Server
```

**Barracuda WAF/Service Traffic/Cache Hit Percentage Over Time**
```
_sourceCategory={{_sourceCategory}} " TR "
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 2 as Service_Ip, 3 as Service_Port, 15 as Cache_Hit
```

**Barracuda WAF/Service Traffic/Cache Performance**
```
_sourceCategory={{_sourceCategory}} " TR "
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 2 as Service_Ip, 3 as Service_Port, 15 as Cache_Hit
```

**Barracuda WAF/Service Traffic/Top Domains by Bandwidth**
```
_sourceCategory={{_sourceCategory}} " TR "
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 10 as Domain, 13 as Bytes_Sent, 2 as Service_Ip, 3 as Service_Port
```

**Barracuda WAF/Service Traffic/Top Domains by Requests**
```
_sourceCategory={{_sourceCategory}} " TR "
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 10 as Domain, 2 as Service_Ip, 3 as Service_Port
```

**Barracuda WAF/Service Traffic/Top Services by Bandwidth**
```
_sourceCategory={{_sourceCategory}} " TR "
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 2 as Service_Ip, 3 as Service_Port
```

**Barracuda WAF/Service Traffic/Top URL by Bandwidth**
```
_sourceCategory={{_sourceCategory}} " TR "
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 25 as URL, 13 as Bytes_Sent, 2 as Service_Ip, 3 as Service_Port
```

**Barracuda WAF/Service Traffic/Top URL by Requests**
```
_sourceCategory={{_sourceCategory}} " TR "
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 25 as URL, 2 as Service_Ip, 3 as Service_Port
```

**Barracuda WAF/System Activities/CPU usage Alert Outlier**
```
_sourceCategory={{_sourceCategory}} " SYS "
| parse regex "(?<Unit_Name>[^ ]+) SYS(?<Log>.*)"
| parse field=log " * * * *" as Module_Name, Log_Level, Event_Id, Log_Details
```

**Barracuda WAF/System Activities/Firmware Storage Alert Outlier**
```
_sourceCategory={{_sourceCategory}} " SYS "
| parse regex "(?<Unit_Name>[^ ]+) SYS(?<Log>.*)"
| parse field=log " * * * *" as Module_Name, Log_Level, Event_Id, Log_Details
```

**Barracuda WAF/System Activities/Log Level Distribution - System Logs**
```
_sourceCategory={{_sourceCategory}} " SYS "
| parse regex "(?<Unit_Name>[^ ]+) SYS(?<Log>.*)"
| parse field=log " * * * *" as Module_Name, Log_Level, Event_Id, Log_Details
```

**Barracuda WAF/System Activities/Log Storage Alert Outlier**
```
_sourceCategory={{_sourceCategory}} " SYS "
| parse regex "(?<Unit_Name>[^ ]+) SYS(?<Log>.*)"
| parse field=log " * * * *" as Module_Name, Log_Level, Event_Id, Log_Details
```

**Barracuda WAF/System Activities/Memory Usage Alert Outlier**
```
_sourceCategory={{_sourceCategory}} " SYS "
| parse regex "(?<Unit_Name>[^ ]+) SYS(?<Log>.*)"
| parse field=log " * * * *" as Module_Name, Log_Level, Event_Id, Log_Details
```

**Barracuda WAF/System Activities/Recent - Cluster Activities**
```
_sourceCategory={{_sourceCategory}} " SYS " ("Deleted" OR "Adding Peer node" OR "Failed to send message to peer dispatcher" OR "Received message from peer node")
| parse regex "(?<Unit_Name>[^ ]+) SYS(?<Log>.*)"
| parse field=log " * * * *" as Module_Name, Log_Level, Event_Id, Log_Details
| parse regex field=Log_Details "(?<Peer_Ip>\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3})"
```

**Barracuda WAF/System Activities/Recent Alerts in System Logs**
```
_sourceCategory={{_sourceCategory}} " SYS "
| parse regex "(?<Unit_Name>[^ ]+) SYS(?<Log>.*)"
| parse field=log " * * * *" as Module_Name, Log_Level, Event_Id, Log_Details
```

**Barracuda WAF/System Activities/Top 10 Module Names**
```
_sourceCategory={{_sourceCategory}} " SYS "
| parse regex "(?<Unit_Name>[^ ]+) SYS(?<Log>.*)"
| parse field=log " * * * *" as Module_Name, Log_Level, Event_Id, Log_Details
```

**Barracuda WAF/Threat Analysis/Allowed Threat Locations**
```
_sourceCategory={{_sourceCategory}} " WF " ("LOG" OR "WARN" OR "CLOAK")
| parse regex "(?<Unit_Name>[^ ]+) WF(?<Log>.*)"
| parse field=Log " * * * * * * * * * * [*] * * * * \"*\" * * * * *" as Severity, Attack_Type, Client_Ip, Client_Port, Service_Ip, Service_Port, Rule, Rule_Type, Action, Follow_Up_Action, Attack_Details, Method, URL, Protocol, Session_Id, User_Agent, Proxy_Ip, Proxy_Port, User, Referrer, UID
```

**Barracuda WAF/Threat Analysis/Allowed Traffic - Details**
```
_sourceCategory={{_sourceCategory}} " WF " ("LOG" OR "WARN" OR "CLOAK")
| parse regex "(?<Unit_Name>[^ ]+) WF(?<Log>.*)"
| parse field=Log " * * * * * * * * * * [*] * * * * \"*\" * * * * *" as Severity, Attack_Type, Client_Ip, Client_Port, Service_Ip, Service_Port, Rule, Rule_Type, Action, Follow_Up_Action, Attack_Details, Method, URL, Protocol, Session_Id, User_Agent, Proxy_Ip, Proxy_Port, User, Referrer, UID
| where Action in ("LOG", "WARN", "CLOAK")
|where if ("{{Service_Port}}" = "*", true, Service_Port matches "{{Service_Port}}") AND if ("{{Rule}}" = "*", true, Rule matches "{{Rule}}") AND if ("{{Attack_Type}}" = "*", true, Attack_Type matches "{{Attack_Type}}") AND if ("{{Service_Ip}}" = "*", true, Service_Ip matches "{{Service_Ip}}") AND if ("{{Unit_Name}}" = "*", true, Unit_Name matches "{{Unit_Name}}") AND if ("{{Client_Ip}}" = "*", true, Client_Ip matches "{{Client_Ip}}") AND if ("{{Severity}}" = "*", true, Severity matches "{{Severity}}") AND if ("{{UID}}" = "*", true, UID matches "{{UID}}") AND if ("{{Action}}" = "*", true, Action matches "{{Action}}")
|topk(1, Client_Ip) by UID, Unit_Name, Attack_Type
| concat(Service_Ip, ":",Service_Port) as Service
| lookup Severity as Attack_Severity, Attack_Category as Attack_Category from https://s3.amazonaws.com/sumologic-app-data/Barracuda_Attack_Description_and_Category.csv on Attack_Name=Attack_Type
```

**Barracuda WAF/Threat Analysis/Allowed Traffic - Threat Intel**
```
_sourceCategory={{_sourceCategory}} " WF " ("LOG" OR "WARN" OR "CLOAK")
| parse regex "(?<Unit_Name>[^ ]+) WF(?<Log>.*)"
| parse field=Log " * * * * * * * * * * [*] * * * * \"*\" * * * * *" as Severity, Attack_Type, Client_Ip, Client_Port, Service_Ip, Service_Port, Rule, Rule_Type, Action, Follow_Up_Action, Attack_Details, Method, URL, Protocol, Session_Id, User_Agent, Proxy_Ip, Proxy_Port, User, Referrer, UID
| where Action in ("LOG", "WARN", "CLOAK")
|where if ("{{Service_Port}}" = "*", true, Service_Port matches "{{Service_Port}}") AND if ("{{Rule}}" = "*", true, Rule matches "{{Rule}}") AND if ("{{Attack_Type}}" = "*", true, Attack_Type matches "{{Attack_Type}}") AND if ("{{Service_Ip}}" = "*", true, Service_Ip matches "{{Service_Ip}}") AND if ("{{Unit_Name}}" = "*", true, Unit_Name matches "{{Unit_Name}}") AND if ("{{Client_Ip}}" = "*", true, Client_Ip matches "{{Client_Ip}}") AND if ("{{Severity}}" = "*", true, Severity matches "{{Severity}}") AND if ("{{UID}}" = "*", true, UID matches "{{UID}}") AND if ("{{Action}}" = "*", true, Action matches "{{Action}}")
|count as allowed_ips by Client_Ip
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=Client_Ip 
| json field=raw "labels[*].name" as label_name 
```

**Barracuda WAF/Threat Analysis/Allowed Traffic by Attack Category**
```
_sourceCategory={{_sourceCategory}} " WF " ("LOG" OR "WARN" OR "CLOAK")
| parse regex "(?<Unit_Name>[^ ]+) WF(?<Log>.*)"
| parse field=Log " * * * * * * * * * * [*] * * * * \"*\" * * * * *" as Severity, Attack_Type, Client_Ip, Client_Port, Service_Ip, Service_Port, Rule, Rule_Type, Action, Follow_Up_Action, Attack_Details, Method, URL, Protocol, Session_Id, User_Agent, Proxy_Ip, Proxy_Port, User, Referrer, UID
| where Action in ("LOG", "WARN", "CLOAK")
|where if ("{{Service_Port}}" = "*", true, Service_Port matches "{{Service_Port}}") AND if ("{{Rule}}" = "*", true, Rule matches "{{Rule}}") AND if ("{{Attack_Type}}" = "*", true, Attack_Type matches "{{Attack_Type}}") AND if ("{{Service_Ip}}" = "*", true, Service_Ip matches "{{Service_Ip}}") AND if ("{{Unit_Name}}" = "*", true, Unit_Name matches "{{Unit_Name}}") AND if ("{{Client_Ip}}" = "*", true, Client_Ip matches "{{Client_Ip}}") AND if ("{{Severity}}" = "*", true, Severity matches "{{Severity}}") AND if ("{{UID}}" = "*", true, UID matches "{{UID}}") AND if ("{{Action}}" = "*", true, Action matches "{{Action}}")
|topk(1, Client_Ip) by UID, Unit_Name, Attack_Type
| lookup Severity, Attack_Category from https://s3.amazonaws.com/sumologic-app-data/Barracuda_Attack_Description_and_Category.csv on Attack_Name=Attack_Type
```

**Barracuda WAF/Threat Analysis/Allowed Traffic by Severity**
```
_sourceCategory={{_sourceCategory}} " WF " ("LOG" OR "WARN" OR "CLOAK")
| parse regex "(?<Unit_Name>[^ ]+) WF(?<Log>.*)"
| parse field=Log " * * * * * * * * * * [*] * * * * \"*\" * * * * *" as Severity, Attack_Type, Client_Ip, Client_Port, Service_Ip, Service_Port, Rule, Rule_Type, Action, Follow_Up_Action, Attack_Details, Method, URL, Protocol, Session_Id, User_Agent, Proxy_Ip, Proxy_Port, User, Referrer, UID
```

**Barracuda WAF/Threat Analysis/Allowed Traffic by Unit Name**
```
_sourceCategory={{_sourceCategory}} " WF " ("LOG" OR "WARN" OR "CLOAK")
| parse regex "(?<Unit_Name>[^ ]+) WF(?<Log>.*)"
| parse field=Log " * * * * * * * * * * [*] * * * * \"*\" * * * * *" as Severity, Attack_Type, Client_Ip, Client_Port, Service_Ip, Service_Port, Rule, Rule_Type, Action, Follow_Up_Action, Attack_Details, Method, URL, Protocol, Session_Id, User_Agent, Proxy_Ip, Proxy_Port, User, Referrer, UID
```

**Barracuda WAF/Threat Analysis/Blocked Threat Locations**
```
_sourceCategory={{_sourceCategory}} " WF " "DENY"
| parse regex "(?<Unit_Name>[^ ]+) WF(?<Log>.*)"
| parse field=Log " * * * * * * * * * * [*] * * * * \"*\" * * * * *" as Severity, Attack_Type, Client_Ip, Client_Port, Service_Ip, Service_Port, Rule, Rule_Type, Action, Follow_Up_Action, Attack_Details, Method, URL, Protocol, Session_Id, User_Agent, Proxy_Ip, Proxy_Port, User, Referrer, UID
```

**Barracuda WAF/Threat Analysis/Blocked Traffic - Details**
```
_sourceCategory={{_sourceCategory}} " WF " "DENY"
| parse regex "(?<Unit_Name>[^ ]+) WF(?<Log>.*)"
| parse field=Log " * * * * * * * * * * [*] * * * * \"*\" * * * * *" as Severity, Attack_Type, Client_Ip, Client_Port, Service_Ip, Service_Port, Rule, Rule_Type, Action, Follow_Up_Action, Attack_Details, Method, URL, Protocol, Session_Id, User_Agent, Proxy_Ip, Proxy_Port, User, Referrer, UID
| where Action matches "DENY"
|where if ("{{Service_Port}}" = "*", true, Service_Port matches "{{Service_Port}}") AND if ("{{Rule}}" = "*", true, Rule matches "{{Rule}}") AND if ("{{Attack_Type}}" = "*", true, Attack_Type matches "{{Attack_Type}}") AND if ("{{Service_Ip}}" = "*", true, Service_Ip matches "{{Service_Ip}}") AND if ("{{Unit_Name}}" = "*", true, Unit_Name matches "{{Unit_Name}}") AND if ("{{Client_Ip}}" = "*", true, Client_Ip matches "{{Client_Ip}}") AND if ("{{Severity}}" = "*", true, Severity matches "{{Severity}}") AND if ("{{UID}}" = "*", true, UID matches "{{UID}}") AND if ("{{Action}}" = "*", true, Action matches "{{Action}}")
|topk(1, Client_Ip) by UID, Unit_Name, Attack_Type
| concat(Service_Ip, ":",Service_Port) as Service
| lookup Severity, Attack_Category from https://s3.amazonaws.com/sumologic-app-data/Barracuda_Attack_Description_and_Category.csv on Attack_Name=Attack_Type
```

**Barracuda WAF/Threat Analysis/Blocked Traffic - Threat Intel**
```
_sourceCategory={{_sourceCategory}} " WF " ("DENY")
| parse regex "(?<Unit_Name>[^ ]+) WF(?<Log>.*)"
| parse field=Log " * * * * * * * * * * [*] * * * * \"*\" * * * * *" as Severity, Attack_Type, Client_Ip, Client_Port, Service_Ip, Service_Port, Rule, Rule_Type, Action, Follow_Up_Action, Attack_Details, Method, URL, Protocol, Session_Id, User_Agent, Proxy_Ip, Proxy_Port, User, Referrer, UID
| where Action in ("DENY")
|where if ("{{Service_Port}}" = "*", true, Service_Port matches "{{Service_Port}}") AND if ("{{Rule}}" = "*", true, Rule matches "{{Rule}}") AND if ("{{Attack_Type}}" = "*", true, Attack_Type matches "{{Attack_Type}}") AND if ("{{Service_Ip}}" = "*", true, Service_Ip matches "{{Service_Ip}}") AND if ("{{Unit_Name}}" = "*", true, Unit_Name matches "{{Unit_Name}}") AND if ("{{Client_Ip}}" = "*", true, Client_Ip matches "{{Client_Ip}}") AND if ("{{Severity}}" = "*", true, Severity matches "{{Severity}}") AND if ("{{UID}}" = "*", true, UID matches "{{UID}}") AND if ("{{Action}}" = "*", true, Action matches "{{Action}}")
|count as blocked_ips by Client_Ip
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=Client_Ip 
| json field=raw "labels[*].name" as label_name 
```

**Barracuda WAF/Threat Analysis/Blocked Traffic by Attack Category**
```
_sourceCategory={{_sourceCategory}} " WF " "DENY"
| parse regex "(?<Unit_Name>[^ ]+) WF(?<Log>.*)"
| parse field=Log " * * * * * * * * * * [*] * * * * \"*\" * * * * *" as Severity, Attack_Type, Client_Ip, Client_Port, Service_Ip, Service_Port, Rule, Rule_Type, Action, Follow_Up_Action, Attack_Details, Method, URL, Protocol, Session_Id, User_Agent, Proxy_Ip, Proxy_Port, User, Referrer, UID
| where Action matches "DENY"
|where if ("{{Service_Port}}" = "*", true, Service_Port matches "{{Service_Port}}") AND if ("{{Rule}}" = "*", true, Rule matches "{{Rule}}") AND if ("{{Attack_Type}}" = "*", true, Attack_Type matches "{{Attack_Type}}") AND if ("{{Service_Ip}}" = "*", true, Service_Ip matches "{{Service_Ip}}") AND if ("{{Unit_Name}}" = "*", true, Unit_Name matches "{{Unit_Name}}") AND if ("{{Client_Ip}}" = "*", true, Client_Ip matches "{{Client_Ip}}") AND if ("{{Severity}}" = "*", true, Severity matches "{{Severity}}") AND if ("{{UID}}" = "*", true, UID matches "{{UID}}") AND if ("{{Action}}" = "*", true, Action matches "{{Action}}")
|topk(1, Client_Ip) by UID, Unit_Name, Attack_Type
| lookup Severity, Attack_Category from https://s3.amazonaws.com/sumologic-app-data/Barracuda_Attack_Description_and_Category.csv on Attack_Name=Attack_Type
```

**Barracuda WAF/Threat Analysis/Blocked Traffic by Severity**
```
_sourceCategory={{_sourceCategory}} " WF " "DENY"
| parse regex "(?<Unit_Name>[^ ]+) WF(?<Log>.*)"
| parse field=Log " * * * * * * * * * * [*] * * * * \"*\" * * * * *" as Severity, Attack_Type, Client_Ip, Client_Port, Service_Ip, Service_Port, Rule, Rule_Type, Action, Follow_Up_Action, Attack_Details, Method, URL, Protocol, Session_Id, User_Agent, Proxy_Ip, Proxy_Port, User, Referrer, UID
```

**Barracuda WAF/Threat Analysis/Blocked Traffic by Unit Name**
```
_sourceCategory={{_sourceCategory}} " WF " "DENY"
| parse regex "(?<Unit_Name>[^ ]+) WF(?<Log>.*)"
| parse field=Log " * * * * * * * * * * [*] * * * * \"*\" * * * * *" as Severity, Attack_Type, Client_Ip, Client_Port, Service_Ip, Service_Port, Rule, Rule_Type, Action, Follow_Up_Action, Attack_Details, Method, URL, Protocol, Session_Id, User_Agent, Proxy_Ip, Proxy_Port, User, Referrer, UID
```

**Barracuda WAF/Threat Analysis/Outlier - Allowed Traffic**
```
_sourceCategory={{_sourceCategory}} " WF " ("LOG" OR "WARN" OR "CLOAK")
| parse regex "(?<Unit_Name>[^ ]+) WF(?<Log>.*)"
| parse field=Log " * * * * * * * * * * [*] * * * * \"*\" * * * * *" as Severity, Attack_Type, Client_Ip, Client_Port, Service_Ip, Service_Port, Rule, Rule_Type, Action, Follow_Up_Action, Attack_Details, Method, URL, Protocol, Session_Id, User_Agent, Proxy_Ip, Proxy_Port, User, Referrer, UID
```

**Barracuda WAF/Threat Analysis/Outlier - Blocked Traffic**
```
_sourceCategory={{_sourceCategory}} " WF " "DENY"
| parse regex "(?<Unit_Name>[^ ]+) WF(?<Log>.*)"
| parse field=Log " * * * * * * * * * * [*] * * * * \"*\" * * * * *" as Severity, Attack_Type, Client_Ip, Client_Port, Service_Ip, Service_Port, Rule, Rule_Type, Action, Follow_Up_Action, Attack_Details, Method, URL, Protocol, Session_Id, User_Agent, Proxy_Ip, Proxy_Port, User, Referrer, UID
```

**Barracuda WAF/Threat Analysis/Recent - Attacks**
```
_sourceCategory={{_sourceCategory}} " WF "
| parse regex "(?<Unit_Name>[^ ]+) WF(?<Log>.*)"
| parse field=Log " * * * * * * * * * * [*] * * * * \"*\" * * * * *" as Severity, Attack_Type, Client_Ip, Client_Port, Service_Ip, Service_Port, Rule, Rule_Type, Action, Follow_Up_Action, Attack_Details, Method, URL, Protocol, Session_Id, User_Agent, Proxy_Ip, Proxy_Port, User, Referrer, UID
```

**Barracuda WAF/Traffic Overview/Cache Hit Percentage**
```
_sourceCategory={{_sourceCategory}} " TR "
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 2 as Service_Ip, 3 as Service_Port, 15 as Cache_Hit
```

**Barracuda WAF/Traffic Overview/Outlier - Client Errors(4XX)**
```
_sourceCategory={{_sourceCategory}} " TR "   
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 2 as Service_Ip, 3 as Service_Port, 12 as Response_Code
```

**Barracuda WAF/Traffic Overview/Outlier - Server Errors(5XX)**
```
_sourceCategory={{_sourceCategory}} " TR "   
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 2 as Service_Ip, 3 as Service_Port, 12 as Response_Code
```

**Barracuda WAF/Traffic Overview/Outlier - Service Performance**
```
_sourceCategory={{_sourceCategory}} " TR "   
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 2 as Service_Ip, 3 as Service_Port, 16 as Time_Taken
```

**Barracuda WAF/Traffic Overview/Performance (ms) by Service**
```
_sourceCategory={{_sourceCategory}} " TR "
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 2 as Service_Ip, 16 as Time_Taken, 3 as Service_Port
```

**Barracuda WAF/Traffic Overview/Requests by Service IPs**
```
_sourceCategory={{_sourceCategory}} " TR "
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 2 as Service_Ip, 3 as Service_Port
```

**Barracuda WAF/Traffic Overview/Response Code Distribution**
```
_sourceCategory={{_sourceCategory}} " TR "
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 2 as Service_Ip, 3 as Service_Port, 4 as Client_Ip,12 as Response_Code
```

**Barracuda WAF/Traffic Overview/Visitors Platform Over Time**
```
_sourceCategory={{_sourceCategory}} " TR "
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 2 as Service_Ip, 3 as Service_Port
| parse regex "HTTP\/[\d\.]+\s+\d+\s+\d+\s+\d+\s+\d+\s+\d+\s+\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\s+\d+\s+\d+\s+(?<agent>.+)"
```

**Barracuda WAF/Traffic Overview/Worldwide Location of Clients**
```
_sourceCategory={{_sourceCategory}} " TR "
| parse regex "(?<Unit_Name>[^ ]+) TR(?<Log>.*)"
| split Log delim=' ' extract 4 as Client_Ip, 2 as Service_Ip, 3 as Service_Port
```


