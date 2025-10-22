# Parsers For Apache

**Apache/All HTTP Response codes with their count/Apache - All HTTP Response codes with their count**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm=* HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Client Errors (4xx response codes) per day/Apache - Client Errors (4xx response codes) per day**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm=* HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Critical log messages/Apache - Critical log messages**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm=* AND ("emerg" OR "alert" OR "crit") 
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "(?:\d{4}\]|\[client .+?\]|\[[a-z0-9:-]+?\]) (?<reason>[a-zA-Z].+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?:.+?) (?<file>/[a-zA-Z0-9\._].+?)(?:$|, |: | on line| (?i)http/1.(?:0|1))"  nodrop 
| parse regex field=mesg " (?<file>[a-zA-Z]:\\.+?)(?:$|, |: | on line)" nodrop 
| parse regex field=mesg "\[client (?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop 
| parse regex field=mesg "\[client .+?:(?<src_port>[0-9][0-9]+)\] " nodrop 
| parse regex field=mesg "referer: (?<referrer>.+)$"  nodrop 
| parse regex field=mesg " \[(?<log_level>[a-z]+)\] " nodrop 
| parse regex field=mesg "(?<reason>Forbidden): (?<file>.+?) doesn't point to a file or directory" nodrop 
| parse regex field=mesg "(?<reason>Handler for .+? returned invalid result code [0-9]+)" nodrop 
| parse regex field=mesg "(?<reason>Invalid [a-zA-Z]+ in request) (?<request>.+?)(?:$| - .+$|, referer.+$)" nodrop 
| parse regex field=mesg "Invalid [a-zA-Z]+ in request .+? (?<url>/.+?)(?:$|, |: | (?i)http/1.(?:0|1))" nodrop 
| parse regex field=mesg "(?<reason>Script timed out before returning headers): (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>Symbolic link not allowed.*?): (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>configuration error):  couldn't .+?: (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>dir_walk error), .+? filename (?:path|)(?<file>.+?) for uri (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>handler .+? not found) for: (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>need Auth.+?): (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "Cannot map (?<request>.+?) to file" nodrop 
| parse regex field=mesg "(?:\d{4}\]|\[client .+?\]|\[[a-z0-9:-]+?\]) (?<file>(?:/[a-zA-Z0-9\._].+?|[a-zA-Z]:\\.+?)) pcfg_openfile: (?<reason>unable to check htaccess file), ensure it is readable" nodrop 
| parse regex field=mesg "access to (?<url>.+?) (?:denied|failed)" nodrop 
| parse regex field=mesg "access to (?<file>.+?) (?:denied|failed)" nodrop 
| parse regex field=mesg "access to (?<url>.+?) failed; stat of '(?<file>.+?)' failed." nodrop 
| parse regex field=mesg " \[(?<module>[a-z-_]+):(?<log_level>[a-z]+)\] " nodrop 
| parse regex field=mesg " \[pid (?<process_id>[0-9]+):tid (?<thread_id>[0-9]+)\]" nodrop 
| parse regex field=mesg "(?<reason>Buggy authn provider failed to set user) for (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "Evaluation of .*?expression from (?<file>.+?):[0-9]+ " nodrop 
| parse regex field=mesg "(?<reason>Invalid status line from script) '(?<file>.+?)':" nodrop 
| parse regex field=mesg "(?<reason>client submitted cookie '.*?' more than once): (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>malformed header from script) '(?<file>.+?)':" nodrop 

// 2.2 specific
| parse regex field=mesg "(?<reason>client used wrong authentication scheme): (?<url>.+?)(?:$|, referer.+$)" nodrop
| parse regex field=mesg "(?<reason>File does not exist): (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>Invalid [a-zA-Z]+ in request) (?<request>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>Premature end of script headers): (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>client sent HTTP/1.1 request without hostname) \(.+?\): (?<url>.+?)(?:$|, referer.+$)" nodrop 
```

**Apache/Error Log Analysis/Client Locations with Critical Errors**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} ("emerg" OR "alert" OR "crit") 
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg " \[(?<log_level>[a-z]+)\] " nodrop 
| parse regex field=mesg " \[(?<module>[a-z-_]+):(?<log_level>[a-z]+)\] " nodrop 
| parse regex field=mesg "\[client (?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
```

**Apache/Error Log Analysis/Critical Errors**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} AND ("emerg" OR "alert" OR "crit") 
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "(?:\d{4}\]|\[client .+?\]|\[[a-z0-9:-]+?\]) (?<reason>[a-zA-Z].+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?:.+?) (?<file>/[a-zA-Z0-9\._].+?)(?:$|, |: | on line| (?i)http/1.(?:0|1))"  nodrop 
| parse regex field=mesg " (?<file>[a-zA-Z]:\\.+?)(?:$|, |: | on line)" nodrop 
| parse regex field=mesg "\[client (?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop 
| parse regex field=mesg "\[client .+?:(?<src_port>[0-9][0-9]+)\] " nodrop 
| parse regex field=mesg "referer: (?<referrer>.+)$"  nodrop 
| parse regex field=mesg " \[(?<log_level>[a-z]+)\] " nodrop 
| parse regex field=mesg "(?<reason>Forbidden): (?<file>.+?) doesn't point to a file or directory" nodrop 
| parse regex field=mesg "(?<reason>Handler for .+? returned invalid result code [0-9]+)" nodrop 
| parse regex field=mesg "(?<reason>Invalid [a-zA-Z]+ in request) (?<request>.+?)(?:$| - .+$|, referer.+$)" nodrop 
| parse regex field=mesg "Invalid [a-zA-Z]+ in request .+? (?<url>/.+?)(?:$|, |: | (?i)http/1.(?:0|1))" nodrop 
| parse regex field=mesg "(?<reason>Script timed out before returning headers): (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>Symbolic link not allowed.*?): (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>configuration error):  couldn't .+?: (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>dir_walk error), .+? filename (?:path|)(?<file>.+?) for uri (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>handler .+? not found) for: (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>need Auth.+?): (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "Cannot map (?<request>.+?) to file" nodrop 
| parse regex field=mesg "(?:\d{4}\]|\[client .+?\]|\[[a-z0-9:-]+?\]) (?<file>(?:/[a-zA-Z0-9\._].+?|[a-zA-Z]:\\.+?)) pcfg_openfile: (?<reason>unable to check htaccess file), ensure it is readable" nodrop 
| parse regex field=mesg "access to (?<url>.+?) (?:denied|failed)" nodrop 
| parse regex field=mesg "access to (?<file>.+?) (?:denied|failed)" nodrop 
| parse regex field=mesg "access to (?<url>.+?) failed; stat of '(?<file>.+?)' failed." nodrop 
| parse regex field=mesg " \[(?<module>[a-z-_]+):(?<log_level>[a-z]+)\] " nodrop 
| parse regex field=mesg " \[pid (?<process_id>[0-9]+)\] (?<reason>[a-zA-Z].*)" nodrop 
| parse regex field=mesg " \[pid (?<process_id>[0-9]+):tid (?<thread_id>[0-9]+)\]" nodrop 
| parse regex field=mesg "(?<reason>Buggy authn provider failed to set user) for (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "Evaluation of .*?expression from (?<file>.+?):[0-9]+ " nodrop 
| parse regex field=mesg "(?<reason>Invalid status line from script) '(?<file>.+?)':" nodrop 
| parse regex field=mesg "(?<reason>client submitted cookie '.*?' more than once): (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>malformed header from script) '(?<file>.+?)':" nodrop 
| parse regex field=mesg "\[client (?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<reason>[a-zA-Z].+?)" nodrop 
| parse regex field=mesg " \[(?<module>[a-z-_]+):(?<log_level>[a-z]+)\] (?<reason>[a-zA-Z].*)" nodrop 
| parse regex field=mesg " \[pid (?<process_id>[0-9]+):tid (?<thread_id>[0-9]+)\] (?<reason>[a-zA-Z].*)" nodrop 

