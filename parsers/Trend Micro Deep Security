# Parsers For Trend Micro Deep Security

## Parser:
```
| extract "CEF:\s*0\|(?<Device_Vendor>.*)\|(?<Device_Product>.*)\|(?<Device_Version>.*)\|(?<Signature_ID>.*)\|(?<Name>.*)\|(?<Severity>.*)\|(?<Extension>.*)"
```
### Use Cases:
Anti-Malware Event History, Firewall Event History, Firewall Events History, Integrity Monitoring Event History, IPS Event History, Log Inspection Events History, Reconnaissance Scan History, Top 5 Computers for Integrity Monitoring Events, Top 5 Computers for Log Inspection Events, Top 5 Computers for Prevented Firewall Events, Top 5 Computers for Reconnaissance Scans, Top 5 Computers for Web Reputation Events, Top 5 Descriptions for Log Inspection Events, Top 5 Destination Ports for Prevented Firewall Events, Top 5 Detected Malware, Top 5 Infected Computers, Top 5 keys for Integrity Monitoring Events, Top 5 Reasons For Detected IPS Events, Top 5 Reasons for Integrity Monitoring Events, Top 5 Reasons for Log Inspection Events, Top 5 Reasons For Prevented IPS Events, Top 5 Reasons For Prevented Packets, Top 5 Scans Detected, Top 5 Source IPs For Detected IPS Events, Top 5 Source IPs for Prevented Firewall Events, Top 5 URLs for Web Reputation Events, Top Hosts For Prevented IPS Events, Web Reputation Event History



## Parser:
```
| extract "CEF:\s*0\|(?<Device_Vendor>.*)\|(?<Device_Product>.*)\|(?<Device_Version>.*)\|(?<Signature_ID>.*)\|(?<Name>.*)\|(?<Severity>.*)\|(?<Extension>.*)"
| parse regex field=extension "act=(?<Action>.+?)\s\w+?=" nodrop
```
### Use Cases:
Anti-Malware Event History, Firewall Event History, Firewall Events History, Integrity Monitoring Event History, IPS Event History, Log Inspection Events History, Reconnaissance Scan History, Top 5 Computers for Integrity Monitoring Events, Top 5 Computers for Log Inspection Events, Top 5 Computers for Prevented Firewall Events, Top 5 Computers for Reconnaissance Scans, Top 5 Computers for Web Reputation Events, Top 5 Descriptions for Log Inspection Events, Top 5 Destination Ports for Prevented Firewall Events, Top 5 Detected Malware, Top 5 Infected Computers, Top 5 keys for Integrity Monitoring Events, Top 5 Reasons For Detected IPS Events, Top 5 Reasons for Integrity Monitoring Events, Top 5 Reasons for Log Inspection Events, Top 5 Reasons For Prevented IPS Events, Top 5 Reasons For Prevented Packets, Top 5 Scans Detected, Top 5 Source IPs For Detected IPS Events, Top 5 Source IPs for Prevented Firewall Events, Top 5 URLs for Web Reputation Events, Top Hosts For Prevented IPS Events, Web Reputation Event History



## Parser:
```
| extract "CEF:\s*0\|(?<Device_Vendor>.*)\|(?<Device_Product>.*)\|(?<Device_Version>.*)\|(?<Signature_ID>.*)\|(?<Name>.*)\|(?<Severity>.*)\|(?<Extension>.*)"
| parse regex field=extension "act=(?<Action>.+?)\s\w+?=" nodrop 
```
### Use Cases:
Anti-Malware Event History, Firewall Event History, Firewall Events History, Integrity Monitoring Event History, IPS Event History, Log Inspection Events History, Reconnaissance Scan History, Top 5 Computers for Integrity Monitoring Events, Top 5 Computers for Log Inspection Events, Top 5 Computers for Prevented Firewall Events, Top 5 Computers for Reconnaissance Scans, Top 5 Computers for Web Reputation Events, Top 5 Descriptions for Log Inspection Events, Top 5 Destination Ports for Prevented Firewall Events, Top 5 Detected Malware, Top 5 Infected Computers, Top 5 keys for Integrity Monitoring Events, Top 5 Reasons For Detected IPS Events, Top 5 Reasons for Integrity Monitoring Events, Top 5 Reasons for Log Inspection Events, Top 5 Reasons For Prevented IPS Events, Top 5 Reasons For Prevented Packets, Top 5 Scans Detected, Top 5 Source IPs For Detected IPS Events, Top 5 Source IPs for Prevented Firewall Events, Top 5 URLs for Web Reputation Events, Top Hosts For Prevented IPS Events, Web Reputation Event History



