# Parsers For PCI Compliance for Linux - OpenTelemetry

## Parser:
```
| parse regex "(?<process>\w*):\s+(?<src_user>[^ ]+?)\s+:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
| parse regex "\s+(?<process>\w*): pam_unix\(sudo:auth\): conversation failed" nodrop
| parse "pam_unix(*:auth): authentication failure;" as process nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
```
### Use Cases:
Active Services Over Time, Default Login (root user) - Failure, Default Login (root user) - Success, Excessive Failed Access Attempts, Failed Logins, Failed sudo, Recent sudo Attempts, Running Services (Daemons), Stopped Services, Successful Logins, sudo Attempts, sudo Attempts Over Time, System Stopped, System Time Change Attempt, Top 10 sudo by Host, Top 10 sudo by User, Unique Services, Unique Services Running, User Account Created, User Account Deleted



## Parser:
```
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s(?<_sourceHost>\S*)\s" nodrop
| parse regex "(?<process>\w*):\s+(?<src_user>[^ ]+?)\s+:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
| parse regex "COMMAND=(?<command>[^$]*)$" nodrop
| parse regex "\s+(?<process>\w*): pam_unix\(sudo:auth\): conversation failed" nodrop
| parse "pam_unix(*:auth): authentication failure;" as process nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
```
### Use Cases:
Active Services Over Time, Default Login (root user) - Failure, Default Login (root user) - Success, Excessive Failed Access Attempts, Failed Logins, Failed sudo, Recent sudo Attempts, Running Services (Daemons), Stopped Services, Successful Logins, System Stopped, System Time Change Attempt, Top 10 sudo by Host, Unique Services, Unique Services Running, User Account Created, User Account Deleted



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
Active Services Over Time, Default Login (root user) - Failure, Default Login (root user) - Success, Excessive Failed Access Attempts, Failed Logins, Running Services (Daemons), Stopped Services, Successful Logins, System Stopped, System Time Change Attempt, Unique Services, Unique Services Running, User Account Created, User Account Deleted



## Parser:
```
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S*)\s+" nodrop
| parse regex "(?<process>\w*):\s+(?<src_user>[^ ]+?)\s+:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
| parse "TTY=* ; PWD=* ;" as tty, workingdirectory nodrop
| parse "USER=* ;" as dest_user nodrop
| parse regex "\s+(?<process>\w*): pam_unix\(sudo:auth\): conversation failed" nodrop
| parse "pam_unix(*:auth): authentication failure;" as process nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
```
### Use Cases:
Active Services Over Time, Default Login (root user) - Failure, Default Login (root user) - Success, Excessive Failed Access Attempts, Failed Logins, Failed sudo, Running Services (Daemons), Stopped Services, Successful Logins, System Stopped, System Time Change Attempt, Top 10 sudo by Host, Unique Services, Unique Services Running, User Account Created, User Account Deleted



## Parser:
```
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S*)\s+" nodrop
| parse regex "(?<process>\w*):\s+(?<src_user>[^ ]+?)\s+:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
| parse regex "\s+(?<process>\w*): pam_unix\(sudo:auth\): conversation failed" nodrop
| parse "pam_unix(*:auth): authentication failure;" as process nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
```
### Use Cases:
Active Services Over Time, Default Login (root user) - Failure, Default Login (root user) - Success, Excessive Failed Access Attempts, Failed Logins, Running Services (Daemons), Stopped Services, Successful Logins, System Stopped, System Time Change Attempt, Top 10 sudo by Host, Unique Services, Unique Services Running, User Account Created, User Account Deleted



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
| parse "input_userauth_request: invalid user *" as dest_user nodrop
| parse "Invalid user * from * port *" as dest_user, src_host, src_port nodrop
| parse "Failed publickey for * from * port * *" as dest_user, src_host, src_port, protocol nodrop
| parse "Failed password for * from * port * *" as dest_user, src_host, src_port, protocol nodrop
| parse "Failed password for invalid user * from * port * *" as dest_user, src_host, src_port, protocol nodrop
```
### Use Cases:
Active Services Over Time, Default Login (root user) - Failure, Excessive Failed Access Attempts, Failed Logins, Running Services (Daemons), Stopped Services, Successful Logins, System Stopped, System Time Change Attempt, Unique Services, Unique Services Running, User Account Created, User Account Deleted



## Parser:
```
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S*)\s+" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<service>\w*)\[\d+\]:\s+ntpd (?<state>[^\(]*)" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<service>\w*):\s+\[[\s\S]*\] (?<state>[\s\S]*)$" nodrop
```
### Use Cases:
Excessive Failed Access Attempts, Running Services (Daemons), Stopped Services, System Time Change Attempt, Unique Services, Unique Services Running, User Account Created



## Parser:
```
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S+)\s+\w*" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s(?<dest_host>\S*)\s(?<message>.+)$" nodrop
| extract "sudo:\s+(?<src_user>[^ ]+?)\s:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
| parse "synchronized to *," as src_host nodrop 
```
### Use Cases:
Excessive Failed Access Attempts, Running Services (Daemons), System Time Change Attempt, Unique Services, Unique Services Running



## Parser:
```
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S+)\s+\w*" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<process>\w*)(?:\[\d+\]:|:)\s*(?<msg>.+)$" nodrop
| parse field=msg "delete user '*'" as dest_user nodrop
| parse "account=*, group=*, gid=" as dest_user, dest_group nodrop
| parse "account=*, uid=" as dest_user nodrop 
```
### Use Cases:
Excessive Failed Access Attempts, Running Services (Daemons), Stopped Services, System Stopped, System Time Change Attempt, Unique Services, Unique Services Running, User Account Created, User Account Deleted



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
Excessive Failed Access Attempts, Running Services (Daemons), System Time Change Attempt, Unique Services, Unique Services Running, User Account Created



## Parser:
```
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+" nodrop
```
### Use Cases:
Excessive Failed Access Attempts, Running Services (Daemons), Stopped Services, System Stopped, System Time Change Attempt, Unique Services, Unique Services Running, User Account Created



## Parser:
```
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<process>\w*)(?:\[\d+\]:|:)\s*(?<message>.+)$" nodrop
| parse regex "(?<service>\w*)\[\d+\]:\s+" 
```
### Use Cases:
Active Services Over Time, Excessive Failed Access Attempts, Running Services (Daemons), Stopped Services, System Stopped, System Time Change Attempt, Unique Services, Unique Services Running, User Account Created, User Account Deleted