// 2.2 specific
| parse regex field=mesg "(?<reason>client used wrong authentication scheme): (?<url>.+?)(?:$|, referer.+$)" nodrop
| parse regex field=mesg "(?<reason>File does not exist): (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>Invalid [a-zA-Z]+ in request) (?<request>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>Premature end of script headers): (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>client sent HTTP/1.1 request without hostname) \(.+?\): (?<url>.+?)(?:$|, referer.+$)" nodrop 
```

**Apache/Error Log Analysis/Error Log Levels**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}}
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
// Error Logs
| parse regex field=mesg "^\[[^]]*]\s\[(?<log_level>[a-z]+)\]" nodrop
| parse regex field=mesg "\[[^]]*]\s\[(?<module>[a-z-_]+):(?<log_level>[a-z]+)\] " nodrop
```

**Apache/Error Log Analysis/Log Level - One Day Time Comparison**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}}
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg " \[(?<log_level>[a-z]+)\] " nodrop 
| parse regex field=mesg " \[(?<module>[a-z-_]+):(?<log_level>[a-z]+)\] " nodrop 
```

**Apache/Error Log Analysis/Log Reduce**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}}
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg " \[(?<log_level>[a-z]+)\] " nodrop 
| parse regex field=mesg " \[(?<module>[a-z-_]+):(?<log_level>[a-z]+)\] " nodrop 
| parse regex field=mesg " \[(?<module>[a-z-_]+):(?<log_level>[a-z]+)\] (?<reason>[a-zA-Z].*)" nodrop 
```

**Apache/Error Log Analysis/Messages by Log Level - Over Time**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}}
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
// Error Logs
| parse regex field=mesg "^\[[^]]*]\s\[(?<log_level>[a-z]+)\]" nodrop
| parse regex field=mesg "\[[^]]*]\s\[(?<module>[a-z-_]+):(?<log_level>[a-z]+)\] " nodrop
```

**Apache/Error Log Analysis/Number of Requests by Client - One Day Time Comparison**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}}
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg " \[(?<log_level>[a-z]+)\] " nodrop 
| parse regex field=mesg " \[(?<module>[a-z-_]+):(?<log_level>[a-z]+)\] " nodrop 
| parse regex field=mesg "\[client (?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
```

**Apache/Error Log Analysis/Top 10 Messages**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}}
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "(?:\d{4}\]|\[client .+?\]|\[[a-z0-9:-]+?\]) (?<reason>[a-zA-Z].+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?:.+?) (?<file>/[a-zA-Z0-9\._].+?)(?:$|, |: | on line| (?i)http/1.(?:0|1))"  nodrop 
| parse regex field=mesg " (?<file>[a-zA-Z]:\\.+?)(?:$|, |: | on line)" nodrop 
| parse regex field=mesg "\[client (?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop 
| parse regex field=mesg "\[client .+?:(?<src_port>[0-9][0-9]+)\] " nodrop 
| parse regex field=mesg "referer: (?<referrer>.+)$"  nodrop 
| parse regex field=mesg " \[(?<log_level>[a-z]+)\] " nodrop 
| parse regex field=mesg "(?<reason>Forbidden): (?<file>.+?) doesn't point to a file or directory" nodrop 
| parse regex field=mesg "(?<reason>Handler for .+? returned invalid result code [0-9]+)" nodrop 
| parse regex field=mesg "(?<reason>Invalid [a-zA-Z]+ in request) (?<request>.+?)(?:$| - .+$|, referer.+$)" nodrop 
| parse regex field=mesg "Invalid [a-zA-Z]+ in request .+? (?<url>/.+?)(?:$|, |: | (?i)http/1.(?:0|1))" nodrop 
| parse regex field=mesg "(?<reason>Script timed out before returning headers): (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>Symbolic link not allowed.*?): (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>configuration error):  couldn't .+?: (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>dir_walk error), .+? filename (?:path|)(?<file>.+?) for uri (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>handler .+? not found) for: (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>need Auth.+?): (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "Cannot map (?<request>.+?) to file" nodrop 
| parse regex field=mesg "(?:\d{4}\]|\[client .+?\]|\[[a-z0-9:-]+?\]) (?<file>(?:/[a-zA-Z0-9\._].+?|[a-zA-Z]:\\.+?)) pcfg_openfile: (?<reason>unable to check htaccess file), ensure it is readable" nodrop 
| parse regex field=mesg "access to (?<url>.+?) (?:denied|failed)" nodrop 
| parse regex field=mesg "access to (?<file>.+?) (?:denied|failed)" nodrop 
| parse regex field=mesg "access to (?<url>.+?) failed; stat of '(?<file>.+?)' failed." nodrop 
| parse regex field=mesg " \[(?<module>[a-z-_]+):(?<log_level>[a-z]+)\] " nodrop 
| parse regex field=mesg " \[pid (?<process_id>[0-9]+)\] (?<reason>[a-zA-Z].*)" nodrop 
| parse regex field=mesg " \[pid (?<process_id>[0-9]+):tid (?<thread_id>[0-9]+)\]" nodrop 
| parse regex field=mesg "(?<reason>Buggy authn provider failed to set user) for (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "Evaluation of .*?expression from (?<file>.+?):[0-9]+ " nodrop 
| parse regex field=mesg "(?<reason>Invalid status line from script) '(?<file>.+?)':" nodrop 
| parse regex field=mesg "(?<reason>client submitted cookie '.*?' more than once): (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>malformed header from script) '(?<file>.+?)':" nodrop 
| parse regex field=mesg "\[client (?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}) (?<reason>[a-zA-Z].+?)" nodrop 
| parse regex field=mesg " \[(?<module>[a-z-_]+):(?<log_level>[a-z]+)\] (?<reason>[a-zA-Z].*)" nodrop 
| parse regex field=mesg " \[pid (?<process_id>[0-9]+):tid (?<thread_id>[0-9]+)\] (?<reason>[a-zA-Z].*)" nodrop 

