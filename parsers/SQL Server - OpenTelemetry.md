# Parsers For SQL Server - OpenTelemetry

**SQL Server - OpenTelemetry/SQL Server - Backup Restore Mirroring/Backup Failure Reasons**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} db.node.name={{db.node.name}} sumo.datasource=sqlserver !Restore !"[180] Job" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse "BackupDiskFile::*: Backup device '*' * to *. Operating system error *(*)." as media, backup_path, backup_status, operation, error_code, reason nodrop
| parse "Backup      BackupIoRequest::ReportIoError: * * on backup device '*'. Operating system error *(*)." as operation, backup_status, backup_path, error_code, reason nodrop
| parse "Extend Disk Backup:  * on backup device '*'. Operating system error *(*)." as backup_status, backup_path, error_code, reason nodrop
| parse "BackupVirtualDeviceFile::RequestDurableMedia: * * on backup device '*'. Operating system error *(*)." as operation, backup_status, backup_path, error_code, reason nodrop
| parse "Backup      BACKUP * to complete the command BACKUP DATABASE *. Check the backup application log for detailed messages." as backup_status, database
```

**SQL Server - OpenTelemetry/SQL Server - Backup Restore Mirroring/Backup Failures**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} db.node.name={{db.node.name}} sumo.datasource=sqlserver backup !Restore !"[180] Job" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse "BackupDiskFile::*: Backup device '*' * to *. Operating system error *(*)." as media, backup_path, backup_status, operation, error_code, reason nodrop
| parse "Backup      BackupIoRequest::ReportIoError: * * on backup device '*'. Operating system error *(*)." as operation, backup_status, backup_path, error_code, reason nodrop
| parse "Extend Disk Backup:  * on backup device '*'. Operating system error *(*)." as backup_status, backup_path, error_code, reason nodrop
| parse "BackupVirtualDeviceFile::RequestDurableMedia: * * on backup device '*'. Operating system error *(*)." as operation, backup_status, backup_path, error_code, reason nodrop
| parse "Backup      BACKUP * to complete the command BACKUP DATABASE *. Check the backup application log for detailed messages." as backup_status, database
```

**SQL Server - OpenTelemetry/SQL Server - Backup Restore Mirroring/Database Backed Up**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} db.node.name={{db.node.name}}  sumo.datasource=sqlserver backup | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse "Backup      Database backed up. Database: *, creation date(time): *, pages dumped: *, first LSN: *, last LSN: *, number of dump devices: *, device information: *. This is an informational message only. No user action is required." as database, creation_time, pages_dumped, first_lsn, last_lsn,dump_devices, device_info
```

**SQL Server - OpenTelemetry/SQL Server - Backup Restore Mirroring/Mirroring Errors**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} db.node.name={{db.node.name}} sumo.datasource=sqlserver mirror* | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse "A * has occurred while attempting to establish a connection to availability replica '*' with id [*]." as reason, replica, replicaID nodrop
| parse "An error occurred in a Service Broker/Database Mirroring transport connection endpoint, Error: *, State: *. (Near endpoint role: *, far endpoint address: *)" as error, state, near_endpoint, far_endpoint
```

**SQL Server - OpenTelemetry/SQL Server - Backup Restore Mirroring/Restore Activity**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} db.node.name={{db.node.name}}  sumo.datasource=sqlserver (restore or restoring) | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse "Backup      Restore is * on database '*'.  The database is now available." as restore_status, database nodrop
| parse "The database * is marked * and is in a state that does not allow recovery to be run." as database, restore_status
```

**SQL Server - OpenTelemetry/SQL Server - Backup Restore Mirroring/Transaction Log Backed Up**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} db.node.name={{db.node.name}}  sumo.datasource=sqlserver backup | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse "Backup      Database backed up. Database: *, creation date(time): *, first LSN: *, last LSN: *, number of dump devices: *, device information: *. This is an informational message only. No user action is required." as database, creation_time, first_lsn, last_lsn, dump_devices, device_info
```

**SQL Server - OpenTelemetry/SQL Server - General Health/AppDomain Issues**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} db.node.name={{db.node.name}} sumo.datasource=sqlserver  (AppDomain or "memory pressure" or "out of memory") |json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse "AppDomain * (*) is marked for unload due to *." as AppDomainID, detail, reason nodrop
| parse "AppDomain * was unloaded by escalation policy to ensure the consistency of your application. * happened while accessing a critical resource" as detail, reason nodrop
| Parse "Failed to initialize the Common Language Runtime * due to *." as detail, reason nodrop
| parse "Error: *, Severity: *, State: *. .NET Framework execution was aborted by escalation policy because of *." as error, severity, state, reason
```

**SQL Server - OpenTelemetry/SQL Server - General Health/Insufficient Space Issues**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} db.node.name={{db.node.name}} sumo.datasource=sqlserver "Could not allocate" (space or page) |json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse "Could not allocate space for object '*' in database '*' because *. Create disk space by deleting unneeded files, dropping objects in the filegroup, adding additional files to the filegroup, or setting autogrowth on for existing files in the filegroup." as object, database, reason nodrop
| parse "Could not allocate a new * for database '*' because *. Create the necessary space by dropping objects in the filegroup, adding additional files to the filegroup, or setting autogrowth on for existing files in the filegroup." as object, database, reason
```

