# Parsers For Amazon Redshift ULM

**Amazon Redshift ULM/Amazon Redshift - Audit - Connection Log Analysis - New/90%ile Session Duration by User**
```
_sourceCategory = Labs/AWS/Redshift/Audit* "disconnecting session"
| parse regex "^(?<event>[\w]+[\w\s]*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
```

**Amazon Redshift ULM/Amazon Redshift - Audit - Connection Log Analysis - New/Authentication Failures**
```
_sourceCategory = Labs/AWS/Redshift/Audit* "authentication failure"
| parse regex "^(?<event>[\w]+[\w\s\']*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
```

**Amazon Redshift ULM/Amazon Redshift - Audit - Connection Log Analysis - New/Authentication Method Used**
```
_sourceCategory = Labs/AWS/Redshift/Audit* ("authenticated" or "authentication failure" or "initiating session" or "connecting session" or "disconnecting session" or "set application_name" or "Terminating backend on administrator")
| parse regex "^(?<event>[\w]+[\w\s]*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
```

**Amazon Redshift ULM/Amazon Redshift - Audit - Connection Log Analysis - New/Authentication Method Used - Trend**
```
_sourceCategory = Labs/AWS/Redshift/Audit* ("authenticated" or "authentication failure" or "initiating session" or "connecting session" or "disconnecting session" or "set application_name" or "Terminating backend on administrator")
| parse regex "^(?<event>[\w]+[\w\s]*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
```

**Amazon Redshift ULM/Amazon Redshift - Audit - Connection Log Analysis - New/Authentication Status**
```
_sourceCategory = Labs/AWS/Redshift/Audit* ("authenticated" or "authentication failure")
| parse regex "^(?<event>[\w]+[\w\s\']*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
```

**Amazon Redshift ULM/Amazon Redshift - Audit - Connection Log Analysis - New/Authentication Status Trend**
```
_sourceCategory = Labs/AWS/Redshift/Audit* ("authenticated" or "authentication failure")
| parse regex "^(?<event>[\w]+[\w\s\']*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
```

**Amazon Redshift ULM/Amazon Redshift - Audit - Connection Log Analysis - New/Connection Session Stats**
```
_sourceCategory = Labs/AWS/Redshift/Audit*  ("initiating session" or "disconnecting session")
| parse regex "^(?<event>[\w]+[\w\s]*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
```

**Amazon Redshift ULM/Amazon Redshift - Audit - Connection Log Analysis - New/Event Trend**
```
_sourceCategory = Labs/AWS/Redshift/Audit* ("authenticated" or "authentication failure" or "initiating session" or "connecting session" or "disconnecting session" or "set application_name" or "Terminating backend on administrator")
| parse regex "^(?<event>[\w]+[\w\s\']*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
```

**Amazon Redshift ULM/Amazon Redshift - Audit - Connection Log Analysis - New/Session Duration Stats**
```
_sourceCategory = Labs/AWS/Redshift/Audit* "disconnecting session"
| parse regex "^(?<event>[\w]+[\w\s]*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
```

**Amazon Redshift ULM/Amazon Redshift - Audit - Connection Log Analysis - New/SSL Cipher Used**
```
_sourceCategory = Labs/AWS/Redshift/Audit* ("authenticated" or "authentication failure" or "initiating session" or "connecting session" or "disconnecting session" or "set application_name" or "Terminating backend on administrator")
| parse regex "^(?<event>[\w]+[\w\s]*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
```

**Amazon Redshift ULM/Amazon Redshift - Audit - Connection Log Analysis - New/SSL Used**
```
_sourceCategory = Labs/AWS/Redshift/Audit* ("authenticated" or "authentication failure" or "initiating session" or "connecting session" or "disconnecting session" or "set application_name" or "Terminating backend on administrator")
| parse regex "^(?<event>[\w]+[\w\s]*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
```

**Amazon Redshift ULM/Amazon Redshift - Audit - Connection Log Analysis - New/Top Applications**
```
_sourceCategory = Labs/AWS/Redshift/Audit* ("authenticated" or "authentication failure" or "initiating session" or "connecting session" or "disconnecting session" or "set application_name" or "Terminating backend on administrator")
| parse regex "^(?<event>[\w]+[\w\s]*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
```