## Parser:
```
| extract "CEF:\s*0\|(?<Device_Vendor>.*)\|(?<Device_Product>.*)\|(?<Device_Version>.*)\|(?<Signature_ID>.*)\|(?<Name>.*)\|(?<Severity>.*)\|(?<Extension>.*)"
| parse regex field=extension "cs1=(?<Description>.+?)\s\w+?=" nodrop
```
### Use Cases:
Anti-Malware Event History, Firewall Event History, Firewall Events History, Integrity Monitoring Event History, IPS Event History, Log Inspection Events History, Reconnaissance Scan History, Top 5 Computers for Integrity Monitoring Events, Top 5 Computers for Log Inspection Events, Top 5 Computers for Prevented Firewall Events, Top 5 Computers for Reconnaissance Scans, Top 5 Computers for Web Reputation Events, Top 5 Descriptions for Log Inspection Events, Top 5 Destination Ports for Prevented Firewall Events, Top 5 Detected Malware, Top 5 Infected Computers, Top 5 keys for Integrity Monitoring Events, Top 5 Reasons For Detected IPS Events, Top 5 Reasons for Integrity Monitoring Events, Top 5 Reasons for Log Inspection Events, Top 5 Reasons For Prevented IPS Events, Top 5 Reasons For Prevented Packets, Top 5 Scans Detected, Top 5 Source IPs For Detected IPS Events, Top 5 Source IPs for Prevented Firewall Events, Top 5 URLs for Web Reputation Events, Top Hosts For Prevented IPS Events, Web Reputation Event History



## Parser:
```
| extract "CEF:\s*0\|(?<Device_Vendor>.*)\|(?<Device_Product>.*)\|(?<Device_Version>.*)\|(?<Signature_ID>.*)\|(?<Name>.*)\|(?<Severity>.*)\|(?<Extension>.*)"
| parse regex field=extension "dpt=(?<dest_port>.+?)\s\w+?=" nodrop
```
### Use Cases:
Anti-Malware Event History, Firewall Event History, Firewall Events History, Integrity Monitoring Event History, IPS Event History, Log Inspection Events History, Reconnaissance Scan History, Top 5 Computers for Integrity Monitoring Events, Top 5 Computers for Log Inspection Events, Top 5 Computers for Prevented Firewall Events, Top 5 Computers for Reconnaissance Scans, Top 5 Computers for Web Reputation Events, Top 5 Descriptions for Log Inspection Events, Top 5 Destination Ports for Prevented Firewall Events, Top 5 Detected Malware, Top 5 Infected Computers, Top 5 keys for Integrity Monitoring Events, Top 5 Reasons For Detected IPS Events, Top 5 Reasons for Integrity Monitoring Events, Top 5 Reasons for Log Inspection Events, Top 5 Reasons For Prevented IPS Events, Top 5 Reasons For Prevented Packets, Top 5 Scans Detected, Top 5 Source IPs For Detected IPS Events, Top 5 Source IPs for Prevented Firewall Events, Top 5 URLs for Web Reputation Events, Top Hosts For Prevented IPS Events, Web Reputation Event History



