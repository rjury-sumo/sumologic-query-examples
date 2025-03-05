# Parsers For Cisco Meraki

## Parser:
```
| parse "events * of ip * from server mac * for client mac * from router * on subnet * with dns *" as type, client_ip, dhcp_server, client_mac, router, subnet, dns nodrop
 
```
### Use Cases:
Actions, Allowed Destination IPs Locations, Allowed Destination Locations, Allowed Insecure  Traffic by Protocol, Allowed Insecure Traffic by Application and Involved Host, Allowed Network Activity On Unencrypted Default Ports, Allowed Traffic Outlier, Client DHCP Lease Events, Denied Destination IPs Locations, Denied Insecure Traffic by Application and Involved Host, Denied Insecure Traffic by Protocol, Denied Network Activity On Unencrypted Default Ports, Denied Traffic Outlier, Destination IP Threat Details, Destination Locations, Destination Locations By Country, Destinations, Event Priority, Event Type, Events, Events Over Time, File Issued Retrospective Malicious Disposition, Flows By Pattern, High Severity Threats, Host Impacted, HTTP Requests, IDS Signature Matched, Mac Addresses, Malicious File Blocked by AMP, Media Types Requested Over Time, Methods, Most Prevalent Threat, Number of Requests - Time Compare, Operating Systems and Browsers, OS Platform, Platform Versions, Possible Horizontal Port Scan Attack - Allowed, Possible Horizontal Port Scan Attack - Rejected, Possible Port Scan Attack, Possible Vertical Port Scan Attack - Allowed, Possible Vertical Port Scan Attack - Rejected, Protocols, Requests, Requests Outlier, Requests Per Minute, Security Threat Events Over Time, Sources, Threat By Actor, Threat by Malicious Confidence, Threat Count, Threat Location, Threats By URLs, Top 10 Destination IP, Top 10 Destination Ports, Top 10 Media Types Requested, Top 10 Requested URLs, Top 10 Source IP, Top 10 TCP Destination Ports, Top 10 UDP Destination Ports, Traffic Action - Time Compare, Unique Destination IPs Outlier, Unique MAC Address Outlier, Unique Source IPs Outlier, Uplink Connectivity Events, URL Threat Details



## Parser:
```
| parse "events failover to *" as target nodrop
| parse "Cellular connection *" as connection_status nodrop
 
```
### Use Cases:
Actions, Allowed Destination IPs Locations, Allowed Destination Locations, Allowed Insecure  Traffic by Protocol, Allowed Insecure Traffic by Application and Involved Host, Allowed Network Activity On Unencrypted Default Ports, Allowed Traffic Outlier, Client DHCP Lease Events, Denied Destination IPs Locations, Denied Insecure Traffic by Application and Involved Host, Denied Insecure Traffic by Protocol, Denied Network Activity On Unencrypted Default Ports, Denied Traffic Outlier, Destination IP Threat Details, Destination Locations, Destination Locations By Country, Destinations, Event Priority, Event Type, Events, Events Over Time, File Issued Retrospective Malicious Disposition, Flows By Pattern, High Severity Threats, Host Impacted, HTTP Requests, IDS Signature Matched, Mac Addresses, Malicious File Blocked by AMP, Media Types Requested Over Time, Methods, Most Prevalent Threat, Number of Requests - Time Compare, Operating Systems and Browsers, OS Platform, Platform Versions, Possible Horizontal Port Scan Attack - Allowed, Possible Horizontal Port Scan Attack - Rejected, Possible Port Scan Attack, Possible Vertical Port Scan Attack - Allowed, Possible Vertical Port Scan Attack - Rejected, Protocols, Requests, Requests Outlier, Requests Per Minute, Security Threat Events Over Time, Sources, Threat By Actor, Threat by Malicious Confidence, Threat Count, Threat Location, Threats By URLs, Top 10 Destination IP, Top 10 Destination Ports, Top 10 Media Types Requested, Top 10 Requested URLs, Top 10 Source IP, Top 10 TCP Destination Ports, Top 10 UDP Destination Ports, Traffic Action - Time Compare, Unique Destination IPs Outlier, Unique MAC Address Outlier, Unique Source IPs Outlier, Uplink Connectivity Events, URL Threat Details