**Amazon Redshift ULM/Amazon Redshift - Audit - Connection Log Analysis - New/Top Databases**
```
_sourceCategory = Labs/AWS/Redshift/Audit* ("authenticated" or "authentication failure" or "initiating session" or "connecting session" or "disconnecting session" or "set application_name" or "Terminating backend on administrator")
| parse regex "^(?<event>[\w]+[\w\s]*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
| parse regex field = dbname "(?<dbname>[^\s]+)\s*" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - Audit - Connection Log Analysis - New/Top Events**
```
_sourceCategory = Labs/AWS/Redshift/Audit* ("authenticated" or "authentication failure" or "initiating session" or "connecting session" or "disconnecting session" or "set application_name" or "Terminating backend on administrator")
| parse regex "^(?<event>[\w]+[\w\s]*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
```

**Amazon Redshift ULM/Amazon Redshift - Audit - Connection Log Analysis - New/Top Remote Hosts**
```
_sourceCategory = Labs/AWS/Redshift/Audit* ("authenticated" or "authentication failure" or "initiating session" or "connecting session" or "disconnecting session" or "set application_name" or "Terminating backend on administrator")
| parse regex "^(?<event>[\w]+[\w\s]*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
```

**Amazon Redshift ULM/Amazon Redshift - Audit - Connection Log Analysis - New/Top Users**
```
_sourceCategory = Labs/AWS/Redshift/Audit* ("authenticated" or "authentication failure" or "initiating session" or "connecting session" or "disconnecting session" or "set application_name" or "Terminating backend on administrator")
| parse regex "^(?<event>[\w]+[\w\s]*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
```

**Amazon Redshift ULM/Amazon Redshift - Audit - Connection Log Analysis/90%ile Session Duration by User**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  "disconnecting session"
| parse regex "^(?<event>[\w]+[\w\s]*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
```

**Amazon Redshift ULM/Amazon Redshift - Audit - Connection Log Analysis/Authentication Failures**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  "authentication failure"
| parse regex "^(?<event>[\w]+[\w\s\']*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
```

**Amazon Redshift ULM/Amazon Redshift - Audit - Connection Log Analysis/Authentication Method Used**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  ("authenticated" or "authentication failure" or "initiating session" or "connecting session" or "disconnecting session" or "set application_name" or "Terminating backend on administrator")
| parse regex "^(?<event>[\w]+[\w\s]*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
```

**Amazon Redshift ULM/Amazon Redshift - Audit - Connection Log Analysis/Authentication Method Used - Trend**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  ("authenticated" or "authentication failure" or "initiating session" or "connecting session" or "disconnecting session" or "set application_name" or "Terminating backend on administrator")
| parse regex "^(?<event>[\w]+[\w\s]*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
```

**Amazon Redshift ULM/Amazon Redshift - Audit - Connection Log Analysis/Authentication Status**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  ("authenticated" or "authentication failure")
| parse regex "^(?<event>[\w]+[\w\s\']*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
```

**Amazon Redshift ULM/Amazon Redshift - Audit - Connection Log Analysis/Authentication Status Trend**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  ("authenticated" or "authentication failure")
| parse regex "^(?<event>[\w]+[\w\s\']*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
```

**Amazon Redshift ULM/Amazon Redshift - Audit - Connection Log Analysis/Connection Session Stats**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}   ("initiating session" or "disconnecting session")
| parse regex "^(?<event>[\w]+[\w\s]*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
```

**Amazon Redshift ULM/Amazon Redshift - Audit - Connection Log Analysis/Event Trend**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  ("authenticated" or "authentication failure" or "initiating session" or "connecting session" or "disconnecting session" or "set application_name" or "Terminating backend on administrator")
| parse regex "^(?<event>[\w]+[\w\s\']*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
```

**Amazon Redshift ULM/Amazon Redshift - Audit - Connection Log Analysis/Session Duration Stats**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  "disconnecting session"
| parse regex "^(?<event>[\w]+[\w\s]*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
```

**Amazon Redshift ULM/Amazon Redshift - Audit - Connection Log Analysis/SSL Cipher Used**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  ("authenticated" or "authentication failure" or "initiating session" or "connecting session" or "disconnecting session" or "set application_name" or "Terminating backend on administrator")
| parse regex "^(?<event>[\w]+[\w\s]*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
```

**Amazon Redshift ULM/Amazon Redshift - Audit - Connection Log Analysis/SSL Used**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  ("authenticated" or "authentication failure" or "initiating session" or "connecting session" or "disconnecting session" or "set application_name" or "Terminating backend on administrator")
| parse regex "^(?<event>[\w]+[\w\s]*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
```

**Amazon Redshift ULM/Amazon Redshift - Audit - Connection Log Analysis/Top Applications**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  ("authenticated" or "authentication failure" or "initiating session" or "connecting session" or "disconnecting session" or "set application_name" or "Terminating backend on administrator")
| parse regex "^(?<event>[\w]+[\w\s]*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
```

**Amazon Redshift ULM/Amazon Redshift - Audit - Connection Log Analysis/Top Databases**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  ("authenticated" or "authentication failure" or "initiating session" or "connecting session" or "disconnecting session" or "set application_name" or "Terminating backend on administrator")
| parse regex "^(?<event>[\w]+[\w\s]*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
| parse regex field = dbname "(?<dbname>[^\s]+)\s*" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - Audit - Connection Log Analysis/Top Events**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  ("authenticated" or "authentication failure" or "initiating session" or "connecting session" or "disconnecting session" or "set application_name" or "Terminating backend on administrator")
| parse regex "^(?<event>[\w]+[\w\s]*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
```