## Parser:
```
| extract "CEF:\s*0\|(?<Device_Vendor>.*)\|(?<Device_Product>.*)\|(?<Device_Version>.*)\|(?<Signature_ID>.*)\|(?<Name>.*)\|(?<Severity>.*)\|(?<Extension>.*)"
| parse regex field=extension "dvchost=(?<Device_Hostname>.+?)\s\w+?=" nodrop
```
### Use Cases:
Anti-Malware Event History, Firewall Event History, Firewall Events History, Integrity Monitoring Event History, IPS Event History, Log Inspection Events History, Reconnaissance Scan History, Top 5 Computers for Integrity Monitoring Events, Top 5 Computers for Log Inspection Events, Top 5 Computers for Prevented Firewall Events, Top 5 Computers for Reconnaissance Scans, Top 5 Computers for Web Reputation Events, Top 5 Descriptions for Log Inspection Events, Top 5 Destination Ports for Prevented Firewall Events, Top 5 Detected Malware, Top 5 Infected Computers, Top 5 keys for Integrity Monitoring Events, Top 5 Reasons For Detected IPS Events, Top 5 Reasons for Integrity Monitoring Events, Top 5 Reasons for Log Inspection Events, Top 5 Reasons For Prevented IPS Events, Top 5 Reasons For Prevented Packets, Top 5 Scans Detected, Top 5 Source IPs For Detected IPS Events, Top 5 Source IPs for Prevented Firewall Events, Top 5 URLs for Web Reputation Events, Top Hosts For Prevented IPS Events, Web Reputation Event History



## Parser:
```
| extract "CEF:\s*0\|(?<Device_Vendor>.*)\|(?<Device_Product>.*)\|(?<Device_Version>.*)\|(?<Signature_ID>.*)\|(?<Name>.*)\|(?<Severity>.*)\|(?<Extension>.*)"
| parse regex field=extension "filePath=(?<Target_Entity>.+?)\s\w+?="
```
### Use Cases:
Anti-Malware Event History, Firewall Event History, Firewall Events History, Integrity Monitoring Event History, IPS Event History, Log Inspection Events History, Reconnaissance Scan History, Top 5 Computers for Integrity Monitoring Events, Top 5 Computers for Log Inspection Events, Top 5 Computers for Prevented Firewall Events, Top 5 Computers for Reconnaissance Scans, Top 5 Computers for Web Reputation Events, Top 5 Descriptions for Log Inspection Events, Top 5 Destination Ports for Prevented Firewall Events, Top 5 Detected Malware, Top 5 Infected Computers, Top 5 keys for Integrity Monitoring Events, Top 5 Reasons For Detected IPS Events, Top 5 Reasons for Integrity Monitoring Events, Top 5 Reasons for Log Inspection Events, Top 5 Reasons For Prevented IPS Events, Top 5 Reasons For Prevented Packets, Top 5 Scans Detected, Top 5 Source IPs For Detected IPS Events, Top 5 Source IPs for Prevented Firewall Events, Top 5 URLs for Web Reputation Events, Top Hosts For Prevented IPS Events, Web Reputation Event History



## Parser:
```
| extract "CEF:\s*0\|(?<Device_Vendor>.*)\|(?<Device_Product>.*)\|(?<Device_Version>.*)\|(?<Signature_ID>.*)\|(?<Name>.*)\|(?<Severity>.*)\|(?<Extension>.*)"
| parse regex field=extension "msg=(?<Message>.+?)$" nodrop  
```
### Use Cases:
Anti-Malware Event History, Firewall Event History, Firewall Events History, Integrity Monitoring Event History, IPS Event History, Log Inspection Events History, Reconnaissance Scan History, Top 5 Computers for Integrity Monitoring Events, Top 5 Computers for Log Inspection Events, Top 5 Computers for Prevented Firewall Events, Top 5 Computers for Reconnaissance Scans, Top 5 Computers for Web Reputation Events, Top 5 Descriptions for Log Inspection Events, Top 5 Destination Ports for Prevented Firewall Events, Top 5 Detected Malware, Top 5 Infected Computers, Top 5 keys for Integrity Monitoring Events, Top 5 Reasons For Detected IPS Events, Top 5 Reasons for Integrity Monitoring Events, Top 5 Reasons for Log Inspection Events, Top 5 Reasons For Prevented IPS Events, Top 5 Reasons For Prevented Packets, Top 5 Scans Detected, Top 5 Source IPs For Detected IPS Events, Top 5 Source IPs for Prevented Firewall Events, Top 5 URLs for Web Reputation Events, Top Hosts For Prevented IPS Events, Web Reputation Event History



