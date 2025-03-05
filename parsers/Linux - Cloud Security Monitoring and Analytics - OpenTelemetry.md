# Parsers For Linux - Cloud Security Monitoring and Analytics - OpenTelemetry

## Parser:
```
| extract "(?<process>\w*):\s+(?<src_user>[^ ]+?)\s+:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
 
```
### Use Cases:
Accounts Created, Accounts Deleted, Active Services Over Time, Events by Service, Excessive Failed Access Attempts, Failed Logins, Login Failure Outlier, Recent sudo Attempts, Root Login Failures, Root Login Success, Root User Logins - Failure, Root User Logins - Success, Running Services (Daemons), Stopped Services, Successful Logins, sudo Attempt Outlier, sudo Attempts, sudo Attempts by Host, sudo Attempts by User, sudo Failures, sudo Failures Over Time, System Stopped, System Time Change Attempt, Total Services, Total Services Running by Host, User Account Created, User Account Deleted



## Parser:
```
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s(?<_sourceHost>\S*)\s" nodrop
| extract "(?<process>\w*):\s+(?<src_user>[^ ]+?)\s+:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
| parse regex "COMMAND=(?<command>[^$]*)$" nodrop
 
```
### Use Cases:
Excessive Failed Access Attempts, Failed Logins, Login Failure Outlier, Recent sudo Attempts, Root Login Failures, Root Login Success, Root User Logins - Failure, Root User Logins - Success, Successful Logins, sudo Attempt Outlier, sudo Attempts by Host



## Parser:
```
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s(?<_sourceHost>\S*)\s" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s(?<dest_host>\S*)\s(?:\w*):\s+(?<message>.*)$" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s(?<dest_host>\S*)\s(?:\S*)\[\d+\]:\s+(?<message>.*)$" nodrop 
| parse field=message "pam_unix(*:*):" as deamon, ltype nodrop | if (deamon="sshd", "ssh", "") as protocol | fields -deamon, ltype
| parse "session * for user * by *(uid=" as action, dest_user, src_user nodrop
| parse regex "session (?<action>\w*) for user (?<dest_user>\S*)" nodrop
| parse "rhost=* " as src_host nodrop
| parse "Accepted * for * from * port * *" as type, dest_user, src_host, src_port, protocol nodrop
 
```
### Use Cases:
Accounts Created, Active Services Over Time, Events by Service, Excessive Failed Access Attempts, Failed Logins, Login Failure Outlier, Recent sudo Attempts, Root Login Failures, Root Login Success, Root User Logins - Failure, Root User Logins - Success, Running Services (Daemons), Stopped Services, Successful Logins, sudo Attempt Outlier, sudo Attempts, sudo Attempts by Host, sudo Attempts by User, sudo Failures, sudo Failures Over Time, System Stopped, System Time Change Attempt, Total Services, Total Services Running by Host, User Account Created, User Account Deleted



## Parser:
```
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S*)\s+" nodrop
| extract "(?<process>\w*):\s+(?<src_user>[^ ]+?)\s+:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
| parse "TTY=* ; PWD=* ;" as tty, workingdirectory nodrop
| parse "USER=* ;" as dest_user nodrop
 
```
### Use Cases:
Excessive Failed Access Attempts, Failed Logins, Login Failure Outlier, Recent sudo Attempts, Root Login Failures, Root Login Success, Root User Logins - Failure, Root User Logins - Success, Successful Logins, sudo Attempt Outlier, sudo Attempts, sudo Attempts by Host, sudo Attempts by User, sudo Failures, sudo Failures Over Time



## Parser:
```
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S*)\s+" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<message>[^;]+)" nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
| parse "ruser= rhost=* user=*" as src_host, dest_user nodrop
| parse " user=*\"" as dest_user nodrop
| parse "Authentication failure for * from *" as dest_user, src_host nodrop
| parse "FAILED SU (to *) * on" as dest_user, src_user nodrop
| parse regex "FAILED LOGIN (?:SESSION|\d+) FROM (?:\S+) FOR (?<dest_user>\S+)," nodrop
 
```
### Use Cases:
Accounts Created, Accounts Deleted, Active Services Over Time, Events by Service, Excessive Failed Access Attempts, Failed Logins, Login Failure Outlier, Recent sudo Attempts, Root Login Failures, Root Login Success, Root User Logins - Failure, Root User Logins - Success, Running Services (Daemons), Stopped Services, Successful Logins, sudo Attempt Outlier, sudo Attempts, sudo Attempts by Host, sudo Attempts by User, sudo Failures, sudo Failures Over Time, System Stopped, System Time Change Attempt, Total Services, Total Services Running by Host, User Account Created, User Account Deleted