// 2.2 specific
| parse regex field=mesg "(?<reason>client used wrong authentication scheme): (?<url>.+?)(?:$|, referer.+$)" nodrop
| parse regex field=mesg "(?<reason>File does not exist): (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>Invalid [a-zA-Z]+ in request) (?<request>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>Premature end of script headers): (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>client sent HTTP/1.1 request without hostname) \(.+?\): (?<url>.+?)(?:$|, referer.+$)" nodrop 
```

**Apache/Error Log Analysis/Top 5 Clients Causing Errors**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}}
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg " \[(?<log_level>[a-z]+)\] " nodrop 
| parse regex field=mesg " \[(?<module>[a-z-_]+):(?<log_level>[a-z]+)\] " nodrop 
| parse regex field=mesg "\[client (?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "\[client (?<src_ip>[a-f0-1:]*)\] " nodrop 
```

**Apache/HTTP status code summary over time/Apache - HTTP status code summary over time**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm=* HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Log Level counts/Apache - Log Level counts**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm=*
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "(?:\d{4}\]|\[client .+?\]|\[[a-z0-9:-]+?\]) (?<reason>[a-zA-Z].+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?:.+?) (?<file>/[a-zA-Z0-9\._].+?)(?:$|, |: | on line| (?i)http/1.(?:0|1))"  nodrop 
| parse regex field=mesg " (?<file>[a-zA-Z]:\\.+?)(?:$|, |: | on line)" nodrop 
| parse regex field=mesg "\[client (?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop 
| parse regex field=mesg "\[client .+?:(?<src_port>[0-9][0-9]+)\] " nodrop 
| parse regex field=mesg "referer: (?<referrer>.+)$"  nodrop 
| parse regex field=mesg " \[(?<log_level>[a-z]+)\] " nodrop 
| parse regex field=mesg "(?<reason>Forbidden): (?<file>.+?) doesn't point to a file or directory" nodrop 
| parse regex field=mesg "(?<reason>Handler for .+? returned invalid result code [0-9]+)" nodrop 
| parse regex field=mesg "(?<reason>Invalid [a-zA-Z]+ in request) (?<request>.+?)(?:$| - .+$|, referer.+$)" nodrop 
| parse regex field=mesg "Invalid [a-zA-Z]+ in request .+? (?<url>/.+?)(?:$|, |: | (?i)http/1.(?:0|1))" nodrop 
| parse regex field=mesg "(?<reason>Script timed out before returning headers): (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>Symbolic link not allowed.*?): (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>configuration error):  couldn't .+?: (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>dir_walk error), .+? filename (?:path|)(?<file>.+?) for uri (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>handler .+? not found) for: (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>need Auth.+?): (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "Cannot map (?<request>.+?) to file" nodrop 
| parse regex field=mesg "(?:\d{4}\]|\[client .+?\]|\[[a-z0-9:-]+?\]) (?<file>(?:/[a-zA-Z0-9\._].+?|[a-zA-Z]:\\.+?)) pcfg_openfile: (?<reason>unable to check htaccess file), ensure it is readable" nodrop 
| parse regex field=mesg "access to (?<url>.+?) (?:denied|failed)" nodrop 
| parse regex field=mesg "access to (?<file>.+?) (?:denied|failed)" nodrop 
| parse regex field=mesg "access to (?<url>.+?) failed; stat of '(?<file>.+?)' failed." nodrop 
| parse regex field=mesg " \[(?<module>[a-z-_]+):(?<log_level>[a-z]+)\] " nodrop 
| parse regex field=mesg " \[pid (?<process_id>[0-9]+):tid (?<thread_id>[0-9]+)\]" nodrop 
| parse regex field=mesg "(?<reason>Buggy authn provider failed to set user) for (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "Evaluation of .*?expression from (?<file>.+?):[0-9]+ " nodrop 
| parse regex field=mesg "(?<reason>Invalid status line from script) '(?<file>.+?)':" nodrop 
| parse regex field=mesg "(?<reason>client submitted cookie '.*?' more than once): (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>malformed header from script) '(?<file>.+?)':" nodrop 