**Amazon Redshift ULM/Amazon Redshift - Audit - Connection Log Analysis/Top Remote Hosts**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  ("authenticated" or "authentication failure" or "initiating session" or "connecting session" or "disconnecting session" or "set application_name" or "Terminating backend on administrator")
| parse regex "^(?<event>[\w]+[\w\s]*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
```

**Amazon Redshift ULM/Amazon Redshift - Audit - Connection Log Analysis/Top Users**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  ("authenticated" or "authentication failure" or "initiating session" or "connecting session" or "disconnecting session" or "set application_name" or "Terminating backend on administrator")
| parse regex "^(?<event>[\w]+[\w\s]*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
```

**Amazon Redshift ULM/Amazon Redshift - Audit - User Activity Log Analysis/SQL Command Execution Trend**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  LOG
| parse regex "^\'(?<time>\d+\-\d+\-\d+T\d+:\d+:\d+Z \w+)\s+\[\s*(?<parameters>[^\]]+)\]\'\s+LOG:\s+(?<sqlstatement>[^;]*)"
| parse field=parameters "db=* user=* pid=* userid=* xid=*" as dbName, username, pid, userid, xid nodrop
| parse regex field = sqlstatement "^/\*(?:.|[\r\n])*?\*/\s+(?<command>\w+)\s*" nodrop
| parse regex field = sqlstatement "^(?<command>\w+)\s*" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - Audit - User Activity Log Analysis/Top Alter Command Execution**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  LOG Alte*
| parse regex "^\'(?<time>\d+\-\d+\-\d+T\d+:\d+:\d+Z \w+)\s+\[\s*(?<parameters>[^\]]+)\]\'\s+LOG:\s+(?<sqlstatement>[^;]*)"
| parse field=parameters "db=* user=* pid=* userid=* xid=*" as dbName, username, pid, userid, xid nodrop
| parse regex field = sqlstatement "^/\*(?:.|[\r\n])*?\*/\s+(?<command>\w+)\s*" nodrop
| parse regex field = sqlstatement "^(?<command>\w+)\s*" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - Audit - User Activity Log Analysis/Top Create Command Execution**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  LOG CREA*
| parse regex "^\'(?<time>\d+\-\d+\-\d+T\d+:\d+:\d+Z \w+)\s+\[\s*(?<parameters>[^\]]+)\]\'\s+LOG:\s+(?<sqlstatement>[^;]*)"
| parse field=parameters "db=* user=* pid=* userid=* xid=*" as dbName, username, pid, userid, xid nodrop
| parse regex field = sqlstatement "^/\*(?:.|[\r\n])*?\*/\s+(?<command>\w+)\s*" nodrop
| parse regex field = sqlstatement "^(?<command>\w+)\s*" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - Audit - User Activity Log Analysis/Top Databases**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  LOG
| parse regex "^\'(?<time>\d+\-\d+\-\d+T\d+:\d+:\d+Z \w+)\s+\[\s*(?<parameters>[^\]]+)\]\'\s+LOG:\s+(?<sqlstatement>[^;]*)"
| parse field=parameters "db=* user=* pid=* userid=* xid=*" as dbName, username, pid, userid, xid nodrop
| parse regex field = sqlstatement "^/\*(?:.|[\r\n])*?\*/\s+(?<command>\w+)\s*" nodrop
| parse regex field = sqlstatement "^(?<command>\w+)\s*" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - Audit - User Activity Log Analysis/Top Delete Command Execution**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  LOG DELE*
| parse regex "^\'(?<time>\d+\-\d+\-\d+T\d+:\d+:\d+Z \w+)\s+\[\s*(?<parameters>[^\]]+)\]\'\s+LOG:\s+(?<sqlstatement>[^;]*)"
| parse field=parameters "db=* user=* pid=* userid=* xid=*" as dbName, username, pid, userid, xid nodrop
| parse regex field = sqlstatement "^/\*(?:.|[\r\n])*?\*/\s+(?<command>\w+)\s*" nodrop
| parse regex field = sqlstatement "^(?<command>\w+)\s*" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - Audit - User Activity Log Analysis/Top Drop Command Execution**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  LOG DROP*
| parse regex "^\'(?<time>\d+\-\d+\-\d+T\d+:\d+:\d+Z \w+)\s+\[\s*(?<parameters>[^\]]+)\]\'\s+LOG:\s+(?<sqlstatement>[^;]*)"
| parse field=parameters "db=* user=* pid=* userid=* xid=*" as dbName, username, pid, userid, xid nodrop
| parse regex field = sqlstatement "^/\*(?:.|[\r\n])*?\*/\s+(?<command>\w+)\s*" nodrop
| parse regex field = sqlstatement "^(?<command>\w+)\s*" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - Audit - User Activity Log Analysis/Top Grant Command Execution**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  LOG GRAN*
| parse regex "^\'(?<time>\d+\-\d+\-\d+T\d+:\d+:\d+Z \w+)\s+\[\s*(?<parameters>[^\]]+)\]\'\s+LOG:\s+(?<sqlstatement>[^;]*)"
| parse field=parameters "db=* user=* pid=* userid=* xid=*" as dbName, username, pid, userid, xid nodrop
| parse regex field = sqlstatement "^/\*(?:.|[\r\n])*?\*/\s+(?<command>\w+)\s*" nodrop
| parse regex field = sqlstatement "^(?<command>\w+)\s*" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - Audit - User Activity Log Analysis/Top Revoke Command Execution**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  LOG REVO*
| parse regex "^\'(?<time>\d+\-\d+\-\d+T\d+:\d+:\d+Z \w+)\s+\[\s*(?<parameters>[^\]]+)\]\'\s+LOG:\s+(?<sqlstatement>[^;]*)"
| parse field=parameters "db=* user=* pid=* userid=* xid=*" as dbName, username, pid, userid, xid nodrop
| parse regex field = sqlstatement "^/\*(?:.|[\r\n])*?\*/\s+(?<command>\w+)\s*" nodrop
| parse regex field = sqlstatement "^(?<command>\w+)\s*" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - Audit - User Activity Log Analysis/Top SQL Commands**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  LOG
| parse regex "^\'(?<time>\d+\-\d+\-\d+T\d+:\d+:\d+Z \w+)\s+\[\s*(?<parameters>[^\]]+)\]\'\s+LOG:\s+(?<sqlstatement>[^;]*)"
| parse field=parameters "db=* user=* pid=* userid=* xid=*" as dbName, username, pid, userid, xid nodrop
| parse regex field = sqlstatement "^/\*(?:.|[\r\n])*?\*/\s+(?<command>\w+)\s*" nodrop
| parse regex field = sqlstatement "^(?<command>\w+)\s*" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - Audit - User Activity Log Analysis/Top SQL Statements**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  LOG
| parse regex "^\'(?<time>\d+\-\d+\-\d+T\d+:\d+:\d+Z \w+)\s+\[\s*(?<parameters>[^\]]+)\]\'\s+LOG:\s+(?<sqlstatement>[^;]*)"
| parse field=parameters "db=* user=* pid=* userid=* xid=*" as dbName, username, pid, userid, xid nodrop
| parse regex field = sqlstatement "^/\*(?:.|[\r\n])*?\*/\s+(?<command>\w+)\s*" nodrop
| parse regex field = sqlstatement "^(?<command>\w+)\s*" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - Audit - User Activity Log Analysis/Top Truncate Command Execution**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  LOG TRUN*
| parse regex "^\'(?<time>\d+\-\d+\-\d+T\d+:\d+:\d+Z \w+)\s+\[\s*(?<parameters>[^\]]+)\]\'\s+LOG:\s+(?<sqlstatement>[^;]*)"
| parse field=parameters "db=* user=* pid=* userid=* xid=*" as dbName, username, pid, userid, xid nodrop
| parse regex field = sqlstatement "^/\*(?:.|[\r\n])*?\*/\s+(?<command>\w+)\s*" nodrop
| parse regex field = sqlstatement "^(?<command>\w+)\s*" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - Audit - User Activity Log Analysis/Top Users**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  LOG
| parse regex "^\'(?<time>\d+\-\d+\-\d+T\d+:\d+:\d+Z \w+)\s+\[\s*(?<parameters>[^\]]+)\]\'\s+LOG:\s+(?<sqlstatement>[^;]*)"
| parse field=parameters "db=* user=* pid=* userid=* xid=*" as dbName, username, pid, userid, xid nodrop
| parse regex field = sqlstatement "^/\*(?:.|[\r\n])*?\*/\s+(?<command>\w+)\s*" nodrop
| parse regex field = sqlstatement "^(?<command>\w+)\s*" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - Audit - User Activity Log Analysis/Top Vacuum Command Execution**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  LOG VACU*
| parse regex "^\'(?<time>\d+\-\d+\-\d+T\d+:\d+:\d+Z \w+)\s+\[\s*(?<parameters>[^\]]+)\]\'\s+LOG:\s+(?<sqlstatement>[^;]*)"
| parse field=parameters "db=* user=* pid=* userid=* xid=*" as dbName, username, pid, userid, xid nodrop
| parse regex field = sqlstatement "^/\*(?:.|[\r\n])*?\*/\s+(?<command>\w+)\s*" nodrop
| parse regex field = sqlstatement "^(?<command>\w+)\s*" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - Audit - User Log Analysis/Alter User Events**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  LOG Alte* user
| parse regex "^\'(?<time>\d+\-\d+\-\d+T\d+:\d+:\d+Z \w+)\s+\[\s*(?<parameters>[^\]]+)\]\'\s+LOG:\s+(?<sqlstatement>[^;]*)"
| parse field=parameters "db=* user=* pid=* userid=* xid=*" as dbName, username, pid, userid, xid nodrop
| parse regex field = sqlstatement "^/\*(?:.|[\r\n])*?\*/\s+(?<command>\w+)\s*" nodrop
| parse regex field = sqlstatement "^(?<command>\w+)\s*" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - Audit - User Log Analysis/Create User Events**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  LOG crea* user
| parse regex "^\'(?<time>\d+\-\d+\-\d+T\d+:\d+:\d+Z \w+)\s+\[\s*(?<parameters>[^\]]+)\]\'\s+LOG:\s+(?<sqlstatement>[^;]*)"
| parse field=parameters "db=* user=* pid=* userid=* xid=*" as dbName, username, pid, userid, xid nodrop
| parse regex field = sqlstatement "^/\*(?:.|[\r\n])*?\*/\s+(?<command>\w+)\s*" nodrop
| parse regex field = sqlstatement "^(?<command>\w+)\s*" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - Audit - User Log Analysis/Drop User Events**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  LOG drop* user
| parse regex "^\'(?<time>\d+\-\d+\-\d+T\d+:\d+:\d+Z \w+)\s+\[\s*(?<parameters>[^\]]+)\]\'\s+LOG:\s+(?<sqlstatement>[^;]*)"
| parse field=parameters "db=* user=* pid=* userid=* xid=*" as dbName, username, pid, userid, xid nodrop
| parse regex field = sqlstatement "^/\*(?:.|[\r\n])*?\*/\s+(?<command>\w+)\s*" nodrop
| parse regex field = sqlstatement "^(?<command>\w+)\s*" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - Audit - User Log Analysis/Event Trend**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  LOG (crea* or drop* or alte*) user
| parse regex "^\'(?<time>\d+\-\d+\-\d+T\d+:\d+:\d+Z \w+)\s+\[\s*(?<parameters>[^\]]+)\]\'\s+LOG:\s+(?<sqlstatement>[^;]*)"
| parse field=parameters "db=* user=* pid=* userid=* xid=*" as dbName, username, pid, userid, xid nodrop
| parse regex field = sqlstatement "^/\*(?:.|[\r\n])*?\*/\s+(?<command>\w+)\s*" nodrop
| parse regex field = sqlstatement "^(?<command>\w+)\s*" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - Audit - User Log Analysis/Events**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  LOG (crea* or drop* or alte*) user
| parse regex "^\'(?<time>\d+\-\d+\-\d+T\d+:\d+:\d+Z \w+)\s+\[\s*(?<parameters>[^\]]+)\]\'\s+LOG:\s+(?<sqlstatement>[^;]*)"
| parse field=parameters "db=* user=* pid=* userid=* xid=*" as dbName, username, pid, userid, xid nodrop
| parse regex field = sqlstatement "^/\*(?:.|[\r\n])*?\*/\s+(?<command>\w+)\s*" nodrop
| parse regex field = sqlstatement "^(?<command>\w+)\s*" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - Audit - User Log Analysis/Recent User Related Events**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  LOG (crea* or drop* or alte*) user
| parse regex "^\'(?<time>\d+\-\d+\-\d+T\d+:\d+:\d+Z \w+)\s+\[\s*(?<parameters>[^\]]+)\]\'\s+LOG:\s+(?<sqlstatement>[^;]*)"
| parse field=parameters "db=* user=* pid=* userid=* xid=*" as dbName, username, pid, userid, xid nodrop
| parse regex field = sqlstatement "^/\*(?:.|[\r\n])*?\*/\s+(?<command>\w+)\s*" nodrop
| parse regex field = sqlstatement "^(?<command>\w+)\s*" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - CloudTrail Events Overview/Event Status**
```
_sourceCategory={{ReshiftCloudTrailLogsDataSource}}  "\"eventSource\":\"redshift.amazonaws.com\""
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop | json "requestParameters.clusterIdentifier" as clusterIdentifier1 nodrop | json "responseElements.clusters" as clusters nodrop | parse regex "clusterIdentifier\":\"(?<clusterIdentifier2>[^\"]*)\"" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - CloudTrail Events Overview/Event Status Trend**
```
_sourceCategory={{ReshiftCloudTrailLogsDataSource}}  "\"eventSource\":\"redshift.amazonaws.com\""
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop | json "requestParameters.clusterIdentifier" as clusterIdentifier1 nodrop | json "responseElements.clusters" as clusters nodrop | parse regex "clusterIdentifier\":\"(?<clusterIdentifier2>[^\"]*)\"" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - CloudTrail Events Overview/Events by AccountId**
```
_sourceCategory={{ReshiftCloudTrailLogsDataSource}}  "\"eventSource\":\"redshift.amazonaws.com\""
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop | json "requestParameters.clusterIdentifier" as clusterIdentifier1 nodrop | json "responseElements.clusters" as clusters nodrop | parse regex "clusterIdentifier\":\"(?<clusterIdentifier2>[^\"]*)\"" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - CloudTrail Events Overview/Events by Regions**
```
_sourceCategory={{ReshiftCloudTrailLogsDataSource}}  "\"eventSource\":\"redshift.amazonaws.com\""
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop | json "requestParameters.clusterIdentifier" as clusterIdentifier1 nodrop | json "responseElements.clusters" as clusters nodrop | parse regex "clusterIdentifier\":\"(?<clusterIdentifier2>[^\"]*)\"" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - CloudTrail Events Overview/Events by User**
```
_sourceCategory={{ReshiftCloudTrailLogsDataSource}}  "\"eventSource\":\"redshift.amazonaws.com\""
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop | json "requestParameters.clusterIdentifier" as clusterIdentifier1 nodrop | json "responseElements.clusters" as clusters nodrop | parse regex "clusterIdentifier\":\"(?<clusterIdentifier2>[^\"]*)\"" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - CloudTrail Events Overview/Events by User Agents**
```
_sourceCategory={{ReshiftCloudTrailLogsDataSource}}  "\"eventSource\":\"redshift.amazonaws.com\""
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop | json "requestParameters.clusterIdentifier" as clusterIdentifier1 nodrop | json "responseElements.clusters" as clusters nodrop | parse regex "clusterIdentifier\":\"(?<clusterIdentifier2>[^\"]*)\"" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - CloudTrail Events Overview/Events Trend by Event Name**
```
_sourceCategory={{ReshiftCloudTrailLogsDataSource}}  "\"eventSource\":\"redshift.amazonaws.com\""
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop | json "requestParameters.clusterIdentifier" as clusterIdentifier1 nodrop | json "responseElements.clusters" as clusters nodrop | parse regex "clusterIdentifier\":\"(?<clusterIdentifier2>[^\"]*)\"" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - CloudTrail Events Overview/Failed Event Locations**
```
_sourceCategory={{ReshiftCloudTrailLogsDataSource}}  "\"eventSource\":\"redshift.amazonaws.com\"" errorCode
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop | json "requestParameters.clusterIdentifier" as clusterIdentifier1 nodrop | json "responseElements.clusters" as clusters nodrop | parse regex "clusterIdentifier\":\"(?<clusterIdentifier2>[^\"]*)\"" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - CloudTrail Events Overview/Failed Events**
```
_sourceCategory={{ReshiftCloudTrailLogsDataSource}}  "\"eventSource\":\"redshift.amazonaws.com\"" errorCode
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop | json "requestParameters.clusterIdentifier" as clusterIdentifier1 nodrop | json "responseElements.clusters" as clusters nodrop | parse regex "clusterIdentifier\":\"(?<clusterIdentifier2>[^\"]*)\"" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - CloudTrail Events Overview/Recent Failed Event Details**
```
_sourceCategory={{ReshiftCloudTrailLogsDataSource}}  "\"eventSource\":\"redshift.amazonaws.com\"" errorCode
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop | json "requestParameters.clusterIdentifier" as clusterIdentifier1 nodrop | json "responseElements.clusters" as clusters nodrop | parse regex "clusterIdentifier\":\"(?<clusterIdentifier2>[^\"]*)\"" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - CloudTrail Events Overview/Recent Successful Event Details**
```
_sourceCategory={{ReshiftCloudTrailLogsDataSource}}  "\"eventSource\":\"redshift.amazonaws.com\""
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop | json "requestParameters.clusterIdentifier" as clusterIdentifier1 nodrop | json "responseElements.clusters" as clusters nodrop | parse regex "clusterIdentifier\":\"(?<clusterIdentifier2>[^\"]*)\"" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - CloudTrail Events Overview/Successful Event Locations**
```
_sourceCategory={{ReshiftCloudTrailLogsDataSource}}  "\"eventSource\":\"redshift.amazonaws.com\""
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop | json "requestParameters.clusterIdentifier" as clusterIdentifier1 nodrop | json "responseElements.clusters" as clusters nodrop | parse regex "clusterIdentifier\":\"(?<clusterIdentifier2>[^\"]*)\"" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - CloudTrail Events Overview/Successful Events**
```
_sourceCategory={{ReshiftCloudTrailLogsDataSource}}  "\"eventSource\":\"redshift.amazonaws.com\""
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop | json "requestParameters.clusterIdentifier" as clusterIdentifier1 nodrop | json "responseElements.clusters" as clusters nodrop | parse regex "clusterIdentifier\":\"(?<clusterIdentifier2>[^\"]*)\"" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - CloudTrail Events Overview/Top Cluster Identifiers**
```
_sourceCategory={{ReshiftCloudTrailLogsDataSource}}  "\"eventSource\":\"redshift.amazonaws.com\"" clusterIdentifier
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop | json "requestParameters.clusterIdentifier" as clusterIdentifier1 nodrop | json "responseElements.clusters" as clusters nodrop | parse regex "clusterIdentifier\":\"(?<clusterIdentifier2>[^\"]*)\"" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - CloudTrail Events Overview/Top Error Codes**
```
_sourceCategory={{ReshiftCloudTrailLogsDataSource}}  "\"eventSource\":\"redshift.amazonaws.com\"" errorCode
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop | json "requestParameters.clusterIdentifier" as clusterIdentifier1 nodrop | json "responseElements.clusters" as clusters nodrop | parse regex "clusterIdentifier\":\"(?<clusterIdentifier2>[^\"]*)\"" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - CloudTrail Events Overview/Top Users by Type**
```
_sourceCategory={{ReshiftCloudTrailLogsDataSource}}  "\"eventSource\":\"redshift.amazonaws.com\""
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop | json "requestParameters.clusterIdentifier" as clusterIdentifier1 nodrop | json "responseElements.clusters" as clusters nodrop | parse regex "clusterIdentifier\":\"(?<clusterIdentifier2>[^\"]*)\"" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - CloudTrail Events Overview/User Type Trend**
```
_sourceCategory={{ReshiftCloudTrailLogsDataSource}}  "\"eventSource\":\"redshift.amazonaws.com\""
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop | json "requestParameters.clusterIdentifier" as clusterIdentifier1 nodrop | json "responseElements.clusters" as clusters nodrop | parse regex "clusterIdentifier\":\"(?<clusterIdentifier2>[^\"]*)\"" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - Overview/Authentication Failures**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  "authentication failure"
| parse regex "^(?<event>[\w]+[\w\s\']*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
```

