# Parsers For Linux

**Linux/All Failed Authentication Attempts/All Failed Authentication Attempts**
```
_sourceCategory={{Logsdatasource}}  ("authentication failure" or "FAILED SU" or "input_userauth_request: invalid user" or "Invalid user" or "Failed publickey" or "Failed password")
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

**Linux/Event Sources/Event Count by Host and Service**
```
_sourceCategory={{Logsdatasource}} 
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w+)(?:\[\d+\]|):\s+" 
```

**Linux/Event Sources/Event Count per Host by Hour**
```
_sourceCategory={{Logsdatasource}}  
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[\d+\]|):\s+" 
```

**Linux/Event Sources/Reporting Hosts by Hour**
```
_sourceCategory={{Logsdatasource}}  
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[\d+\]|):\s+" 
```

**Linux/Event Sources/Total Event Distribution**
```
_sourceCategory={{Logsdatasource}}  
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[\d+\]|):\s+"
```

**Linux/Existing Users Added to Privileged Group/Existing Users Added to Privileged Group**
```
_sourceCategory={{Logsdatasource}}  "to group" or "default group changed" or "change user" 
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[|:)" nodrop 
| parse "add '*' to group '*'" as dest_user,dest_group nodrop | parse "account added to group - account=*, group=*, gid=*," as dest_user,dest_group,dest_gid nodrop 
| parse "account=*, uid=*, gid=*, old gid=*," as dest_user,dest_uid, dest_gid,src_gid nodrop 
| parse "change user '*' GID from '*' to '*'" as dest_user,src_gid, dest_gid 
```

**Linux/Failed Local Logins/Failed Local Logins**
```
_sourceCategory={{Logsdatasource}}  ("authentication failure" or "FAILED SU" or "input_userauth_request: invalid user" or "Invalid user" or "Failed publickey" or "Failed password") !"ssh" !"sshd"
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

**Linux/Failed Logins/Failed Logins**
```
_sourceCategory={{Logsdatasource}}  ("authentication failure" or "FAILED SU" or "input_userauth_request: invalid user" or "Invalid user" or "Failed publickey" or "Failed password")
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

**Linux/Failed Password Changes/Failed Password Changes**
```
_sourceCategory={{Logsdatasource}}  "Authentication failure" 
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[|:)" nodrop 
| parse "User *:" as dest_user nodrop 
| parse " user=*" as dest_user nodrop 
```

**Linux/Failed Remote Logins/Failed Remote Logins**
```
_sourceCategory={{Logsdatasource}}  ("authentication failure" or "FAILED SU" or "input_userauth_request: invalid user" or "Invalid user" or "Failed publickey" or "Failed password") ("ssh" or "sshd") 
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

**Linux/Failed SU Attempts/Failed SU Attempts**
```
_sourceCategory={{Logsdatasource}}  ("authentication failure" or "FAILED SU" or "input_userauth_request: invalid user" or "Invalid user" or "Failed publickey" or "Failed password") ("su:" or "su[")  
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

**Linux/Group Removal/Group Removal**
```
_sourceCategory={{Logsdatasource}}  "groupdel" or "removed group" or "group deleted" 
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[|:)" nodrop 
| parse "delete user '*'" as dest_user nodrop 
| parse regex "removed group \'(?<dest_group>[^ ]*)\' owned by \'(?<dest_user>[^ ]*)\'" nodrop 
| parse regex "group '(?<dest_group>[^ ]*)' removed$" nodrop 
| parse "group=*, gid=*," as dest_group,dest_gid nodrop 
```

**Linux/Login Status/Failed Logins per Host by Hour**
```
_sourceCategory={{Logsdatasource}}  ("authentication failure" or "FAILED SU" or "input_userauth_request: invalid user" or "Invalid user" or "Failed publickey" or "Failed password")
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

**Linux/Login Status/Logins by Hour**
```
_sourceCategory={{Logsdatasource}}  ("sshd:" or "sshd[" or "pam:" ) (("Accepted" and "pam") or "session" or ("to" and "on") or ("authentication failure" or "FAILED SU" or "input_userauth_request: invalid user" or "Invalid user" or "Failed publickey" or "Failed password")) !"closed"
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

**Linux/Login Status/Top 30 Failed Logins**
```
_sourceCategory={{Logsdatasource}}  ("authentication failure" or "FAILED SU" or "input_userauth_request: invalid user" or "Invalid user" or "Failed publickey" or "Failed password")
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