// 2.2 specific
| parse regex field=mesg "(?<reason>client used wrong authentication scheme): (?<url>.+?)(?:$|, referer.+$)" nodrop
| parse regex field=mesg "(?<reason>File does not exist): (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>Invalid [a-zA-Z]+ in request) (?<request>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>Premature end of script headers): (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>client sent HTTP/1.1 request without hostname) \(.+?\): (?<url>.+?)(?:$|, referer.+$)" nodrop 
```

**Apache/Malicious URL requests/Apache - Malicious URL requests**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm=* HTTP ("jsessionid" or "old" or "bak") 
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Outlier Analysis/Bytes Served - Outlier**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Outlier Analysis/Client Errors**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} HTTP 4*
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Outlier Analysis/Number of Visitors**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Outlier Analysis/Server Errors**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} HTTP 5*
| parse regex "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Overview/4xx Status Codes by Server**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost=* HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Overview/5xx Status Codes by Server**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost=* HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Overview/Critical Error Messages**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost=* (emerg or alert or crit) 
// Error Logs
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^\[[^]]*]\s\[(?<log_level>[a-z:]+)\]" nodrop
| parse regex field=mesg "\[[^]]*]\s\[(?<module>[a-z-_]+):(?<log_level>[a-z]+)\] " nodrop
| where log_level in ("emerg", "alert", "crit") // emerg:	System is unusable, alert:	Action must be taken immediately, crit	Critical conditions
| parse field=mesg "[error] *" as error_mesg nodrop
| parse field=mesg "[client *] *" as src_ip, error_mesg nodrop
```

**Apache/Overview/Responses Over Time**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost=* HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Overview/Top 10 URLs with 4xx Errors**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost=* HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Overview/Top 10 URLs with 5xx Errors**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost=* HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Overview/Top 5 Critical Messages**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost=* (emerg or alert or crit) 
// Error Logs
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^\[[^]]*]\s\[(?<log_level>[a-z:]+)\]" nodrop
| parse regex field=mesg "\[[^]]*]\s\[(?<module>[a-z-_]+):(?<log_level>[a-z]+)\] " nodrop
| where log_level in ("emerg", "alert", "crit") // emerg:	System is unusable, alert:	Action must be taken immediately, crit	Critical conditions
| parse field=mesg "[error] *" as error_mesg nodrop
| parse field=mesg "[client *] *" as src_ip, error_mesg
| parse regex field=mesg " \[(?<module>[a-z-_]+):(?<log_level>[a-z]+)\] (?<error_mesg>.*)" nodrop 
| parse regex field=mesg " \[pid (?<process_id>[0-9]+)\] (?<error_mesg>[a-zA-Z].*)" nodrop 
| parse regex field=mesg " \[pid (?<process_id>[0-9]+):tid (?<thread_id>[0-9]+)\] (?<error_mesg>[a-zA-Z].*)" nodrop 
```

**Apache/Overview/Visitor Locations**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost=* HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Robots/Apache - Robots**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm=* HTTP "/robots.txt" 
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Server start and stop events/Apache - Server start and stop events**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm=* ("caught SIGTERM, shutting down" or "- resuming normal operations") 
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "(?:\d{4}\]|\[client .+?\]|\[[a-z0-9:-]+?\]) (?<reason>[a-zA-Z].+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?:.+?) (?<file>/[a-zA-Z0-9\._].+?)(?:$|, |: | on line| (?i)http/1.(?:0|1))"  nodrop 
| parse regex field=mesg " (?<file>[a-zA-Z]:\\.+?)(?:$|, |: | on line)" nodrop 
| parse regex field=mesg "\[client (?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop 
| parse regex field=mesg "\[client .+?:(?<src_port>[0-9][0-9]+)\] " nodrop 
| parse regex field=mesg "referer: (?<referrer>.+)$"  nodrop 
| parse regex field=mesg " \[(?<log_level>[a-z]+)\] " nodrop 
| parse regex field=mesg "(?<reason>Forbidden): (?<file>.+?) doesn't point to a file or directory" nodrop 
| parse regex field=mesg "(?<reason>Handler for .+? returned invalid result code [0-9]+)" nodrop 
| parse regex field=mesg "(?<reason>Invalid [a-zA-Z]+ in request) (?<request>.+?)(?:$| - .+$|, referer.+$)" nodrop 
| parse regex field=mesg "Invalid [a-zA-Z]+ in request .+? (?<url>/.+?)(?:$|, |: | (?i)http/1.(?:0|1))" nodrop 
| parse regex field=mesg "(?<reason>Script timed out before returning headers): (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>Symbolic link not allowed.*?): (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>configuration error):  couldn't .+?: (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>dir_walk error), .+? filename (?:path|)(?<file>.+?) for uri (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>handler .+? not found) for: (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>need Auth.+?): (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "Cannot map (?<request>.+?) to file" nodrop 
| parse regex field=mesg "(?:\d{4}\]|\[client .+?\]|\[[a-z0-9:-]+?\]) (?<file>(?:/[a-zA-Z0-9\._].+?|[a-zA-Z]:\\.+?)) pcfg_openfile: (?<reason>unable to check htaccess file), ensure it is readable" nodrop 
| parse regex field=mesg "access to (?<url>.+?) (?:denied|failed)" nodrop 
| parse regex field=mesg "access to (?<file>.+?) (?:denied|failed)" nodrop 
| parse regex field=mesg "access to (?<url>.+?) failed; stat of '(?<file>.+?)' failed." nodrop 
| parse regex field=mesg " \[(?<module>[a-z-_]+):(?<log_level>[a-z]+)\] " nodrop 
| parse regex field=mesg " \[pid (?<process_id>[0-9]+):tid (?<thread_id>[0-9]+)\]" nodrop 
| parse regex field=mesg "(?<reason>Buggy authn provider failed to set user) for (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "Evaluation of .*?expression from (?<file>.+?):[0-9]+ " nodrop 
| parse regex field=mesg "(?<reason>Invalid status line from script) '(?<file>.+?)':" nodrop 
| parse regex field=mesg "(?<reason>client submitted cookie '.*?' more than once): (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>malformed header from script) '(?<file>.+?)':" nodrop 

// 2.2 specific
| parse regex field=mesg "(?<reason>client used wrong authentication scheme): (?<url>.+?)(?:$|, referer.+$)" nodrop
| parse regex field=mesg "(?<reason>File does not exist): (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>Invalid [a-zA-Z]+ in request) (?<request>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>Premature end of script headers): (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>client sent HTTP/1.1 request without hostname) \(.+?\): (?<url>.+?)(?:$|, referer.+$)" nodrop 
```

