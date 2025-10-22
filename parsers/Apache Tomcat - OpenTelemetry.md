# Parsers For Apache Tomcat - OpenTelemetry

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Catalina Overview/Average Server Startup Time**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} startup | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse "INFO: Server startup in * ms" as startuptime
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Catalina Overview/Component Errors**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<time>\w+\s+\d+,\s+\d+\s+\d+:\d+:\d+\s+\w+)\s+(?<component>[\w\S]+)\s+(?<method>[\w\S]+)\s+(?<loglevel>\w+):\s+(?<message>[\s\w]+)(?:$|\n(?<thrown>[\s\S]+)$)"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Catalina Overview/Errors by Component**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<time>\w+\s+\d+,\s+\d+\s+\d+:\d+:\d+\s+\w+)\s+(?<component>[\w\S]+)\s+(?<method>[\w\S]+)\s+(?<loglevel>\w+):\s+(?<message>[\s\w]+)(?:$|\n(?<thrown>[\s\S]+)$)"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Catalina Overview/Exceptions**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} *Exception | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<time>\w+\s+\d+,\s+\d+\s+\d+:\d+:\d+\s+\w+)\s+(?<Component>[\w\S]+)\s+(?<method>[\w\S]+)\s+(?<loglevel>\w+):\s+(?<message>[\s\w]+)\n(?<thrown>[\s\S]+)$"
| where thrown!=""
| parse regex field=thrown "\((?<sourcefile>[^\)]+)"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Catalina Overview/Log Levels**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<time>\w+\s+\d+,\s+\d+\s+\d+:\d+:\d+\s+\w+)\s+(?<component>[\w\S]+)\s+(?<method>[\w\S]+)\s+(?<loglevel>\w+):\s+(?<message>[\s\w]+)(?:$|\n(?<thrown>[\s\S]+)$)"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Catalina Overview/Non-INFO Errors**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<time>\w+\s+\d+,\s+\d+\s+\d+:\d+:\d+\s+\w+)\s+(?<component>[\w\S]+)\s+(?<method>[\w\S]+)\s+(?<loglevel>\w+):\s+(?<message>[\s\w]+)(?:$|\n(?<thrown>[\s\S]+)$)"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Catalina Overview/Server State Events Over Time**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} (shutdown or startup) | json "log" as _rawlog nodrop 
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Catalina Overview/Top 10 Recent Exceptions**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<time>\w+\s+\d+,\s+\d+\s+\d+:\d+:\d+\s+\w+)\s+(?<Component>[\w\S]+)\s+(?<method>[\w\S]+)\s+(?<loglevel>\w+):\s+(?<message>[\s\w]+)\n(?<thrown>[\s\S]+)$"
| where thrown!=""
| parse regex field=thrown "\((?<sourcefile>[^\)]+)"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Garbage Collection/Heap**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} "Times: user" "sys" "real" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] \[ParOldGen: (?<OldBfrGC>\d+)K->(?<OldAftrGC>\d+)K\((?<OldSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\) \[PSPermGen: (?<PermBfrGC>\d+)K->(?<PermAftrGC>\d+)K\((?<permSize>\d+)K\)], (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]" nodrop
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] \[ParOldGen: (?<OldBfrGC>\d+)K->(?<OldAftrGC>\d+)K\((?<OldSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\) \[Metaspace: (?<PermBfrGC>\d+)K->(?<PermAftrGC>\d+)K\((?<permSize>\d+)K\)], (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]" nodrop
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\), (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Garbage Collection/Par Old Gen**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} "Times: user" "sys" "real" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] \[ParOldGen: (?<OldBfrGC>\d+)K->(?<OldAftrGC>\d+)K\((?<OldSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\) \[PSPermGen: (?<PermBfrGC>\d+)K->(?<PermAftrGC>\d+)K\((?<permSize>\d+)K\)], (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]" nodrop
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\), (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Garbage Collection/PS Perm Gen**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} "Times: user" "sys" "real" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] \[ParOldGen: (?<OldBfrGC>\d+)K->(?<OldAftrGC>\d+)K\((?<OldSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\) \[PSPermGen: (?<PermBfrGC>\d+)K->(?<PermAftrGC>\d+)K\((?<permSize>\d+)K\)], (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]" nodrop
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\), (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Garbage Collection/PS Young Gen**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} "Times: user" "sys" "real" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] \[ParOldGen: (?<OldBfrGC>\d+)K->(?<OldAftrGC>\d+)K\((?<OldSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\) \[PSPermGen: (?<PermBfrGC>\d+)K->(?<PermAftrGC>\d+)K\((?<permSize>\d+)K\)], (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]" nodrop
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] \[ParOldGen: (?<OldBfrGC>\d+)K->(?<OldAftrGC>\d+)K\((?<OldSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\) \[Metaspace: (?<PermBfrGC>\d+)K->(?<PermAftrGC>\d+)K\((?<permSize>\d+)K\)], (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]" nodrop
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\), (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Garbage Collection/Top 10 Host - High GC Time**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} "Times: user" "sys" "real" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| if (isEmpty(pod),_sourceHost,pod) as Host
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] \[ParOldGen: (?<OldBfrGC>\d+)K->(?<OldAftrGC>\d+)K\((?<OldSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\) \[PSPermGen: (?<PermBfrGC>\d+)K->(?<PermAftrGC>\d+)K\((?<permSize>\d+)K\)], (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]" nodrop
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] \[ParOldGen: (?<OldBfrGC>\d+)K->(?<OldAftrGC>\d+)K\((?<OldSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\) \[Metaspace: (?<PermBfrGC>\d+)K->(?<PermAftrGC>\d+)K\((?<permSize>\d+)K\)], (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]" nodrop
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\), (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Garbage Collection/Top 10 Hosts - Low Average JVM Up-Time**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} "Times: user" "sys" "real" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| if (isEmpty(pod),_sourceHost,pod) as Host
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] \[ParOldGen: (?<OldBfrGC>\d+)K->(?<OldAftrGC>\d+)K\((?<OldSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\) \[PSPermGen: (?<PermBfrGC>\d+)K->(?<PermAftrGC>\d+)K\((?<permSize>\d+)K\)], (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]" nodrop
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] \[ParOldGen: (?<OldBfrGC>\d+)K->(?<OldAftrGC>\d+)K\((?<OldSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\) \[Metaspace: (?<PermBfrGC>\d+)K->(?<PermAftrGC>\d+)K\((?<permSize>\d+)K\)], (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]" nodrop
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\), (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Garbage Collection/Total GC Operation Time**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} "Times: user" "sys" "real" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] \[ParOldGen: (?<OldBfrGC>\d+)K->(?<OldAftrGC>\d+)K\((?<OldSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\) \[PSPermGen: (?<PermBfrGC>\d+)K->(?<PermAftrGC>\d+)K\((?<permSize>\d+)K\)], (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]" nodrop
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\), (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Garbage Collection/Total GC Operations**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} "Times: user" "sys" "real" | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] \[ParOldGen: (?<OldBfrGC>\d+)K->(?<OldAftrGC>\d+)K\((?<OldSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\) \[PSPermGen: (?<PermBfrGC>\d+)K->(?<PermAftrGC>\d+)K\((?<permSize>\d+)K\)], (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]" nodrop
| parse regex "(?<gctmaftrJVMStrt>[\d.]+): \[(?<GCType>.*) \[PSYoungGen: (?<YngBfrGC>\d+)K->(?<YngAftrGC>\d+)K\((?<YngSize>\d+)K\)] (?<HeapBfrGC>\d+)K->(?<HeapAftrGC>\d+)K\((?<HeapSize>\d+)K\), (?<GCOperationTime>[\d.]+) secs] \[Times: user=(?<usertime>[\d.]+) sys=(?<systime>[\d.]+), real=(?<realtime>[\d.]+) secs]"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Logs Timeline Analysis/Number of Hits by Server - One Day Time Comparison**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| if (isEmpty(pod),_sourceHost,pod) as host
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Logs Timeline Analysis/Responses Over Time**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Logs Timeline Analysis/Traffic Distribution by Server**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| if (isEmpty(pod),_sourceHost,pod) as host
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Logs Timeline Analysis/Traffic Volume and Bytes Served**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Logs Timeline Analysis/Visitor Locations - One Day Time Comparison**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Outlier Analysis/Bytes Served - Outlier**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Outlier Analysis/Client Errors**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Outlier Analysis/Number of Visitors**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Outlier Analysis/Server Errors**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Overview/4xx Error**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Overview/5xx Codes**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Overview/5xx Error**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Overview/Responses Over Time**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Overview/Top 10 URLs causing Errors**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Overview/Visitor Locations**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Threat Intel/Highly Malicious Threat Table**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
| lookup type, actor, raw, threatlevel as Malicious_Confidence from sumo://threat/cs on threat=remote_ip 
| where  type="ip_address" and !isNull(Malicious_Confidence)
| json field=raw "labels[*].name" as label_name 
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Threat Intel/Threat Breakdown by Sources**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
| count as ip_count by remote_ip, _source
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=remote_ip 
| json field=raw "labels[*].name" as label_name 
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Threat Intel/Threat by Actors**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
| count as ip_count by remote_ip
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=remote_ip 
| json field=raw "labels[*].name" as label_name 
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Threat Intel/Threat by Malicious Confidence**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
| count as ip_count by remote_ip
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=remote_ip 
| json field=raw "labels[*].name" as label_name 
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Threat Intel/Threat Count**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
| count as ip_count by remote_ip
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=remote_ip 
| json field=raw "labels[*].name" as label_name 
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Threat Intel/Threat Locations**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
| count as ip_count by remote_ip
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=remote_ip 
| json field=raw "labels[*].name" as label_name 
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Threat Intel/Threat Table**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
| lookup type, actor, raw, threatlevel as Malicious_Confidence from sumo://threat/cs on threat=remote_ip 
| where  type="ip_address" and !isNull(Malicious_Confidence)
| json field=raw "labels[*].name" as label_name 
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Threat Intel/Top 5 Highly Malicious URLs**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}}| json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Visitor Locations/United States**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Visitor Locations/Visits by Country Over Time**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Visitor Locations/Visits by US State Over Time**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Visitor Locations/Worldwide**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Visitor Traffic Insight/Bytes Served**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Visitor Traffic Insight/HTTP Methods**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Visitor Traffic Insight/Media Types Served**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
| parse regex field=uri "^/[^\?]+?\.(?<type>[a-zA-Z]{2,4})$"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Visitor Traffic Insight/Top 10 Search Terms from Popular Search Engines**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} (google or bing or aol or ask or yahoo) ("p=" or "q=" or "wd=" or "searchfor=")
 | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"]+)\""
| parse regex field=referrer "(?:\?|&)(?:p|q|wd|searchfor)=(?<search_term>[^=]+?)(?:&|$)"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Visitor Traffic Insight/Top 5 Referrers**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"(?<referrer>http[s]{0,1}:[^\"\?]+?)(?:\"|\?)"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Visitor Traffic Insight/Top 5 URLs**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Web Server Operations/Client Locations - 4xx Errors**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Web Server Operations/Error Responses by Server**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw
| if (isEmpty(pod),_sourceHost,pod) as host
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Web Server Operations/Non 200 Response Status Codes**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}}  | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Web Server Operations/Server Errors Over Time**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Web Server Operations/Top 10 Bots Observed**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} ("Googlebot" OR "AskJeeves" OR "Digger" OR "Lycos"
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

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Web Server Operations/Top 5 Clients Causing 4xx Errors**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} 404 | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```

**Apache Tomcat - OpenTelemetry/Apache Tomcat - Web Server Operations/Top 5 URIs causing 404 Responses**
```
sumo.datasource=tomcat deployment.environment={{deployment.environment}} webengine.cluster.name={{webengine.cluster.name}} webengine.node.name={{webengine.node.name}} (400 OR 401 OR 402 OR 403 OR 404) | json "log" as _rawlog nodrop 
| if (isEmpty(_rawlog), _raw, _rawlog) as _raw 
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "(?<remote_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<local_ip>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})\s+(?<user>\S+)\s+(?<hostname>[\S]+)\s+\[" nodrop
| parse regex "\s+\[(?<date>[^\]]+)\]\s+\"(?<method>\w+)\s+(?<uri>\S+)\s+(?<protocol>\S+)\"\s+(?<status_code>\d+)\s+(?<size>[\d-]+)" nodrop
| parse regex "\"\s+\d+\s+[\d-]+\s+(?<timetaken>[\d-]+)"
```