**Amazon Redshift ULM/Amazon Redshift - Overview/Authentication Method Used**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  ("authenticated" or "authentication failure" or "initiating session" or "connecting session" or "disconnecting session" or "set application_name" or "Terminating backend on administrator")
| parse regex "^(?<event>[\w]+[\w\s]*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
```

**Amazon Redshift ULM/Amazon Redshift - Overview/Authentication Success**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  "authenticated"
| parse regex "^(?<event>[\w]+[\w\s\']*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
```

**Amazon Redshift ULM/Amazon Redshift - Overview/Connection Sessions**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  "initiating session"
| parse regex "^(?<event>[\w]+[\w\s]*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
```

**Amazon Redshift ULM/Amazon Redshift - Overview/Events by AccountId**
```
_sourceCategory={{ReshiftCloudTrailLogsDataSource}}  "\"eventSource\":\"redshift.amazonaws.com\""
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop | json "requestParameters.clusterIdentifier" as clusterIdentifier1 nodrop | json "responseElements.clusters" as clusters nodrop | parse regex "clusterIdentifier\":\"(?<clusterIdentifier2>[^\"]*)\"" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - Overview/Session Duration Stats**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  "disconnecting session"
| parse regex "^(?<event>[\w]+[\w\s]*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
```

**Amazon Redshift ULM/Amazon Redshift - Overview/SQL Command Execution Trend**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  LOG
| parse regex "^\'(?<time>\d+\-\d+\-\d+T\d+:\d+:\d+Z \w+)\s+\[\s*(?<parameters>[^\]]+)\]\'\s+LOG:\s+(?<sqlstatement>[^;]*)"
| parse field=parameters "db=* user=* pid=* userid=* xid=*" as dbName, username, pid, userid, xid nodrop
| parse regex field = sqlstatement "^/\*(?:.|[\r\n])*?\*/\s+(?<command>\w+)\s*" nodrop
| parse regex field = sqlstatement "^(?<command>\w+)\s*" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - Overview/SSL Used**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  ("authenticated" or "authentication failure" or "initiating session" or "connecting session" or "disconnecting session" or "set application_name" or "Terminating backend on administrator")
| parse regex "^(?<event>[\w]+[\w\s\']*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
```