**Apache/Server stops and starts over time/Apache - Server stops and starts over time**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm=* ("caught SIGTERM, shutting down" or "- resuming normal operations")
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "(?:\d{4}\]|\[client .+?\]|\[[a-z0-9:-]+?\]) (?<reason>[a-zA-Z].+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?:.+?) (?<file>/[a-zA-Z0-9\._].+?)(?:$|, |: | on line| (?i)http/1.(?:0|1))"  nodrop 
| parse regex field=mesg " (?<file>[a-zA-Z]:\\.+?)(?:$|, |: | on line)" nodrop 
| parse regex field=mesg "\[client (?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop 
| parse regex field=mesg "\[client .+?:(?<src_port>[0-9][0-9]+)\] " nodrop 
| parse regex field=mesg "referer: (?<referrer>.+)$"  nodrop 
| parse regex field=mesg " \[(?<log_level>[a-z]+)\] " nodrop 
| parse regex field=mesg "(?<reason>Forbidden): (?<file>.+?) doesn't point to a file or directory" nodrop 
| parse regex field=mesg "(?<reason>Handler for .+? returned invalid result code [0-9]+)" nodrop 
| parse regex field=mesg "(?<reason>Invalid [a-zA-Z]+ in request) (?<request>.+?)(?:$| - .+$|, referer.+$)" nodrop 
| parse regex field=mesg "Invalid [a-zA-Z]+ in request .+? (?<url>/.+?)(?:$|, |: | (?i)http/1.(?:0|1))" nodrop 
| parse regex field=mesg "(?<reason>Script timed out before returning headers): (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg"(?<reason>Symbolic link not allowed.*?): (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg"(?<reason>configuration error):  couldn't .+?: (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>dir_walk error), .+? filename (?:path|)(?<file>.+?) for uri (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>handler .+? not found) for: (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>need Auth.+?): (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "Cannot map (?<request>.+?) to file" nodrop 
| parse regex field=mesg "(?:\d{4}\]|\[client .+?\]|\[[a-z0-9:-]+?\]) (?<file>(?:/[a-zA-Z0-9\._].+?|[a-zA-Z]:\\.+?)) pcfg_openfile: (?<reason>unable to check htaccess file), ensure it is readable" nodrop 
| parse regex field=mesg "access to (?<url>.+?) (?:denied|failed)" nodrop 
| parse regex field=mesg "access to (?<file>.+?) (?:denied|failed)" nodrop 
| parse regex field=mesg "access to (?<url>.+?) failed; stat of '(?<file>.+?)' failed." nodrop 
| parse regex field=mesg " \[(?<module>[a-z-_]+):(?<log_level>[a-z]+)\] " nodrop 
| parse regex field=mesg " \[pid (?<process_id>[0-9]+):tid (?<thread_id>[0-9]+)\]" nodrop 
| parse regex field=mesg "(?<reason>Buggy authn provider failed to set user) for (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "Evaluation of .*?expression from (?<file>.+?):[0-9]+ " nodrop 
| parse regex field=mesg "(?<reason>Invalid status line from script) '(?<file>.+?)':" nodrop 
| parse regex field=mesg"(?<reason>client submitted cookie '.*?' more than once): (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>malformed header from script) '(?<file>.+?)':" nodrop 

// 2.2 specific
| parse regex field=mesg "(?<reason>client used wrong authentication scheme): (?<url>.+?)(?:$|, referer.+$)" nodrop
| parse regex field=mesg "(?<reason>File does not exist): (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>Invalid [a-zA-Z]+ in request) (?<request>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>Premature end of script headers): (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>client sent HTTP/1.1 request without hostname) \(.+?\): (?<url>.+?)(?:$|, referer.+$)" nodrop 
```

**Apache/Slowest URLs by average time/Apache - Slowest URLs by average time**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm=* HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
| parse regex field=mesg " (?:\d+)/(?<microseconds>\d+)$"
```

**Apache/Threat Analysis/Highly Malicious Threats**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
| count as threat_count by src_ip, method, status_code, size, referrer, user_agent, url
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=src_ip 
| where  type="ip_address" and !isNull(malicious_confidence) and malicious_confidence matches "high"
| json field=raw "labels[*].name" as label_name 
```

**Apache/Threat Analysis/Threat Count**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
| count as ip_count by src_ip
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=src_ip 
| json field=raw "labels[*].name" as label_name 
```

**Apache/Threat Analysis/Threat Locations**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
| count as ip_count by src_ip
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=src_ip 
| json field=raw "labels[*].name" as label_name 
```

**Apache/Threat Analysis/Threats by Actors**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
| count as ip_count by src_ip
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=src_ip 
| json field=raw "labels[*].name" as label_name 
```

**Apache/Threat Analysis/Threats by Malicious Confidence**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
| count as ip_count by src_ip
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=src_ip 
| json field=raw "labels[*].name" as label_name 
```

**Apache/Threat Analysis/Threats by Source**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
| count as ip_count by src_ip, _source
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=src_ip 
| json field=raw "labels[*].name" as label_name 
```

**Apache/Threat Analysis/Top 10 Threats**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
| count as threat_count by src_ip, method, status_code, size, referrer, user_agent, url
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=src_ip 
| where  type="ip_address" and !isNull(malicious_confidence)
| json field=raw "labels[*].name" as label_name 
```

**Apache/Threat Analysis/Top 5 Highly Malicious URLs**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Time taken to serve requests/Apache - Time taken to serve requests**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm=* HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
| parse regex field=mesg " (?<seconds>\d+)/(?<microseconds>\d+)$" 
```

**Apache/Top 404 referrers/Apache - Top 404 referrers**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm=* HTTP  404
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Top browsers/Apache - Top browsers**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm=* HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Top clients causing errors responses/Apache - Top clients causing errors responses**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm=* HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Top clients/Apache - Top clients**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm=* HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Top error reasons/Apache - Top error reasons**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm=*
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "(?:\d{4}\]|\[client .+?\]|\[[a-z0-9:-]+?\]) (?<reason>[a-zA-Z].+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?:.+?) (?<file>/[a-zA-Z0-9\._].+?)(?:$|, |: | on line| (?i)http/1.(?:0|1))"  nodrop 
| parse regex field=mesg " (?<file>[a-zA-Z]:\\.+?)(?:$|, |: | on line)" nodrop 
| parse regex field=mesg  "\[client (?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop 
| parse regex field=mesg "\[client .+?:(?<src_port>[0-9][0-9]+)\] " nodrop 
| parse regex field=mesg "referer: (?<referrer>.+)$"  nodrop 
| parse regex field=mesg " \[(?<log_level>[a-z]+)\] " nodrop 
| parse regex field=mesg "(?<reason>Forbidden): (?<file>.+?) doesn't point to a file or directory" nodrop 
| parse regex field=mesg "(?<reason>Handler for .+? returned invalid result code [0-9]+)" nodrop 
| parse regex field=mesg "(?<reason>Invalid [a-zA-Z]+ in request) (?<request>.+?)(?:$| - .+$|, referer.+$)" nodrop 
| parse regex field=mesg "Invalid [a-zA-Z]+ in request .+? (?<url>/.+?)(?:$|, |: | (?i)http/1.(?:0|1))" nodrop 
| parse regex field=mesg "(?<reason>Script timed out before returning headers): (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>Symbolic link not allowed.*?): (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>configuration error):  couldn't .+?: (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>dir_walk error), .+? filename (?:path|)(?<file>.+?) for uri (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>handler .+? not found) for: (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>need Auth.+?): (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "Cannot map (?<request>.+?) to file" nodrop 
| parse regex field=mesg "(?:\d{4}\]|\[client .+?\]|\[[a-z0-9:-]+?\]) (?<file>(?:/[a-zA-Z0-9\._].+?|[a-zA-Z]:\\.+?)) pcfg_openfile: (?<reason>unable to check htaccess file), ensure it is readable" nodrop 
| parse regex field=mesg "access to (?<url>.+?) (?:denied|failed)" nodrop 
| parse regex field=mesg "access to (?<file>.+?) (?:denied|failed)" nodrop 
| parse regex field=mesg "access to (?<url>.+?) failed; stat of '(?<file>.+?)' failed." nodrop 
| parse regex field=mesg " \[(?<module>[a-z-_]+):(?<log_level>[a-z]+)\] " nodrop 
| parse regex field=mesg " \[pid (?<process_id>[0-9]+):tid (?<thread_id>[0-9]+)\]" nodrop 
| parse regex field=mesg "(?<reason>Buggy authn provider failed to set user) for (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "Evaluation of .*?expression from (?<file>.+?):[0-9]+ " nodrop 
| parse regex field=mesg "(?<reason>Invalid status line from script) '(?<file>.+?)':" nodrop 
| parse regex field=mesg "(?<reason>client submitted cookie '.*?' more than once): (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>malformed header from script) '(?<file>.+?)':" nodrop 

// 2.2 specific
| parse regex field=mesg "(?<reason>client used wrong authentication scheme): (?<url>.+?)(?:$|, referer.+$)" nodrop
| parse regex field=mesg "(?<reason>File does not exist): (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>Invalid [a-zA-Z]+ in request) (?<request>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>Premature end of script headers): (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>client sent HTTP/1.1 request without hostname) \(.+?\): (?<url>.+?)(?:$|, referer.+$)" nodrop 
```

**Apache/Top files causing errors/Apache - Top files causing errors**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm=*
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "(?:\d{4}\]|\[client .+?\]|\[[a-z0-9:-]+?\]) (?<reason>[a-zA-Z].+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?:.+?) (?<file>/[a-zA-Z0-9\._].+?)(?:$|, |: | on line| (?i)http/1.(?:0|1))"  nodrop 
| parse regex field=mesg " (?<file>[a-zA-Z]:\\.+?)(?:$|, |: | on line)" nodrop 
| parse regex field=mesg "\[client (?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop 
| parse regex field=mesg "\[client .+?:(?<src_port>[0-9][0-9]+)\] " nodrop 
| parse regex field=mesg "referer: (?<referrer>.+)$"  nodrop 
| parse regex field=mesg " \[(?<log_level>[a-z]+)\] " nodrop 
| parse regex field=mesg "(?<reason>Forbidden): (?<file>.+?) doesn't point to a file or directory" nodrop 
| parse regex field=mesg "(?<reason>Handler for .+? returned invalid result code [0-9]+)" nodrop 
| parse regex field=mesg "(?<reason>Invalid [a-zA-Z]+ in request) (?<request>.+?)(?:$| - .+$|, referer.+$)" nodrop 
| parse regex field=mesg "Invalid [a-zA-Z]+ in request .+? (?<url>/.+?)(?:$|, |: | (?i)http/1.(?:0|1))" nodrop 
| parse regex field=mesg "(?<reason>Script timed out before returning headers): (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>Symbolic link not allowed.*?): (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>configuration error):  couldn't .+?: (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>dir_walk error), .+? filename (?:path|)(?<file>.+?) for uri (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>handler .+? not found) for: (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>need Auth.+?): (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "Cannot map (?<request>.+?) to file" nodrop 
| parse regex field=mesg "(?:\d{4}\]|\[client .+?\]|\[[a-z0-9:-]+?\]) (?<file>(?:/[a-zA-Z0-9\._].+?|[a-zA-Z]:\\.+?)) pcfg_openfile: (?<reason>unable to check htaccess file), ensure it is readable" nodrop 
| parse regex field=mesg "access to (?<url>.+?) (?:denied|failed)" nodrop 
| parse regex field=mesg "access to (?<file>.+?) (?:denied|failed)" nodrop 
| parse regex field=mesg "access to (?<url>.+?) failed; stat of '(?<file>.+?)' failed." nodrop 
| parse regex field=mesg " \[(?<module>[a-z-_]+):(?<log_level>[a-z]+)\] " nodrop 
| parse regex field=mesg " \[pid (?<process_id>[0-9]+):tid (?<thread_id>[0-9]+)\]" nodrop 
| parse regex field=mesg "(?<reason>Buggy authn provider failed to set user) for (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "Evaluation of .*?expression from (?<file>.+?):[0-9]+ " nodrop 
| parse regex field=mesg "(?<reason>Invalid status line from script) '(?<file>.+?)':" nodrop 
| parse regex field=mesg "(?<reason>client submitted cookie '.*?' more than once): (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>malformed header from script) '(?<file>.+?)':" nodrop 

// 2.2 specific
| parse regex field=mesg "(?<reason>client used wrong authentication scheme): (?<url>.+?)(?:$|, referer.+$)" nodrop
| parse regex field=mesg "(?<reason>File does not exist): (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>Invalid [a-zA-Z]+ in request) (?<request>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>Premature end of script headers): (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>client sent HTTP/1.1 request without hostname) \(.+?\): (?<url>.+?)(?:$|, referer.+$)" nodrop 
```

**Apache/Top Referrers causing errors/Apache - Top Referrers causing errors**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm=*
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "(?:\d{4}\]|\[client .+?\]|\[[a-z0-9:-]+?\]) (?<reason>[a-zA-Z].+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?:.+?) (?<file>/[a-zA-Z0-9\._].+?)(?:$|, |: | on line| (?i)http/1.(?:0|1))"  nodrop 
| parse regex field=mesg " (?<file>[a-zA-Z]:\\.+?)(?:$|, |: | on line)" nodrop 
| parse regex field=mesg "\[client (?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop 
| parse regex field=mesg "\[client .+?:(?<src_port>[0-9][0-9]+)\] " nodrop 
| parse regex field=mesg "referer: (?<referrer>.+)$"  nodrop 
| parse regex field=mesg " \[(?<log_level>[a-z]+)\] " nodrop 
| parse regex field=mesg "(?<reason>Forbidden): (?<file>.+?) doesn't point to a file or directory" nodrop 
| parse regex field=mesg "(?<reason>Handler for .+? returned invalid result code [0-9]+)" nodrop 
| parse regex field=mesg "(?<reason>Invalid [a-zA-Z]+ in request) (?<request>.+?)(?:$| - .+$|, referer.+$)" nodrop 
| parse regex field=mesg "Invalid [a-zA-Z]+ in request .+? (?<url>/.+?)(?:$|, |: | (?i)http/1.(?:0|1))" nodrop 
| parse regex field=mesg "(?<reason>Script timed out before returning headers): (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>Symbolic link not allowed.*?): (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>configuration error):  couldn't .+?: (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>dir_walk error), .+? filename (?:path|)(?<file>.+?) for uri (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>handler .+? not found) for: (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>need Auth.+?): (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "Cannot map (?<request>.+?) to file" nodrop 
| parse regex field=mesg "(?:\d{4}\]|\[client .+?\]|\[[a-z0-9:-]+?\]) (?<file>(?:/[a-zA-Z0-9\._].+?|[a-zA-Z]:\\.+?)) pcfg_openfile: (?<reason>unable to check htaccess file), ensure it is readable" nodrop 
| parse regex field=mesg "access to (?<url>.+?) (?:denied|failed)" nodrop 
| parse regex field=mesg "access to (?<file>.+?) (?:denied|failed)" nodrop 
| parse regex field=mesg "access to (?<url>.+?) failed; stat of '(?<file>.+?)' failed." nodrop 
| parse regex field=mesg " \[(?<module>[a-z-_]+):(?<log_level>[a-z]+)\] " nodrop 
| parse regex field=mesg " \[pid (?<process_id>[0-9]+):tid (?<thread_id>[0-9]+)\]" nodrop 
| parse regex field=mesg "(?<reason>Buggy authn provider failed to set user) for (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "Evaluation of .*?expression from (?<file>.+?):[0-9]+ " nodrop 
| parse regex field=mesg "(?<reason>Invalid status line from script) '(?<file>.+?)':" nodrop 
| parse regex field=mesg "(?<reason>client submitted cookie '.*?' more than once): (?<url>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>malformed header from script) '(?<file>.+?)':" nodrop 

// 2.2 specific
| parse regex field=mesg "(?<reason>client used wrong authentication scheme): (?<url>.+?)(?:$|, referer.+$)" nodrop
| parse regex field=mesg "(?<reason>File does not exist): (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>Invalid [a-zA-Z]+ in request) (?<request>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>Premature end of script headers): (?<file>.+?)(?:$|, referer.+$)" nodrop 
| parse regex field=mesg "(?<reason>client sent HTTP/1.1 request without hostname) \(.+?\): (?<url>.+?)(?:$|, referer.+$)" nodrop 
```

**Apache/Top URLs by bytes served/Apache - Top URLs by bytes served**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm=* HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Traffic volume and bytes served per day/Apache - Traffic volume and bytes served per day**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm=* HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Trends/Number of Hits by Server - One Day Time Comparison**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Trends/Responses Over Time**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Trends/Traffic Distribution by Server**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Trends/Traffic Volume and Bytes Served**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Trends/Visitor Locations - One Day Time Comparison**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Visitor Access Types/Browsers and Operating Systems**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Visitor Access Types/Desktop OS Versions**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} HTTP ("macintosh" OR "mac os" OR "windows" OR "i686" or "PC" or ("Linux" AND !android))
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
| parse regex field=user_agent "(?<os>Mac OS) (?<version>[^;\)]+?)(?:;|\))" nodrop 
| parse regex field=user_agent "(?<os>Windows)(?: NT | )(?<version>[\d.]+)" nodrop 
| parse regex field=user_agent "(?<os>Linux) (?<version>\S+?)(?:\)|;)" nodrop 
```

**Apache/Visitor Access Types/Popular Mobile Device Versions**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} HTTP (iphone or ipad or android or samsung)
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
| parse regex field=mesg "\((?<device>iPhone).+? CPU iPhone OS (?<version>.+?) like Mac"  nodrop 
| parse regex field=mesg "\((?<device>iPad).+? CPU OS (?<version>.+?) like Mac"  nodrop 
| parse regex field=mesg " (?<device>Android) (?<version>[\d\.]+)" nodrop 
| parse regex field=mesg "(?<device>SAMSUNG).+?(?<version>(?:GT-\w+|SGH-\w+|SPH-\w+|SCH-\w+))" nodrop
```

**Apache/Visitor Access Types/Unique Visitors**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Visitor Access Types/Visitor Platforms**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Visitor Access Types/Visitor Platforms Over Time**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Visitor Locations/United States**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} HTTP
| parse regex "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Visitor Locations/Visits by Country Over Time**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} HTTP
| parse regex "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Visitor Locations/Visits by US Regions Over Time**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} HTTP
| parse regex "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Visitor Locations/Worldwide**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} HTTP
| parse regex "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Visitor Traffic Insight/Bytes Served**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Visitor Traffic Insight/HTTP Methods**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Visitor Traffic Insight/Media Types Served**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
| parse regex field=url "^/[^\?]+?\.(?<type>[a-zA-Z]{2,4})$" nodrop
| parse regex field=url "/\S+?(?<email_prefix>(?:%40|@)[^.]+?)\.\w+" nodrop 
```

