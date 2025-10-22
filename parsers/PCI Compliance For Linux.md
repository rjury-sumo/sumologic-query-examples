# Parsers For PCI Compliance For Linux

**PCI Compliance For Linux/Linux - PCI Req 02, 10 - Login Activity - New/Default Login (root user) - Failure**
```
_sourceCategory = Labs/OS/Linux* ("authentication failure" or "FAILED SU")
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S*)\s+" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<message>[^;]+)" nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
| parse "ruser= rhost=* user=*" as src_host, dest_user nodrop
| parse " user=*\"" as dest_user nodrop
| parse "Authentication failure for * from *" as dest_user, src_host nodrop
| parse "FAILED SU (to *) * on" as dest_user, src_user nodrop
| parse regex "FAILED LOGIN (?:SESSION|\d+) FROM (?:\S+) FOR (?<dest_user>\S+)," nodrop
```

**PCI Compliance For Linux/Linux - PCI Req 02, 10 - Login Activity - New/Default Login (root user) - Success**
```
_sourceCategory = Labs/OS/Linux* ("su:" or "sudo:" or "sshd:" or "sshd[" or "pam:") (("Accepted" and "pam") or "session" or ("to" and "on")) !"closed"
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s(?<_sourceHost>\S*)\s" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s(?<dest_host>\S*)\s(?:\w*):\s+(?<message>.*)$" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s(?<dest_host>\S*)\s(?:\S*)\[\d+\]:\s+(?<message>.*)$" nodrop 
| parse field=message "pam_unix(*:*):" as deamon, ltype nodrop | if (deamon="sshd", "ssh", "") as protocol | fields -deamon, ltype
| parse "session * for user * by *(uid=" as action, dest_user, src_user nodrop
| parse regex "session (?<action>\w*) for user (?<dest_user>\S*)" nodrop
| parse "rhost=* " as src_host nodrop
| parse "Accepted * for * from * port * *" as type, dest_user, src_host, src_port, protocol nodrop
```

**PCI Compliance For Linux/Linux - PCI Req 02, 10 - Login Activity - New/Failed Logins**
```
_sourceCategory = Labs/OS/Linux* ("authentication failure" or "FAILED SU")
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S*)\s+" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<message>[^;]+)" nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
| parse "ruser= rhost=* user=*" as src_host, dest_user nodrop
| parse " user=*\"" as dest_user nodrop
| parse "Authentication failure for * from *" as dest_user, src_host nodrop
| parse "FAILED SU (to *) * on" as dest_user, src_user nodrop
| parse regex "FAILED LOGIN (?:SESSION|\d+) FROM (?:\S+) FOR (?<dest_user>\S+)," nodrop
```

**PCI Compliance For Linux/Linux - PCI Req 02, 10 - Login Activity - New/Successful Logins**
```
_sourceCategory = Labs/OS/Linux* ("su:" or "sudo:" or "sshd:" or "sshd[" or "pam:") (("Accepted" and "pam") or "session" or ("to" and "on")) !"closed"
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s(?<_sourceHost>\S*)\s" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s(?<dest_host>\S*)\s(?:\w*):\s+(?<message>.*)$" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s(?<dest_host>\S*)\s(?:\S*)\[\d+\]:\s+(?<message>.*)$" nodrop 
| parse field=message "pam_unix(*:*):" as deamon, ltype nodrop | if (deamon="sshd", "ssh", "") as protocol | fields -deamon, ltype
| parse "session * for user * by *(uid=" as action, dest_user, src_user nodrop
| parse regex "session (?<action>\w*) for user (?<dest_user>\S*)" nodrop
| parse "rhost=* " as src_host nodrop
| parse "Accepted * for * from * port * *" as type, dest_user, src_host, src_port, protocol nodrop
```

**PCI Compliance For Linux/Linux - PCI Req 10 - Privileged Activity - New/Failed sudo**
```
_sourceCategory = Labs/OS/Linux* sudo "user NOT in sudoers"
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S*)\s+" nodrop
| _sourceHost as dest_host
| extract "(?<process>\w*):\s+(?<src_user>[^ ]+?)\s+:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
| parse "TTY=* ; PWD=* ;" as tty, workingdirectory nodrop
| parse "USER=* ;" as dest_user nodrop
```

