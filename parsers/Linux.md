# Parsers For Linux

## Parser:
```
| parse "add '*' to group '*'" as dest_user,dest_group nodrop
| parse "account added to group - account=*, group=*, gid=*," as dest_user,dest_group,dest_gid nodrop
| parse "account=*, uid=*, gid=*, old gid=*," as dest_user,dest_uid, dest_gid,src_gid nodrop
| parse "change user '*' GID from '*' to '*'" as dest_user,src_gid, dest_gid nodrop
| parse "name=*, UID=*, GID=*, home=*, shell=*" as dest_user,dest_uid,dest_gid,home_dir,shell nodrop
| parse "account=*, uid=*, gid=*, home=*, shell=*," as dest_user,dest_uid,dest_gid,home_dir,shell nodrop
```
### Use Cases:
All Failed Authentication Attempts, Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Existing Users Added to Privileged Group, Failed Local Logins, Failed Logins, Failed Logins per Host by Hour, Failed Password Changes, Failed Remote Logins, Failed SU Attempts, Group Removal, Logins by Hour, Logins by Outcome, New Group Creation, New User Added to Privileged Group, New User Assignments, New User Creation, Package Operations, Remote Logins, Reporting Hosts, Reporting Hosts by Hour, Root Activity, Root Login, Service Shutdown or Exiting, Successful Local Logins, Successful Password Changes, Successful Remote Login Events, Sudo Attempt, Sudo Attempts, System Shutdown, System Start, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments, User Removal, User Removal From Group, Users Logging in From Multiple Remote Hosts, Users with Multiple Failed Logins



## Parser:
```
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S*)\s(?<process_name>\w*)(?:\[\d+\]|):\s+"
```
### Use Cases:
All Failed Authentication Attempts, Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Existing Users Added to Privileged Group, Failed Local Logins, Failed Logins, Failed Logins per Host by Hour, Failed Password Changes, Failed Remote Logins, Failed SU Attempts, Group Removal, Logins by Hour, Logins by Outcome, New Group Creation, New User Added to Privileged Group, New User Assignments, New User Creation, Package Operations, Remote Logins, Reporting Hosts, Reporting Hosts by Hour, Root Activity, Root Login, Service Shutdown or Exiting, Successful Local Logins, Successful Password Changes, Successful Remote Login Events, Sudo Attempt, Sudo Attempts, System Shutdown, System Start, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments, User Removal, User Removal From Group, Users Logging in From Multiple Remote Hosts, Users with Multiple Failed Logins



## Parser:
```
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s" nodrop 
| extract "Accepted [^ ]+ for (?<user>.+?) from (?<src_host>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop 
```
### Use Cases:
All Failed Authentication Attempts, Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Existing Users Added to Privileged Group, Failed Local Logins, Failed Logins, Failed Logins per Host by Hour, Failed Password Changes, Failed Remote Logins, Failed SU Attempts, Group Removal, Logins by Hour, Logins by Outcome, New Group Creation, New User Added to Privileged Group, New User Assignments, New User Creation, Package Operations, Remote Logins, Reporting Hosts, Reporting Hosts by Hour, Root Activity, Root Login, Service Shutdown or Exiting, Successful Local Logins, Successful Password Changes, Successful Remote Login Events, Sudo Attempt, Sudo Attempts, System Shutdown, System Start, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments, User Removal, User Removal From Group, Users Logging in From Multiple Remote Hosts, Users with Multiple Failed Logins



## Parser:
```
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s" nodrop | extract "sudo:\s+(?<src_user>[^ ]+?)\s:.+?USER=(?<dest_user>[^ ]+?)\s+"  nodrop 
| parse regex "COMMAND=(?<command>[^$]*)$" nodrop 
| parse " user * " as dest_user nodrop 
| parse " user *" as dest_user nodrop 
```
### Use Cases:
All Failed Authentication Attempts, Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Existing Users Added to Privileged Group, Failed Local Logins, Failed Logins, Failed Logins per Host by Hour, Failed Password Changes, Failed Remote Logins, Failed SU Attempts, Group Removal, Logins by Hour, Logins by Outcome, New Group Creation, New User Added to Privileged Group, New User Assignments, New User Creation, Package Operations, Remote Logins, Reporting Hosts, Reporting Hosts by Hour, Root Activity, Root Login, Service Shutdown or Exiting, Successful Local Logins, Successful Password Changes, Successful Remote Login Events, Sudo Attempt, Sudo Attempts, System Shutdown, System Start, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments, User Removal, User Removal From Group, Users Logging in From Multiple Remote Hosts, Users with Multiple Failed Logins