## Parser:
```
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S*)\s+" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<service>\w*)\[\d+\]:\s+ntpd (?<state>[\s\S]*)$" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<service>\w*):\s+\[[\s\S]*\] (?<state>[\s\S]*)$" nodrop
 
```
### Use Cases:
Excessive Failed Access Attempts, Failed Logins, Login Failure Outlier, Recent sudo Attempts, Root Login Failures, Root Login Success, Root User Logins - Failure, Root User Logins - Success, Stopped Services, Successful Logins, sudo Attempt Outlier, sudo Attempts, sudo Attempts by Host, sudo Attempts by User, sudo Failures, sudo Failures Over Time, System Stopped, User Account Deleted



## Parser:
```
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S+)\s+\w*" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s(?<dest_host>\S*)\s(?<message>.+)$" nodrop
| extract "sudo:\s+(?<src_user>[^ ]+?)\s:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
| parse "synchronized to *," as src_host nodrop 
 
```
### Use Cases:
Excessive Failed Access Attempts, Failed Logins, Login Failure Outlier, Recent sudo Attempts, Root Login Failures, Root Login Success, Root User Logins - Failure, Root User Logins - Success, Stopped Services, Successful Logins, sudo Attempt Outlier, sudo Attempts, sudo Attempts by Host, sudo Attempts by User, sudo Failures, sudo Failures Over Time, System Stopped, System Time Change Attempt, User Account Deleted



## Parser:
```
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S+)\s+\w*" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<process>\w*)(?:\[\d+\]:|:)\s*(?<msg>.+)$" nodrop
| parse field=msg "delete user '*'" as dest_user nodrop
| parse "account=*, group=*, gid=" as dest_user, dest_group nodrop
| parse "account=*, uid=" as dest_user nodrop 
 
```
### Use Cases:
Accounts Created, Accounts Deleted, Active Services Over Time, Events by Service, Excessive Failed Access Attempts, Failed Logins, Login Failure Outlier, Recent sudo Attempts, Root Login Failures, Root Login Success, Root User Logins - Failure, Root User Logins - Success, Running Services (Daemons), Stopped Services, Successful Logins, sudo Attempt Outlier, sudo Attempts, sudo Attempts by Host, sudo Attempts by User, sudo Failures, sudo Failures Over Time, System Stopped, System Time Change Attempt, Total Services, Total Services Running by Host, User Account Created, User Account Deleted



## Parser:
```
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S+)\s+\w*" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<process>\w*)(?:\[\d+\]:|:)\s*(?<msg>.+)$" nodrop
| parse field=msg "name=*, UID=" as dest_user nodrop
| parse field=msg "name=*, UID=*, GID=*, home=*, shell=*" as dest_user, UID, GID, home, shell nodrop
| parse field=msg ", shell=*\"" as shell nodrop
| parse field=msg "account=*, uid=*, gid=*, home=*, shell=*" as dest_user, UID, GID, home, shell nodrop
| parse field=msg "account=*, uid=" as dest_user nodrop
 
```
### Use Cases:
Accounts Created, Active Services Over Time, Events by Service, Excessive Failed Access Attempts, Failed Logins, Login Failure Outlier, Recent sudo Attempts, Root Login Failures, Root Login Success, Root User Logins - Failure, Root User Logins - Success, Running Services (Daemons), Stopped Services, Successful Logins, sudo Attempt Outlier, sudo Attempts, sudo Attempts by Host, sudo Attempts by User, sudo Failures, sudo Failures Over Time, System Stopped, System Time Change Attempt, Total Services, Total Services Running by Host, User Account Created, User Account Deleted



## Parser:
```
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+" nodrop
 
```
### Use Cases:
Excessive Failed Access Attempts, Failed Logins, Login Failure Outlier, Recent sudo Attempts, Root Login Failures, Root Login Success, Root User Logins - Failure, Root User Logins - Success, Successful Logins, sudo Attempt Outlier, sudo Attempts, sudo Attempts by Host, sudo Attempts by User, sudo Failures, sudo Failures Over Time, System Stopped, User Account Deleted



## Parser:
```
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<process>\w*)(?:\[\d+\]:|:)\s*(?<message>.+)$" nodrop
| parse regex "(?<service>\w*)\[\d+\]:\s+" 
 
```
### Use Cases:
Accounts Created, Accounts Deleted, Active Services Over Time, Events by Service, Excessive Failed Access Attempts, Failed Logins, Login Failure Outlier, Recent sudo Attempts, Root Login Failures, Root Login Success, Root User Logins - Failure, Root User Logins - Success, Running Services (Daemons), Stopped Services, Successful Logins, sudo Attempt Outlier, sudo Attempts, sudo Attempts by Host, sudo Attempts by User, sudo Failures, sudo Failures Over Time, System Stopped, System Time Change Attempt, Total Services, Total Services Running by Host, User Account Created, User Account Deleted