## Parser:
```
| extract "CEF:\s*0\|(?<Device_Vendor>.*)\|(?<Device_Product>.*)\|(?<Device_Version>.*)\|(?<Signature_ID>.*)\|(?<Name>.*)\|(?<Severity>.*)\|(?<Extension>.*)"
| parse regex field=extension "request=(?<URL>.+?)\s\w+?=" nodrop
```
### Use Cases:
Anti-Malware Event History, Firewall Event History, Firewall Events History, Integrity Monitoring Event History, IPS Event History, Log Inspection Events History, Reconnaissance Scan History, Top 5 Computers for Integrity Monitoring Events, Top 5 Computers for Log Inspection Events, Top 5 Computers for Prevented Firewall Events, Top 5 Computers for Reconnaissance Scans, Top 5 Computers for Web Reputation Events, Top 5 Descriptions for Log Inspection Events, Top 5 Destination Ports for Prevented Firewall Events, Top 5 Detected Malware, Top 5 Infected Computers, Top 5 keys for Integrity Monitoring Events, Top 5 Reasons For Detected IPS Events, Top 5 Reasons for Integrity Monitoring Events, Top 5 Reasons for Log Inspection Events, Top 5 Reasons For Prevented IPS Events, Top 5 Reasons For Prevented Packets, Top 5 Scans Detected, Top 5 Source IPs For Detected IPS Events, Top 5 Source IPs for Prevented Firewall Events, Top 5 URLs for Web Reputation Events, Top Hosts For Prevented IPS Events, Web Reputation Event History



## Parser:
```
| extract "CEF:\s*0\|(?<Device_Vendor>.*)\|(?<Device_Product>.*)\|(?<Device_Version>.*)\|(?<Signature_ID>.*)\|(?<Name>.*)\|(?<Severity>.*)\|(?<Extension>.*)"
| parse regex field=extension "src=(?<src_ip>.+?)\s\w+?=" nodrop
```
### Use Cases:
Anti-Malware Event History, Firewall Event History, Firewall Events History, Integrity Monitoring Event History, IPS Event History, Log Inspection Events History, Reconnaissance Scan History, Top 5 Computers for Integrity Monitoring Events, Top 5 Computers for Log Inspection Events, Top 5 Computers for Prevented Firewall Events, Top 5 Computers for Reconnaissance Scans, Top 5 Computers for Web Reputation Events, Top 5 Descriptions for Log Inspection Events, Top 5 Destination Ports for Prevented Firewall Events, Top 5 Detected Malware, Top 5 Infected Computers, Top 5 keys for Integrity Monitoring Events, Top 5 Reasons For Detected IPS Events, Top 5 Reasons for Integrity Monitoring Events, Top 5 Reasons for Log Inspection Events, Top 5 Reasons For Prevented IPS Events, Top 5 Reasons For Prevented Packets, Top 5 Scans Detected, Top 5 Source IPs For Detected IPS Events, Top 5 Source IPs for Prevented Firewall Events, Top 5 URLs for Web Reputation Events, Top Hosts For Prevented IPS Events, Web Reputation Event History



## Parser:
```
| extract "CEF:\s*0\|(?<Device_Vendor>.*)\|(?<Device_Product>.*)\|(?<Device_Version>.*)\|(?<Signature_ID>.*)\|(?<Name>.*)\|(?<Severity>.*)\|(?<Extension>.*)"
| parse regex field=extension "target=(?<Target_Entity>.+?)\s\w+?=" nodrop
```
### Use Cases:
Anti-Malware Event History, Firewall Event History, Firewall Events History, Integrity Monitoring Event History, IPS Event History, Log Inspection Events History, Reconnaissance Scan History, Top 5 Computers for Integrity Monitoring Events, Top 5 Computers for Log Inspection Events, Top 5 Computers for Prevented Firewall Events, Top 5 Computers for Reconnaissance Scans, Top 5 Computers for Web Reputation Events, Top 5 Descriptions for Log Inspection Events, Top 5 Destination Ports for Prevented Firewall Events, Top 5 Detected Malware, Top 5 Infected Computers, Top 5 keys for Integrity Monitoring Events, Top 5 Reasons For Detected IPS Events, Top 5 Reasons for Integrity Monitoring Events, Top 5 Reasons for Log Inspection Events, Top 5 Reasons For Prevented IPS Events, Top 5 Reasons For Prevented Packets, Top 5 Scans Detected, Top 5 Source IPs For Detected IPS Events, Top 5 Source IPs for Prevented Firewall Events, Top 5 URLs for Web Reputation Events, Top Hosts For Prevented IPS Events, Web Reputation Event History