**Linux/Login Status/Top 30 Failed Remote Logins**
```
_sourceCategory={{Logsdatasource}}  ("authentication failure" or "FAILED SU" or "input_userauth_request: invalid user" or "Invalid user" or "Failed publickey" or "Failed password") ("ssh" or "sshd") 
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

**Linux/Login Status/Top 30 Successful Remote Logins**
```
_sourceCategory={{Logsdatasource}}  ("sshd:" or "sshd[" or "pam:") (("Accepted" and "pam") or "session" or ("to" and "on")) !"closed"
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*):\s+(?<message>.*)$" nodrop
| parse regex  "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\S*)\[\d+\]:\s+(?<message>.*)$" nodrop
| parse "session * for user * by *(uid=*)" as (action,dest_user,src_user,src_user_id) nodrop
| parse regex "session (?<action>\w*) for user (?<dest_user>\S*)" nodrop
```

**Linux/Login Status/Top 30 Successful User Logins**
```
_sourceCategory={{Logsdatasource}}  ("su:" or "sudo:" or "sshd:" or "sshd[" or "pam:") (("Accepted" and "pam") or "session" or ("to" and "on")) !"closed"
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*):\s+(?<message>.*)$" nodrop
| parse regex  "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\S*)\[\d+\]:\s+(?<message>.*)$" nodrop
| parse "session * for user * by *(uid=*)" as (action,dest_user,src_user,src_user_id) nodrop
| parse regex "session (?<action>\w*) for user (?<dest_user>\S*)" nodrop
| parse "Accepted keyboard-interactive/pam for * from * port * *" as (dest_user,src_hostname,src_port,protocol)
```

**Linux/Logins by Hour/Logins by Hour**
```
_sourceCategory={{Logsdatasource}}  ("sshd:" or "sshd[" or "pam:" ) (("Accepted" and "pam") or "session" or ("to" and "on") or ("authentication failure" or "FAILED SU") ) !"closed" 
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*):\s+(?<message>.*)$" nodrop 
| parse regex  "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\S*)\[\d+\]:\s+(?<message>.*)$" nodrop 
```

**Linux/New Group Creation/New Group Creation**
```
_sourceCategory={{Logsdatasource}}  "new group" 
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[|:)" nodrop 
| parse "name=*, GID=*" as dest_group,dest_gid nodrop 
| parse "group=*, gid=*," as dest_group,dest_gid nodrop
```

**Linux/New User Added to Privileged Group/New User Added to Privileged Group**
```
_sourceCategory={{Logsdatasource}}  "useradd" and (("new user") or ("new account")) 
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[|:)" nodrop 
| parse "name=*, UID=*, GID=*, home=*, shell=*" as dest_user,dest_uid,dest_gid,home_dir,shell nodrop 
| parse "account=*, uid=*, gid=*, home=*, shell=*," as dest_user,dest_uid,dest_gid,home_dir,shell nodrop
```

**Linux/New User Creation/New User Creation**
```
_sourceCategory={{Logsdatasource}}  "useradd" and (("new user") or ("new account")) 
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[|:)" nodrop 
| parse "name=*, UID=*, GID=*, home=*, shell=*" as dest_user,dest_uid,dest_gid,home_dir,shell nodrop 
| parse "account=*, uid=*, gid=*, home=*, shell=*," as dest_user,dest_uid,dest_gid,home_dir,shell nodrop
```

**Linux/Overview/Logins by Outcome**
```
_sourceCategory={{Logsdatasource}}  ("sshd:" or "sshd[" or "pam:" ) (("Accepted" and "pam") or "session" or ("to" and "on") or ("authentication failure" or "FAILED SU" or "input_userauth_request: invalid user" or "Invalid user" or "Failed publickey" or "Failed password")) !"closed"
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

**Linux/Overview/Reporting Hosts**
```
_sourceCategory={{Logsdatasource}}  
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[\d+\]|):\s+"
```

