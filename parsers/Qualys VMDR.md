# Parsers For Qualys VMDR

**Qualys VMDR/Overview/Critical**
```
_sourceCategory={{Logsdatasource}}  AND {{PAYLOAD}} AND {{IP}} AND {{HOSTNAME}}
| where (_raw matches /^\{.*\}$/) 

| json "IP", "Hostname", "Detection.Qid" as ip, hostname, Qid nodrop
| first(_raw) as _raw by ip, hostname, Qid

| json "Detection" as vulnerability nodrop
| where ip matches "{{IP}}"
| where hostname matches "{{HOSTNAME}}"

| json auto field=vulnerability nodrop
```

**Qualys VMDR/Overview/Details**
```
_sourceCategory={{Logsdatasource}}  AND {{PAYLOAD}} AND {{IP}} AND {{HOSTNAME}}
| where (_raw matches /^\{.*\}$/) 

| json "IP", "Hostname", "Detection.Qid" as ip, hostname, Qid nodrop
| first(_raw) as _raw by ip, hostname, Qid

| json "Detection" as vulnerability nodrop
| where ip matches "{{IP}}"
| where hostname matches "{{HOSTNAME}}"

| json auto field=vulnerability nodrop
```

**Qualys VMDR/Overview/High**
```
_sourceCategory={{Logsdatasource}}  AND {{PAYLOAD}} AND {{IP}} AND {{HOSTNAME}}
| where (_raw matches /^\{.*\}$/) 

| json "IP", "Hostname", "Detection.Qid" as ip, hostname, Qid nodrop
| first(_raw) as _raw by ip, hostname, Qid

| json "Detection" as vulnerability nodrop
| where ip matches "{{IP}}"
| where hostname matches "{{HOSTNAME}}"

| json auto field=vulnerability nodrop
```

**Qualys VMDR/Overview/Hosts Summary**
```

_sourceCategory={{Logsdatasource}}  AND {{PAYLOAD}} AND {{IP}} AND {{HOSTNAME}}
| where (_raw matches /^\{.*\}$/) 

| json "IP", "Hostname", "Detection.Qid" as ip, hostname, Qid nodrop
| first(_raw) as _raw by ip, hostname, Qid

| json "Detection" as vulnerability nodrop
| where ip matches "{{IP}}"
| where hostname matches "{{HOSTNAME}}"

| json auto field=vulnerability nodrop
```

**Qualys VMDR/Overview/Informational**
```
_sourceCategory={{Logsdatasource}}  AND {{PAYLOAD}} AND {{IP}} AND {{HOSTNAME}}
| where (_raw matches /^\{.*\}$/) 

| json "IP", "Hostname", "Detection.Qid" as ip, hostname, Qid nodrop
| first(_raw) as _raw by ip, hostname, Qid

| json "Detection" as vulnerability nodrop
| where ip matches "{{IP}}"
| where hostname matches "{{HOSTNAME}}"

| json auto field=vulnerability nodrop
```

**Qualys VMDR/Overview/Low**
```
_sourceCategory={{Logsdatasource}}  AND {{PAYLOAD}} AND {{IP}} AND {{HOSTNAME}}
| where (_raw matches /^\{.*\}$/) 

| json "IP", "Hostname", "Detection.Qid" as ip, hostname, Qid nodrop
| first(_raw) as _raw by ip, hostname, Qid

| json "Detection" as vulnerability nodrop
| where ip matches "{{IP}}"
| where hostname matches "{{HOSTNAME}}"

| json auto field=vulnerability nodrop
```

**Qualys VMDR/Overview/Medium**
```
_sourceCategory={{Logsdatasource}}  AND {{PAYLOAD}} AND {{IP}} AND {{HOSTNAME}}
| where (_raw matches /^\{.*\}$/) 

| json "IP", "Hostname", "Detection.Qid" as ip, hostname, Qid nodrop
| first(_raw) as _raw by ip, hostname, Qid

| json "Detection" as vulnerability nodrop
| where ip matches "{{IP}}"
| where hostname matches "{{HOSTNAME}}"

| json auto field=vulnerability nodrop
```

**Qualys VMDR/Overview/Total**
```
_sourceCategory={{Logsdatasource}}  AND {{PAYLOAD}} AND {{IP}} AND {{HOSTNAME}}
| where (_raw matches /^\{.*\}$/) 

| json "IP", "Hostname", "Detection.Qid" as ip, hostname, Qid nodrop
| first(_raw) as _raw by ip, hostname, Qid

| json "Detection" as vulnerability nodrop
| where ip matches "{{IP}}"
| where hostname matches "{{HOSTNAME}}"

| json auto field=vulnerability nodrop
```

**Qualys VMDR/Overview/Vulnerability Summary**
```
_sourceCategory={{Logsdatasource}}  AND {{PAYLOAD}} AND {{IP}} AND {{HOSTNAME}}
| where (_raw matches /^\{.*\}$/) 

| json "IP", "Hostname", "Detection.Qid" as ip, hostname, Qid nodrop
| first(_raw) as _raw by ip, hostname, Qid

| json "Detection" as vulnerability nodrop
| where ip matches "{{IP}}"
| where hostname matches "{{HOSTNAME}}"

| json auto field=vulnerability nodrop
```


