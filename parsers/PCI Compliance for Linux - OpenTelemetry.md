# Parsers For PCI Compliance for Linux - OpenTelemetry

**PCI Compliance for Linux - OpenTelemetry/PCI Compliance For Linux - PCI Req 02, 07, 08, 10 - Account, User, System Monitoring/Active Services Over Time**
```
sumo.datasource=linux deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}}
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<process>\w*)(?:\[\d+\]:|:)\s*(?<message>.+)$" nodrop
| if (isEmpty(dest_host), _sourceHost, dest_host) as dest_host
| parse regex "(?<service>\w*)\[\d+\]:\s+" 
```

**PCI Compliance for Linux - OpenTelemetry/PCI Compliance For Linux - PCI Req 02, 07, 08, 10 - Account, User, System Monitoring/Excessive Failed Access Attempts**
```
sumo.datasource=linux deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} ("authentication failure" or "FAILED SU" or "input_userauth_request: invalid user" or "Invalid user" or "Failed publickey" or "Failed password")
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

**PCI Compliance for Linux - OpenTelemetry/PCI Compliance For Linux - PCI Req 02, 07, 08, 10 - Account, User, System Monitoring/Running Services (Daemons)**
```
sumo.datasource=linux deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}}
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<process>\w*)(?:\[\d+\]:|:)\s*(?<message>.+)$" nodrop
| if (isEmpty(dest_host), _sourceHost, dest_host) as dest_host
| parse regex "(?<service>\w*)\[\d+\]:\s+" 
```

**PCI Compliance for Linux - OpenTelemetry/PCI Compliance For Linux - PCI Req 02, 07, 08, 10 - Account, User, System Monitoring/Stopped Services**
```
sumo.datasource=linux deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}}  (rsyslog or rsyslogd or syslog or ossec or ntpd) and (stopped or "exiting on signal 15" or start*)
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S*)\s+" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<service>\w*)\[\d+\]:\s+ntpd (?<state>[^\(]*)" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<service>\w*):\s+\[[\s\S]*\] (?<state>[\s\S]*)$" nodrop
```

**PCI Compliance for Linux - OpenTelemetry/PCI Compliance For Linux - PCI Req 02, 07, 08, 10 - Account, User, System Monitoring/System Stopped**
```
sumo.datasource=linux deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "kernel: Kernel logging (proc) stopped."  
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+" nodrop
```

**PCI Compliance for Linux - OpenTelemetry/PCI Compliance For Linux - PCI Req 02, 07, 08, 10 - Account, User, System Monitoring/System Time Change Attempt**
```
sumo.datasource=linux deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} (sudo and ((COMMAND date) or "ntpd stop" or (ntpd synchronized) or (ln and localtime)))
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S+)\s+\w*" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s(?<dest_host>\S*)\s(?<message>.+)$" nodrop
| extract "sudo:\s+(?<src_user>[^ ]+?)\s:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
| parse "synchronized to *," as src_host nodrop 
```

**PCI Compliance for Linux - OpenTelemetry/PCI Compliance For Linux - PCI Req 02, 07, 08, 10 - Account, User, System Monitoring/Unique Services**
```
sumo.datasource=linux deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}}
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<process>\w*)(?:\[\d+\]:|:)\s*(?<message>.+)$" nodrop
| if (isEmpty(dest_host), _sourceHost, dest_host) as dest_host
| parse regex "(?<service>\w*)\[\d+\]:\s+" 
```

**PCI Compliance for Linux - OpenTelemetry/PCI Compliance For Linux - PCI Req 02, 07, 08, 10 - Account, User, System Monitoring/Unique Services Running**
```
sumo.datasource=linux deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}}
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<process>\w*)(?:\[\d+\]:|:)\s*(?<message>.+)$" nodrop
| if (isEmpty(dest_host), _sourceHost, dest_host) as dest_host
| parse regex "(?<service>\w*)\[\d+\]:\s+" 
```

**PCI Compliance for Linux - OpenTelemetry/PCI Compliance For Linux - PCI Req 02, 07, 08, 10 - Account, User, System Monitoring/User Account Created**
```
sumo.datasource=linux deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "useradd" and ("new user" or "new account")
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S+)\s+\w*" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<process>\w*)(?:\[\d+\]:|:)\s*(?<msg>.+)$" nodrop
| parse field=msg "name=*, UID=" as dest_user nodrop
| parse field=msg "name=*, UID=*, GID=*, home=*, shell=*" as dest_user, UID, GID, home, shell nodrop
| parse field=msg ", shell=*\"" as shell nodrop
| parse field=msg "account=*, uid=*, gid=*, home=*, shell=*" as dest_user, UID, GID, home, shell nodrop
| parse field=msg "account=*, uid=" as dest_user nodrop
```

**PCI Compliance for Linux - OpenTelemetry/PCI Compliance For Linux - PCI Req 02, 07, 08, 10 - Account, User, System Monitoring/User Account Deleted**
```
sumo.datasource=linux deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} (("userdel" and "delete user") or "account deleted")
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S+)\s+\w*" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<process>\w*)(?:\[\d+\]:|:)\s*(?<msg>.+)$" nodrop
| dest_host as dest_ip
| parse field=msg "delete user '*'" as dest_user nodrop
| parse "account=*, group=*, gid=" as dest_user, dest_group nodrop
| parse "account=*, uid=" as dest_user nodrop 
```

**PCI Compliance for Linux - OpenTelemetry/PCI Compliance For Linux - PCI Req 02, 10 - Login Activity/Default Login (root user) - Failure**
```
sumo.datasource=linux deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} ("authentication failure" or "FAILED SU" or "input_userauth_request: invalid user" or "Invalid user" or "Failed publickey" or "Failed password")
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

