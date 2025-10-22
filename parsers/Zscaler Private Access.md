# Parsers For Zscaler Private Access

**Zscaler Private Access/ZPA - Audit/Audit Logs**
```
_sourceCategory={{Logsdatasource}}   
| json field=_raw "User","ObjectType","ObjectName","AuditOperationType","AuditOldValue","AuditNewValue","ModifiedTime"
```

**Zscaler Private Access/ZPA - Audit/Authentication Audit Logs**
```
_sourceCategory={{Logsdatasource}}   
| json field=_raw "User","ObjectType","ObjectName","AuditOperationType","AuditOldValue","AuditNewValue","ModifiedTime"
```

**Zscaler Private Access/ZPA - Audit/Changes  by Users**
```
_sourceCategory={{Logsdatasource}}   
| json field=_raw "ObjectType","User"
```

**Zscaler Private Access/ZPA - Audit/Distribution by Object Type**
```
_sourceCategory={{Logsdatasource}}   
| json field=_raw "ObjectType","User"
```

**Zscaler Private Access/ZPA - Audit/Sign In Failures by User**
```
_sourceCategory={{Logsdatasource}}   
| json field=_raw "ObjectType","User"
```

**Zscaler Private Access/ZPA - Audit/Users by Authentication**
```
_sourceCategory={{Logsdatasource}}   
| json field=_raw "ObjectType","User"
```

**Zscaler Private Access/ZPA - Connectors/Connector Groups by CPU Utilization**
```
_sourceCategory={{Logsdatasource}}   
| json field=_raw "CPUUtilization", "ConnectorGroup","Connector"
```

**Zscaler Private Access/ZPA - Connectors/Connector Groups by Memory Utilization**
```
_sourceCategory={{Logsdatasource}}   
| json field=_raw "MemUtilization", "ConnectorGroup","Connector"
```

**Zscaler Private Access/ZPA - Connectors/Connector Locations**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "PublicIP","ConnectorGroup","Connector"
```

**Zscaler Private Access/ZPA - Connectors/Connector Logs**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "ErrorsTxInterface", "Connector","ConnectorGroup","CountryCode","CPUUtilization","MemUtilization","ServiceCount","PublicIP","LogTimestamp"
```

**Zscaler Private Access/ZPA - Connectors/Connector Service Count**
```
_sourceCategory={{Logsdatasource}}   
| json field=_raw "ServiceCount","Connector"
```

**Zscaler Private Access/ZPA - Connectors/Connectors by CPU Utilization**
```
_sourceCategory={{Logsdatasource}}   
| json field=_raw "CPUUtilization", "ConnectorGroup","Connector"
```

**Zscaler Private Access/ZPA - Connectors/Connectors by Memory Utilization**
```
_sourceCategory={{Logsdatasource}}   
| json field=_raw "MemUtilization", "ConnectorGroup","Connector"
```

**Zscaler Private Access/ZPA - Connectors/CPU Utilization By Connector**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "CPUUtilization","Connector"
```

**Zscaler Private Access/ZPA - Connectors/Mem Utilization By Connector**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "MemUtilization","Connector"
```

**Zscaler Private Access/ZPA - Connectors/Transmitted Bytes By Connector**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "BytesTxInterface","Connector"
```

**Zscaler Private Access/ZPA - Connectors/Transmitted Errors By Connector**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "ErrorsTxInterface","Connector"
```

**Zscaler Private Access/ZPA - Connectors/Transmitted Packets By Connector**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "PacketsTxInterface","Connector"
```

**Zscaler Private Access/ZPA - Connectors/Transmitted Packets Outlier**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "PacketsTxInterface","Connector"
```

**Zscaler Private Access/ZPA - Overview/AppGroups**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "AppGroup","Username"
```

**Zscaler Private Access/ZPA - Overview/AppGroups Over Time**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "AppGroup","Username"
```

**Zscaler Private Access/ZPA - Overview/Applications**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "Application","Username"
```

**Zscaler Private Access/ZPA - Overview/Applications Over Time**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "Application","Username"
```

**Zscaler Private Access/ZPA - Overview/Connectors**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "Connector"
```

**Zscaler Private Access/ZPA - Overview/Connectors Over Time**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "Connector","Username"
```

**Zscaler Private Access/ZPA - Overview/Platforms**
```
_sourceCategory={{Logsdatasource}}   
| json field=_raw "Platform","Username"
```

**Zscaler Private Access/ZPA - Overview/Polcies Over Time**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "Username","Policy"
```

**Zscaler Private Access/ZPA - Overview/Policies**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "Username","Policy"
```

**Zscaler Private Access/ZPA - Overview/Top AppGroups**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "AppGroup","Username"
```

**Zscaler Private Access/ZPA - Overview/Top Applications**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "Application","Username"
```

**Zscaler Private Access/ZPA - Overview/Top Connectors**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "Connector","Username"
```

**Zscaler Private Access/ZPA - Overview/Top Platforms**
```
_sourceCategory={{Logsdatasource}}   
| json field=_raw "Platform","Username"
```

**Zscaler Private Access/ZPA - Overview/Top Policies**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "Username","Policy"
```