## Parser:
```
| parse "events failover to *" as target nodrop
| parse "Cellular connection *" as connection_status nodrop
| parse "events * of ip * from server mac * for client mac * from router * on subnet * with dns *" as type, client_ip, dhcp_server, client_mac, router, subnet, dns nodrop
 
```
### Use Cases:
Actions, Allowed Destination IPs Locations, Allowed Destination Locations, Allowed Insecure  Traffic by Protocol, Allowed Insecure Traffic by Application and Involved Host, Allowed Network Activity On Unencrypted Default Ports, Allowed Traffic Outlier, Client DHCP Lease Events, Denied Destination IPs Locations, Denied Insecure Traffic by Application and Involved Host, Denied Insecure Traffic by Protocol, Denied Network Activity On Unencrypted Default Ports, Denied Traffic Outlier, Destination IP Threat Details, Destination Locations, Destination Locations By Country, Destinations, Event Priority, Event Type, Events, Events Over Time, File Issued Retrospective Malicious Disposition, Flows By Pattern, High Severity Threats, Host Impacted, HTTP Requests, IDS Signature Matched, Mac Addresses, Malicious File Blocked by AMP, Media Types Requested Over Time, Methods, Most Prevalent Threat, Number of Requests - Time Compare, Operating Systems and Browsers, OS Platform, Platform Versions, Possible Horizontal Port Scan Attack - Allowed, Possible Horizontal Port Scan Attack - Rejected, Possible Port Scan Attack, Possible Vertical Port Scan Attack - Allowed, Possible Vertical Port Scan Attack - Rejected, Protocols, Requests, Requests Outlier, Requests Per Minute, Security Threat Events Over Time, Sources, Threat By Actor, Threat by Malicious Confidence, Threat Count, Threat Location, Threats By URLs, Top 10 Destination IP, Top 10 Destination Ports, Top 10 Media Types Requested, Top 10 Requested URLs, Top 10 Source IP, Top 10 TCP Destination Ports, Top 10 UDP Destination Ports, Traffic Action - Time Compare, Unique Destination IPs Outlier, Unique MAC Address Outlier, Unique Source IPs Outlier, Uplink Connectivity Events, URL Threat Details



## Parser:
```
| parse "events Port * changed STP role from * to *" as port, initial_state, end_state nodrop
| parse "events port * status changed from * to *" as port, initial_state, end_state nodrop
| parse "events Power supply * was * into slot *" as serial_no, action, slot nodrop
| parse "events Power supply * was * from slot *" as serial_no, action, slot nodrop
| parse "events Port * received an STP BPDU from * so the port was blocked" as receiver, sender nodrop
| parse "events Port * received a BPDU from *, expected *" as receiver_port, actual, expected nodrop // STP BPDU sender conflict
| parse "events * run on port *" as type, port nodrop // Indicates that the cable test live tool was run on the specified port.
| parse "events * requested: Ports * will be * for * seconds" as type, port, state, duration nodrop // Cycle port live tool is run to bounce a port.
 
```
### Use Cases:
Actions, Allowed Destination IPs Locations, Allowed Destination Locations, Allowed Insecure  Traffic by Protocol, Allowed Insecure Traffic by Application and Involved Host, Allowed Network Activity On Unencrypted Default Ports, Allowed Traffic Outlier, Client DHCP Lease Events, Denied Destination IPs Locations, Denied Insecure Traffic by Application and Involved Host, Denied Insecure Traffic by Protocol, Denied Network Activity On Unencrypted Default Ports, Denied Traffic Outlier, Destination IP Threat Details, Destination Locations, Destination Locations By Country, Destinations, Event Priority, Event Type, Events, Events Over Time, File Issued Retrospective Malicious Disposition, Flows By Pattern, High Severity Threats, Host Impacted, HTTP Requests, IDS Signature Matched, Mac Addresses, Malicious File Blocked by AMP, Media Types Requested Over Time, Methods, Most Prevalent Threat, Number of Requests - Time Compare, Operating Systems and Browsers, OS Platform, Platform Versions, Possible Horizontal Port Scan Attack - Allowed, Possible Horizontal Port Scan Attack - Rejected, Possible Port Scan Attack, Possible Vertical Port Scan Attack - Allowed, Possible Vertical Port Scan Attack - Rejected, Protocols, Requests, Requests Outlier, Requests Per Minute, Security Threat Events Over Time, Sources, Threat By Actor, Threat by Malicious Confidence, Threat Count, Threat Location, Threats By URLs, Top 10 Destination IP, Top 10 Destination Ports, Top 10 Media Types Requested, Top 10 Requested URLs, Top 10 Source IP, Top 10 TCP Destination Ports, Top 10 UDP Destination Ports, Traffic Action - Time Compare, Unique Destination IPs Outlier, Unique MAC Address Outlier, Unique Source IPs Outlier, Uplink Connectivity Events, URL Threat Details



