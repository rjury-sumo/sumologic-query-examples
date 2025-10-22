# Parsers For Linux - Cloud Security Monitoring and Analytics

**Linux - Cloud Security Monitoring and Analytics/Linux - Security Analytics - Login Activity/Excessive Failed Access Attempts**
```
_sourceCategory={{Logsdatasource}}  ("authentication failure" or "FAILED SU")
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S*)\s+" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<message>[^;]+)" nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
| parse "ruser= rhost=* user=*" as src_host, dest_user nodrop
| parse " user=*\"" as dest_user nodrop
| parse "Authentication failure for * from *" as dest_user, src_host nodrop
| parse "FAILED SU (to *) * on" as dest_user, src_user nodrop
| parse regex "FAILED LOGIN (?:SESSION|\d+) FROM (?:\S+) FOR (?<dest_user>\S+)," nodrop
```

**Linux - Cloud Security Monitoring and Analytics/Linux - Security Analytics - Login Activity/Failed Logins**
```
_sourceCategory={{Logsdatasource}}  ("authentication failure" or "FAILED SU")
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S*)\s+" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<message>[^;]+)" nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
| parse "ruser= rhost=* user=*" as src_host, dest_user nodrop
| parse " user=*\"" as dest_user nodrop
| parse "Authentication failure for * from *" as dest_user, src_host nodrop
| parse "FAILED SU (to *) * on" as dest_user, src_user nodrop
| parse regex "FAILED LOGIN (?:SESSION|\d+) FROM (?:\S+) FOR (?<dest_user>\S+)," nodrop
```

**Linux - Cloud Security Monitoring and Analytics/Linux - Security Analytics - Login Activity/Login Failure Outlier**
```
_sourceCategory={{Logsdatasource}}  ("authentication failure" or "FAILED SU")
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S*)\s+" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<message>[^;]+)" nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
| parse "ruser= rhost=* user=*" as src_host, dest_user nodrop
| parse " user=*\"" as dest_user nodrop
| parse "Authentication failure for * from *" as dest_user, src_host nodrop
| parse "FAILED SU (to *) * on" as dest_user, src_user nodrop
| parse regex "FAILED LOGIN (?:SESSION|\d+) FROM (?:\S+) FOR (?<dest_user>\S+)," nodrop
```

**Linux - Cloud Security Monitoring and Analytics/Linux - Security Analytics - Login Activity/Root Login Failures**
```
_sourceCategory={{Logsdatasource}}  ("authentication failure" or "FAILED SU")
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S*)\s+" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<message>[^;]+)" nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
| parse "ruser= rhost=* user=*" as src_host, dest_user nodrop
| parse " user=*\"" as dest_user nodrop
| parse "Authentication failure for * from *" as dest_user, src_host nodrop
| parse "FAILED SU (to *) * on" as dest_user, src_user nodrop
| parse regex "FAILED LOGIN (?:SESSION|\d+) FROM (?:\S+) FOR (?<dest_user>\S+)," nodrop
```

**Linux - Cloud Security Monitoring and Analytics/Linux - Security Analytics - Login Activity/Root Login Success**
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

**Linux - Cloud Security Monitoring and Analytics/Linux - Security Analytics - Login Activity/Root User Logins - Failure**
```
_sourceCategory={{Logsdatasource}}  ("authentication failure" or "FAILED SU")
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S*)\s+" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<message>[^;]+)" nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
| parse "ruser= rhost=* user=*" as src_host, dest_user nodrop
| parse " user=*\"" as dest_user nodrop
| parse "Authentication failure for * from *" as dest_user, src_host nodrop
| parse "FAILED SU (to *) * on" as dest_user, src_user nodrop
| parse regex "FAILED LOGIN (?:SESSION|\d+) FROM (?:\S+) FOR (?<dest_user>\S+)," nodrop
```

**Linux - Cloud Security Monitoring and Analytics/Linux - Security Analytics - Login Activity/Root User Logins - Success**
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

**Linux - Cloud Security Monitoring and Analytics/Linux - Security Analytics - Login Activity/Successful Logins**
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

**Linux - Cloud Security Monitoring and Analytics/Linux - Security Analytics - Privileged Activity/Recent sudo Attempts**
```
_sourceCategory={{Logsdatasource}}  "sudo"
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s(?<_sourceHost>\S*)\s" nodrop
| _sourceHost as dest_host
| extract "(?<process>\w*):\s+(?<src_user>[^ ]+?)\s+:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
| parse regex "COMMAND=(?<command>[^$]*)$" nodrop
```

**Linux - Cloud Security Monitoring and Analytics/Linux - Security Analytics - Privileged Activity/sudo Attempt Outlier**
```
_sourceCategory={{Logsdatasource}}   sudo
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S*)\s+" nodrop
| _sourceHost as dest_host
| extract "(?<process>\w*):\s+(?<src_user>[^ ]+?)\s+:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
| parse "TTY=* ; PWD=* ;" as tty, workingdirectory nodrop
| parse "USER=* ;" as dest_user nodrop
```