## Parser:
```
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*):\s+" nodrop 
| parse regex  "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\S*)\[\d+\]:\s+" nodrop 
| parse "ruser=* rhost=* user=*" as src_user,src_hostname, dest_user nodrop 
| parse "Accepted keyboard-interactive/pam for * from * port * *" as (dest_user,src_hostname,src_port,protocol) 
| parse "Accepted password for * from * port * *" as dest_user,src_hostname,src_port,protocol nodrop |```
### Use Cases:
All Failed Authentication Attempts, Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Existing Users Added to Privileged Group, Failed Local Logins, Failed Logins, Failed Logins per Host by Hour, Failed Password Changes, Failed Remote Logins, Failed SU Attempts, Group Removal, Logins by Hour, Logins by Outcome, New Group Creation, New User Added to Privileged Group, New User Assignments, New User Creation, Package Operations, Remote Logins, Reporting Hosts, Reporting Hosts by Hour, Root Activity, Root Login, Service Shutdown or Exiting, Successful Local Logins, Successful Password Changes, Successful Remote Login Events, Sudo Attempt, Sudo Attempts, System Shutdown, System Start, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments, User Removal, User Removal From Group, Users Logging in From Multiple Remote Hosts, Users with Multiple Failed Logins



## Parser:
```
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*):\s+" nodrop 
| parse regex  "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\S*)\[\d+\]:\s+" nodrop | parse "session * for user * by *(uid=*)" as (action,dest_user,src_user,src_user_id) nodrop 
| parse regex "session (?<action>\w*) for user (?<dest_user>\S*)" nodrop 
| parse "New session * of user *." as sessionNo,dest_user nodrop 
```
### Use Cases:
All Failed Authentication Attempts, Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Existing Users Added to Privileged Group, Failed Local Logins, Failed Logins, Failed Logins per Host by Hour, Failed Password Changes, Failed Remote Logins, Failed SU Attempts, Group Removal, Logins by Hour, Logins by Outcome, New Group Creation, New User Added to Privileged Group, New User Assignments, New User Creation, Package Operations, Remote Logins, Reporting Hosts, Reporting Hosts by Hour, Root Activity, Root Login, Service Shutdown or Exiting, Successful Local Logins, Successful Password Changes, Successful Remote Login Events, Sudo Attempt, Sudo Attempts, System Shutdown, System Start, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments, User Removal, User Removal From Group, Users Logging in From Multiple Remote Hosts, Users with Multiple Failed Logins



## Parser:
```
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*):\s+(?<message>.*)$" nodrop
| parse regex  "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\S*)\[\d+\]:\s+(?<message>.*)$" nodrop
| parse "session * for user * by *(uid=*)" as (action,dest_user,src_user,src_user_id) nodrop
| parse regex "session (?<action>\w*) for user (?<dest_user>\S*)" nodrop
```
### Use Cases:
All Failed Authentication Attempts, Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Existing Users Added to Privileged Group, Failed Local Logins, Failed Logins, Failed Logins per Host by Hour, Failed Password Changes, Failed Remote Logins, Failed SU Attempts, Group Removal, Logins by Hour, Logins by Outcome, New Group Creation, New User Added to Privileged Group, New User Assignments, New User Creation, Package Operations, Remote Logins, Reporting Hosts, Reporting Hosts by Hour, Root Activity, Root Login, Service Shutdown or Exiting, Successful Local Logins, Successful Password Changes, Successful Remote Login Events, Sudo Attempt, Sudo Attempts, System Shutdown, System Start, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments, User Removal, User Removal From Group, Users Logging in From Multiple Remote Hosts, Users with Multiple Failed Logins