**Linux/Overview/Sudo Attempts**
```
_sourceCategory={{Logsdatasource}}  "sudo" 
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S*)\s" nodrop
| _sourceHost as dest_host
| parse regex "(?<process>\w*):\s+(?<src_user>[^ ]+?)\s+:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
| parse regex "COMMAND=(?<command>[^$]*)$" nodrop
| parse regex "\s+(?<process>\w*): pam_unix\(sudo:auth\): conversation failed" nodrop
| parse "pam_unix(*:auth): authentication failure;" as process nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
```

**Linux/Overview/Total Event Distribution**
```
_sourceCategory={{Logsdatasource}}  
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S*)\s(?<process_name>\w*)(?:\[\d+\]|):\s+"
```

**Linux/Overview/User Assignments**
```
_sourceCategory={{Logsdatasource}}  ("to group" or "default group changed" or "change user") or ("useradd" and (("new user") or ("new account")))
| parse "add '*' to group '*'" as dest_user,dest_group nodrop
| parse "account added to group - account=*, group=*, gid=*," as dest_user,dest_group,dest_gid nodrop
| parse "account=*, uid=*, gid=*, old gid=*," as dest_user,dest_uid, dest_gid,src_gid nodrop
| parse "change user '*' GID from '*' to '*'" as dest_user,src_gid, dest_gid nodrop
| parse "name=*, UID=*, GID=*, home=*, shell=*" as dest_user,dest_uid,dest_gid,home_dir,shell nodrop
| parse "account=*, uid=*, gid=*, home=*, shell=*," as dest_user,dest_uid,dest_gid,home_dir,shell nodrop
```

**Linux/Package Operations/Package Operations**
```
_sourceCategory={{Logsdatasource}}  ("installed" or "erased" or "remove" or "<install>" or "<uninstall>") NOT "MTA"
| parse regex "\s+\d+:\d+:\d+\s+status\s+(?<action>installed)\s+(?<pkg_name>\S*)\s+" nodrop
| parse regex "\s+\d+:\d+:\d+\s+(?<action>Installed)\:\s+(?:\d+\:)?(?<pkg_name>\S*)" nodrop
| parse regex "\s+\d+:\d+:\d+\s+(?<action>remove)\s+(?<pkg_name>[^ ]*)\s" nodrop
| parse regex "\s+\d+:\d+:\d+\s+(?<action>Erased)\:\s+(?:\d+\:)?(?<pkg_name>\S*)" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<action>\w*):\s(?<pkg_name>[^ ]*)\s" nodrop
| parse regex "<(?<action>[a-zA-Z]*)>\s+[^\(\)]*\(\d+\)(?<pkg_name>[^\(]*)\(" nodrop
```

**Linux/Remote Logins/Remote Logins**
```
_sourceCategory={{Logsdatasource}}  ("sshd:" or "sshd[" or "pam:") (("Accepted" and "pam") or "session" or ("to" and "on")) !"closed" 
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*):\s+(?<message>.*)$" nodrop 
| parse regex  "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\S*)\[\d+\]:\s+(?<message>.*)$" nodrop 
| parse "session * for user * by *(uid=*)" as (action,dest_user,src_user,src_user_id) nodrop 
| parse regex "session (?<action>\w*) for user (?<dest_user>\S*)" nodrop 
```

**Linux/Root Activity/Root Activity**
```
_sourceCategory={{Logsdatasource}}  ("sudo" or "root" or "su") 
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s" nodrop | extract "sudo:\s+(?<src_user>[^ ]+?)\s:.+?USER=(?<dest_user>[^ ]+?)\s+"  nodrop 
| parse regex "COMMAND=(?<command>[^$]*)$" nodrop 
| parse " user * " as dest_user nodrop 
| parse " user *" as dest_user nodrop 
```

**Linux/Root Login/Root Login**
```
_sourceCategory={{Logsdatasource}}  ("su:" or "sudo:" or "sshd:" or "sshd[" or "pam:") (("Accepted" and "pam") or "session" or ("to" and "on")) !"closed" 
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*):\s+(?<message>.*)$" nodrop 
| parse regex  "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\S*)\[\d+\]:\s+(?<message>.*)$" nodrop 
| parse "session * for user * by *(uid=*)" as (action,dest_user,src_user,src_user_id) nodrop 
| parse regex "session (?<action>\w*) for user (?<dest_user>\S*)" nodrop 
| parse "Accepted keyboard-interactive/pam for * from * port * *" as (dest_user,src_hostname,src_port,protocol) 
```

