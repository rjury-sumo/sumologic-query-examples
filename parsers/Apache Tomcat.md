# Parsers For Apache Tomcat

**Apache Tomcat/Catalina Overview/Average Server Startup Time**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} startup | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse "INFO: Server startup in * ms" as startuptime
```

**Apache Tomcat/Catalina Overview/Component Errors**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<time>\w+\s+\d+,\s+\d+\s+\d+:\d+:\d+\s+\w+)\s+(?<component>[\w\S]+)\s+(?<method>[\w\S]+)\s+(?<loglevel>\w+):\s+(?<message>[\s\w]+)(?:$|\n(?<thrown>[\s\S]+)$)"
```

**Apache Tomcat/Catalina Overview/Errors by Component**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<time>\w+\s+\d+,\s+\d+\s+\d+:\d+:\d+\s+\w+)\s+(?<component>[\w\S]+)\s+(?<method>[\w\S]+)\s+(?<loglevel>\w+):\s+(?<message>[\s\w]+)(?:$|\n(?<thrown>[\s\S]+)$)"
```

**Apache Tomcat/Catalina Overview/Exceptions**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} *Exception | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<time>\w+\s+\d+,\s+\d+\s+\d+:\d+:\d+\s+\w+)\s+(?<Component>[\w\S]+)\s+(?<method>[\w\S]+)\s+(?<loglevel>\w+):\s+(?<message>[\s\w]+)\n(?<thrown>[\s\S]+)$"
| where thrown!=""
| parse regex field=thrown "\((?<sourcefile>[^\)]+)"
```

**Apache Tomcat/Catalina Overview/Log Levels**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<time>\w+\s+\d+,\s+\d+\s+\d+:\d+:\d+\s+\w+)\s+(?<component>[\w\S]+)\s+(?<method>[\w\S]+)\s+(?<loglevel>\w+):\s+(?<message>[\s\w]+)(?:$|\n(?<thrown>[\s\S]+)$)"
```

**Apache Tomcat/Catalina Overview/Non-INFO Errors**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<time>\w+\s+\d+,\s+\d+\s+\d+:\d+:\d+\s+\w+)\s+(?<component>[\w\S]+)\s+(?<method>[\w\S]+)\s+(?<loglevel>\w+):\s+(?<message>[\s\w]+)(?:$|\n(?<thrown>[\s\S]+)$)"
```

**Apache Tomcat/Catalina Overview/Server State Events Over Time**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} (shutdown or startup) | json "log" as _rawlog nodrop 
```

**Apache Tomcat/Catalina Overview/Top 10 Recent Exceptions**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<time>\w+\s+\d+,\s+\d+\s+\d+:\d+:\d+\s+\w+)\s+(?<Component>[\w\S]+)\s+(?<method>[\w\S]+)\s+(?<loglevel>\w+):\s+(?<message>[\s\w]+)\n(?<thrown>[\s\S]+)$"
| where thrown!=""
| parse regex field=thrown "\((?<sourcefile>[^\)]+)"
```