## Parser:
```
| extract "CEF:\s*0\|(?<Device_Vendor>.*)\|(?<Device_Product>.*)\|(?<Device_Version>.*)\|(?<Signature_ID>.*)\|(?<Name>.*)\|(?<Severity>.*)\|(?<Extension>.*)" 
```
### Use Cases:
Anti-Malware Event History, Firewall Event History, Firewall Events History, Integrity Monitoring Event History, IPS Event History, Log Inspection Events History, Reconnaissance Scan History, Top 5 Computers for Integrity Monitoring Events, Top 5 Computers for Log Inspection Events, Top 5 Computers for Prevented Firewall Events, Top 5 Computers for Reconnaissance Scans, Top 5 Computers for Web Reputation Events, Top 5 Descriptions for Log Inspection Events, Top 5 Destination Ports for Prevented Firewall Events, Top 5 Detected Malware, Top 5 Infected Computers, Top 5 keys for Integrity Monitoring Events, Top 5 Reasons For Detected IPS Events, Top 5 Reasons for Integrity Monitoring Events, Top 5 Reasons for Log Inspection Events, Top 5 Reasons For Prevented IPS Events, Top 5 Reasons For Prevented Packets, Top 5 Scans Detected, Top 5 Source IPs For Detected IPS Events, Top 5 Source IPs for Prevented Firewall Events, Top 5 URLs for Web Reputation Events, Top Hosts For Prevented IPS Events, Web Reputation Event History



## Parser:
```
| extract "CEF:\s*0\|(?<Device_Vendor>.*)\|(?<Device_Product>.*)\|(?<Device_Version>.*)\|(?<Signature_ID>.*)\|(?<Name>.*)\|(?<Severity>.*)\|(?<Extension>.*)" 
| parse regex field=extension "act=(?<Action>.+?)\s\w+?=" nodrop 
```
### Use Cases:
Anti-Malware Event History, Firewall Event History, Firewall Events History, Integrity Monitoring Event History, IPS Event History, Log Inspection Events History, Reconnaissance Scan History, Top 5 Computers for Integrity Monitoring Events, Top 5 Computers for Log Inspection Events, Top 5 Computers for Prevented Firewall Events, Top 5 Computers for Reconnaissance Scans, Top 5 Computers for Web Reputation Events, Top 5 Descriptions for Log Inspection Events, Top 5 Destination Ports for Prevented Firewall Events, Top 5 Detected Malware, Top 5 Infected Computers, Top 5 keys for Integrity Monitoring Events, Top 5 Reasons For Detected IPS Events, Top 5 Reasons for Integrity Monitoring Events, Top 5 Reasons for Log Inspection Events, Top 5 Reasons For Prevented IPS Events, Top 5 Reasons For Prevented Packets, Top 5 Scans Detected, Top 5 Source IPs For Detected IPS Events, Top 5 Source IPs for Prevented Firewall Events, Top 5 URLs for Web Reputation Events, Top Hosts For Prevented IPS Events, Web Reputation Event History



## Parser:
```
| extract "CEF:\s*0\|(?<Device_Vendor>.*)\|(?<Device_Product>.*)\|(?<Device_Version>.*)\|(?<Signature_ID>.*)\|(?<Name>.*)\|(?<Severity>.*)\|(?<Extension>.*)" 
| parse regex field=extension "act=(?<Action>.+?)\s\w+?=" nodrop 
| parse regex field=extension "dvchost=(?<Device_Hostname>.+?)\s\w+?=" nodrop 
```
### Use Cases:
Anti-Malware Event History, Firewall Event History, Firewall Events History, Integrity Monitoring Event History, IPS Event History, Log Inspection Events History, Reconnaissance Scan History, Top 5 Computers for Integrity Monitoring Events, Top 5 Computers for Log Inspection Events, Top 5 Computers for Prevented Firewall Events, Top 5 Computers for Reconnaissance Scans, Top 5 Computers for Web Reputation Events, Top 5 Descriptions for Log Inspection Events, Top 5 Destination Ports for Prevented Firewall Events, Top 5 Detected Malware, Top 5 Infected Computers, Top 5 keys for Integrity Monitoring Events, Top 5 Reasons For Detected IPS Events, Top 5 Reasons for Integrity Monitoring Events, Top 5 Reasons for Log Inspection Events, Top 5 Reasons For Prevented IPS Events, Top 5 Reasons For Prevented Packets, Top 5 Scans Detected, Top 5 Source IPs For Detected IPS Events, Top 5 Source IPs for Prevented Firewall Events, Top 5 URLs for Web Reputation Events, Top Hosts For Prevented IPS Events, Web Reputation Event History