**Linux/Security Status/Existing User Assignments**
```
_sourceCategory={{Logsdatasource}}  "to group" or "default group changed" or "change user"
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[|:)" nodrop
| parse "add '*' to group '*'" as dest_user,dest_group nodrop
| parse "account added to group - account=*, group=*, gid=*," as dest_user,dest_group,dest_gid nodrop
| parse "account=*, uid=*, gid=*, old gid=*," as dest_user,dest_uid, dest_gid,src_gid nodrop
| parse "change user '*' GID from '*' to '*'" as dest_user,src_gid, dest_gid
```

**Linux/Security Status/Failed SU Attempts**
```
_sourceCategory={{Logsdatasource}} ("authentication failure" or "FAILED SU" or "input_userauth_request: invalid user" or "Invalid user" or "Failed publickey" or "Failed password") ("su:" or "su[")  
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

**Linux/Security Status/New User Assignments**
```
_sourceCategory={{Logsdatasource}}  "useradd" and (("new user") or ("new account"))
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[|:)" nodrop
| parse "name=*, UID=*, GID=*, home=*, shell=*" as dest_user,dest_uid,dest_gid,home_dir,shell nodrop
| parse "account=*, uid=*, gid=*, home=*, shell=*," as dest_user,dest_uid,dest_gid,home_dir,shell nodrop 
```

**Linux/Security Status/Package Operations**
```
_sourceCategory={{Logsdatasource}}  ("installed" or "erased" or "remove" or "<install>" or "<uninstall>") NOT "MTA"
| parse regex "\s+\d+:\d+:\d+\s+status\s+(?<action>installed)\s+(?<pkg_name>\S*)\s+" nodrop
| parse regex "\s+\d+:\d+:\d+\s+(?<action>remove)\s+(?<pkg_name>[^ ]*)\s" nodrop
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s+(?<action>\w*):\s(?<pkg_name>[^ ]*)\s" nodrop
| parse regex "<(?<action>[a-zA-Z]*)>\s+[^\(\)]*\(\d+\)(?<pkg_name>[^\(]*)\(" nodrop
```

**Linux/Security Status/Sudo Attempts**
```
_sourceCategory={{Logsdatasource}}  "sudo" 
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S*)\s" nodrop
| _sourceHost as dest_host
| parse regex "(?<process>\w*):\s+(?<src_user>[^ ]+?)\s+:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
| parse regex "COMMAND=(?<command>[^$]*)$" nodrop
| parse regex "\s+(?<process>\w*): pam_unix\(sudo:auth\): conversation failed" nodrop
| parse "pam_unix(*:auth): authentication failure;" as process nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
```

**Linux/Security Status/System Starts**
```
_sourceCategory={{Logsdatasource}}  "Initializing cgroup subsys cpuset"
| parse regex "^(?<StartTime>\S*\s+\d+\s+\d+:\d+:\d+)\s(?<dest_hostname>\S*)\s(?<process_name>\w*)(?:\[\d+\]|):\s+" nodrop
```

**Linux/Service Shutdown or Exiting/Service Shutdown or Exiting**
```
_sourceCategory={{Logsdatasource}}  ("exiting" or "exited" or "terminating" or "terminated" or "shutting")  
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[\d+\]|):\s+" nodrop
```

**Linux/Successful Local Logins/Successful Local Logins**
```
_sourceCategory={{Logsdatasource}}  ("su:" or "sudo:" or "pam:" or "systemd-logind") (("Accepted" and "pam") or "session" or ("to" and "on")) !"closed" !"sshd" 
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*):\s+" nodrop 
| parse regex  "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\S*)\[\d+\]:\s+" nodrop | parse "session * for user * by *(uid=*)" as (action,dest_user,src_user,src_user_id) nodrop 
| parse regex "session (?<action>\w*) for user (?<dest_user>\S*)" nodrop 
| parse "New session * of user *." as sessionNo,dest_user nodrop 
```

**Linux/Successful Password Changes/Successful Password Changes**
```
_sourceCategory={{Logsdatasource}}  password changed 
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[|:)" nodrop 
| parse "account=*, uid=*," as dest_user,dest_uid nodrop 
| parse "password changed for *" as dest_user nodrop
```

**Linux/Successful Remote Login Events/Successful Remote Login Events**
```
_sourceCategory={{Logsdatasource}}  ("sshd:" or "sshd[") "Accepted" ("pam" or "password") !"closed" 
 | parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*):\s+" nodrop 
 | parse regex  "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\S*)\[\d+\]:\s+" nodrop 
 | parse "ruser=* rhost=* user=*" as src_user,src_hostname, dest_user nodrop 
 | parse "Accepted keyboard-interactive/pam for * from * port * *" as (dest_user,src_hostname,src_port,protocol) 
 | parse "Accepted password for * from * port * *" as dest_user,src_hostname,src_port,protocol nodrop | where dest_user!=""