**Apache Tomcat/Garbage Collection/Heap**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} "Times: user" "sys" "real" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] \[ParOldGen: (?<OldBfrGC>\d+)K->(?<OldAftrGC>\d+)K\((?<OldSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\) \[PSPermGen: (?<PermBfrGC>\d+)K->(?<PermAftrGC>\d+)K\((?<permSize>\d+)K\)], (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]" nodrop
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] \[ParOldGen: (?<OldBfrGC>\d+)K->(?<OldAftrGC>\d+)K\((?<OldSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\) \[Metaspace: (?<PermBfrGC>\d+)K->(?<PermAftrGC>\d+)K\((?<permSize>\d+)K\)], (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]" nodrop
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\), (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]"
```

**Apache Tomcat/Garbage Collection/Par Old Gen**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} "Times: user" "sys" "real" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] \[ParOldGen: (?<OldBfrGC>\d+)K->(?<OldAftrGC>\d+)K\((?<OldSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\) \[PSPermGen: (?<PermBfrGC>\d+)K->(?<PermAftrGC>\d+)K\((?<permSize>\d+)K\)], (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]" nodrop
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\), (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]"
```

**Apache Tomcat/Garbage Collection/PS Perm Gen**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} "Times: user" "sys" "real" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] \[ParOldGen: (?<OldBfrGC>\d+)K->(?<OldAftrGC>\d+)K\((?<OldSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\) \[PSPermGen: (?<PermBfrGC>\d+)K->(?<PermAftrGC>\d+)K\((?<permSize>\d+)K\)], (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]" nodrop
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\), (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]"
```

**Apache Tomcat/Garbage Collection/PS Young Gen**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} "Times: user" "sys" "real" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] \[ParOldGen: (?<OldBfrGC>\d+)K->(?<OldAftrGC>\d+)K\((?<OldSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\) \[PSPermGen: (?<PermBfrGC>\d+)K->(?<PermAftrGC>\d+)K\((?<permSize>\d+)K\)], (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]" nodrop
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] \[ParOldGen: (?<OldBfrGC>\d+)K->(?<OldAftrGC>\d+)K\((?<OldSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\) \[Metaspace: (?<PermBfrGC>\d+)K->(?<PermAftrGC>\d+)K\((?<permSize>\d+)K\)], (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]" nodrop
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\), (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]"
```

**Apache Tomcat/Garbage Collection/Top 10 Host - High GC Time**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} "Times: user" "sys" "real" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| if (isEmpty(pod),_sourceHost,pod) as Host
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] \[ParOldGen: (?<OldBfrGC>\d+)K->(?<OldAftrGC>\d+)K\((?<OldSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\) \[PSPermGen: (?<PermBfrGC>\d+)K->(?<PermAftrGC>\d+)K\((?<permSize>\d+)K\)], (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]" nodrop
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] \[ParOldGen: (?<OldBfrGC>\d+)K->(?<OldAftrGC>\d+)K\((?<OldSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\) \[Metaspace: (?<PermBfrGC>\d+)K->(?<PermAftrGC>\d+)K\((?<permSize>\d+)K\)], (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]" nodrop
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\), (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]"
```

**Apache Tomcat/Garbage Collection/Top 10 Hosts - Low Average JVM Up-Time**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} "Times: user" "sys" "real" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| if (isEmpty(pod),_sourceHost,pod) as Host
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] \[ParOldGen: (?<OldBfrGC>\d+)K->(?<OldAftrGC>\d+)K\((?<OldSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\) \[PSPermGen: (?<PermBfrGC>\d+)K->(?<PermAftrGC>\d+)K\((?<permSize>\d+)K\)], (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]" nodrop
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] \[ParOldGen: (?<OldBfrGC>\d+)K->(?<OldAftrGC>\d+)K\((?<OldSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\) \[Metaspace: (?<PermBfrGC>\d+)K->(?<PermAftrGC>\d+)K\((?<permSize>\d+)K\)], (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]" nodrop
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\), (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]"
```

**Apache Tomcat/Garbage Collection/Total GC Operation Time**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} "Times: user" "sys" "real" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] \[ParOldGen: (?<OldBfrGC>\d+)K->(?<OldAftrGC>\d+)K\((?<OldSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\) \[PSPermGen: (?<PermBfrGC>\d+)K->(?<PermAftrGC>\d+)K\((?<permSize>\d+)K\)], (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]" nodrop
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\), (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]"
```

**Apache Tomcat/Garbage Collection/Total GC Operations**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} "Times: user" "sys" "real" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] \[ParOldGen: (?<OldBfrGC>\d+)K->(?<OldAftrGC>\d+)K\((?<OldSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\) \[PSPermGen: (?<PermBfrGC>\d+)K->(?<PermAftrGC>\d+)K\((?<permSize>\d+)K\)], (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]" nodrop
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\), (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]"
```

**Apache Tomcat/Logs Timeline Analysis/Number of Hits by Server - One Day Time Comparison**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| if (isEmpty(pod),_sourceHost,pod) as host
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat/Logs Timeline Analysis/Responses Over Time**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat/Logs Timeline Analysis/Traffic Distribution by Server**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| if (isEmpty(pod),_sourceHost,pod) as host
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat/Logs Timeline Analysis/Traffic Volume and Bytes Served**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat/Logs Timeline Analysis/Visitor Locations - One Day Time Comparison**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat/Outlier Analysis/Bytes Served - Outlier**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat/Outlier Analysis/Client Errors**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat/Outlier Analysis/Number of Visitors**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat/Outlier Analysis/Server Errors**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat/Overview/4xx Error**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat/Overview/5xx Codes**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat/Overview/5xx Error**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat/Overview/Responses Over Time**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat/Overview/Top 10 URLs causing Errors**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat/Overview/Visitor Locations**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat/Threat Intel/Highly Malicious Threat Table**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
| lookup type, actor, raw, threatlevel as Malicious_Confidence from sumo://threat/cs on threat=remote_ip 
| where  type="ip_address" and !isNull(Malicious_Confidence)
| json field=raw "labels[*].name" as label_name 
```

**Apache Tomcat/Threat Intel/Threat Breakdown by Sources**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
| count as ip_count by remote_ip, _source
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=remote_ip 
| json field=raw "labels[*].name" as label_name 
```

**Apache Tomcat/Threat Intel/Threat by Actors**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
| count as ip_count by remote_ip
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=remote_ip 
| json field=raw "labels[*].name" as label_name 
```

**Apache Tomcat/Threat Intel/Threat by Malicious Confidence**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
| count as ip_count by remote_ip
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=remote_ip 
| json field=raw "labels[*].name" as label_name 
```

**Apache Tomcat/Threat Intel/Threat Count**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
| count as ip_count by remote_ip
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=remote_ip 
| json field=raw "labels[*].name" as label_name 
```

**Apache Tomcat/Threat Intel/Threat Locations**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
| count as ip_count by remote_ip
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=remote_ip 
| json field=raw "labels[*].name" as label_name 
```

**Apache Tomcat/Threat Intel/Threat Table**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
| lookup type, actor, raw, threatlevel as Malicious_Confidence from sumo://threat/cs on threat=remote_ip 
| where  type="ip_address" and !isNull(Malicious_Confidence)
| json field=raw "labels[*].name" as label_name 
```

**Apache Tomcat/Threat Intel/Top 5 Highly Malicious URLs**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}}| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat/Visitor Locations/United States**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat/Visitor Locations/Visits by Country Over Time**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat/Visitor Locations/Visits by US State Over Time**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat/Visitor Locations/Worldwide**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat/Visitor Traffic Insight/Bytes Served**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat/Visitor Traffic Insight/HTTP Methods**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat/Visitor Traffic Insight/Media Types Served**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
| parse regex field=uri "^/[^\?]+?\.(?<type>[a-zA-Z]{2,4})$"
```

**Apache Tomcat/Visitor Traffic Insight/Top 10 Search Terms from Popular Search Engines**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} (google or bing or aol or ask or yahoo) ("p=" or "q=" or "wd=" or "searchfor=")
 | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\""