## Parser:
```
| extract "CEF:\s*0\|(?<Device_Vendor>.*)\|(?<Device_Product>.*)\|(?<Device_Version>.*)\|(?<Signature_ID>.*)\|(?<Name>.*)\|(?<Severity>.*)\|(?<Extension>.*)" 
| parse regex field=extension "msg=(?<Message>.+?)$" nodrop 
```
### Use Cases:
Anti-Malware Event History, Firewall Event History, Firewall Events History, Integrity Monitoring Event History, IPS Event History, Log Inspection Events History, Reconnaissance Scan History, Top 5 Computers for Integrity Monitoring Events, Top 5 Computers for Log Inspection Events, Top 5 Computers for Prevented Firewall Events, Top 5 Computers for Reconnaissance Scans, Top 5 Computers for Web Reputation Events, Top 5 Descriptions for Log Inspection Events, Top 5 Destination Ports for Prevented Firewall Events, Top 5 Detected Malware, Top 5 Infected Computers, Top 5 keys for Integrity Monitoring Events, Top 5 Reasons For Detected IPS Events, Top 5 Reasons for Integrity Monitoring Events, Top 5 Reasons for Log Inspection Events, Top 5 Reasons For Prevented IPS Events, Top 5 Reasons For Prevented Packets, Top 5 Scans Detected, Top 5 Source IPs For Detected IPS Events, Top 5 Source IPs for Prevented Firewall Events, Top 5 URLs for Web Reputation Events, Top Hosts For Prevented IPS Events, Web Reputation Event History



## Parser:
```
| extract "CEF:\s*0\|(?<Device_Vendor>.*)\|(?<Device_Product>.*)\|(?<Device_Version>.*)\|(?<Signature_ID>.*)\|(?<Name>.*)\|(?<Severity>.*)\|(?<Extension>.*)" |where (signature_id >= 200 AND signature_id <= 299) OR (signature_id >= 300 AND signature_id <= 399) OR (signature_id >= 500 AND signature_id <= 899) OR signature_id = 10 OR (signature_id >= 1000000 AND signature_id <= 1999999) | "Intrusion Prevention" as deepsecuritysource | parse regex field=extension "act=(?<Action>.+?)\s\w+?=" nodrop
| parse regex field=extension "src=(?<src_ip>.+?)\s\w+?=" nodrop 
```
### Use Cases:
Anti-Malware Event History, Firewall Event History, Firewall Events History, Integrity Monitoring Event History, IPS Event History, Log Inspection Events History, Reconnaissance Scan History, Top 5 Computers for Integrity Monitoring Events, Top 5 Computers for Log Inspection Events, Top 5 Computers for Prevented Firewall Events, Top 5 Computers for Reconnaissance Scans, Top 5 Computers for Web Reputation Events, Top 5 Descriptions for Log Inspection Events, Top 5 Destination Ports for Prevented Firewall Events, Top 5 Detected Malware, Top 5 Infected Computers, Top 5 keys for Integrity Monitoring Events, Top 5 Reasons For Detected IPS Events, Top 5 Reasons for Integrity Monitoring Events, Top 5 Reasons for Log Inspection Events, Top 5 Reasons For Prevented IPS Events, Top 5 Reasons For Prevented Packets, Top 5 Scans Detected, Top 5 Source IPs For Detected IPS Events, Top 5 Source IPs for Prevented Firewall Events, Top 5 URLs for Web Reputation Events, Top Hosts For Prevented IPS Events, Web Reputation Event History


