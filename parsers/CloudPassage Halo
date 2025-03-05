# Parsers For CloudPassage Halo

## Parser:
```
| parse regex "\"local_accounts_summary\": \{\"count\": (?<num_of_local_accounts>\d*),"
```
### Use Cases:
Critical Issues Outlier, Critical Issues Over Time, Linux Top 10 Processes, Number of User Accounts, Outlier in Critical Issues, Outlier on Delta (today - yesterday) of Critical Issues, Top 10 SW Vulnerabilities, Windows Top 10 Services



## Parser:
```
| parse regex "\"log\": \{\"(?<metric_type>\w*)\"\: (?<metrics>.*)\}"
| parse regex field= _first "\"count\": (?<true_count1>[0-9]+), \"state\": \"active\"" multi
```
### Use Cases:
Active Server Counts, Bottom 10 SW Vulnerabilities, Critical Issues Delta Over 10 Minutes, Critical Issues Outlier, Critical Issues Over Time, Linux Top 10 Processes, Number of Software Packages, Number of User Accounts, Outlier in Critical Issues, Outlier on Delta (today - yesterday) of Critical Issues, Top 10 SW Vulnerabilities, Windows Top 10 Services



## Parser:
```
| parse regex "\"log\": \{\"(?<metric_type>\w*)\"\: (?<metrics>.*)\}"
| parse regex field=_first "\"count\": (?<true_count1>[0-9]+), \"critical\": false" multi
```
### Use Cases:
Active Server Counts, Bottom 10 SW Vulnerabilities, Critical Issues, Critical Issues Delta Over 10 Minutes, Critical Issues Outlier, Critical Issues Over Time, Linux Bottom 10 Processes, Linux Top 10 Processes, Non Critical Issues, Number of OS Types, Number of Software Packages, Number of User Accounts, Outlier in Critical Issues, Outlier on Delta (today - yesterday) of Critical Issues, Top 10 SW Vulnerabilities, Windows Bottom 10 Services, Windows Top 10 Services



## Parser:
```
| parse regex "\"log\": \{\"(?<metric_type>\w*)\"\: (?<metrics>.*)\}"
| parse regex field=_first "\"count\": (?<true_count1>[0-9]+), \"critical\": true" multi
```
### Use Cases:
Active Server Counts, Bottom 10 SW Vulnerabilities, Critical Issues, Critical Issues Delta Over 10 Minutes, Critical Issues Outlier, Critical Issues Over Time, Linux Top 10 Processes, Number of Software Packages, Number of User Accounts, Outlier in Critical Issues, Outlier on Delta (today - yesterday) of Critical Issues, Top 10 SW Vulnerabilities, Windows Top 10 Services



## Parser:
```
| parse regex "\"log\": \{\"(?<metric_type>\w*)\"\: (?<metrics>.*)\}"
| parse regex field=metrics "\"count\": (?<true_count1>[0-9]+), \"critical\": true" multi
```
### Use Cases:
Critical Issues Outlier, Critical Issues Over Time, Outlier in Critical Issues, Outlier on Delta (today - yesterday) of Critical Issues



## Parser:
```
| parse regex "\"log\": \{\"processes_summary\"\: \{\"count\": [0-9]+, \"servers\": (?<metrics>.*)\}"
| parse regex field=_first "\"count\": (?<count_proc>[0-9]+), \"os_type\": \"linux\", \"process_name\": \"(?<proc_name>\w+)\"" multi
```
### Use Cases:
Active Server Counts, Bottom 10 SW Vulnerabilities, Critical Issues, Critical Issues Delta Over 10 Minutes, Critical Issues Outlier, Critical Issues Over Time, Linux Bottom 10 Processes, Linux Top 10 Processes, Number of Software Packages, Number of User Accounts, Outlier in Critical Issues, Outlier on Delta (today - yesterday) of Critical Issues, Top 10 SW Vulnerabilities, Windows Top 10 Services



## Parser:
```
| parse regex "\"log\": \{\"processes_summary\"\: \{\"count\": [0-9]+, \"servers\": (?<metrics>.*)\}"
| parse regex field=_first "\{\"count\": (?<count_svc>[0-9]+), \"os_type\": \"windows\", \"process_name\": \"(?<svc_name>\w+\.\w+)\"\}" multi
```
### Use Cases:
Active Server Counts, Bottom 10 SW Vulnerabilities, Critical Issues, Critical Issues Delta Over 10 Minutes, Critical Issues Outlier, Critical Issues Over Time, Linux Bottom 10 Processes, Linux Top 10 Processes, Number of Software Packages, Number of User Accounts, Outlier in Critical Issues, Outlier on Delta (today - yesterday) of Critical Issues, Top 10 SW Vulnerabilities, Windows Bottom 10 Services, Windows Top 10 Services



## Parser:
```
| parse regex "\"log\": \{\"sw_vulnerability_summary\"\: \{\"count\": [0-9]+, \"issues\": (?<metrics>.*)\}"
| parse regex field=_first "\"count\": (?<vuln_sw_counter>\d+), \"name\": \"(?<vuln_sw_name>[^,]*)\", \"rule_key\": [^,]*, \"critical\": (?<criticality>\w+)," multi
```
### Use Cases:
Bottom 10 SW Vulnerabilities, Critical Issues Outlier, Critical Issues Over Time, Linux Top 10 Processes, Number of User Accounts, Outlier in Critical Issues, Outlier on Delta (today - yesterday) of Critical Issues, Top 10 SW Vulnerabilities, Windows Top 10 Services



## Parser:
```
| parse regex "\"os_types_summary\": \{\"count\": (?<num_of_os_types>\d*),"
```
### Use Cases:
Active Server Counts, Bottom 10 SW Vulnerabilities, Critical Issues, Critical Issues Delta Over 10 Minutes, Critical Issues Outlier, Critical Issues Over Time, Linux Bottom 10 Processes, Linux Top 10 Processes, Number of OS Types, Number of Software Packages, Number of User Accounts, Outlier in Critical Issues, Outlier on Delta (today - yesterday) of Critical Issues, Top 10 SW Vulnerabilities, Windows Bottom 10 Services, Windows Top 10 Services



## Parser:
```
| parse regex "\"processes_summary\": \{\"count\": (?<num_of_processes>\d*),"
```
### Use Cases:
Active Server Counts, Bottom 10 SW Vulnerabilities, Critical Issues, Critical Issues Delta Over 10 Minutes, Critical Issues Outlier, Critical Issues Over Time, Linux Bottom 10 Processes, Linux Top 10 Processes, Non Critical Issues, Number of OS Types, Number of Processes, Number of Software Packages, Number of User Accounts, Outlier in Critical Issues, Outlier on Delta (today - yesterday) of Critical Issues, Top 10 SW Vulnerabilities, Windows Bottom 10 Services, Windows Top 10 Services



## Parser:
```
| parse regex "\"sw_packages_summary\":\{\"count\":(?<num_of_sw_packages>\d*),"
```
### Use Cases:
Bottom 10 SW Vulnerabilities, Critical Issues Delta Over 10 Minutes, Critical Issues Outlier, Critical Issues Over Time, Linux Top 10 Processes, Number of Software Packages, Number of User Accounts, Outlier in Critical Issues, Outlier on Delta (today - yesterday) of Critical Issues, Top 10 SW Vulnerabilities, Windows Top 10 Services