## Parser:
```
| parse "events port * status changed from * to *" as port, initial_state, end_state nodrop
| parse "events Power supply * was * into slot *" as serial_no, action, slot nodrop
| parse "events Power supply * was * from slot *" as serial_no, action, slot nodrop
| parse "events Port * received an STP BPDU from * so the port was blocked" as receiver, sender nodrop
| parse "events Port * received a BPDU from *, expected *" as receiver_port, actual, expected nodrop // STP BPDU sender conflict
| parse "events * run on port *" as type, port nodrop // Indicates that the cable test live tool was run on the specified port.
| parse "events * requested: Ports * will be * for * seconds" as type, port, state, duration nodrop // Cycle port live tool is run to bounce a port.
 
```
### Use Cases:
Actions, Allowed Destination IPs Locations, Allowed Destination Locations, Allowed Insecure  Traffic by Protocol, Allowed Insecure Traffic by Application and Involved Host, Allowed Network Activity On Unencrypted Default Ports, Allowed Traffic Outlier, Client DHCP Lease Events, Denied Destination IPs Locations, Denied Insecure Traffic by Application and Involved Host, Denied Insecure Traffic by Protocol, Denied Network Activity On Unencrypted Default Ports, Denied Traffic Outlier, Destination IP Threat Details, Destination Locations, Destination Locations By Country, Destinations, Event Priority, Event Type, Events, Events Over Time, File Issued Retrospective Malicious Disposition, Flows By Pattern, High Severity Threats, Host Impacted, HTTP Requests, IDS Signature Matched, Mac Addresses, Malicious File Blocked by AMP, Media Types Requested Over Time, Methods, Most Prevalent Threat, Number of Requests - Time Compare, Operating Systems and Browsers, OS Platform, Platform Versions, Possible Horizontal Port Scan Attack - Allowed, Possible Horizontal Port Scan Attack - Rejected, Possible Port Scan Attack, Possible Vertical Port Scan Attack - Allowed, Possible Vertical Port Scan Attack - Rejected, Protocols, Requests, Requests Outlier, Requests Per Minute, Security Threat Events Over Time, Sources, Threat By Actor, Threat by Malicious Confidence, Threat Count, Threat Location, Threats By URLs, Top 10 Destination IP, Top 10 Destination Ports, Top 10 Media Types Requested, Top 10 Requested URLs, Top 10 Source IP, Top 10 TCP Destination Ports, Top 10 UDP Destination Ports, Traffic Action - Time Compare, Unique Destination IPs Outlier, Unique MAC Address Outlier, Unique Source IPs Outlier, Uplink Connectivity Events, URL Threat Details



## Parser:
```
| parse "pattern: *" as pattern nodrop
 
```
### Use Cases:
Actions, Allowed Destination IPs Locations, Allowed Destination Locations, Allowed Insecure  Traffic by Protocol, Allowed Insecure Traffic by Application and Involved Host, Allowed Network Activity On Unencrypted Default Ports, Allowed Traffic Outlier, Client DHCP Lease Events, Denied Destination IPs Locations, Denied Insecure Traffic by Application and Involved Host, Denied Insecure Traffic by Protocol, Denied Network Activity On Unencrypted Default Ports, Denied Traffic Outlier, Destination IP Threat Details, Destination Locations, Destination Locations By Country, Destinations, Event Priority, Event Type, Events, Events Over Time, File Issued Retrospective Malicious Disposition, Flows By Pattern, High Severity Threats, Host Impacted, HTTP Requests, IDS Signature Matched, Mac Addresses, Malicious File Blocked by AMP, Media Types Requested Over Time, Methods, Most Prevalent Threat, Number of Requests - Time Compare, Operating Systems and Browsers, OS Platform, Platform Versions, Possible Horizontal Port Scan Attack - Allowed, Possible Horizontal Port Scan Attack - Rejected, Possible Port Scan Attack, Possible Vertical Port Scan Attack - Allowed, Possible Vertical Port Scan Attack - Rejected, Protocols, Requests, Requests Outlier, Requests Per Minute, Security Threat Events Over Time, Sources, Threat By Actor, Threat by Malicious Confidence, Threat Count, Threat Location, Threats By URLs, Top 10 Destination IP, Top 10 Destination Ports, Top 10 Media Types Requested, Top 10 Requested URLs, Top 10 Source IP, Top 10 TCP Destination Ports, Top 10 UDP Destination Ports, Traffic Action - Time Compare, Unique Destination IPs Outlier, Unique MAC Address Outlier, Unique Source IPs Outlier, Uplink Connectivity Events, URL Threat Details



