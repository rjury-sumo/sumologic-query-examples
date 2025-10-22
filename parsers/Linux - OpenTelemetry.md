# Parsers For Linux - OpenTelemetry

**Linux - OpenTelemetry/Linux - Event Sources/Event Count by Host and Service**
```
sumo.datasource=linux deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}}  
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w+)(?:\[\d+\]|):\s+" 
```

**Linux - OpenTelemetry/Linux - Event Sources/Event Count per Host by Hour**
```
sumo.datasource=linux deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}}   
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[\d+\]|):\s+" 
```

**Linux - OpenTelemetry/Linux - Event Sources/Reporting Hosts by Hour**
```
sumo.datasource=linux deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}}   
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[\d+\]|):\s+" 
```

**Linux - OpenTelemetry/Linux - Event Sources/Total Event Distribution**
```
sumo.datasource=linux deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}}   
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[\d+\]|):\s+"
```

**Linux - OpenTelemetry/Linux - Login Status/Failed Logins per Host by Hour**
```
sumo.datasource=linux deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}}   ("authentication failure" or "FAILED SU" or "input_userauth_request: invalid user" or "Invalid user" or "Failed publickey" or "Failed password")
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

**Linux - OpenTelemetry/Linux - Login Status/Logins by Hour**
```
sumo.datasource=linux deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} ("sshd:" or "sshd[" or "pam:" ) (("Accepted" and "pam") or "session" or ("to" and "on") or ("authentication failure" or "FAILED SU" or "input_userauth_request: invalid user" or "Invalid user" or "Failed publickey" or "Failed password")) !"closed"
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

**Linux - OpenTelemetry/Linux - Login Status/Top 30 Failed Logins**
```
sumo.datasource=linux deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}}   ("authentication failure" or "FAILED SU" or "input_userauth_request: invalid user" or "Invalid user" or "Failed publickey" or "Failed password")
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

**Linux - OpenTelemetry/Linux - Login Status/Top 30 Failed Remote Logins**
```
sumo.datasource=linux deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}}   ("authentication failure" or "FAILED SU" or "input_userauth_request: invalid user" or "Invalid user" or "Failed publickey" or "Failed password") ("ssh" or "sshd") 
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

**Linux - OpenTelemetry/Linux - Login Status/Top 30 Successful Remote Logins**
```
sumo.datasource=linux deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}}   ("sshd:" or "sshd[" or "pam:") (("Accepted" and "pam") or "session" or ("to" and "on")) !"closed"
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*):\s+(?<message>.*)$" nodrop
| parse regex  "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\S*)\[\d+\]:\s+(?<message>.*)$" nodrop
| parse "session * for user * by *(uid=*)" as (action,dest_user,src_user,src_user_id) nodrop
| parse regex "session (?<action>\w*) for user (?<dest_user>\S*)" nodrop
```

**Linux - OpenTelemetry/Linux - Login Status/Top 30 Successful User Logins**
```
sumo.datasource=linux deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}}   ("su:" or "sudo:" or "sshd:" or "sshd[" or "pam:") (("Accepted" and "pam") or "session" or ("to" and "on")) !"closed"
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*):\s+(?<message>.*)$" nodrop
| parse regex  "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\S*)\[\d+\]:\s+(?<message>.*)$" nodrop
| parse "session * for user * by *(uid=*)" as (action,dest_user,src_user,src_user_id) nodrop
| parse regex "session (?<action>\w*) for user (?<dest_user>\S*)" nodrop
| parse "Accepted keyboard-interactive/pam for * from * port * *" as (dest_user,src_hostname,src_port,protocol)
```