## Parser:
```
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*):\s+(?<message>.*)$" nodrop
| parse regex  "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\S*)\[\d+\]:\s+(?<message>.*)$" nodrop
| parse "session * for user * by *(uid=*)" as (action,dest_user,src_user,src_user_id) nodrop
| parse regex "session (?<action>\w*) for user (?<dest_user>\S*)" nodrop
| parse "Accepted keyboard-interactive/pam for * from * port * *" as (dest_user,src_hostname,src_port,protocol)
```
### Use Cases:
All Failed Authentication Attempts, Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Existing Users Added to Privileged Group, Failed Local Logins, Failed Logins, Failed Logins per Host by Hour, Failed Password Changes, Failed Remote Logins, Failed SU Attempts, Group Removal, Logins by Hour, Logins by Outcome, New Group Creation, New User Added to Privileged Group, New User Assignments, New User Creation, Package Operations, Remote Logins, Reporting Hosts, Reporting Hosts by Hour, Root Activity, Root Login, Service Shutdown or Exiting, Successful Local Logins, Successful Password Changes, Successful Remote Login Events, Sudo Attempt, Sudo Attempts, System Shutdown, System Start, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments, User Removal, User Removal From Group, Users Logging in From Multiple Remote Hosts, Users with Multiple Failed Logins



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
```
### Use Cases:
All Failed Authentication Attempts, Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Existing Users Added to Privileged Group, Failed Local Logins, Failed Logins, Failed Logins per Host by Hour, Failed Password Changes, Failed Remote Logins, Failed SU Attempts, Group Removal, Logins by Hour, Logins by Outcome, New Group Creation, New User Added to Privileged Group, New User Assignments, New User Creation, Package Operations, Remote Logins, Reporting Hosts, Reporting Hosts by Hour, Root Activity, Root Login, Service Shutdown or Exiting, Successful Local Logins, Successful Password Changes, Successful Remote Login Events, Sudo Attempt, Sudo Attempts, System Shutdown, System Start, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments, User Removal, User Removal From Group, Users Logging in From Multiple Remote Hosts, Users with Multiple Failed Logins



## Parser:
```
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*):\s+(?<message>.*)$" nodrop 
| parse regex  "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\S*)\[\d+\]:\s+(?<message>.*)$" nodrop 
```
### Use Cases:
All Failed Authentication Attempts, Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Existing Users Added to Privileged Group, Failed Local Logins, Failed Logins, Failed Logins per Host by Hour, Failed Password Changes, Failed Remote Logins, Failed SU Attempts, Group Removal, Logins by Hour, Logins by Outcome, New Group Creation, New User Added to Privileged Group, New User Assignments, New User Creation, Package Operations, Remote Logins, Reporting Hosts, Reporting Hosts by Hour, Root Activity, Root Login, Service Shutdown or Exiting, Successful Local Logins, Successful Password Changes, Successful Remote Login Events, Sudo Attempt, Sudo Attempts, System Shutdown, System Start, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments, User Removal, User Removal From Group, Users Logging in From Multiple Remote Hosts, Users with Multiple Failed Logins



## Parser:
```
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*):\s+(?<message>.*)$" nodrop 
| parse regex  "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\S*)\[\d+\]:\s+(?<message>.*)$" nodrop 
| parse "session * for user * by *(uid=*)" as (action,dest_user,src_user,src_user_id) nodrop 
| parse regex "session (?<action>\w*) for user (?<dest_user>\S*)" nodrop 
```
### Use Cases:
All Failed Authentication Attempts, Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Existing Users Added to Privileged Group, Failed Local Logins, Failed Logins, Failed Logins per Host by Hour, Failed Password Changes, Failed Remote Logins, Failed SU Attempts, Group Removal, Logins by Hour, Logins by Outcome, New Group Creation, New User Added to Privileged Group, New User Assignments, New User Creation, Package Operations, Remote Logins, Reporting Hosts, Reporting Hosts by Hour, Root Activity, Root Login, Service Shutdown or Exiting, Successful Local Logins, Successful Password Changes, Successful Remote Login Events, Sudo Attempt, Sudo Attempts, System Shutdown, System Start, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments, User Removal, User Removal From Group, Users Logging in From Multiple Remote Hosts, Users with Multiple Failed Logins



## Parser:
```
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*):\s+(?<message>.*)$" nodrop 
| parse regex  "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\S*)\[\d+\]:\s+(?<message>.*)$" nodrop 
| parse "session * for user * by *(uid=*)" as (action,dest_user,src_user,src_user_id) nodrop 
| parse regex "session (?<action>\w*) for user (?<dest_user>\S*)" nodrop 
| parse "Accepted keyboard-interactive/pam for * from * port * *" as (dest_user,src_hostname,src_port,protocol) 
```
### Use Cases:
All Failed Authentication Attempts, Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Existing Users Added to Privileged Group, Failed Local Logins, Failed Logins, Failed Logins per Host by Hour, Failed Password Changes, Failed Remote Logins, Failed SU Attempts, Group Removal, Logins by Hour, Logins by Outcome, New Group Creation, New User Added to Privileged Group, New User Assignments, New User Creation, Package Operations, Remote Logins, Reporting Hosts, Reporting Hosts by Hour, Root Activity, Root Login, Service Shutdown or Exiting, Successful Local Logins, Successful Password Changes, Successful Remote Login Events, Sudo Attempt, Sudo Attempts, System Shutdown, System Start, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments, User Removal, User Removal From Group, Users Logging in From Multiple Remote Hosts, Users with Multiple Failed Logins



## Parser:
```
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[\d+\]|```
### Use Cases:
All Failed Authentication Attempts, Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Existing Users Added to Privileged Group, Failed Local Logins, Failed Logins, Failed Logins per Host by Hour, Failed Password Changes, Failed Remote Logins, Failed SU Attempts, Group Removal, Logins by Hour, Logins by Outcome, New Group Creation, New User Added to Privileged Group, New User Assignments, New User Creation, Package Operations, Remote Logins, Reporting Hosts, Reporting Hosts by Hour, Root Activity, Root Login, Service Shutdown or Exiting, Successful Local Logins, Successful Password Changes, Successful Remote Login Events, Sudo Attempt, Sudo Attempts, System Shutdown, System Start, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments, User Removal, User Removal From Group, Users Logging in From Multiple Remote Hosts, Users with Multiple Failed Logins



## Parser:
```
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[\d+\]|):\s+"
```
### Use Cases:
All Failed Authentication Attempts, Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Existing Users Added to Privileged Group, Failed Local Logins, Failed Logins, Failed Logins per Host by Hour, Failed Password Changes, Failed Remote Logins, Failed SU Attempts, Group Removal, Logins by Hour, Logins by Outcome, New Group Creation, New User Added to Privileged Group, New User Assignments, New User Creation, Package Operations, Remote Logins, Reporting Hosts, Reporting Hosts by Hour, Root Activity, Root Login, Service Shutdown or Exiting, Successful Local Logins, Successful Password Changes, Successful Remote Login Events, Sudo Attempt, Sudo Attempts, System Shutdown, System Start, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments, User Removal, User Removal From Group, Users Logging in From Multiple Remote Hosts, Users with Multiple Failed Logins



## Parser:
```
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[\d+\]|):\s+" 
```
### Use Cases:
All Failed Authentication Attempts, Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Existing Users Added to Privileged Group, Failed Local Logins, Failed Logins, Failed Logins per Host by Hour, Failed Password Changes, Failed Remote Logins, Failed SU Attempts, Group Removal, Logins by Hour, Logins by Outcome, New Group Creation, New User Added to Privileged Group, New User Assignments, New User Creation, Package Operations, Remote Logins, Reporting Hosts, Reporting Hosts by Hour, Root Activity, Root Login, Service Shutdown or Exiting, Successful Local Logins, Successful Password Changes, Successful Remote Login Events, Sudo Attempt, Sudo Attempts, System Shutdown, System Start, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments, User Removal, User Removal From Group, Users Logging in From Multiple Remote Hosts, Users with Multiple Failed Logins



## Parser:
```
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[\d+\]|):\s+" nodrop
```
### Use Cases:
All Failed Authentication Attempts, Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Existing Users Added to Privileged Group, Failed Local Logins, Failed Logins, Failed Logins per Host by Hour, Failed Password Changes, Failed Remote Logins, Failed SU Attempts, Group Removal, Logins by Hour, Logins by Outcome, New Group Creation, New User Added to Privileged Group, New User Assignments, New User Creation, Package Operations, Remote Logins, Reporting Hosts, Reporting Hosts by Hour, Root Activity, Root Login, Service Shutdown or Exiting, Successful Local Logins, Successful Password Changes, Successful Remote Login Events, Sudo Attempt, Sudo Attempts, System Shutdown, System Start, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments, User Removal, User Removal From Group, Users Logging in From Multiple Remote Hosts, Users with Multiple Failed Logins



## Parser:
```
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[|:)" nodrop
| parse "add '*' to group '*'" as dest_user,dest_group nodrop
| parse "account added to group - account=*, group=*, gid=*," as dest_user,dest_group,dest_gid nodrop
| parse "account=*, uid=*, gid=*, old gid=*," as dest_user,dest_uid, dest_gid,src_gid nodrop
| parse "change user '*' GID from '*' to '*'" as dest_user,src_gid, dest_gid
```
### Use Cases:
All Failed Authentication Attempts, Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Existing Users Added to Privileged Group, Failed Local Logins, Failed Logins, Failed Logins per Host by Hour, Failed Password Changes, Failed Remote Logins, Failed SU Attempts, Group Removal, Logins by Hour, Logins by Outcome, New Group Creation, New User Added to Privileged Group, New User Assignments, New User Creation, Package Operations, Remote Logins, Reporting Hosts, Reporting Hosts by Hour, Root Activity, Root Login, Service Shutdown or Exiting, Successful Local Logins, Successful Password Changes, Successful Remote Login Events, Sudo Attempt, Sudo Attempts, System Shutdown, System Start, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments, User Removal, User Removal From Group, Users Logging in From Multiple Remote Hosts, Users with Multiple Failed Logins



## Parser:
```
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[|:)" nodrop
| parse "name=*, UID=*, GID=*, home=*, shell=*" as dest_user,dest_uid,dest_gid,home_dir,shell nodrop
| parse "account=*, uid=*, gid=*, home=*, shell=*," as dest_user,dest_uid,dest_gid,home_dir,shell nodrop 
```
### Use Cases:
All Failed Authentication Attempts, Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Existing Users Added to Privileged Group, Failed Local Logins, Failed Logins, Failed Logins per Host by Hour, Failed Password Changes, Failed Remote Logins, Failed SU Attempts, Group Removal, Logins by Hour, Logins by Outcome, New Group Creation, New User Added to Privileged Group, New User Assignments, New User Creation, Package Operations, Remote Logins, Reporting Hosts, Reporting Hosts by Hour, Root Activity, Root Login, Service Shutdown or Exiting, Successful Local Logins, Successful Password Changes, Successful Remote Login Events, Sudo Attempt, Sudo Attempts, System Shutdown, System Start, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments, User Removal, User Removal From Group, Users Logging in From Multiple Remote Hosts, Users with Multiple Failed Logins



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
```
### Use Cases:
All Failed Authentication Attempts, Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Existing Users Added to Privileged Group, Failed Local Logins, Failed Logins, Failed Logins per Host by Hour, Failed Password Changes, Failed Remote Logins, Failed SU Attempts, Group Removal, Logins by Hour, Logins by Outcome, New Group Creation, New User Added to Privileged Group, New User Assignments, New User Creation, Package Operations, Remote Logins, Reporting Hosts, Reporting Hosts by Hour, Root Activity, Root Login, Service Shutdown or Exiting, Successful Local Logins, Successful Password Changes, Successful Remote Login Events, Sudo Attempt, Sudo Attempts, System Shutdown, System Start, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments, User Removal, User Removal From Group, Users Logging in From Multiple Remote Hosts, Users with Multiple Failed Logins



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
| parse regex "FAILED LOGIN (?:SESSION|\d+) FROM (?:\S+) FOR (?<dest_user>\S+)," nodrop
| parse "input_userauth_request: invalid user *" as dest_user nodrop
| parse "Invalid user * from * port *" as dest_user, src_host, src_port nodrop
| parse "Failed publickey for * from * port * *" as dest_user, src_host, src_port, protocol nodrop
| parse "Failed password for * from * port * *" as dest_user, src_host, src_port, protocol nodrop
| parse "Failed password for invalid user * from * port * *" as dest_user, src_host, src_port, protocol nodrop
```
### Use Cases:
All Failed Authentication Attempts, Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Existing Users Added to Privileged Group, Failed Local Logins, Failed Logins, Failed Logins per Host by Hour, Failed Password Changes, Failed Remote Logins, Failed SU Attempts, Group Removal, Logins by Hour, Logins by Outcome, New Group Creation, New User Added to Privileged Group, New User Assignments, New User Creation, Package Operations, Remote Logins, Reporting Hosts, Reporting Hosts by Hour, Root Activity, Root Login, Service Shutdown or Exiting, Successful Local Logins, Successful Password Changes, Successful Remote Login Events, Sudo Attempt, Sudo Attempts, System Shutdown, System Start, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments, User Removal, User Removal From Group, Users Logging in From Multiple Remote Hosts, Users with Multiple Failed Logins



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
| parse "Failed password for invalid user * from * port * *" as dest_ser, src_host, src_port, protocol nodrop
```
### Use Cases:
All Failed Authentication Attempts, Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Existing Users Added to Privileged Group, Failed Local Logins, Failed Logins, Failed Logins per Host by Hour, Failed Password Changes, Failed Remote Logins, Failed SU Attempts, Group Removal, Logins by Hour, Logins by Outcome, New Group Creation, New User Added to Privileged Group, New User Assignments, New User Creation, Package Operations, Remote Logins, Reporting Hosts, Reporting Hosts by Hour, Root Activity, Root Login, Service Shutdown or Exiting, Successful Local Logins, Successful Password Changes, Successful Remote Login Events, Sudo Attempt, Sudo Attempts, System Shutdown, System Start, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments, User Removal, User Removal From Group, Users Logging in From Multiple Remote Hosts, Users with Multiple Failed Logins



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
```
### Use Cases:
All Failed Authentication Attempts, Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Existing Users Added to Privileged Group, Failed Local Logins, Failed Logins, Failed Logins per Host by Hour, Failed Password Changes, Failed Remote Logins, Failed SU Attempts, Group Removal, Logins by Hour, Logins by Outcome, New Group Creation, New User Added to Privileged Group, New User Assignments, New User Creation, Package Operations, Remote Logins, Reporting Hosts, Reporting Hosts by Hour, Root Activity, Root Login, Service Shutdown or Exiting, Successful Local Logins, Successful Password Changes, Successful Remote Login Events, Sudo Attempt, Sudo Attempts, System Shutdown, System Start, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments, User Removal, User Removal From Group, Users Logging in From Multiple Remote Hosts, Users with Multiple Failed Logins



## Parser:
```
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[|:)" nodrop 
| parse "account=*, uid=*," as dest_user,dest_uid nodrop 
```
### Use Cases:
All Failed Authentication Attempts, Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Existing Users Added to Privileged Group, Failed Local Logins, Failed Logins, Failed Logins per Host by Hour, Failed Password Changes, Failed Remote Logins, Failed SU Attempts, Group Removal, Logins by Hour, Logins by Outcome, New Group Creation, New User Added to Privileged Group, New User Assignments, New User Creation, Package Operations, Remote Logins, Reporting Hosts, Reporting Hosts by Hour, Root Activity, Root Login, Service Shutdown or Exiting, Successful Local Logins, Successful Password Changes, Successful Remote Login Events, Sudo Attempt, Sudo Attempts, System Shutdown, System Start, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments, User Removal, User Removal From Group, Users Logging in From Multiple Remote Hosts, Users with Multiple Failed Logins



## Parser:
```
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[|:)" nodrop 
| parse "add '*' to group '*'" as dest_user,dest_group nodrop | parse "account added to group - account=*, group=*, gid=*," as dest_user,dest_group,dest_gid nodrop 
| parse "account=*, uid=*, gid=*, old gid=*," as dest_user,dest_uid, dest_gid,src_gid nodrop 
| parse "change user '*' GID from '*' to '*'" as dest_user,src_gid, dest_gid 
```
### Use Cases:
All Failed Authentication Attempts, Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Existing Users Added to Privileged Group, Failed Local Logins, Failed Logins, Failed Logins per Host by Hour, Failed Password Changes, Failed Remote Logins, Failed SU Attempts, Group Removal, Logins by Hour, Logins by Outcome, New Group Creation, New User Added to Privileged Group, New User Assignments, New User Creation, Package Operations, Remote Logins, Reporting Hosts, Reporting Hosts by Hour, Root Activity, Root Login, Service Shutdown or Exiting, Successful Local Logins, Successful Password Changes, Successful Remote Login Events, Sudo Attempt, Sudo Attempts, System Shutdown, System Start, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments, User Removal, User Removal From Group, Users Logging in From Multiple Remote Hosts, Users with Multiple Failed Logins



## Parser:
```
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[|:)" nodrop 
| parse "delete '*' from group '*'" as dest_user,dest_group nodrop 
| parse "account removed from group - account=*, group=*, gid=*," as dest_user,dest_group,dest_gid nodrop 
| parse "account=*, uid=*, gid=*, old gid=*," as dest_user,dest_uid, dest_gid,src_gid nodrop 
```
### Use Cases:
All Failed Authentication Attempts, Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Existing Users Added to Privileged Group, Failed Local Logins, Failed Logins, Failed Logins per Host by Hour, Failed Password Changes, Failed Remote Logins, Failed SU Attempts, Group Removal, Logins by Hour, Logins by Outcome, New Group Creation, New User Added to Privileged Group, New User Assignments, New User Creation, Package Operations, Remote Logins, Reporting Hosts, Reporting Hosts by Hour, Root Activity, Root Login, Service Shutdown or Exiting, Successful Local Logins, Successful Password Changes, Successful Remote Login Events, Sudo Attempt, Sudo Attempts, System Shutdown, System Start, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments, User Removal, User Removal From Group, Users Logging in From Multiple Remote Hosts, Users with Multiple Failed Logins



## Parser:
```
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[|:)" nodrop 
| parse "delete user '*'" as dest_user nodrop 
| parse "account=*, group=*, gid=*," as dest_user,dest_group,dest_gid nodrop 
```
### Use Cases:
All Failed Authentication Attempts, Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Existing Users Added to Privileged Group, Failed Local Logins, Failed Logins, Failed Logins per Host by Hour, Failed Password Changes, Failed Remote Logins, Failed SU Attempts, Group Removal, Logins by Hour, Logins by Outcome, New Group Creation, New User Added to Privileged Group, New User Assignments, New User Creation, Package Operations, Remote Logins, Reporting Hosts, Reporting Hosts by Hour, Root Activity, Root Login, Service Shutdown or Exiting, Successful Local Logins, Successful Password Changes, Successful Remote Login Events, Sudo Attempt, Sudo Attempts, System Shutdown, System Start, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments, User Removal, User Removal From Group, Users Logging in From Multiple Remote Hosts, Users with Multiple Failed Logins



## Parser:
```
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[|:)" nodrop 
| parse "delete user '*'" as dest_user nodrop 
| parse regex "removed group \'(?<dest_group>[^ ]*)\' owned by \'(?<dest_user>[^ ]*)\'" nodrop 
| parse regex "group '(?<dest_group>[^ ]*)' removed$" nodrop 
| parse "group=*, gid=*," as dest_group,dest_gid nodrop 
```
### Use Cases:
All Failed Authentication Attempts, Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Existing Users Added to Privileged Group, Failed Local Logins, Failed Logins, Failed Logins per Host by Hour, Failed Password Changes, Failed Remote Logins, Failed SU Attempts, Group Removal, Logins by Hour, Logins by Outcome, New Group Creation, New User Added to Privileged Group, New User Assignments, New User Creation, Package Operations, Remote Logins, Reporting Hosts, Reporting Hosts by Hour, Root Activity, Root Login, Service Shutdown or Exiting, Successful Local Logins, Successful Password Changes, Successful Remote Login Events, Sudo Attempt, Sudo Attempts, System Shutdown, System Start, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments, User Removal, User Removal From Group, Users Logging in From Multiple Remote Hosts, Users with Multiple Failed Logins



## Parser:
```
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[|:)" nodrop 
| parse "name=*, GID=*" as dest_group,dest_gid nodrop 
```
### Use Cases:
All Failed Authentication Attempts, Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Existing Users Added to Privileged Group, Failed Local Logins, Failed Logins, Failed Logins per Host by Hour, Failed Password Changes, Failed Remote Logins, Failed SU Attempts, Group Removal, Logins by Hour, Logins by Outcome, New Group Creation, New User Added to Privileged Group, New User Assignments, New User Creation, Package Operations, Remote Logins, Reporting Hosts, Reporting Hosts by Hour, Root Activity, Root Login, Service Shutdown or Exiting, Successful Local Logins, Successful Password Changes, Successful Remote Login Events, Sudo Attempt, Sudo Attempts, System Shutdown, System Start, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments, User Removal, User Removal From Group, Users Logging in From Multiple Remote Hosts, Users with Multiple Failed Logins



## Parser:
```
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[|:)" nodrop 
| parse "name=*, UID=*, GID=*, home=*, shell=*" as dest_user,dest_uid,dest_gid,home_dir,shell nodrop 
```
### Use Cases:
All Failed Authentication Attempts, Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Existing Users Added to Privileged Group, Failed Local Logins, Failed Logins, Failed Logins per Host by Hour, Failed Password Changes, Failed Remote Logins, Failed SU Attempts, Group Removal, Logins by Hour, Logins by Outcome, New Group Creation, New User Added to Privileged Group, New User Assignments, New User Creation, Package Operations, Remote Logins, Reporting Hosts, Reporting Hosts by Hour, Root Activity, Root Login, Service Shutdown or Exiting, Successful Local Logins, Successful Password Changes, Successful Remote Login Events, Sudo Attempt, Sudo Attempts, System Shutdown, System Start, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments, User Removal, User Removal From Group, Users Logging in From Multiple Remote Hosts, Users with Multiple Failed Logins



## Parser:
```
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[|:)" nodrop 
| parse "User *:" as dest_user nodrop 
| parse " user=*" as dest_user nodrop 
```
### Use Cases:
All Failed Authentication Attempts, Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Existing Users Added to Privileged Group, Failed Local Logins, Failed Logins, Failed Logins per Host by Hour, Failed Password Changes, Failed Remote Logins, Failed SU Attempts, Group Removal, Logins by Hour, Logins by Outcome, New Group Creation, New User Added to Privileged Group, New User Assignments, New User Creation, Package Operations, Remote Logins, Reporting Hosts, Reporting Hosts by Hour, Root Activity, Root Login, Service Shutdown or Exiting, Successful Local Logins, Successful Password Changes, Successful Remote Login Events, Sudo Attempt, Sudo Attempts, System Shutdown, System Start, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments, User Removal, User Removal From Group, Users Logging in From Multiple Remote Hosts, Users with Multiple Failed Logins



## Parser:
```
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w+)(?:\[\d+\]|):\s+" 
```
### Use Cases:
All Failed Authentication Attempts, Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Existing Users Added to Privileged Group, Failed Local Logins, Failed Logins, Failed Logins per Host by Hour, Failed Password Changes, Failed Remote Logins, Failed SU Attempts, Group Removal, Logins by Hour, Logins by Outcome, New Group Creation, New User Added to Privileged Group, New User Assignments, New User Creation, Package Operations, Remote Logins, Reporting Hosts, Reporting Hosts by Hour, Root Activity, Root Login, Service Shutdown or Exiting, Successful Local Logins, Successful Password Changes, Successful Remote Login Events, Sudo Attempt, Sudo Attempts, System Shutdown, System Start, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments, User Removal, User Removal From Group, Users Logging in From Multiple Remote Hosts, Users with Multiple Failed Logins



## Parser:
```
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S*)\s" nodrop
| parse regex "(?<process>\w*):\s+(?<src_user>[^ ]+?)\s+:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
| parse regex "COMMAND=(?<command>[^$]*)$" nodrop
| parse regex "\s+(?<process>\w*): pam_unix\(sudo:auth\): conversation failed" nodrop
| parse "pam_unix(*:auth): authentication failure;" as process nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
```
### Use Cases:
All Failed Authentication Attempts, Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Existing Users Added to Privileged Group, Failed Local Logins, Failed Logins, Failed Logins per Host by Hour, Failed Password Changes, Failed Remote Logins, Failed SU Attempts, Group Removal, Logins by Hour, Logins by Outcome, New Group Creation, New User Added to Privileged Group, New User Assignments, New User Creation, Package Operations, Remote Logins, Reporting Hosts, Reporting Hosts by Hour, Root Activity, Root Login, Service Shutdown or Exiting, Successful Local Logins, Successful Password Changes, Successful Remote Login Events, Sudo Attempt, Sudo Attempts, System Shutdown, System Start, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments, User Removal, User Removal From Group, Users Logging in From Multiple Remote Hosts, Users with Multiple Failed Logins



## Parser:
```
| parse regex "\s+\d+:\d+:\d+\s+status\s+(?<action>installed)\s+(?<pkg_name>\S*)\s+" nodrop
| parse regex "\s+\d+:\d+:\d+\s+(?<action>Installed)\:\s+(?:\d+\:)?(?<pkg_name>\S*)" nodrop
| parse regex "\s+\d+:\d+:\d+\s+(?<action>remove)\s+(?<pkg_name>[^ ]*)\s" nodrop
| parse regex "\s+\d+:\d+:\d+\s+(?<action>Erased)\:\s+(?:\d+\:)?(?<pkg_name>\S*)" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<action>\w*):\s(?<pkg_name>[^ ]*)\s" nodrop
| parse regex "<(?<action>[a-zA-Z]*)>\s+[^\(\)]*\(\d+\)(?<pkg_name>[^\(]*)\(" nodrop
```
### Use Cases:
All Failed Authentication Attempts, Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Existing Users Added to Privileged Group, Failed Local Logins, Failed Logins, Failed Logins per Host by Hour, Failed Password Changes, Failed Remote Logins, Failed SU Attempts, Group Removal, Logins by Hour, Logins by Outcome, New Group Creation, New User Added to Privileged Group, New User Assignments, New User Creation, Package Operations, Remote Logins, Reporting Hosts, Reporting Hosts by Hour, Root Activity, Root Login, Service Shutdown or Exiting, Successful Local Logins, Successful Password Changes, Successful Remote Login Events, Sudo Attempt, Sudo Attempts, System Shutdown, System Start, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments, User Removal, User Removal From Group, Users Logging in From Multiple Remote Hosts, Users with Multiple Failed Logins



## Parser:
```
| parse regex "\s+\d+:\d+:\d+\s+status\s+(?<action>installed)\s+(?<pkg_name>\S*)\s+" nodrop
| parse regex "\s+\d+:\d+:\d+\s+(?<action>remove)\s+(?<pkg_name>[^ ]*)\s" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<action>\w*):\s(?<pkg_name>[^ ]*)\s" nodrop
| parse regex "<(?<action>[a-zA-Z]*)>\s+[^\(\)]*\(\d+\)(?<pkg_name>[^\(]*)\(" nodrop
```
### Use Cases:
All Failed Authentication Attempts, Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Existing Users Added to Privileged Group, Failed Local Logins, Failed Logins, Failed Logins per Host by Hour, Failed Password Changes, Failed Remote Logins, Failed SU Attempts, Group Removal, Logins by Hour, Logins by Outcome, New Group Creation, New User Added to Privileged Group, New User Assignments, New User Creation, Package Operations, Remote Logins, Reporting Hosts, Reporting Hosts by Hour, Root Activity, Root Login, Service Shutdown or Exiting, Successful Local Logins, Successful Password Changes, Successful Remote Login Events, Sudo Attempt, Sudo Attempts, System Shutdown, System Start, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments, User Removal, User Removal From Group, Users Logging in From Multiple Remote Hosts, Users with Multiple Failed Logins



## Parser:
```
| parse regex "^(?<StartTime>\S*\s+\d+\s+\d+:\d+:\d+)\s(?<dest_hostname>\S*)\s(?<process_name>\w*)(?:\[\d+\]|):\s+" nodrop
```
### Use Cases:
All Failed Authentication Attempts, Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Existing Users Added to Privileged Group, Failed Local Logins, Failed Logins, Failed Logins per Host by Hour, Failed Password Changes, Failed Remote Logins, Failed SU Attempts, Group Removal, Logins by Hour, Logins by Outcome, New Group Creation, New User Added to Privileged Group, New User Assignments, New User Creation, Package Operations, Remote Logins, Reporting Hosts, Reporting Hosts by Hour, Root Activity, Root Login, Service Shutdown or Exiting, Successful Local Logins, Successful Password Changes, Successful Remote Login Events, Sudo Attempt, Sudo Attempts, System Shutdown, System Start, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments, User Removal, User Removal From Group, Users Logging in From Multiple Remote Hosts, Users with Multiple Failed Logins



## Parser:
```
| parse regex "^(?<StartTime>\S*\s+\d+\s+\d+:\d+:\d+)\s(?<dest_hostname>\S*)\s(?<process_name>\w*)(?:\[\d+\]|):\s+" nodrop 
```
### Use Cases:
All Failed Authentication Attempts, Event Count by Host and Service, Event Count per Host by Hour, Existing User Assignments, Existing Users Added to Privileged Group, Failed Local Logins, Failed Logins, Failed Logins per Host by Hour, Failed Password Changes, Failed Remote Logins, Failed SU Attempts, Group Removal, Logins by Hour, Logins by Outcome, New Group Creation, New User Added to Privileged Group, New User Assignments, New User Creation, Package Operations, Remote Logins, Reporting Hosts, Reporting Hosts by Hour, Root Activity, Root Login, Service Shutdown or Exiting, Successful Local Logins, Successful Password Changes, Successful Remote Login Events, Sudo Attempt, Sudo Attempts, System Shutdown, System Start, System Starts, Top 30 Failed Logins, Top 30 Failed Remote Logins, Top 30 Successful Remote Logins, Top 30 Successful User Logins, Total Event Distribution, User Assignments, User Removal, User Removal From Group, Users Logging in From Multiple Remote Hosts, Users with Multiple Failed Logins