## Parser:
```
| parse "request: * *" as method, url nodrop
| parse field=src "*:*" as src_ip, src_port nodrop | parse field=dst "*:*" as dest_ip, dest_port nodrop
 
```
### Use Cases:
Actions, Allowed Destination IPs Locations, Allowed Destination Locations, Allowed Insecure  Traffic by Protocol, Allowed Insecure Traffic by Application and Involved Host, Allowed Network Activity On Unencrypted Default Ports, Allowed Traffic Outlier, Client DHCP Lease Events, Denied Destination IPs Locations, Denied Insecure Traffic by Application and Involved Host, Denied Insecure Traffic by Protocol, Denied Network Activity On Unencrypted Default Ports, Denied Traffic Outlier, Destination IP Threat Details, Destination Locations, Destination Locations By Country, Destinations, Event Priority, Event Type, Events, Events Over Time, File Issued Retrospective Malicious Disposition, Flows By Pattern, High Severity Threats, Host Impacted, HTTP Requests, IDS Signature Matched, Mac Addresses, Malicious File Blocked by AMP, Media Types Requested Over Time, Methods, Most Prevalent Threat, Number of Requests - Time Compare, Operating Systems and Browsers, OS Platform, Platform Versions, Possible Horizontal Port Scan Attack - Allowed, Possible Horizontal Port Scan Attack - Rejected, Possible Port Scan Attack, Possible Vertical Port Scan Attack - Allowed, Possible Vertical Port Scan Attack - Rejected, Protocols, Requests, Requests Outlier, Requests Per Minute, Security Threat Events Over Time, Sources, Threat By Actor, Threat by Malicious Confidence, Threat Count, Threat Location, Threats By URLs, Top 10 Destination IP, Top 10 Destination Ports, Top 10 Media Types Requested, Top 10 Requested URLs, Top 10 Source IP, Top 10 TCP Destination Ports, Top 10 UDP Destination Ports, Traffic Action - Time Compare, Unique Destination IPs Outlier, Unique MAC Address Outlier, Unique Source IPs Outlier, Uplink Connectivity Events, URL Threat Details



## Parser:
```
| parse "request: * *" as method, url nodrop
| parse field=src "*:*" as src_ip, src_port nodrop | parse field=dst "*:*" as dest_ip, dest_port nodrop
| json field=raw "labels[*].name" as label_name
 
```
### Use Cases:
Actions, Allowed Destination IPs Locations, Allowed Destination Locations, Allowed Insecure  Traffic by Protocol, Allowed Insecure Traffic by Application and Involved Host, Allowed Network Activity On Unencrypted Default Ports, Allowed Traffic Outlier, Client DHCP Lease Events, Denied Destination IPs Locations, Denied Insecure Traffic by Application and Involved Host, Denied Insecure Traffic by Protocol, Denied Network Activity On Unencrypted Default Ports, Denied Traffic Outlier, Destination IP Threat Details, Destination Locations, Destination Locations By Country, Destinations, Event Priority, Event Type, Events, Events Over Time, File Issued Retrospective Malicious Disposition, Flows By Pattern, High Severity Threats, Host Impacted, HTTP Requests, IDS Signature Matched, Mac Addresses, Malicious File Blocked by AMP, Media Types Requested Over Time, Methods, Most Prevalent Threat, Number of Requests - Time Compare, Operating Systems and Browsers, OS Platform, Platform Versions, Possible Horizontal Port Scan Attack - Allowed, Possible Horizontal Port Scan Attack - Rejected, Possible Port Scan Attack, Possible Vertical Port Scan Attack - Allowed, Possible Vertical Port Scan Attack - Rejected, Protocols, Requests, Requests Outlier, Requests Per Minute, Security Threat Events Over Time, Sources, Threat By Actor, Threat by Malicious Confidence, Threat Count, Threat Location, Threats By URLs, Top 10 Destination IP, Top 10 Destination Ports, Top 10 Media Types Requested, Top 10 Requested URLs, Top 10 Source IP, Top 10 TCP Destination Ports, Top 10 UDP Destination Ports, Traffic Action - Time Compare, Unique Destination IPs Outlier, Unique MAC Address Outlier, Unique Source IPs Outlier, Uplink Connectivity Events, URL Threat Details