**Linux - Cloud Security Monitoring and Analytics/Linux - Security Analytics - Privileged Activity/sudo Attempts**
```
_sourceCategory={{Logsdatasource}}  sudo
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S*)\s+" nodrop
| _sourceHost as dest_host
| extract "(?<process>\w*):\s+(?<src_user>[^ ]+?)\s+:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
| parse "TTY=* ; PWD=* ;" as tty, workingdirectory nodrop
| parse "USER=* ;" as dest_user nodrop
```

**Linux - Cloud Security Monitoring and Analytics/Linux - Security Analytics - Privileged Activity/sudo Attempts by Host**
```
_sourceCategory={{Logsdatasource}}   sudo
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S*)\s+" nodrop
| _sourceHost as dest_host
| extract "(?<process>\w*):\s+(?<src_user>[^ ]+?)\s+:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
| parse "TTY=* ; PWD=* ;" as tty, workingdirectory nodrop
| parse "USER=* ;" as dest_user nodrop
```

**Linux - Cloud Security Monitoring and Analytics/Linux - Security Analytics - Privileged Activity/sudo Attempts by User**
```
_sourceCategory={{Logsdatasource}}   sudo
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S*)\s+" nodrop
| _sourceHost as dest_host
| extract "(?<process>\w*):\s+(?<src_user>[^ ]+?)\s+:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
| parse "TTY=* ; PWD=* ;" as tty, workingdirectory nodrop
| parse "USER=* ;" as dest_user nodrop
```

**Linux - Cloud Security Monitoring and Analytics/Linux - Security Analytics - Privileged Activity/sudo Failures**
```
_sourceCategory={{Logsdatasource}}  sudo "user NOT in sudoers"
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S*)\s+" nodrop
| _sourceHost as dest_host
| extract "(?<process>\w*):\s+(?<src_user>[^ ]+?)\s+:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
| parse "TTY=* ; PWD=* ;" as tty, workingdirectory nodrop
| parse "USER=* ;" as dest_user nodrop
```

**Linux - Cloud Security Monitoring and Analytics/Linux - Security Analytics - Privileged Activity/sudo Failures Over Time**
```
_sourceCategory={{Logsdatasource}}  sudo "user NOT in sudoers"
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S*)\s+" nodrop
| _sourceHost as dest_host
| extract "(?<process>\w*):\s+(?<src_user>[^ ]+?)\s+:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
| parse "TTY=* ; PWD=* ;" as tty, workingdirectory nodrop
| parse "USER=* ;" as dest_user nodrop
```

**Linux - Cloud Security Monitoring and Analytics/Linux - Security Analytics - User, Service, and System Monitoring/Active Services Over Time**
```
_sourceCategory={{Logsdatasource}} 
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<process>\w*)(?:\[\d+\]:|:)\s*(?<message>.+)$" nodrop
| if (isEmpty(dest_host), _sourceHost, dest_host) as dest_host
| parse regex "(?<service>\w*)\[\d+\]:\s+" 
```

**Linux - Cloud Security Monitoring and Analytics/Linux - Security Analytics - User, Service, and System Monitoring/Events by Service**
```
_sourceCategory={{Logsdatasource}} 
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<process>\w*)(?:\[\d+\]:|:)\s*(?<message>.+)$" nodrop
| if (isEmpty(dest_host), _sourceHost, dest_host) as dest_host
| parse regex "(?<service>\w*)\[\d+\]:\s+" 
```

**Linux - Cloud Security Monitoring and Analytics/Linux - Security Analytics - User, Service, and System Monitoring/Running Services (Daemons)**
```
_sourceCategory={{Logsdatasource}} 
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<process>\w*)(?:\[\d+\]:|:)\s*(?<message>.+)$" nodrop
| if (isEmpty(dest_host), _sourceHost, dest_host) as dest_host
| parse regex "(?<service>\w*)\[\d+\]:\s+" 
```

**Linux - Cloud Security Monitoring and Analytics/Linux - Security Analytics - User, Service, and System Monitoring/Stopped Services**
```
_sourceCategory={{Logsdatasource}}  (rsyslog or rsyslogd or syslog or ossec or ntpd) and (stopped or "exiting on signal 15" or start*)
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S*)\s+" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<service>\w*)\[\d+\]:\s+ntpd (?<state>[\s\S]*)$" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<service>\w*):\s+\[[\s\S]*\] (?<state>[\s\S]*)$" nodrop
```

**Linux - Cloud Security Monitoring and Analytics/Linux - Security Analytics - User, Service, and System Monitoring/System Stopped**
```
_sourceCategory={{Logsdatasource}}  "kernel: Kernel logging (proc) stopped." 
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+" nodrop
```

**Linux - Cloud Security Monitoring and Analytics/Linux - Security Analytics - User, Service, and System Monitoring/System Time Change Attempt**
```
_sourceCategory={{Logsdatasource}}  (sudo and ((COMMAND date) or "ntpd stop" or (ntpd synchronized) or (ln and localtime)))
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S+)\s+\w*" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s(?<dest_host>\S*)\s(?<message>.+)$" nodrop
| extract "sudo:\s+(?<src_user>[^ ]+?)\s:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
| parse "synchronized to *," as src_host nodrop 
```