**PCI Compliance For Linux/Linux - PCI Req 10 - Privileged Activity - New/Recent sudo Attempts**
```
_sourceCategory = Labs/OS/Linux* "sudo"
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s(?<_sourceHost>\S*)\s" nodrop
| _sourceHost as dest_host
| extract "(?<process>\w*):\s+(?<src_user>[^ ]+?)\s+:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
| parse regex "COMMAND=(?<command>[^$]*)$" nodrop
```

**PCI Compliance For Linux/Linux - PCI Req 10 - Privileged Activity - New/sudo Attempts**
```
_sourceCategory = Labs/OS/Linux* sudo
| extract "(?<process>\w*):\s+(?<src_user>[^ ]+?)\s+:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
```

**PCI Compliance For Linux/Linux - PCI Req 10 - Privileged Activity - New/sudo Attempts Over Time**
```
_sourceCategory = Labs/OS/Linux* sudo
| extract "(?<process>\w*):\s+(?<src_user>[^ ]+?)\s+:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
```

**PCI Compliance For Linux/Linux - PCI Req 10 - Privileged Activity - New/Top 10 sudo by Host**
```
_sourceCategory = Labs/OS/Linux* sudo
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S*)\s+" nodrop
| _sourceHost as host
| extract "(?<process>\w*):\s+(?<src_user>[^ ]+?)\s+:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
```

**PCI Compliance For Linux/Linux - PCI Req 10 - Privileged Activity - New/Top 10 sudo by User**
```
_sourceCategory = Labs/OS/Linux* sudo
| extract "(?<process>\w*):\s+(?<src_user>[^ ]+?)\s+:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
```

**PCI Compliance For Linux/PCI Req 02, 07, 08, 10 - Account, User, System Monitoring/Active Services Over Time**
```
_sourceCategory={{Logsdatasource}} 
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<process>\w*)(?:\[\d+\]:|:)\s*(?<message>.+)$" nodrop
| if (isEmpty(dest_host), _sourceHost, dest_host) as dest_host
| parse regex "(?<service>\w*)\[\d+\]:\s+" 
```