**Amazon Redshift ULM/Amazon Redshift - Overview/Top Cluster Identifiers**
```
_sourceCategory={{ReshiftCloudTrailLogsDataSource}}  "\"eventSource\":\"redshift.amazonaws.com\"" clusterIdentifier
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop | json "requestParameters.clusterIdentifier" as clusterIdentifier1 nodrop | json "responseElements.clusters" as clusters nodrop | parse regex "clusterIdentifier\":\"(?<clusterIdentifier2>[^\"]*)\"" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - Overview/Top Databases**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  LOG
| parse regex "^\'(?<time>\d+\-\d+\-\d+T\d+:\d+:\d+Z \w+)\s+\[\s*(?<parameters>[^\]]+)\]\'\s+LOG:\s+(?<sqlstatement>[^;]*)"
| parse field=parameters "db=* user=* pid=* userid=* xid=*" as dbName, username, pid, userid, xid nodrop
| parse regex field = sqlstatement "^/\*(?:.|[\r\n])*?\*/\s+(?<command>\w+)\s*" nodrop
| parse regex field = sqlstatement "^(?<command>\w+)\s*" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - Overview/Top Remote Hosts**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  ("authenticated" or "authentication failure" or "initiating session" or "connecting session" or "disconnecting session" or "set application_name" or "Terminating backend on administrator")
| parse regex "^(?<event>[\w]+[\w\s\']*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
```

