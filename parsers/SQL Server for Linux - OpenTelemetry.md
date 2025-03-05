# Parsers For SQL Server for Linux - OpenTelemetry

## Parser:
```
| json "log" as _rawlog nodrop 
| parse "A * has occurred while attempting to establish a connection to availability replica '*' with id [*]." as reason, replica, replicaID nodrop
| parse "An error occurred in a Service Broker/Database Mirroring transport connection endpoint, Error: *, State: *. (Near endpoint role: *, far endpoint address: *)" as error, state, near_endpoint, far_endpoint
 
```
### Use Cases:
AppDomain Issues, Backup Failure Reasons, Backup Failures, Configuration Update Trend, Configuration Updates, Database Backed Up, Error or Warning Count, Error Trend?by Severity Code, Errors and Warnings, Insufficient Space Issues, Login Failure Reasons, Login Failures, Logins by Authentication Method, Mirroring Error Count, Mirroring Errors, Recent Configuration Updates, Restore Activity, Server Events, Stopped Servers, Top 10 Client IP Addresses by Login Count, Top 10 Users by Login Count, Transaction Log Backed Up, Up Servers



## Parser:
```
| json "log" as _rawlog nodrop 
| parse "Backup      Database backed up. Database: *, creation date(time): *, first LSN: *, last LSN: *, number of dump devices: *, device information: *. This is an informational message only. No user action is required." as database, creation_time, first_lsn, last_lsn, dump_devices, device_info
 
```
### Use Cases:
Transaction Log Backed Up



## Parser:
```
| json "log" as _rawlog nodrop 
| parse "Backup      Database backed up. Database: *, creation date(time): *, pages dumped: *, first LSN: *, last LSN: *, number of dump devices: *, device information: *. This is an informational message only. No user action is required." as database, creation_time, pages_dumped, first_lsn, last_lsn,dump_devices, device_info
 
```
### Use Cases:
Backup Failures, Database Backed Up, Mirroring Errors, Transaction Log Backed Up



## Parser:
```
| json "log" as _rawlog nodrop 
| parse "Backup      Restore is * on database '*'.  The database is now available." as restore_status, database nodrop
| parse "The database * is marked * and is in a state that does not allow recovery to be run." as database, restore_status
 
```
### Use Cases:
Backup Failure Reasons, Backup Failures, Database Backed Up, Mirroring Errors, Restore Activity, Transaction Log Backed Up



## Parser:
```
| json "log" as _rawlog nodrop 
| parse "BackupDiskFile::*: Backup device '*' * to *. Operating system error *(*)." as media, backup_path, backup_status, operation, error_code, reason nodrop
| parse "Backup      BackupIoRequest::ReportIoError: * * on backup device '*'. Operating system error *(*)." as operation, backup_status, backup_path, error_code, reason nodrop
| parse "Extend Disk Backup:  * on backup device '*'. Operating system error *(*)." as backup_status, backup_path, error_code, reason nodrop
| parse "BackupVirtualDeviceFile::RequestDurableMedia: * * on backup device '*'. Operating system error *(*)." as operation, backup_status, backup_path, error_code, reason nodrop
| parse "Backup      BACKUP * to complete the command BACKUP DATABASE *. Check the backup application log for detailed messages." as backup_status, database
 
```
### Use Cases:
AppDomain Issues, Backup Failure Count, Backup Failure Reasons, Backup Failures, Configuration Update Trend, Configuration Updates, Database Backed Up, Error or Warning Count, Error Trend?by Severity Code, Errors and Warnings, Insufficient Space Issues, Login Failure Reasons, Login Failures, Logins by Authentication Method, Mirroring Error Count, Mirroring Errors, Recent Configuration Updates, Restore Activity, Server Events, Stopped Servers, Top 10 Client IP Addresses by Login Count, Top 10 Users by Login Count, Transaction Log Backed Up, Up Servers



## Parser:
```
| json "log" as _rawlog nodrop 
| parse "Configuration option '*' changed from * to *." as object, old_val, new_val nodrop
 
```
### Use Cases:
AppDomain Issues, Backup Failure Reasons, Backup Failures, Configuration Update Trend, Configuration Updates, Database Backed Up, Error Trend?by Severity Code, Errors and Warnings, Insufficient Space Issues, Mirroring Errors, Recent Configuration Updates, Restore Activity, Server Events, Stopped Servers, Transaction Log Backed Up, Up Servers



## Parser:
```
| json "log" as _rawlog nodrop 
| parse "Logon       Login * for user '*'. Connection made using *. [CLIENT: *]" as logon_status, userName, authentication_method, client_ip 
 
```
### Use Cases:
AppDomain Issues, Backup Failure Reasons, Backup Failures, Configuration Update Trend, Configuration Updates, Database Backed Up, Error Trend?by Severity Code, Errors and Warnings, Insufficient Space Issues, Login Failure Reasons, Logins by Authentication Method, Mirroring Errors, Recent Configuration Updates, Restore Activity, Server Events, Stopped Servers, Top 10 Client IP Addresses by Login Count, Top 10 Users by Login Count, Transaction Log Backed Up, Up Servers



## Parser:
```
| json "log" as _rawlog nodrop 
| parse "Logon       Login * for user '*'. Reason: * '*'. [CLIENT: *]" as logon_status, userName, reason, database, client_ip nodrop
| parse "Logon       Login * for user '*'. Reason: *. [CLIENT: *]" as logon_status, userName, reason, client_ip nodrop
| parse "Logon       Login * for user '*' because *  [CLIENT: *]" as logon_status, userName, reason, client_ip nodrop
| parse "Logon       SSPI handshake * with error code *, state * while establishing a connection with integrated security; the connection has been closed. Reason: *.  [CLIENT: *]." as logon_status, error_code, state, reason, client_ip nodrop
| parse "Logon       * database '*' because *" as logon_status, database, reason nodrop
| parse "Logon       The target database, '*', is participating in an availability group and is currently * for queries. *" as database, logon_status, reason
 
```
### Use Cases:
AppDomain Issues, Backup Failure Reasons, Backup Failures, Configuration Update Trend, Configuration Updates, Database Backed Up, Error Trend?by Severity Code, Errors and Warnings, Insufficient Space Issues, Login Failure Reasons, Login Failures, Logins by Authentication Method, Mirroring Errors, Recent Configuration Updates, Restore Activity, Server Events, Stopped Servers, Top 10 Client IP Addresses by Login Count, Top 10 Users by Login Count, Transaction Log Backed Up, Up Servers



## Parser:
```
| json "log" as _rawlog nodrop 
| parse "Logon       Login * for user '*'. Reason: * '*'. [CLIENT: *]" as logon_status, userName, reason, database, client_ip nodrop
| parse "Logon       Login * for user '*'. Reason: *. [CLIENT: *]" as logon_status, userName, reason, client_ip nodrop
| parse "Logon       Login * for user '*' because *  [CLIENT: *]" as logon_status, userName, reason, client_ip nodrop
| parse "Logon       SSPI handshake * with error code *, state * while establishing a connection with integrated security; the connection has been closed. Reason: *.  [CLIENT: *]." as logon_status, error_code, state, reason, client_ip nodrop
| parse "Logon       * database '*' because *" as logon_status, database, reason nodrop
| parse "Logon       The target database, '*', is participating in an availability group and is currently * for queries. *" as database, logon_status, reason
| parse field=reason "* '*'" as reason, database nodrop
 
```
### Use Cases:
AppDomain Issues, Backup Failure Reasons, Backup Failures, Configuration Update Trend, Configuration Updates, Database Backed Up, Error Trend?by Severity Code, Errors and Warnings, Insufficient Space Issues, Login Failure Reasons, Logins by Authentication Method, Mirroring Errors, Recent Configuration Updates, Restore Activity, Server Events, Stopped Servers, Transaction Log Backed Up, Up Servers



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex "\s+(?<Logtype>Error):\s+(?<message>.*)$"
| parse field=message "*, Severity: *, State:" as error_code, severity
 