**PCI Compliance For Linux/PCI Req 02, 07, 08, 10 - Account, User, System Monitoring/Excessive Failed Access Attempts**
```
_sourceCategory={{Logsdatasource}}  ("authentication failure" or "FAILED SU" or "input_userauth_request: invalid user" or "Invalid user" or "Failed publickey" or "Failed password")
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

**PCI Compliance For Linux/PCI Req 02, 07, 08, 10 - Account, User, System Monitoring/Running Services (Daemons)**
```
_sourceCategory={{Logsdatasource}} 
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<process>\w*)(?:\[\d+\]:|:)\s*(?<message>.+)$" nodrop
| if (isEmpty(dest_host), _sourceHost, dest_host) as dest_host
| parse regex "(?<service>\w*)\[\d+\]:\s+" 
```

**PCI Compliance For Linux/PCI Req 02, 07, 08, 10 - Account, User, System Monitoring/Stopped Services**
```
_sourceCategory={{Logsdatasource}}  (rsyslog or rsyslogd or syslog or ossec or ntpd) and (stopped or "exiting on signal 15" or start*)
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S*)\s+" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<service>\w*)\[\d+\]:\s+ntpd (?<state>[^\(]*)" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<service>\w*):\s+\[[\s\S]*\] (?<state>[\s\S]*)$" nodrop
```

**PCI Compliance For Linux/PCI Req 02, 07, 08, 10 - Account, User, System Monitoring/System Stopped**
```
_sourceCategory={{Logsdatasource}}  "kernel: Kernel logging (proc) stopped." 
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+" nodrop
```

**PCI Compliance For Linux/PCI Req 02, 07, 08, 10 - Account, User, System Monitoring/System Time Change Attempt**
```
_sourceCategory={{Logsdatasource}}  (sudo and ((COMMAND date) or "ntpd stop" or (ntpd synchronized) or (ln and localtime)))
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S+)\s+\w*" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s(?<dest_host>\S*)\s(?<message>.+)$" nodrop
| extract "sudo:\s+(?<src_user>[^ ]+?)\s:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
| parse "synchronized to *," as src_host nodrop 
```

**PCI Compliance For Linux/PCI Req 02, 07, 08, 10 - Account, User, System Monitoring/Unique Services**
```
_sourceCategory={{Logsdatasource}} 
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<process>\w*)(?:\[\d+\]:|:)\s*(?<message>.+)$" nodrop
| if (isEmpty(dest_host), _sourceHost, dest_host) as dest_host
| parse regex "(?<service>\w*)\[\d+\]:\s+" 
```

**PCI Compliance For Linux/PCI Req 02, 07, 08, 10 - Account, User, System Monitoring/Unique Services Running**
```
_sourceCategory={{Logsdatasource}} 
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<process>\w*)(?:\[\d+\]:|:)\s*(?<message>.+)$" nodrop
| if (isEmpty(dest_host), _sourceHost, dest_host) as dest_host
| parse regex "(?<service>\w*)\[\d+\]:\s+" 
```

**PCI Compliance For Linux/PCI Req 02, 07, 08, 10 - Account, User, System Monitoring/User Account Created**
```
_sourceCategory={{Logsdatasource}}  "useradd" and ("new user" or "new account")
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S+)\s+\w*" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<process>\w*)(?:\[\d+\]:|:)\s*(?<msg>.+)$" nodrop
| parse field=msg "name=*, UID=" as dest_user nodrop
| parse field=msg "name=*, UID=*, GID=*, home=*, shell=*" as dest_user, UID, GID, home, shell nodrop
| parse field=msg ", shell=*\"" as shell nodrop
| parse field=msg "account=*, uid=*, gid=*, home=*, shell=*" as dest_user, UID, GID, home, shell nodrop
| parse field=msg "account=*, uid=" as dest_user nodrop
```

**PCI Compliance For Linux/PCI Req 02, 07, 08, 10 - Account, User, System Monitoring/User Account Deleted**
```
_sourceCategory={{Logsdatasource}}  (("userdel" and "delete user") or "account deleted")
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S+)\s+\w*" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<process>\w*)(?:\[\d+\]:|:)\s*(?<msg>.+)$" nodrop
| dest_host as dest_ip
| parse field=msg "delete user '*'" as dest_user nodrop
| parse "account=*, group=*, gid=" as dest_user, dest_group nodrop
| parse "account=*, uid=" as dest_user nodrop 
```

**PCI Compliance For Linux/PCI Req 02, 10 - Login Activity/Default Login (root user) - Failure**
```
_sourceCategory={{Logsdatasource}}  ("authentication failure" or "FAILED SU" or "input_userauth_request: invalid user" or "Invalid user" or "Failed publickey" or "Failed password")
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

**PCI Compliance For Linux/PCI Req 02, 10 - Login Activity/Default Login (root user) - Success**
```
_sourceCategory={{Logsdatasource}}  ("su:" or "sudo:" or "sshd:" or "sshd[" or "pam:") (("Accepted" and "pam") or "session" or ("to" and "on")) !"closed"
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s(?<_sourceHost>\S*)\s" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s(?<dest_host>\S*)\s(?:\w*):\s+(?<message>.*)$" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s(?<dest_host>\S*)\s(?:\S*)\[\d+\]:\s+(?<message>.*)$" nodrop 
| parse field=message "pam_unix(*:*):" as deamon, ltype nodrop | if (deamon="sshd", "ssh", "") as protocol | fields -deamon, ltype
| parse "session * for user * by *(uid=" as action, dest_user, src_user nodrop
| parse regex "session (?<action>\w*) for user (?<dest_user>\S*)" nodrop
| parse "rhost=* " as src_host nodrop
| parse "Accepted * for * from * port * *" as type, dest_user, src_host, src_port, protocol nodrop
```