**Linux - OpenTelemetry/Linux - Overview/Logins by Outcome**
```
sumo.datasource=linux deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}}   ("sshd:" or "sshd[" or "pam:" ) (("Accepted" and "pam") or "session" or ("to" and "on") or ("authentication failure" or "FAILED SU" or "input_userauth_request: invalid user" or "Invalid user" or "Failed publickey" or "Failed password")) !"closed"
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

**Linux - OpenTelemetry/Linux - Overview/Reporting Hosts**
```
sumo.datasource=linux deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}}   
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[\d+\]|):\s+"
```

**Linux - OpenTelemetry/Linux - Overview/Sudo Attempts**
```
sumo.datasource=linux deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}}   "sudo" 
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S*)\s" nodrop
| host.name as dest_host
| parse regex "(?<process>\w*):\s+(?<src_user>[^ ]+?)\s+:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
| parse regex "COMMAND=(?<command>[^$]*)$" nodrop
| parse regex "\s+(?<process>\w*): pam_unix\(sudo:auth\): conversation failed" nodrop
| parse "pam_unix(*:auth): authentication failure;" as process nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
```

**Linux - OpenTelemetry/Linux - Overview/Total Event Distribution**
```
sumo.datasource=linux deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}}   
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S*)\s(?<process_name>\w*)(?:\[\d+\]|):\s+"
```

**Linux - OpenTelemetry/Linux - Overview/User Assignments**
```
sumo.datasource=linux deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} ("to group" or "default group changed" or "change user") or ("useradd" and (("new user") or ("new account")))
| parse "add '*' to group '*'" as dest_user,dest_group nodrop
| parse "account added to group - account=*, group=*, gid=*," as dest_user,dest_group,dest_gid nodrop
| parse "account=*, uid=*, gid=*, old gid=*," as dest_user,dest_uid, dest_gid,src_gid nodrop
| parse "change user '*' GID from '*' to '*'" as dest_user,src_gid, dest_gid nodrop
| parse "name=*, UID=*, GID=*, home=*, shell=*" as dest_user,dest_uid,dest_gid,home_dir,shell nodrop
| parse "account=*, uid=*, gid=*, home=*, shell=*," as dest_user,dest_uid,dest_gid,home_dir,shell nodrop
```

**Linux - OpenTelemetry/Linux - Security Status/Existing User Assignments**
```
sumo.datasource=linux deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}}   "to group" or "default group changed" or "change user"
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[|:)" nodrop
| parse "add '*' to group '*'" as dest_user,dest_group nodrop
| parse "account added to group - account=*, group=*, gid=*," as dest_user,dest_group,dest_gid nodrop
| parse "account=*, uid=*, gid=*, old gid=*," as dest_user,dest_uid, dest_gid,src_gid nodrop
| parse "change user '*' GID from '*' to '*'" as dest_user,src_gid, dest_gid
```

**Linux - OpenTelemetry/Linux - Security Status/Failed SU Attempts**
```
sumo.datasource=linux deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}}  ("authentication failure" or "FAILED SU" or "input_userauth_request: invalid user" or "Invalid user" or "Failed publickey" or "Failed password") ("su:" or "su[")  
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

**Linux - OpenTelemetry/Linux - Security Status/New User Assignments**
```
sumo.datasource=linux deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}}   "useradd" and (("new user") or ("new account"))
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[|:)" nodrop
| parse "name=*, UID=*, GID=*, home=*, shell=*" as dest_user,dest_uid,dest_gid,home_dir,shell nodrop
| parse "account=*, uid=*, gid=*, home=*, shell=*," as dest_user,dest_uid,dest_gid,home_dir,shell nodrop 
```

**Linux - OpenTelemetry/Linux - Security Status/Package Operations**
```
sumo.datasource=linux deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}}   ("installed" or "erased" or "remove" or "<install>" or "<uninstall>") NOT "MTA"
| parse regex "\s+\d+:\d+:\d+\s+status\s+(?<action>installed)\s+(?<pkg_name>\S*)\s+" nodrop
| parse regex "\s+\d+:\d+:\d+\s+(?<action>Installed)\:\s+(?:\d+\:)?(?<pkg_name>\S*)" nodrop
| parse regex "\s+\d+:\d+:\d+\s+(?<action>remove)\s+(?<pkg_name>[^ ]*)\s" nodrop
| parse regex "\s+\d+:\d+:\d+\s+(?<action>Erased)\:\s+(?:\d+\:)?(?<pkg_name>\S*)" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<action>\w*):\s(?<pkg_name>[^ ]*)\s" nodrop
| parse regex "<(?<action>[a-zA-Z]*)>\s+[^\(\)]*\(\d+\)(?<pkg_name>[^\(]*)\(" nodrop
```

**Linux - OpenTelemetry/Linux - Security Status/Sudo Attempts**
```
sumo.datasource=linux deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}}   "sudo" 
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S*)\s" nodrop
| host.name as dest_host
| parse regex "(?<process>\w*):\s+(?<src_user>[^ ]+?)\s+:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
| parse regex "COMMAND=(?<command>[^$]*)$" nodrop
| parse regex "\s+(?<process>\w*): pam_unix\(sudo:auth\): conversation failed" nodrop
| parse "pam_unix(*:auth): authentication failure;" as process nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
```

**Linux - OpenTelemetry/Linux - Security Status/System Starts**
```
sumo.datasource=linux deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}}   "Initializing cgroup subsys cpuset"
| parse regex "^(?<StartTime>\S*\s+\d+\s+\d+:\d+:\d+)\s(?<dest_hostname>\S*)\s(?<process_name>\w*)(?:\[\d+\]|):\s+" nodrop
```