```
### Use Cases:
AppDomain Issues, Backup Failure Reasons, Backup Failures, Configuration Updates, Database Backed Up, Error Trend?by Severity Code, Errors and Warnings, Insufficient Space Issues, Mirroring Errors, Recent Configuration Updates, Restore Activity, Server Events, Stopped Servers, Transaction Log Backed Up, Up Servers



## Parser:
```
| json "log" as _rawlog nodrop 
| parse regex "\s+(?<Logtype>Error|Warning):\s+(?<message>.*)$"
 
```
### Use Cases:
AppDomain Issues, Backup Failure Reasons, Backup Failures, Configuration Update Trend, Configuration Updates, Database Backed Up, Error or Warning Count, Error Trend?by Severity Code, Errors and Warnings, Insufficient Space Issues, Login Failure Reasons, Login Failures, Logins by Authentication Method, Mirroring Errors, Recent Configuration Updates, Restore Activity, Server Events, Stopped Servers, Top 10 Client IP Addresses by Login Count, Top 10 Users by Login Count, Transaction Log Backed Up, Up Servers



## Parser:
```
| parse "AppDomain * (*) is marked for unload due to *." as AppDomainID, detail, reason nodrop
| parse "AppDomain * was unloaded by escalation policy to ensure the consistency of your application. * happened while accessing a critical resource" as detail, reason nodrop
| Parse "Failed to initialize the Common Language Runtime * due to *." as detail, reason nodrop
| parse "Error: *, Severity: *, State: *. .NET Framework execution was aborted by escalation policy because of *." as error, severity, state, reason
 
```
### Use Cases:
Appdomain Issue count, AppDomain Issues, Backup Failure Count, Backup Failure Reasons, Backup Failures, Configuration Update Trend, Configuration Updates, Database Backed Up, Error or Warning Count, Error Trend?by Severity Code, Errors and Warnings, Insufficient Space Issues, Insufficient space issues Count, Login Failure Reasons, Login Failures, Logins by Authentication Method, Mirroring Error Count, Mirroring Errors, Recent Configuration Updates, Restore Activity, Server Events, Stopped Servers, Top 10 Client IP Addresses by Login Count, Top 10 Users by Login Count, Transaction Log Backed Up, Up Servers



## Parser:
```
| parse "Could not allocate space for object '*' in database '*' because *. Create disk space by deleting unneeded files, dropping objects in the filegroup, adding additional files to the filegroup, or setting autogrowth on for existing files in the filegroup." as object, database, reason nodrop
| parse "Could not allocate a new * for database '*' because *. Create the necessary space by dropping objects in the filegroup, adding additional files to the filegroup, or setting autogrowth on for existing files in the filegroup." as object, database, reason
 
```
### Use Cases:
AppDomain Issues, Backup Failure Count, Backup Failure Reasons, Backup Failures, Configuration Update Trend, Configuration Updates, Database Backed Up, Error or Warning Count, Error Trend?by Severity Code, Errors and Warnings, Insufficient Space Issues, Insufficient space issues Count, Login Failure Reasons, Login Failures, Logins by Authentication Method, Mirroring Error Count, Mirroring Errors, Recent Configuration Updates, Restore Activity, Server Events, Stopped Servers, Top 10 Client IP Addresses by Login Count, Top 10 Users by Login Count, Transaction Log Backed Up, Up Servers



## Parser:
```
| parse regex "(?<time>\d{4}-\d{2}-\d{2}\s\d{2}:\d{2}:\d{2}.\d{2,3})\s+\S+"
 
```
### Use Cases:
AppDomain Issues, Backup Failure Reasons, Backup Failures, Database Backed Up, Insufficient Space Issues, Mirroring Errors, Restore Activity, Server Events, Stopped Servers, Transaction Log Backed Up, Up Servers


