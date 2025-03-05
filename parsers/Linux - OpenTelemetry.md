# Parsers For Linux - OpenTelemetry

## Parser:
```
| parse "add '*' to group '*'" as dest_user,dest_group nodrop
| parse "account added to group - account=*, group=*, gid=*," as dest_user,dest_group,dest_gid nodrop
| parse "account=*, uid=*, gid=*, old gid=*," as dest_user,dest_uid, dest_gid,src_gid nodrop
| parse "change user '*' GID from '*' to '*'" as dest_user,src_gid, dest_gid nodrop
| parse "name=*, UID=*, GID=*, home=*, shell=*" as dest_user,dest_uid,dest_gid,home_dir,shell nodrop
| parse "account=*, uid=*, gid=*, home=*, shell=*," as dest_user,dest_uid,dest_gid,home_dir,shell nodrop
 `n```
### Use Cases:
Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Failed Logins per Host by Hour, Failed SU Attempts, Logins by Hour, Logins by Outcome, New User Assignments, Package Operations, Reporting Hosts, Reporting Hosts by Hour, Sudo Attempts, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments



## Parser:
```
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S*)\s(?<process_name>\w*)(?:\[\d+\]|):\s+"
 `n```
### Use Cases:
Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Failed Logins per Host by Hour, Failed SU Attempts, Logins by Hour, Logins by Outcome, New User Assignments, Package Operations, Reporting Hosts, Reporting Hosts by Hour, Sudo Attempts, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments



## Parser:
```
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*):\s+(?<message>.*)$" nodrop
| parse regex  "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\S*)\[\d+\]:\s+(?<message>.*)$" nodrop
| parse "session * for user * by *(uid=*)" as (action,dest_user,src_user,src_user_id) nodrop
| parse regex "session (?<action>\w*) for user (?<dest_user>\S*)" nodrop
 `n```
### Use Cases:
Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Failed Logins per Host by Hour, Failed SU Attempts, Logins by Hour, Logins by Outcome, New User Assignments, Package Operations, Reporting Hosts, Reporting Hosts by Hour, Sudo Attempts, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments



## Parser:
```
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*):\s+(?<message>.*)$" nodrop
| parse regex  "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\S*)\[\d+\]:\s+(?<message>.*)$" nodrop
| parse "session * for user * by *(uid=*)" as (action,dest_user,src_user,src_user_id) nodrop
| parse regex "session (?<action>\w*) for user (?<dest_user>\S*)" nodrop
| parse "Accepted keyboard-interactive/pam for * from * port * *" as (dest_user,src_hostname,src_port,protocol)
 `n```
### Use Cases:
Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Failed Logins per Host by Hour, Failed SU Attempts, Logins by Hour, Logins by Outcome, New User Assignments, Package Operations, Reporting Hosts, Reporting Hosts by Hour, Sudo Attempts, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments



## Parser:
```
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*):\s+(?<message>.*)$" nodrop
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\S*)\[\d+\]:\s+(?<message>.*)$" nodrop
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[|:)" nodrop 
| parse " user = * " as dest_user nodrop 
| parse "User *: Authentication failure" as dest_user nodrop 
| parse " user=*" as dest_user nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S*)\s+" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_hostname>\S*)\s+(?<message>[^;]+)" nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
| parse "ruser= rhost=* user=*" as src_host, dest_user nodrop
| parse " user=*\"" as dest_user nodrop
| parse "Authentication failure for * from *" as dest_user, src_host nodrop
| parse "FAILED SU (to *) * on" as dest_user, src_user nodrop
| parse regex "FAILED LOGIN (?:SESSION|\d+) FROM (?:\S+) FOR (?<dest_user>\S+)," nodrop
| parse "input_userauth_request: invalid user *" as dest_user nodrop
| parse "Invalid user * from * port *" as dest_user, src_host, src_port nodrop
| parse "Failed publickey for * from * port * *" as dest_user, src_host, src_port, protocol nodrop
| parse "Failed password for * from * port * *" as dest_user, src_host, src_port, protocol nodrop
| parse "Failed password for invalid user * from * port * *" as dest_user, src_host, src_port, protocol nodrop
 `n```
### Use Cases:
Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Failed Logins per Host by Hour, Failed SU Attempts, Logins by Hour, Logins by Outcome, New User Assignments, Package Operations, Reporting Hosts, Reporting Hosts by Hour, Sudo Attempts, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments



## Parser:
```
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[\d+\]|):\s+"
 `n```