**PCI Compliance For Linux/PCI Req 02, 10 - Login Activity/Failed Logins**
```
_sourceCategory={{Logsdatasource}}  ("authentication failure" or "FAILED SU" or "input_userauth_request: invalid user" or "Invalid user" or "Failed publickey" or "Failed password")
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

**PCI Compliance For Linux/PCI Req 02, 10 - Login Activity/Successful Logins**
```
_sourceCategory={{Logsdatasource}}  ("su:" or "sudo:" or "sshd:" or "sshd[" or "pam:") (("Accepted" and "pam") or "session" or ("to" and "on")) !"closed"
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s(?<_sourceHost>\S*)\s" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s(?<dest_host>\S*)\s(?:\w*):\s+(?<message>.*)$" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s(?<dest_host>\S*)\s(?:\S*)\[\d+\]:\s+(?<message>.*)$" nodrop 
| parse field=message "pam_unix(*:*):" as deamon, ltype nodrop | if (deamon="sshd", "ssh", "") as protocol | fields -deamon, ltype
| parse "session * for user * by *(uid=" as action, dest_user, src_user nodrop
| parse regex "session (?<action>\w*) for user (?<dest_user>\S*)" nodrop
| parse "rhost=* " as src_host nodrop
| parse "Accepted * for * from * port * *" as type, dest_user, src_host, src_port, protocol nodrop
```

**PCI Compliance For Linux/PCI Req 10 - Privileged Activity/Failed sudo**
```
_sourceCategory={{Logsdatasource}}  sudo ("user NOT in sudoers" or "conversation failed" or "authentication failure")
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S*)\s+" nodrop
| _sourceHost as dest_host
| parse regex "(?<process>\w*):\s+(?<src_user>[^ ]+?)\s+:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
| parse "TTY=* ; PWD=* ;" as tty, workingdirectory nodrop
| parse "USER=* ;" as dest_user nodrop
| parse regex "\s+(?<process>\w*): pam_unix\(sudo:auth\): conversation failed" nodrop
| parse "pam_unix(*:auth): authentication failure;" as process nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
```

**PCI Compliance For Linux/PCI Req 10 - Privileged Activity/Recent sudo Attempts**
```
_sourceCategory={{Logsdatasource}}  "sudo"
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s(?<_sourceHost>\S*)\s" nodrop
| _sourceHost as dest_host
| parse regex "(?<process>\w*):\s+(?<src_user>[^ ]+?)\s+:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
| parse regex "COMMAND=(?<command>[^$]*)$" nodrop
| parse regex "\s+(?<process>\w*): pam_unix\(sudo:auth\): conversation failed" nodrop
| parse "pam_unix(*:auth): authentication failure;" as process nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
```

**PCI Compliance For Linux/PCI Req 10 - Privileged Activity/sudo Attempts**
```
_sourceCategory={{Logsdatasource}}  sudo
| parse regex "(?<process>\w*):\s+(?<src_user>[^ ]+?)\s+:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
| parse regex "\s+(?<process>\w*): pam_unix\(sudo:auth\): conversation failed" nodrop
| parse "pam_unix(*:auth): authentication failure;" as process nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
```

**PCI Compliance For Linux/PCI Req 10 - Privileged Activity/sudo Attempts Over Time**
```
_sourceCategory={{Logsdatasource}}  sudo
| parse regex "(?<process>\w*):\s+(?<src_user>[^ ]+?)\s+:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
| parse regex "\s+(?<process>\w*): pam_unix\(sudo:auth\): conversation failed" nodrop
| parse "pam_unix(*:auth): authentication failure;" as process nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
```

**PCI Compliance For Linux/PCI Req 10 - Privileged Activity/Top 10 sudo by Host**
```
_sourceCategory={{Logsdatasource}}  sudo
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S*)\s+" nodrop
| _sourceHost as host
| parse regex "(?<process>\w*):\s+(?<src_user>[^ ]+?)\s+:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
| parse regex "\s+(?<process>\w*): pam_unix\(sudo:auth\): conversation failed" nodrop
| parse "pam_unix(*:auth): authentication failure;" as process nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
```

**PCI Compliance For Linux/PCI Req 10 - Privileged Activity/Top 10 sudo by User**
```
_sourceCategory={{Logsdatasource}}  sudo
| parse regex "(?<process>\w*):\s+(?<src_user>[^ ]+?)\s+:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
| parse regex "\s+(?<process>\w*): pam_unix\(sudo:auth\): conversation failed" nodrop
| parse "pam_unix(*:auth): authentication failure;" as process nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
```