```

**Linux/Sudo Attempt/Sudo Attempt**
```
_sourceCategory={{Logsdatasource}}  "sudo" 
| parse regex "\S*\s+\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S*)\s" nodrop
| _sourceHost as dest_host
| parse regex "(?<process>\w*):\s+(?<src_user>[^ ]+?)\s+:.+?USER=(?<dest_user>[^ ]+?)\s+" nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
| parse regex "COMMAND=(?<command>[^$]*)$" nodrop
| parse regex "\s+(?<process>\w*): pam_unix\(sudo:auth\): conversation failed" nodrop
| parse "pam_unix(*:auth): authentication failure;" as process nodrop
| parse "ruser=* rhost=* user=*" as src_user, src_host, dest_user nodrop
```

**Linux/System Shutdown/System Shutdown**
```
_sourceCategory={{Logsdatasource}}   "main process" "killed by TERM" "init" | parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[\d+\]|):\s+"
```

**Linux/System Start/System Start**
```
_sourceCategory={{Logsdatasource}}  "Initializing cgroup subsys cpuset" 
| parse regex "^(?<StartTime>\S*\s+\d+\s+\d+:\d+:\d+)\s(?<dest_hostname>\S*)\s(?<process_name>\w*)(?:\[\d+\]|):\s+" nodrop 
```

**Linux/User Removal From Group/User Removal From Group**
```
_sourceCategory={{Logsdatasource}}  "from group" or "default group changed" or "change user" 
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[|:)" nodrop 
| parse "delete '*' from group '*'" as dest_user,dest_group nodrop 
| parse "account removed from group - account=*, group=*, gid=*," as dest_user,dest_group,dest_gid nodrop 
| parse "account=*, uid=*, gid=*, old gid=*," as dest_user,dest_uid, dest_gid,src_gid nodrop 
| parse "change user '*' GID from '*' to '*'" as dest_user,src_gid, dest_gid nodrop
```

**Linux/User Removal/User Removal**
```
_sourceCategory={{Logsdatasource}}  ("userdel" and "delete user") or "account deleted" 
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s(?<process_name>\w*)(?:\[|:)" nodrop 
| parse "delete user '*'" as dest_user nodrop 
| parse "account=*, group=*, gid=*," as dest_user,dest_group,dest_gid nodrop 
| parse "account=*, uid=*," as dest_user,dest_uid nodrop
```

**Linux/Users Logging in From Multiple Remote Hosts/Users Logging in From Multiple Remote Hosts**
```
_sourceCategory={{Logsdatasource}}  "Accepted" AND ("sshd" OR "pam_unix") 
| parse regex "\d+\s+\d+:\d+:\d+\s(?<dest_hostname>\S+)\s" nodrop 
| extract "Accepted [^ ]+ for (?<user>.+?) from (?<src_host>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop 
```

**Linux/Users with Multiple Failed Logins/Users with Multiple Failed Logins**
```
_sourceCategory={{Logsdatasource}}  ("authentication failure" or "FAILED SU" or "input_userauth_request: invalid user" or "Invalid user" or "Failed publickey" or "Failed password") !"passwd" 
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