**Linux - Cloud Security Monitoring and Analytics/Linux - Security Analytics - User, Service, and System Monitoring/Total Services**
```
_sourceCategory={{Logsdatasource}} 
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<process>\w*)(?:\[\d+\]:|:)\s*(?<message>.+)$" nodrop
| if (isEmpty(dest_host), _sourceHost, dest_host) as dest_host
| parse regex "(?<service>\w*)\[\d+\]:\s+" 
```

**Linux - Cloud Security Monitoring and Analytics/Linux - Security Analytics - User, Service, and System Monitoring/Total Services Running by Host**
```
_sourceCategory={{Logsdatasource}} 
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<process>\w*)(?:\[\d+\]:|:)\s*(?<message>.+)$" nodrop
| if (isEmpty(dest_host), _sourceHost, dest_host) as dest_host
| parse regex "(?<service>\w*)\[\d+\]:\s+" 
```

**Linux - Cloud Security Monitoring and Analytics/Linux - Security Analytics - User, Service, and System Monitoring/User Account Created**
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

**Linux - Cloud Security Monitoring and Analytics/Linux - Security Analytics - User, Service, and System Monitoring/User Account Deleted**
```
_sourceCategory={{Logsdatasource}}  (("userdel" and "delete user") or "account deleted")
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S+)\s+\w*" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<process>\w*)(?:\[\d+\]:|:)\s*(?<msg>.+)$" nodrop
| dest_host as dest_ip
| parse field=msg "delete user '*'" as dest_user nodrop
| parse "account=*, group=*, gid=" as dest_user, dest_group nodrop
| parse "account=*, uid=" as dest_user nodrop 
```

**Linux - Cloud Security Monitoring and Analytics/Linux - Security Monitoring - Overview/Accounts Created**
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

**Linux - Cloud Security Monitoring and Analytics/Linux - Security Monitoring - Overview/Accounts Deleted**
```
_sourceCategory={{Logsdatasource}}  (("userdel" and "delete user") or "account deleted")
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S+)\s+\w*" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<process>\w*)(?:\[\d+\]:|:)\s*(?<msg>.+)$" nodrop
| dest_host as dest_ip
| parse field=msg "delete user '*'" as dest_user nodrop
| parse "account=*, group=*, gid=" as dest_user, dest_group nodrop
| parse "account=*, uid=" as dest_user nodrop 
```

**Linux - Cloud Security Monitoring and Analytics/Linux - Security Monitoring - Overview/Failed Logins**
```
_sourceCategory={{Logsdatasource}}  ("authentication failure" or "FAILED SU")
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S*)\s+" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<message>[^;]+)" nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
| parse "ruser= rhost=* user=*" as src_host, dest_user nodrop
| parse " user=*\"" as dest_user nodrop
| parse "Authentication failure for * from *" as dest_user, src_host nodrop
| parse "FAILED SU (to *) * on" as dest_user, src_user nodrop
| parse regex "FAILED LOGIN (?:SESSION|\d+) FROM (?:\S+) FOR (?<dest_user>\S+)," nodrop
```

**Linux - Cloud Security Monitoring and Analytics/Linux - Security Monitoring - Overview/Root Login Failures**
```
_sourceCategory={{Logsdatasource}}  ("authentication failure" or "FAILED SU")
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<_sourceHost>\S*)\s+" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<message>[^;]+)" nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
| parse "ruser= rhost=* user=*" as src_host, dest_user nodrop
| parse " user=*\"" as dest_user nodrop
| parse "Authentication failure for * from *" as dest_user, src_host nodrop
| parse "FAILED SU (to *) * on" as dest_user, src_user nodrop
| parse regex "FAILED LOGIN (?:SESSION|\d+) FROM (?:\S+) FOR (?<dest_user>\S+)," nodrop
```

**Linux - Cloud Security Monitoring and Analytics/Linux - Security Monitoring - Overview/Root Login Success**
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

**Linux - Cloud Security Monitoring and Analytics/Linux - Security Monitoring - Overview/Successful Logins**
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

**Linux - Cloud Security Monitoring and Analytics/Linux - Security Monitoring - Overview/sudo Attempts**
```
_sourceCategory={{Logsdatasource}}  sudo
| extract "(?<process>\w*):\s+(?<src_user>[^ ]+?)\s+:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
```

**Linux - Cloud Security Monitoring and Analytics/Linux - Security Monitoring - Overview/Total Services**
```
_sourceCategory={{Logsdatasource}} 
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<dest_host>\S*)\s+(?<process>\w*)(?:\[\d+\]:|:)\s*(?<message>.+)$" nodrop
| if (isEmpty(dest_host), _sourceHost, dest_host) as dest_host
| parse regex "(?<service>\w*)\[\d+\]:\s+" 
```