**Apache/Visitor Traffic Insight/Top 10 Search Terms from Popular Search Engines**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} HTTP (google OR bing OR aol OR ask OR yahoo) ("p=" OR "q=" OR "wd=" OR "searchfor=")
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
| parse regex field=referrer "(?:\?|&)(?:p|q|wd|searchfor)=(?<search_term>[^=]+?)(?:&|$)" nodrop 
```

**Apache/Visitor Traffic Insight/Top 5 Referrers**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Visitor Traffic Insight/Top 5 Urls**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Web Server Operations/Client Locations - 4xx Errors**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} HTTP (40* OR 41* OR 42* OR 43* or 44* OR 45* or 49*)
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Web Server Operations/Error Log Levels**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}}
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
// Error Logs
| parse regex field=mesg "^\[[^]]*]\s\[(?<log_level>[a-z]+)\]" nodrop
| parse regex field=mesg "\[[^]]*]\s\[(?<module>[a-z-_]+):(?<log_level>[a-z]+)\] " nodrop
```

**Apache/Web Server Operations/Error Responses by Server**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Web Server Operations/Non 200 Response Status Codes**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Web Server Operations/Server Errors Over Time**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} HTTP (50* or 51* or 52* or 53* or 59*)
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Web Server Operations/Top 10 Bots Observed**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} HTTP ("Googlebot" OR "AskJeeves" OR "Digger" OR "Lycos"
OR "msnbot" OR "Inktomi Slurp" OR "Yahoo" OR "Nutch" OR "bingbot" OR
"BingPreview" OR "Mediapartners-Google" OR "proximic" OR "AhrefsBot" OR
"AdsBot-Google" OR "Ezooms" OR "AddThis.com" OR "facebookexternalhit" OR
"MetaURI" OR "Feedfetcher-Google" OR "PaperLiBot" OR "TweetmemeBot" OR
"Sogou web spider" OR "GoogleProducer" OR "RockmeltEmbedder" OR
"ShareThisFetcher" OR "YandexBot" OR "rogerbot-crawler" OR "ShowyouBot" OR "Baiduspider" OR "Sosospider" OR "Exabot")
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
| parse regex field=user_agent "(?<bot_name>facebook)externalhit?\W+" nodrop
| parse regex field=user_agent "Feedfetcher-(?<bot_name>Google?)\S+" nodrop
| parse regex field=user_agent "(?<bot_name>PaperLiBot?)/.+" nodrop
| parse regex field=user_agent "(?<bot_name>TweetmemeBot?)/.+" nodrop
| parse regex field=user_agent "(?<bot_name>msn?)bot\W" nodrop
| parse regex field=user_agent "(?<bot_name>Nutch?)-.+" nodrop
| parse regex field=user_agent "(?<bot_name>Google?)bot\W" nodrop
| parse regex field=user_agent "Feedfetcher-(?<bot_name>Google?)\W" nodrop
| parse regex field=user_agent "(?<bot_name>Yahoo?)!\s+Slurp[;/].+" nodrop
| parse regex field=user_agent "(?<bot_name>bing?)bot\W" nodrop
| parse regex field=user_agent "(?<bot_name>Bing?)Preview\W" nodrop
| parse regex field=user_agent "(?<bot_name>Sogou?)\s+web\s" nodrop
| parse regex field=user_agent "(?<bot_name>Yandex?)Bot\W" nodrop
| parse regex field=user_agent "(?<bot_name>rogerbot?)\W" nodrop
| parse regex field=user_agent "(?<bot_name>AddThis\.com?)\s+robot\s+" nodrop
| parse regex field=user_agent "(?<bot_name>ShareThis?)Fetcher/.+" nodrop
| parse regex field=user_agent "(?<bot_name>Ahrefs?)Bot/.+" nodrop
| parse regex field=user_agent "(?<bot_name>MetaURI?)\s+API/.+" nodrop
| parse regex field=user_agent "(?<bot_name>Showyou?)Bot\s+" nodrop
| parse regex field=user_agent "(?<bot_name>Google?)Producer;" nodrop
| parse regex field=user_agent "(?<bot_name>Ezooms?)\W" nodrop
| parse regex field=user_agent "(?<bot_name>Rockmelt?)Embedder\s+" nodrop 
| parse regex field=user_agent "(?<bot_name>Sosospider?)\W" nodrop 
| parse regex field=user_agent "(?<bot_name>Baidu?)spider" nodrop
| parse regex field=user_agent "(?<bot_name>Exabot?)\W" nodrop
```

**Apache/Web Server Operations/Top 10 Errors from Error Log Files**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}}
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
// Error Logs
| parse regex field=mesg "^\[[^]]*]\s\[(?<log_level>[a-z]+)\]" nodrop
| parse regex field=mesg "\[[^]]*]\s\[(?<module>[a-z-_]+):(?<log_level>[a-z]+)\] " nodrop
| parse field=mesg "[error] *" as error_mesg nodrop
| parse field=mesg "[client *] *" as src_ip, error_mesg nodrop
```

**Apache/Web Server Operations/Top 5 Clients Causing 4xx Errors**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} HTTP (40* OR 41* OR 42* OR 43* OR 44* or 45* or 49*)
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Web Server Operations/Top 5 Clients Causing 5xx Errors**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} HTTP (40* OR 41* OR 42* OR 43* OR 44* or 45* or 49*)
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Web Server Operations/Top 5 URLs Causing 4xx Responses**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```

**Apache/Web Server Operations/Top 5 URLs Causing 5xx Responses**
```
webserver_system=apache webserver_farm=* webserver_system=apache webserver_farm={{webserver_farm}} _sourceHost={{host}} HTTP
| json "log" nodrop | if (_raw matches "{*", log, _raw) as mesg
| parse regex field=mesg "^(?<src_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)" nodrop
| parse regex field=mesg "(?<method>[A-Z]+)\s(?<url>\S+)\sHTTP\/[\d\.]+[\\n]*\"\s(?<status_code>\d+)\s(?<size>[\d-]+)\s\"(?<referrer>.*?)\"\s\"(?<user_agent>.+?)\".*" nodrop
```