## Parser:
```
| parse "request: * *" as method, url nodrop
| parse field=src "*:*" as src_ip, src_port nodrop | parse field=dst "*:*" as dest_ip, dest_port nodrop
| parse regex field=url "\.(?<media_type>[A-Za-z]+)$"
 
```
### Use Cases:
Actions, Allowed Destination IPs Locations, Allowed Destination Locations, Allowed Insecure  Traffic by Protocol, Allowed Insecure Traffic by Application and Involved Host, Allowed Network Activity On Unencrypted Default Ports, Allowed Traffic Outlier, Client DHCP Lease Events, Denied Destination IPs Locations, Denied Insecure Traffic by Application and Involved Host, Denied Insecure Traffic by Protocol, Denied Network Activity On Unencrypted Default Ports, Denied Traffic Outlier, Destination IP Threat Details, Destination Locations, Destination Locations By Country, Destinations, Event Priority, Event Type, Events, Events Over Time, File Issued Retrospective Malicious Disposition, Flows By Pattern, High Severity Threats, Host Impacted, HTTP Requests, IDS Signature Matched, Mac Addresses, Malicious File Blocked by AMP, Media Types Requested Over Time, Methods, Most Prevalent Threat, Number of Requests - Time Compare, Operating Systems and Browsers, OS Platform, Platform Versions, Possible Horizontal Port Scan Attack - Allowed, Possible Horizontal Port Scan Attack - Rejected, Possible Port Scan Attack, Possible Vertical Port Scan Attack - Allowed, Possible Vertical Port Scan Attack - Rejected, Protocols, Requests, Requests Outlier, Requests Per Minute, Security Threat Events Over Time, Sources, Threat By Actor, Threat by Malicious Confidence, Threat Count, Threat Location, Threats By URLs, Top 10 Destination IP, Top 10 Destination Ports, Top 10 Media Types Requested, Top 10 Requested URLs, Top 10 Source IP, Top 10 TCP Destination Ports, Top 10 UDP Destination Ports, Traffic Action - Time Compare, Unique Destination IPs Outlier, Unique MAC Address Outlier, Unique Source IPs Outlier, Uplink Connectivity Events, URL Threat Details



## Parser:
```
| parse "request: * *" as method, url nodrop
| parse field=src "*:*" as src_ip, src_port nodrop | parse field=dst "*:*" as dest_ip, dest_port nodrop
| parse regex field=url "\.(?<media_type>[A-Za-z]+)$" 
 
```
### Use Cases:
Actions, Allowed Destination IPs Locations, Allowed Destination Locations, Allowed Insecure  Traffic by Protocol, Allowed Insecure Traffic by Application and Involved Host, Allowed Network Activity On Unencrypted Default Ports, Allowed Traffic Outlier, Client DHCP Lease Events, Denied Destination IPs Locations, Denied Insecure Traffic by Application and Involved Host, Denied Insecure Traffic by Protocol, Denied Network Activity On Unencrypted Default Ports, Denied Traffic Outlier, Destination IP Threat Details, Destination Locations, Destination Locations By Country, Destinations, Event Priority, Event Type, Events, Events Over Time, File Issued Retrospective Malicious Disposition, Flows By Pattern, High Severity Threats, Host Impacted, HTTP Requests, IDS Signature Matched, Mac Addresses, Malicious File Blocked by AMP, Media Types Requested Over Time, Methods, Most Prevalent Threat, Number of Requests - Time Compare, Operating Systems and Browsers, OS Platform, Platform Versions, Possible Horizontal Port Scan Attack - Allowed, Possible Horizontal Port Scan Attack - Rejected, Possible Port Scan Attack, Possible Vertical Port Scan Attack - Allowed, Possible Vertical Port Scan Attack - Rejected, Protocols, Requests, Requests Outlier, Requests Per Minute, Security Threat Events Over Time, Sources, Threat By Actor, Threat by Malicious Confidence, Threat Count, Threat Location, Threats By URLs, Top 10 Destination IP, Top 10 Destination Ports, Top 10 Media Types Requested, Top 10 Requested URLs, Top 10 Source IP, Top 10 TCP Destination Ports, Top 10 UDP Destination Ports, Traffic Action - Time Compare, Unique Destination IPs Outlier, Unique MAC Address Outlier, Unique Source IPs Outlier, Uplink Connectivity Events, URL Threat Details