| parse regex field=referrer "(?:\?|&)(?:p|q|wd|searchfor)=(?<search_term>[^=]+?)(?:&|$)"
```

**Apache Tomcat/Visitor Traffic Insight/Top 5 Referrers**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"\?]+?)(?:\"|\?)"
```

**Apache Tomcat/Visitor Traffic Insight/Top 5 URLs**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat/Web Server Operations/Client Locations - 4xx Errors**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat/Web Server Operations/Error Responses by Server**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| if (isEmpty(pod),_sourceHost,pod) as host
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat/Web Server Operations/Non 200 Response Status Codes**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}}  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
```

**Apache Tomcat/Web Server Operations/Server Errors Over Time**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat/Web Server Operations/Top 10 Bots Observed**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} ("Googlebot" OR "AskJeeves" OR "Digger" OR "Lycos"
OR "msnbot" OR "Inktomi Slurp" OR "Yahoo" OR "Nutch" OR "bingbot" OR
"BingPreview" OR "Mediapartners-Google" OR "proximic" OR "AhrefsBot" OR
"AdsBot-Google" OR "Ezooms" OR "AddThis.com" OR "facebookexternalhit" OR
"MetaURI" OR "Feedfetcher-Google" OR "PaperLiBot" OR "TweetmemeBot" OR
"Sogou web spider" OR "GoogleProducer" OR "RockmeltEmbedder" OR
"ShareThisFetcher" OR "YandexBot" OR "rogerbot-crawler" OR "ShowyouBot" OR "Baiduspider" OR "Sosospider" OR "Exabot")
 | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\"\s+\"(?<user_agent>.*)\"" nodrop
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
| parse regex field=user_agent "(?<bot_name>Exabot?)\W"
```

**Apache Tomcat/Web Server Operations/Top 5 Clients Causing 4xx Errors**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} 404 | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat/Web Server Operations/Top 5 URIs causing 404 Responses**
```
_sourceCategory = *tomcat* webserver_system=tomcat webserver_farm={{webserver_farm}} (400 OR 401 OR 402 OR 403 OR 404) | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```