**SQL Server - OpenTelemetry/SQL Server - General Health/Server Events**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} db.node.name={{db.node.name}} sumo.datasource=sqlserver |json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| where _raw matches "*SQL Server is now ready for client connections.*" or  _raw matches "*SQL Server is allowing new connections in response to 'continue' request from Service Control Manager.*" or  _raw matches "*SQL Server is not allowing new connections because the Service Control Manager requested a pause*" or  _raw matches "*SQL Trace was stopped due to server shutdown.*" or "*SQL Server terminating because of system shutdown.*"
| parse regex "(?<time>\d{4}-\d{2}-\d{2}\s\d{2}:\d{2}:\d{2}.\d{2,3})\s+\S+"
```

**SQL Server - OpenTelemetry/SQL Server - General Health/Stopped Servers**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} db.node.name={{db.node.name}} sumo.datasource=sqlserver |json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| where _raw matches "*SQL Server is now ready for client connections.*" or  _raw matches "*SQL Server is allowing new connections in response to 'continue' request from Service Control Manager.*" or  _raw matches "*SQL Server is not allowing new connections because the Service Control Manager requested a pause*" or  _raw matches "*SQL Trace was stopped due to server shutdown.*" or "*SQL Server terminating because of system shutdown.*"
| parse regex "(?<time>\d{4}-\d{2}-\d{2}\s\d{2}:\d{2}:\d{2}.\d{2,3})\s+\S+"
```

**SQL Server - OpenTelemetry/SQL Server - General Health/Up Servers**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} db.node.name={{db.node.name}} sumo.datasource=sqlserver |json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| where _raw matches "*SQL Server is now ready for client connections.*" or  _raw matches "*SQL Server is allowing new connections in response to 'continue' request from Service Control Manager.*" or  _raw matches "*SQL Server is not allowing new connections because the Service Control Manager requested a pause*" or  _raw matches "*SQL Trace was stopped due to server shutdown." or "SQL Server terminating because of system shutdown.*"
| parse regex "(?<time>\d{4}-\d{2}-\d{2}\s\d{2}:\d{2}:\d{2}.\d{2,3})\s+\S+"
```

**SQL Server - OpenTelemetry/SQL Server - Operations/Configuration Update Trend**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} db.node.name={{db.node.name}} sumo.datasource=sqlserver option | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse "Configuration option '*' changed from * to *." as object, old_val, new_val nodrop
```

**SQL Server - OpenTelemetry/SQL Server - Operations/Configuration Updates**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} db.node.name={{db.node.name}} sumo.datasource=sqlserver option | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse "Configuration option '*' changed from * to *." as object, old_val, new_val nodrop
```

**SQL Server - OpenTelemetry/SQL Server - Operations/Error Trend by Severity Code**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} db.node.name={{db.node.name}}  sumo.datasource=sqlserver "Error:" "Severity:" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "\s+(?<Logtype>Error):\s+(?<message>.*)$"
| parse field=message "*, Severity: *, State:" as error_code, severity
```

**SQL Server - OpenTelemetry/SQL Server - Operations/Errors and Warnings**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} db.node.name={{db.node.name}} sumo.datasource=sqlserver("Error:" or "Warning:") | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "\s+(?<Logtype>Error|Warning):\s+(?<message>.*)$"
```

**SQL Server - OpenTelemetry/SQL Server - Operations/Recent Configuration Updates**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} db.node.name={{db.node.name}} sumo.datasource=sqlserver option | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse "Configuration option '*' changed from * to *." as object, old_val, new_val nodrop
```

**SQL Server - OpenTelemetry/SQL Server - Overview/Appdomain Issue count**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}}  sumo.datasource=sqlserver  (AppDomain or "memory pressure" or "out of memory") |json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse "AppDomain * (*) is marked for unload due to *." as AppDomainID, detail, reason nodrop
| parse "AppDomain * was unloaded by escalation policy to ensure the consistency of your application. * happened while accessing a critical resource" as detail, reason nodrop
| Parse "Failed to initialize the Common Language Runtime * due to *." as detail, reason nodrop
| parse "Error: *, Severity: *, State: *. .NET Framework execution was aborted by escalation policy because of *." as error, severity, state, reason
```

**SQL Server - OpenTelemetry/SQL Server - Overview/Backup Failure Count**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}}  sumo.datasource=sqlserver backup !Restore !"[180] Job" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse "BackupDiskFile::*: Backup device '*' * to *. Operating system error *(*)." as media, backup_path, backup_status, operation, error_code, reason nodrop
| parse "Backup      BackupIoRequest::ReportIoError: * * on backup device '*'. Operating system error *(*)." as operation, backup_status, backup_path, error_code, reason nodrop
| parse "Extend Disk Backup:  * on backup device '*'. Operating system error *(*)." as backup_status, backup_path, error_code, reason nodrop
| parse "BackupVirtualDeviceFile::RequestDurableMedia: * * on backup device '*'. Operating system error *(*)." as operation, backup_status, backup_path, error_code, reason nodrop
| parse "Backup      BACKUP * to complete the command BACKUP DATABASE *. Check the backup application log for detailed messages." as backup_status, database
```