**PCI Compliance for Linux - OpenTelemetry/PCI Compliance For Linux - PCI Req 02, 10 - Login Activity/Default Login (root user) - Success**
```
sumo.datasource=linux deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} ("su:" or "sudo:" or "sshd:" or "sshd[" or "pam:") (("Accepted" and "pam") or "session" or ("to" and "on")) !"closed"
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s(?<_sourceHost>\S*)\s" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s(?<dest_host>\S*)\s(?:\w*):\s+(?<message>.*)$" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s(?<dest_host>\S*)\s(?:\S*)\[\d+\]:\s+(?<message>.*)$" nodrop 
| parse field=message "pam_unix(*:*):" as deamon, ltype nodrop | if (deamon="sshd", "ssh", "") as protocol | fields -deamon, ltype
| parse "session * for user * by *(uid=" as action, dest_user, src_user nodrop
| parse regex "session (?<action>\w*) for user (?<dest_user>\S*)" nodrop
| parse "rhost=* " as src_host nodrop
| parse "Accepted * for * from * port * *" as type, dest_user, src_host, src_port, protocol nodrop
```

**PCI Compliance for Linux - OpenTelemetry/PCI Compliance For Linux - PCI Req 02, 10 - Login Activity/Failed Logins**
```
sumo.datasource=linux deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} ("authentication failure" or "FAILED SU" or "input_userauth_request: invalid user" or "Invalid user" or "Failed publickey" or "Failed password")
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

**PCI Compliance for Linux - OpenTelemetry/PCI Compliance For Linux - PCI Req 02, 10 - Login Activity/Successful Logins**
```
sumo.datasource=linux deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} ("su:" or "sudo:" or "sshd:" or "sshd[" or "pam:") (("Accepted" and "pam") or "session" or ("to" and "on")) !"closed"
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s(?<_sourceHost>\S*)\s" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s(?<dest_host>\S*)\s(?:\w*):\s+(?<message>.*)$" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s(?<dest_host>\S*)\s(?:\S*)\[\d+\]:\s+(?<message>.*)$" nodrop 
| parse field=message "pam_unix(*:*):" as deamon, ltype nodrop | if (deamon="sshd", "ssh", "") as protocol | fields -deamon, ltype
| parse "session * for user * by *(uid=" as action, dest_user, src_user nodrop
| parse regex "session (?<action>\w*) for user (?<dest_user>\S*)" nodrop
| parse "rhost=* " as src_host nodrop
| parse "Accepted * for * from * port * *" as type, dest_user, src_host, src_port, protocol nodrop
```

**PCI Compliance for Linux - OpenTelemetry/PCI Compliance For Linux - PCI Req 10 - Privileged Activity/Failed sudo**
```
sumo.datasource=linux deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} sudo ("user NOT in sudoers" or "conversation failed" or "authentication failure")
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S*)\s+" nodrop
| _sourceHost as dest_host
| parse regex "(?<process>\w*):\s+(?<src_user>[^ ]+?)\s+:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
| parse "TTY=* ; PWD=* ;" as tty, workingdirectory nodrop
| parse "USER=* ;" as dest_user nodrop
| parse regex "\s+(?<process>\w*): pam_unix\(sudo:auth\): conversation failed" nodrop
| parse "pam_unix(*:auth): authentication failure;" as process nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
```

**PCI Compliance for Linux - OpenTelemetry/PCI Compliance For Linux - PCI Req 10 - Privileged Activity/Recent sudo Attempts**
```
sumo.datasource=linux deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} "sudo"
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s(?<_sourceHost>\S*)\s" nodrop
| _sourceHost as dest_host
| parse regex "(?<process>\w*):\s+(?<src_user>[^ ]+?)\s+:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
| parse regex "COMMAND=(?<command>[^$]*)$" nodrop
| parse regex "\s+(?<process>\w*): pam_unix\(sudo:auth\): conversation failed" nodrop
| parse "pam_unix(*:auth): authentication failure;" as process nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
```

**PCI Compliance for Linux - OpenTelemetry/PCI Compliance For Linux - PCI Req 10 - Privileged Activity/sudo Attempts**
```
sumo.datasource=linux deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} sudo 
| parse regex "(?<process>\w*):\s+(?<src_user>[^ ]+?)\s+:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
| parse regex "\s+(?<process>\w*): pam_unix\(sudo:auth\): conversation failed" nodrop
| parse "pam_unix(*:auth): authentication failure;" as process nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
```

**PCI Compliance for Linux - OpenTelemetry/PCI Compliance For Linux - PCI Req 10 - Privileged Activity/sudo Attempts Over Time**
```
sumo.datasource=linux deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} sudo
| parse regex "(?<process>\w*):\s+(?<src_user>[^ ]+?)\s+:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
| parse regex "\s+(?<process>\w*): pam_unix\(sudo:auth\): conversation failed" nodrop
| parse "pam_unix(*:auth): authentication failure;" as process nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
```

**PCI Compliance for Linux - OpenTelemetry/PCI Compliance For Linux - PCI Req 10 - Privileged Activity/Top 10 sudo by Host**
```
sumo.datasource=linux deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} sudo
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S*)\s+" nodrop
| _sourceHost as host
| parse regex "(?<process>\w*):\s+(?<src_user>[^ ]+?)\s+:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
| parse regex "\s+(?<process>\w*): pam_unix\(sudo:auth\): conversation failed" nodrop
| parse "pam_unix(*:auth): authentication failure;" as process nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
```

**PCI Compliance for Linux - OpenTelemetry/PCI Compliance For Linux - PCI Req 10 - Privileged Activity/Top 10 sudo by User**
```
sumo.datasource=linux deployment.environment={{deployment.environment}} host.group={{host.group}} host.name={{host.name}} sudo
| parse regex "(?<process>\w*):\s+(?<src_user>[^ ]+?)\s+:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
| parse regex "\s+(?<process>\w*): pam_unix\(sudo:auth\): conversation failed" nodrop
| parse "pam_unix(*:auth): authentication failure;" as process nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
```