**Zscaler Private Access/ZPA - Overview/Top Users by Events**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "Username"
```

**Zscaler Private Access/ZPA - Overview/Total Users**
```
_sourceCategory={{Logsdatasource}}   
| json field=_raw "Username"
```

**Zscaler Private Access/ZPA - Performance/Applications over time**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "Username","Application"
```

**Zscaler Private Access/ZPA - Performance/Average Server Setup Time by User**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "Username", "ServerSetupTime"
```

**Zscaler Private Access/ZPA - Performance/Average Setup Time by Connector**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "Username"
| json field=_raw "ServerSetupTime" nodrop
| json field=_raw "ConnectorZENSetupTime" nodrop
| json field=_raw "ConnectionSetupTime" nodrop
| json field=_raw "AppLearnTime" nodrop
```

**Zscaler Private Access/ZPA - Performance/Server Setup Time, Connector ZEN Setup Time, Connection Setup Time by Application**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "Username","Application"
| json field=_raw "ServerSetupTime" nodrop
| json field=_raw "ConnectorZENSetupTime" nodrop
| json field=_raw "ConnectionSetupTime" nodrop
```

**Zscaler Private Access/ZPA - Performance/Server Setup Time, Connector ZEN Setup Time, Connection Setup Time by Connector**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "Username","Connector"
| json field=_raw "ServerSetupTime" nodrop
| json field=_raw "ConnectorZENSetupTime" nodrop
| json field=_raw "ConnectionSetupTime" nodrop
```

**Zscaler Private Access/ZPA - Performance/Top 10 Applications Connection Setup Time**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "Username","Application"
| json field=_raw "ServerSetupTime" nodrop
| json field=_raw "ConnectorZENSetupTime" nodrop
| json field=_raw "ConnectionSetupTime" nodrop
```

**Zscaler Private Access/ZPA - Performance/Top 10 Slowest Connectors by Connection Setup Time**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "Username","Connector"
| json field=_raw "ServerSetupTime" nodrop
| json field=_raw "ConnectorZENSetupTime" nodrop
| json field=_raw "ConnectionSetupTime" nodrop
```

**Zscaler Private Access/ZPA - Performance/Top 10 Slowest Servers**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "Username","Host"
| json field=_raw "ServerSetupTime" 
```

**Zscaler Private Access/ZPA - User Activity/User Activity - Access Policy Blocks**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "LogTimestamp","ConnectionStatus","Username", "ClientCountryCode","ClientPublicIP", "Policy", "Application", "AppGroup","ConnectionID", "ServicePort", "InternalReason"
```

**Zscaler Private Access/ZPA - User Activity/User Activity - Timeout Policy Blocks**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "LogTimestamp","ConnectionStatus","Username", "ClientCountryCode","ClientPublicIP", "Policy", "Application", "AppGroup","ConnectionID", "ServicePort", "InternalReason"
```

**Zscaler Private Access/ZPA - User Activity/User Activity Logs**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "LogTimestamp","ConnectionStatus","Username", "ClientCountryCode","ClientPublicIP", "Policy", "Application", "AppGroup","ConnectionID", "ServicePort"
```

**Zscaler Private Access/ZPA - Users/Connected Users**
```
_sourceCategory={{Logsdatasource}}   
| json field=_raw "SessionStatus", "Username", "ConnectionStatus" nodrop
```

**Zscaler Private Access/ZPA - Users/Malicious IP Addresses**
```
_sourceCategory={{Logsdatasource}}   
| json field=_raw "Username"
| json field=_raw "PublicIP", "ClientPublicIP" nodrop
```

**Zscaler Private Access/ZPA - Users/Policy Blocks**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "Username","Policy", "InternalReason"
```

**Zscaler Private Access/ZPA - Users/Recently Authenticated  Users**
```
_sourceCategory={{Logsdatasource}}   
| json field=_raw "SessionStatus","Username"
```

**Zscaler Private Access/ZPA - Users/Recently Authenticated Users**
```
_sourceCategory={{Logsdatasource}}   
| json field=_raw "SessionStatus","Username", "CountryCode", "Platform","PublicIP"
```

**Zscaler Private Access/ZPA - Users/Recently Blocked Users**
```
_sourceCategory={{Logsdatasource}}   
| json field=_raw "Username", "ClientCountryCode","ClientPublicIP", "Policy", "InternalReason"
```

**Zscaler Private Access/ZPA - Users/Threat Intel Analysis of Connections**
```
_sourceCategory={{Logsdatasource}}   
| json field=_raw "Username"
| json field=_raw "PublicIP", "ClientPublicIP" nodrop
```

**Zscaler Private Access/ZPA - Users/Timeout Blocks**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "Username","Policy", "InternalReason"
```

**Zscaler Private Access/ZPA - Users/Total Users**
```
_sourceCategory={{Logsdatasource}}   
| json field=_raw "Username"
```

**Zscaler Private Access/ZPA - Users/User Locations**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "Username"
| json field=_raw "PublicIP", "ClientPublicIP" nodrop
```

**Zscaler Private Access/ZPA - Users/User Status Logs**
```
_sourceCategory={{Logsdatasource}}  
| json field=_raw "LogTimestamp","SessionStatus","Username", "CountryCode", "Platform","PublicIP"
```