**SQL Server - OpenTelemetry/SQL Server - Overview/Error or Warning Count**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}}  sumo.datasource=sqlserver ("Error:" or "Warning:") | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "\s+(?<Logtype>Error|Warning):\s+(?<message>.*)$"
```

**SQL Server - OpenTelemetry/SQL Server - Overview/Insufficient space issues Count**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}}  sumo.datasource=sqlserver "Could not allocate" (space or page) |json "log" as _rawlog nodrop | if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse "Could not allocate space for object '*' in database '*' because *. Create disk space by deleting unneeded files, dropping objects in the filegroup, adding additional files to the filegroup, or setting autogrowth on for existing files in the filegroup." as object, database, reason nodrop
| parse "Could not allocate a new * for database '*' because *. Create the necessary space by dropping objects in the filegroup, adding additional files to the filegroup, or setting autogrowth on for existing files in the filegroup." as object, database, reason
```

**SQL Server - OpenTelemetry/SQL Server - Overview/Login Failure Reasons**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=sqlserver Logon | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse "Logon       Login * for user '*'. Reason: * '*'. [CLIENT: *]" as logon_status, userName, reason, database, client_ip nodrop
| parse "Logon       Login * for user '*'. Reason: *. [CLIENT: *]" as logon_status, userName, reason, client_ip nodrop
| parse "Logon       Login * for user '*' because *  [CLIENT: *]" as logon_status, userName, reason, client_ip nodrop
| parse "Logon       SSPI handshake * with error code *, state * while establishing a connection with integrated security; the connection has been closed. Reason: *.  [CLIENT: *]." as logon_status, error_code, state, reason, client_ip nodrop
| parse "Logon       * database '*' because *" as logon_status, database, reason nodrop
| parse "Logon       The target database, '*', is participating in an availability group and is currently * for queries. *" as database, logon_status, reason
| parse field=reason "* '*'" as reason, database nodrop
```

**SQL Server - OpenTelemetry/SQL Server - Overview/Login Failures**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}}  sumo.datasource=sqlserver Logon | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse "Logon       Login * for user '*'. Reason: * '*'. [CLIENT: *]" as logon_status, userName, reason, database, client_ip nodrop
| parse "Logon       Login * for user '*'. Reason: *. [CLIENT: *]" as logon_status, userName, reason, client_ip nodrop
| parse "Logon       Login * for user '*' because *  [CLIENT: *]" as logon_status, userName, reason, client_ip nodrop
| parse "Logon       SSPI handshake * with error code *, state * while establishing a connection with integrated security; the connection has been closed. Reason: *.  [CLIENT: *]." as logon_status, error_code, state, reason, client_ip nodrop
| parse "Logon       * database '*' because *" as logon_status, database, reason nodrop
| parse "Logon       The target database, '*', is participating in an availability group and is currently * for queries. *" as database, logon_status, reason
```

**SQL Server - OpenTelemetry/SQL Server - Overview/Logins by Authentication Method**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=sqlserver Logon succeeded | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse "Logon       Login * for user '*'. Connection made using *. [CLIENT: *]" as logon_status, userName, authentication_method, client_ip 
```

**SQL Server - OpenTelemetry/SQL Server - Overview/Mirroring Error Count**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}}  sumo.datasource=sqlserver mirror* | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse "A * has occurred while attempting to establish a connection to availability replica '*' with id [*]." as reason, replica, replicaID nodrop
| parse "An error occurred in a Service Broker/Database Mirroring transport connection endpoint, Error: *, State: *. (Near endpoint role: *, far endpoint address: *)" as error, state, near_endpoint, far_endpoint
```

**SQL Server - OpenTelemetry/SQL Server - Overview/Top 10 Client IP Addresses by Login Count**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}}  sumo.datasource=sqlserver Logon succeeded | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse "Logon       Login * for user '*'. Connection made using *. [CLIENT: *]" as logon_status, userName, authentication_method, client_ip 
```

**SQL Server - OpenTelemetry/SQL Server - Overview/Top 10 Users by Login Count**
```
 db.cluster.name={{db.cluster.name}} deployment.environment={{deployment.environment}} sumo.datasource=sqlserver Logon succeeded | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse "Logon       Login * for user '*'. Connection made using *. [CLIENT: *]" as logon_status, userName, authentication_method, client_ip 
```