**Amazon Redshift ULM/Amazon Redshift - Overview/Top SQL Commands**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  LOG
| parse regex "^\'(?<time>\d+\-\d+\-\d+T\d+:\d+:\d+Z \w+)\s+\[\s*(?<parameters>[^\]]+)\]\'\s+LOG:\s+(?<sqlstatement>[^;]*)"
| parse field=parameters "db=* user=* pid=* userid=* xid=*" as dbName, username, pid, userid, xid nodrop
| parse regex field = sqlstatement "^/\*(?:.|[\r\n])*?\*/\s+(?<command>\w+)\s*" nodrop
| parse regex field = sqlstatement "^(?<command>\w+)\s*" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - Overview/Top Successful Events**
```
_sourceCategory={{ReshiftCloudTrailLogsDataSource}}  "\"eventSource\":\"redshift.amazonaws.com\""
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop | json "requestParameters.clusterIdentifier" as clusterIdentifier1 nodrop | json "responseElements.clusters" as clusters nodrop | parse regex "clusterIdentifier\":\"(?<clusterIdentifier2>[^\"]*)\"" nodrop
```

**Amazon Redshift ULM/Amazon Redshift - Overview/Top Users**
```
_sourceCategory={{ReshiftAuditLogsDataSource}}  ("authenticated" or "authentication failure" or "initiating session" or "connecting session" or "disconnecting session" or "set application_name" or "Terminating backend on administrator")
| parse regex "^(?<event>[\w]+[\w\s]*)\|(?<eventDetails>.*)"
| parse "*|*|*|*|*|*|*|*|*|*|*|*|*|*|*|*" as event, recordtime, remotehost, remoteport, pid, dbname, username, authmethod, duration, sslversion, sslcipher, mtu, sslcompression, sslexpansion, something1, application_name
```

**Amazon Redshift ULM/Amazon Redshift - Overview/Top Users by Type**
```
_sourceCategory={{ReshiftCloudTrailLogsDataSource}}  "\"eventSource\":\"redshift.amazonaws.com\""
| json "eventTime" nodrop | json "eventSource" nodrop | json "eventName" nodrop | json "awsRegion" nodrop | json "sourceIPAddress" nodrop | json "eventType" nodrop | json "errorCode" nodrop | json "errorMessage" nodrop | json "userAgent" nodrop | json "requestID" nodrop | json "userIdentity.accountId" as accountId nodrop | json "userIdentity.arn" as arn nodrop | parse field=arn ":assumed-role/*" as user nodrop | parse field=arn "arn:aws:iam::*:*" as accountId, user nodrop | json "userIdentity.userName" as username nodrop | json "userIdentity.type" as type nodrop | json "requestParameters.clusterIdentifier" as clusterIdentifier1 nodrop | json "responseElements.clusters" as clusters nodrop | parse regex "clusterIdentifier\":\"(?<clusterIdentifier2>[^\"]*)\"" nodrop
```