## Parser:
```
| parse "request: * *" as method, url nodrop
| parse field=src "*:*" as src_ip, src_port nodrop | parse field=dst "*:*" as dest_ip, dest_port nodrop
| parse regex field=user_agent "Windows[\+\s]NT[\+\s](?<version>[\d.]+?)(?:;|\)|\s|$)" nodrop 
| parse regex field=user_agent "Windows[\+\s](?<version>[\d.]+?)(?:;|\)|\s|/)" nodrop 
| parse regex field=user_agent "[Mac|Macintosh;][\s\+]OS[\s\+](?<version>X[,\s]*[\d\_.\/]+?)(?:;|\)|,|\s)" nodrop 
| parse regex field=user_agent "MacBookAir[\d,]*;\s+(?<version>[\d\_\.\/]+?)(?:;|\)|,|\s)" nodrop 
| parse regex field=user_agent "Mac\sOS\s(?<version>X\sVersion\s[\d\_.\/]+?)(?:;|\)|,|\s)" nodrop  
| parse regex field=user_agent "Linux[/\s](?<version>[xi\d.\_]+?)(?:;|\)|\s)" nodrop 
| parse regex field=user_agent "Linux;\s.*?(?<version>Tizen\s[\d.]+?)(?:;|\)|\s)" nodrop  
| parse regex field=user_agent "iPad;[\+\s]CPU[\+\s]OS[\+\s](?<version>[\d_]+?)\s+" nodrop 
| parse regex field=user_agent "iPad[\d,]+[/]+(?<version>[\d_/.]+?)\s+" nodrop 
| parse regex field=user_agent "iPad; U; CPU OS (?<version>[\d_/.]+?)\s+" nodrop 
| parse regex field=user_agent "iOS[/\s](?<version>[\d_/.]+?)\s+.*iPad[\d,]*" nodrop 
| parse regex field=user_agent "iPad; iOS (?<version>[\d_/.]+?)(?:;|\)|\s)" nodrop 
| parse regex field=user_agent "iPhone;[\+\s]CPU[\+\s]iPhone[\+\s]OS[\+\s](?<version>[\d_]+?)(?:\+|\)|\s)" nodrop
| parse regex field=user_agent "iPhone OS[,\s](?<version>[\d_.]+?)(?:\+|\)|,)" nodrop
| parse regex field=user_agent "iPhone; CPU OS[,\s](?<version>[\d_.]+?)(?:\+|\)|,|\s)" nodrop
| parse regex field=user_agent "iPhone;\sU;\sCPU\sOS[,\s](?<version>[\d_.]+?)(?:\+|\)|,|\s)" nodrop
| parse regex field=user_agent "iPhone;\sU;\sCPU\siPhone OS[,\s](?<version>[\d_.]+?)(?:\+|\)|,|\s)" nodrop
| parse regex field=user_agent "iPhone[\d,]*[;/]\s*(?<version>[\d_.]+?)(?:\+|\)|,|\s|;|$|\s)" nodrop
| parse regex field=user_agent "iOS[/\s](?<version>[\d_/.]+?)\s+.*iPhone[\d,]*" nodrop 
| parse regex field=user_agent "Android[\+\s/,]\s*(?<version>[\d.]+?)(?:;|\)|/|\s|,|$)" nodrop 
| parse regex field=user_agent "Android OS version:\s+(?<version>[\d.]+?)(?:;|\)|/|\s|,|$|\-)" nodrop 
| parse regex field=user_agent "Darwin[/\s](?<version>[\d.]+?)(?:\+|$|\s|;)" nodrop 
| parse regex field=user_agent "CrOS\s+(?<version>[x\d.\_\+\s]+?)(?:;|\))" nodrop
 
```
### Use Cases:
Actions, Allowed Destination IPs Locations, Allowed Destination Locations, Allowed Insecure  Traffic by Protocol, Allowed Insecure Traffic by Application and Involved Host, Allowed Network Activity On Unencrypted Default Ports, Allowed Traffic Outlier, Client DHCP Lease Events, Denied Destination IPs Locations, Denied Insecure Traffic by Application and Involved Host, Denied Insecure Traffic by Protocol, Denied Network Activity On Unencrypted Default Ports, Denied Traffic Outlier, Destination IP Threat Details, Destination Locations, Destination Locations By Country, Destinations, Event Priority, Event Type, Events, Events Over Time, File Issued Retrospective Malicious Disposition, Flows By Pattern, High Severity Threats, Host Impacted, HTTP Requests, IDS Signature Matched, Mac Addresses, Malicious File Blocked by AMP, Media Types Requested Over Time, Methods, Most Prevalent Threat, Number of Requests - Time Compare, Operating Systems and Browsers, OS Platform, Platform Versions, Possible Horizontal Port Scan Attack - Allowed, Possible Horizontal Port Scan Attack - Rejected, Possible Port Scan Attack, Possible Vertical Port Scan Attack - Allowed, Possible Vertical Port Scan Attack - Rejected, Protocols, Requests, Requests Outlier, Requests Per Minute, Security Threat Events Over Time, Sources, Threat By Actor, Threat by Malicious Confidence, Threat Count, Threat Location, Threats By URLs, Top 10 Destination IP, Top 10 Destination Ports, Top 10 Media Types Requested, Top 10 Requested URLs, Top 10 Source IP, Top 10 TCP Destination Ports, Top 10 UDP Destination Ports, Traffic Action - Time Compare, Unique Destination IPs Outlier, Unique MAC Address Outlier, Unique Source IPs Outlier, Uplink Connectivity Events, URL Threat Details



## Parser:
```
| parse regex "security_event\s+(?<type>\S+)\s" nodrop
| parse regex " message:\s*(?<msg>.*)" nodrop
| parse field=src "*:*" as src_ip, src_port nodrop | parse field=dst "*:*" as dest_ip, dest_port nodrop | parse field=filename "\'*\'" as filename nodrop | parse field=disposition "\'*\'" as disposition nodrop
 
```
### Use Cases:
Actions, Allowed Destination IPs Locations, Allowed Destination Locations, Allowed Insecure  Traffic by Protocol, Allowed Insecure Traffic by Application and Involved Host, Allowed Network Activity On Unencrypted Default Ports, Allowed Traffic Outlier, Client DHCP Lease Events, Denied Destination IPs Locations, Denied Insecure Traffic by Application and Involved Host, Denied Insecure Traffic by Protocol, Denied Network Activity On Unencrypted Default Ports, Denied Traffic Outlier, Destination IP Threat Details, Destination Locations, Destination Locations By Country, Destinations, Event Priority, Event Type, Events, Events Over Time, File Issued Retrospective Malicious Disposition, Flows By Pattern, High Severity Threats, Host Impacted, HTTP Requests, IDS Signature Matched, Mac Addresses, Malicious File Blocked by AMP, Media Types Requested Over Time, Methods, Most Prevalent Threat, Number of Requests - Time Compare, Operating Systems and Browsers, OS Platform, Platform Versions, Possible Horizontal Port Scan Attack - Allowed, Possible Horizontal Port Scan Attack - Rejected, Possible Port Scan Attack, Possible Vertical Port Scan Attack - Allowed, Possible Vertical Port Scan Attack - Rejected, Protocols, Requests, Requests Outlier, Requests Per Minute, Security Threat Events Over Time, Sources, Threat By Actor, Threat by Malicious Confidence, Threat Count, Threat Location, Threats By URLs, Top 10 Destination IP, Top 10 Destination Ports, Top 10 Media Types Requested, Top 10 Requested URLs, Top 10 Source IP, Top 10 TCP Destination Ports, Top 10 UDP Destination Ports, Traffic Action - Time Compare, Unique Destination IPs Outlier, Unique MAC Address Outlier, Unique Source IPs Outlier, Uplink Connectivity Events, URL Threat Details