### Use Cases:
Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Failed Logins per Host by Hour, Failed SU Attempts, Logins by Hour, Logins by Outcome, New User Assignments, Package Operations, Reporting Hosts, Reporting Hosts by Hour, Sudo Attempts, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments



## Parser:
```
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[\d+\]|):\s+" 
 `n```
### Use Cases:
Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Failed Logins per Host by Hour, Failed SU Attempts, Logins by Hour, Logins by Outcome, New User Assignments, Package Operations, Reporting Hosts, Reporting Hosts by Hour, Sudo Attempts, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments



## Parser:
```
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[|:)" nodrop
| parse "add '*' to group '*'" as dest_user,dest_group nodrop
| parse "account added to group - account=*, group=*, gid=*," as dest_user,dest_group,dest_gid nodrop
| parse "account=*, uid=*, gid=*, old gid=*," as dest_user,dest_uid, dest_gid,src_gid nodrop
| parse "change user '*' GID from '*' to '*'" as dest_user,src_gid, dest_gid
 `n```
### Use Cases:
Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Failed Logins per Host by Hour, Failed SU Attempts, Logins by Hour, Logins by Outcome, New User Assignments, Package Operations, Reporting Hosts, Reporting Hosts by Hour, Sudo Attempts, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments



## Parser:
```
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[|:)" nodrop
| parse "name=*, UID=*, GID=*, home=*, shell=*" as dest_user,dest_uid,dest_gid,home_dir,shell nodrop
| parse "account=*, uid=*, gid=*, home=*, shell=*," as dest_user,dest_uid,dest_gid,home_dir,shell nodrop 
 `n```
### Use Cases:
Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Failed Logins per Host by Hour, Failed SU Attempts, Logins by Hour, Logins by Outcome, New User Assignments, Package Operations, Reporting Hosts, Reporting Hosts by Hour, Sudo Attempts, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments



## Parser:
```
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[|:)" nodrop 
| parse " user = * " as dest_user nodrop 
| parse "User *: Authentication failure" as dest_user nodrop 
| parse " user=*" as dest_user nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S*)\s+" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_hostname>\S*)\s+(?<message>[^;]+)" nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
| parse "ruser= rhost=* user=*" as src_host, dest_user nodrop
| parse " user=*\"" as dest_user nodrop
| parse "Authentication failure for * from *" as dest_user, src_host nodrop
| parse "FAILED SU (to *) * on" as dest_user, src_user nodrop
| parse "FAILED su for * by *" as dest_user,src_user  nodrop 
| parse regex "FAILED LOGIN (?:SESSION|\d+) FROM (?<src_tty>\S+) FOR (?<dest_user>\S+)," nodrop
| parse "input_userauth_request: invalid user *" as dest_user nodrop
| parse "Invalid user * from * port *" as dest_user, src_host, src_port nodrop
| parse "Failed publickey for * from * port * *" as dest_user, src_host, src_port, protocol nodrop
| parse "Failed password for * from * port * *" as dest_user, src_host, src_port, protocol nodrop
| parse "Failed password for invalid user * from * port * *" as dest_user, src_host, src_port, protocol nodrop
 `n```
### Use Cases:
Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Failed Logins per Host by Hour, Failed SU Attempts, Logins by Hour, Logins by Outcome, New User Assignments, Package Operations, Reporting Hosts, Reporting Hosts by Hour, Sudo Attempts, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments



## Parser:
```
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[|:)" nodrop 
| parse " user = * " as dest_user nodrop 
| parse "User *: Authentication failure" as dest_user nodrop 
| parse " user=*" as dest_user nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S*)\s+" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_hostname>\S*)\s+(?<message>[^;]+)" nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
| parse "ruser= rhost=* user=*" as src_host, dest_user nodrop
| parse " user=*\"" as dest_user nodrop
| parse "Authentication failure for * from *" as dest_user, src_host nodrop
| parse "FAILED SU (to *) * on" as dest_user, src_user nodrop
| parse regex "FAILED LOGIN (?:SESSION|\d+) FROM (?<src_tty>\S+) FOR (?<dest_user>\S+)," nodrop
| parse "input_userauth_request: invalid user *" as dest_user nodrop
| parse "Invalid user * from * port *" as dest_user, src_host, src_port nodrop
| parse "Failed publickey for * from * port * *" as dest_user, src_host, src_port, protocol nodrop
| parse "Failed password for * from * port * *" as dest_user, src_host, src_port, protocol nodrop
| parse "Failed password for invalid user * from * port * *" as dest_user, src_host, src_port, protocol nodrop
 `n```
### Use Cases:
Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Failed Logins per Host by Hour, Failed SU Attempts, Logins by Hour, Logins by Outcome, New User Assignments, Package Operations, Reporting Hosts, Reporting Hosts by Hour, Sudo Attempts, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments



## Parser:
```
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w+)(?:\[\d+\]|):\s+" 
 `n```
### Use Cases:
Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Failed Logins per Host by Hour, Failed SU Attempts, Logins by Hour, Logins by Outcome, New User Assignments, Package Operations, Reporting Hosts, Reporting Hosts by Hour, Sudo Attempts, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments



## Parser:
```
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S*)\s" nodrop
| parse regex "(?<process>\w*):\s+(?<src_user>[^ ]+?)\s+:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
| parse regex "COMMAND=(?<command>[^$]*)$" nodrop
| parse regex "\s+(?<process>\w*): pam_unix\(sudo:auth\): conversation failed" nodrop
| parse "pam_unix(*:auth): authentication failure;" as process nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
 `n```
### Use Cases:
Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Failed Logins per Host by Hour, Failed SU Attempts, Logins by Hour, Logins by Outcome, New User Assignments, Package Operations, Reporting Hosts, Reporting Hosts by Hour, Sudo Attempts, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments



## Parser:
```
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S*)\s" nodrop
| parse regex "(?<process>\w*):\s+(?<src_user>[^ ]+?)\s+:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
| parse regex "COMMAND=(?<command>[^$]*)$" nodrop
| parse regex "\s+(?<process>\w*): pam_unix\(sudo:auth\): conversation failed" nodrop
| parse "pam_unix(*:auth): authentication failure;" as process nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
 `n```
### Use Cases:
Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Failed Logins per Host by Hour, Failed SU Attempts, Logins by Hour, Logins by Outcome, New User Assignments, Package Operations, Reporting Hosts, Reporting Hosts by Hour, Sudo Attempts, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments



## Parser:
```
| parse regex "\s+\d+:\d+:\d+\s+status\s+(?<action>installed)\s+(?<pkg_name>\S*)\s+" nodrop
| parse regex "\s+\d+:\d+:\d+\s+(?<action>Installed)\:\s+(?:\d+\:)?(?<pkg_name>\S*)" nodrop
| parse regex "\s+\d+:\d+:\d+\s+(?<action>remove)\s+(?<pkg_name>[^ ]*)\s" nodrop
| parse regex "\s+\d+:\d+:\d+\s+(?<action>Erased)\:\s+(?:\d+\:)?(?<pkg_name>\S*)" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<action>\w*):\s(?<pkg_name>[^ ]*)\s" nodrop
| parse regex "<(?<action>[a-zA-Z]*)>\s+[^\(\)]*\(\d+\)(?<pkg_name>[^\(]*)\(" nodrop
 `n```
### Use Cases:
Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Failed Logins per Host by Hour, Failed SU Attempts, Logins by Hour, Logins by Outcome, New User Assignments, Package Operations, Reporting Hosts, Reporting Hosts by Hour, Sudo Attempts, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments



## Parser:
```
| parse regex "^(?<StartTime>\S*\s+\d+\s+\d+:\d+:\d+)\s(?<dest_hostname>\S*)\s(?<process_name>\w*)(?:\[\d+\]|):\s+" nodrop
 `n```
### Use Cases:
Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Failed Logins per Host by Hour, Failed SU Attempts, Logins by Hour, Logins by Outcome, New User Assignments, Package Operations, Reporting Hosts, Reporting Hosts by Hour, Sudo Attempts, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments


