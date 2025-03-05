# Parsers For Cisco ASA

## Parser:
```
| parse " %*:" as error
 
```
### Use Cases:
All Daily NAT assignment messages, All NAT assignment messages, Bandwidth Served, Bandwidth Served in MBytes, Count by Severity Code, Count of ASA Logs by LogLevel, Denied And Dropped Connections, Denied Connections by Location, Detected Attacks, Hosts by Bandwidth usage, Inbound connections, Most frequent IPS messages, Most Severe Messages, Outbound connections, Outbound Connections Over Time, Outbound Connections To High Risk Countries, Outbound Destinations, Parameterized Search, Protocol Distribution Over Time, Top Denied Destinations, Top Denied Sources, Top Denying ACLs, Top Hosts by Number of Flows, Top Internal destinations, Top Sources with outbound connections, Total Denied Sources



## Parser:
```
| parse "Built * * connection" as direction, protocol
 
```
### Use Cases:
All Daily NAT assignment messages, All NAT assignment messages, Bandwidth Served, Bandwidth Served in MBytes, Denied And Dropped Connections, Denied Connections by Location, Detected Attacks, Hosts by Bandwidth usage, Inbound connections, Most frequent IPS messages, Most Severe Messages, Outbound connections, Outbound Connections Over Time, Outbound Connections To High Risk Countries, Outbound Destinations, Protocol Distribution Over Time, Top Denied Destinations, Top Denied Sources, Top Denying ACLs, Top Hosts by Number of Flows, Top Internal destinations, Top Sources with outbound connections, Total Denied Sources



## Parser:
```
| parse regex "(?: to | dst | dest | -> ).*?(?<dest_host>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" 
 
```
### Use Cases:
All Daily NAT assignment messages, All NAT assignment messages, Bandwidth Served, Bandwidth Served in MBytes, Count by Severity Code, Count of ASA Logs by LogLevel, Denied And Dropped Connections, Denied Connections by Location, Detected Attacks, Hosts by Bandwidth usage, Inbound connections, Most frequent IPS messages, Most Severe Messages, Outbound connections, Outbound Connections Over Time, Outbound Connections To High Risk Countries, Outbound Destinations, Parameterized Search, Protocol Distribution Over Time, Top Denied Destinations, Top Denied Sources, Top Denying ACLs, Top Hosts by Number of Flows, Top Internal destinations, Top Sources with outbound connections, Total Denied Sources



## Parser:
```
| parse regex "(?:src|from) .*?(?<src_host>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
 
```
### Use Cases:
All Daily NAT assignment messages, All NAT assignment messages, Bandwidth Served, Bandwidth Served in MBytes, Count by Severity Code, Count of ASA Logs by LogLevel, Denied And Dropped Connections, Denied Connections by Location, Detected Attacks, Hosts by Bandwidth usage, Inbound connections, Most frequent IPS messages, Most Severe Messages, Outbound connections, Outbound Connections Over Time, Outbound Connections To High Risk Countries, Outbound Destinations, Parameterized Search, Protocol Distribution Over Time, Top Denied Destinations, Top Denied Sources, Top Denying ACLs, Top Hosts by Number of Flows, Top Internal destinations, Top Sources with outbound connections, Total Denied Sources



## Parser:
```
| parse regex "(?<action>access-list) (?<acl_id>\S+?) (?<access_decision>\w+) \w+ " nodrop 
| parse regex " (?<protocol>\w+) (?<action>Connection denied by outbound list) (?<acl_id>\S+?) src " nodrop
| parse regex "(?<action>ICMP packet type .+? denied by outbound list) (?<acl_id>\S+?) src "
 
```
### Use Cases:
All Daily NAT assignment messages, All NAT assignment messages, Bandwidth Served, Bandwidth Served in MBytes, Denied And Dropped Connections, Denied Connections by Location, Detected Attacks, Hosts by Bandwidth usage, Inbound connections, Most frequent IPS messages, Most Severe Messages, Outbound connections, Outbound Connections Over Time, Outbound Connections To High Risk Countries, Outbound Destinations, Protocol Distribution Over Time, Top Denied Destinations, Top Denied Sources, Top Denying ACLs, Top Hosts by Number of Flows, Top Internal destinations, Top Sources with outbound connections, Total Denied Sources



## Parser:
```
| parse regex "%[A-Z]{3}-(?<severity>\d)-(?<msg_code>\d{6}): (?<action>\S+)\s" nodrop 
| parse regex " bytes (?<bytes>\d+)" 
 
```
### Use Cases:
All Daily NAT assignment messages, All NAT assignment messages, Bandwidth Served, Bandwidth Served in MBytes, Count by Severity Code, Count of ASA Logs by LogLevel, Denied And Dropped Connections, Denied Connections by Location, Detected Attacks, Hosts by Bandwidth usage, Inbound connections, Most frequent IPS messages, Most Severe Messages, Outbound connections, Outbound Connections Over Time, Outbound Connections To High Risk Countries, Outbound Destinations, Parameterized Search, Protocol Distribution Over Time, Top Denied Destinations, Top Denied Sources, Top Denying ACLs, Top Hosts by Number of Flows, Top Internal destinations, Top Sources with outbound connections, Total Denied Sources



## Parser:
```
| parse regex "%[A-Z]{3}-(?<severity>\d)-(?<msg_code>\d{6}):(?<action>.+?)(?:$| from | by |\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3})" nodrop 
 
```
### Use Cases:
All Daily NAT assignment messages, All NAT assignment messages, Bandwidth Served, Bandwidth Served in MBytes, Denied And Dropped Connections, Denied Connections by Location, Detected Attacks, Hosts by Bandwidth usage, Inbound connections, Most frequent IPS messages, Most Severe Messages, Outbound connections, Outbound Connections Over Time, Outbound Connections To High Risk Countries, Outbound Destinations, Protocol Distribution Over Time, Top Denied Destinations, Top Denied Sources, Top Denying ACLs, Top Hosts by Number of Flows, Top Internal destinations, Top Sources with outbound connections, Total Denied Sources



## Parser:
```
| parse regex "%[A-Z]{3}-(?<severity>\d)-(?<msg_code>\d{6}):(?<action>.+)$" nodrop 
| parse regex " duration (?<duration>[\d:]+) bytes (?<bytes>\d+)" nodrop 
| parse regex "(?<connection_count>\d+ in use, \d+ most used)" nodrop 
| parse regex "%[A-Z]{3}-\d-\d{6}:.+? for (?<src_interface>.+?):(?<src_host>.+?)\/(?<src_port>\d+) .*?to (?<dest_interface>.+?):(?<dest_host>.+?)\/(?<dest_port>\d+)" nodrop
| parse regex "(?<action>Built .+?) (?:for |from )" nodrop 
| parse regex "Built \w+ (?<protocol>\w+) (?:translation|connection) " nodrop 
| parse regex " from (?<src_interface>.+?):(?<src_host>.+?) to (?<dest_interface>.+?):(?<dest_host>.+?)(?:\s|$)" nodrop 
| parse regex " from (?<src_interface>.+?):(?<src_host>.+?)/(?<src_port>\d+) to (?<dest_interface>.+?):(?<dest_host>.+?)/(?<dest_port>\d+)" nodrop 
| parse regex "(?<action>access-list) (?<acl_id>.+?) (?<access_decision>\w+) (?<protocol>\w+) (?<src_interface>.+?)/(?<src_host>.+?)\((?<src_port>\d+)\) -[>]{0,1} (?<dest_interface>.+?)/(?<dest_host>.+?)\((?<dest_port>\d+)\) hit-cnt (?<hit_cnt>\d+) (?<hit_cnt_interval>.+?)(?: \[|$)" nodrop 
| parse regex "(?<action>access-list) (?<acl_id>.+?) (?<access_decision>\w+) (?<protocol>\w+) (?<src_interface>.+?)/(?<src_host>.+?)\((?<src_port>\d+)\) -[>]{0,1} (?<dest_interface>.+?)/(?<dest_host>.+?)\((?<dest_port>\d+)\) hit-cnt (?<hit_cnt>\d+) \((?<hit_cnt_interval>.+?)\)" nodrop 
| parse regex "(?<action>Deny .+?) from (?<src_host>.+?) to (?<dest_host>.+?) on interface (?<src_interface>.+?)(?:\s|$)"  nodrop 
| parse regex "(?<action>Deny .+?) src (?<src_interface>.+?):(?<src_host>.+?) dst (?<dest_interface>.+?):(?<dest_host>.+?)(?:\s|$)" nodrop 
| parse regex "Deny (?<protocol>\w+) (?:reverse path|connection spoof|src )" nodrop 
| parse regex "(?<action>Deny inbound \(No xlate\))"  nodrop 
| parse regex "(?<action>Deny inbound \(No xlate\)) (?<protocol>\w+) src (?<src_interface>.+?):(?<src_host>.+?) dst (?<dest_interface>.+?):(?<dest_host>.+?)(?:\s|$)" nodrop 
| parse regex "(?<action>Deny inbound \(No xlate\)) (?<protocol>\w+) src (?<src_interface>.+?):(?<src_host>.+?)\/(?<src_port>\d+) dst (?<dest_interface>.+?):(?<dest_host>.+?)\/(?<dest_port>\d+)" nodrop 
| parse regex " (?<protocol>\w+) (?<action>Connection denied by outbound list) (?<acl_id>.+?) src (?<src_host>.+?) dest (?<dest_host>.+?)(?:\s|$)" nodrop 
| parse regex "(?<action>Deny inbound) (?<protocol>\w+) from (?<src_host>.+?)/(?<src_port>\d+) to (?<dest_host>.+?)/(?<dest_port>\d+)" nodrop 
| parse regex "(?<action>Deny inbound) (?<protocol>\w+) from (?<src_host>.+?)/(?<src_port>\d+) to (?<dest_host>.+?)/(?<dest_port>\d+) on interface (?<src_interface>.+?)(?:\s|$)" nodrop 
| parse regex "(?<action>Deny inbound) (?<protocol>\w+) src (?<src_interface>.+?):(?<src_host>.+?)/(?<src_port>\d+) dst (?<dest_interface>.+?):(?<dest_host>.+?)/(?<dest_port>\d+)" nodrop 
| parse regex "(?<action>Deny IP) from (?<src_host>.+?) to (?<dest_host>.+?)(?:,|\s|$)" nodrop 
| parse regex "(?<action>Dropping echo request) from (?<src_host>.+?) to PAT address" nodrop 
| parse regex "(?<action>Deny inbound icmp) src (?<src_interface>.+?):(?<src_host>.+?) dst (?<dest_interface>.+?):(?<dest_host>.+?)(?:\s|$)" nodrop 
| parse regex "(?<action>Deny TCP \(no connection\)) from (?<src_host>.+?)/(?<src_port>\d+) to (?<dest_host>.+?)/(?<dest_port>\d+) flags (?<flags>.+?) on interface (?<src_interface>.+?)(?:\s|$)" nodrop 
| parse regex "(?<action>Deny IP spoof) from \((?<src_host>.+?)\) to (?<dest_host>.+?) on interface (?<src_interface>.+?)(?:\s|$)" nodrop 
| parse regex "(?<action>Deny IP due to Land Attack) from (?<src_host>.+?) to (?<dest_host>.+?)(?:\s|$)" nodrop 
| parse regex "(?<action>ICMP packet type .+? denied by outbound list) (?<acl_id>.+?) src (?<src_host>.+?) dest (?<dest_host>.+?)(?:\s|$)" nodrop 
| parse regex "(?<action>Deny IP teardrop fragment .+?) from (?<src_host>.+?) to (?<dest_host>.+?)(?:\s|$)" nodrop 
| parse regex "(?<action>Teardown) (?<protocol>TCP|UDP) connection \d+ for " nodrop 
| parse regex "%[A-Z]{3}-\d-\d{6}: (?<src_host>.+?) (?<action>Accessed URL) (?<dest_host>[\d\.]+):(?<url>.+)$" nodrop
| parse regex "%[A-Z]{3}-\d-\d{6}: (?<user>.+?)@(?<src_host>.+?) (?<action>Accessed URL) (?<dest_host>.+?):(?<url>.+)$" nodrop 
| parse regex "(?<action>\w+ local-host) (?<src_interface>.+?):(?<src_host>.+?)$" nodrop 
| parse regex "(?<action>\w+ local-host) (?<src_interface>.+?):(?<src_host>.+?) duration (?<duration>.+)$" nodrop 
| parse regex "%[A-Z]{3}-(?<severity>\d)-(?<msg_code>\d{6})[:]{0,1} IPS:(?<ips_num>\d+) (?<action>.+?) from (?<src_host>.+?) to (?<dest_host>.+?) on interface (?<src_interface>.+?)(?:\s|$ 
```
### Use Cases:
All Daily NAT assignment messages, All NAT assignment messages, Bandwidth Served, Bandwidth Served in MBytes, Denied And Dropped Connections, Denied Connections by Location, Detected Attacks, Hosts by Bandwidth usage, Inbound connections, Most frequent IPS messages, Most Severe Messages, Outbound connections, Outbound Connections Over Time, Outbound Connections To High Risk Countries, Outbound Destinations, Protocol Distribution Over Time, Top Denied Destinations, Top Denied Sources, Top Denying ACLs, Top Hosts by Number of Flows, Top Internal destinations, Top Sources with outbound connections, Total Denied Sources



## Parser:
```
| parse regex "%[A-Z]{3}-(?<severity>\d)-(?<msg_code>\d{6}):(?<action>.+)$" nodrop 
| parse regex " duration (?<duration>[\d:]+) bytes (?<bytes>\d+)" nodrop 
| parse regex "(?<connection_count>\d+ in use, \d+ most used)" nodrop 
| parse regex "%[A-Z]{3}-\d-\d{6}:.+? for (?<src_interface>.+?):(?<src_host>.+?)\/(?<src_port>\d+) .*?to (?<dest_interface>.+?):(?<dest_host>.+?)\/(?<dest_port>\d+)" nodrop
| parse regex "(?<action>Built .+?) (?:for |from )" nodrop 
| parse regex "Built \w+ (?<protocol>\w+) (?:translation|connection) " nodrop 
| parse regex " from (?<src_interface>.+?):(?<src_host>.+?) to (?<dest_interface>.+?):(?<dest_host>.+?)(?:\s|$)" nodrop 
| parse regex " from (?<src_interface>.+?):(?<src_host>.+?)/(?<src_port>\d+) to (?<dest_interface>.+?):(?<dest_host>.+?)/(?<dest_port>\d+)" nodrop 
| parse regex "(?<action>access-list) (?<acl_id>.+?) (?<access_decision>\w+) (?<protocol>\w+) (?<src_interface>.+?)/(?<src_host>.+?)\((?<src_port>\d+)\) -[>]{0,1} (?<dest_interface>.+?)/(?<dest_host>.+?)\((?<dest_port>\d+)\) hit-cnt (?<hit_cnt>\d+) (?<hit_cnt_interval>.+?)(?: \[|$)" nodrop 
| parse regex "(?<action>access-list) (?<acl_id>.+?) (?<access_decision>\w+) (?<protocol>\w+) (?<src_interface>.+?)/(?<src_host>.+?)\((?<src_port>\d+)\) -[>]{0,1} (?<dest_interface>.+?)/(?<dest_host>.+?)\((?<dest_port>\d+)\) hit-cnt (?<hit_cnt>\d+) \((?<hit_cnt_interval>.+?)\)" nodrop 
| parse regex "(?<action>Deny .+?) from (?<src_host>.+?) to (?<dest_host>.+?) on interface (?<src_interface>.+?)(?:\s|$)"  nodrop 
| parse regex "(?<action>Deny .+?) src (?<src_interface>.+?):(?<src_host>.+?) dst (?<dest_interface>.+?):(?<dest_host>.+?)(?:\s|$)" nodrop 
| parse regex "Deny (?<protocol>\w+) (?:reverse path|connection spoof|src )" nodrop 
| parse regex "(?<action>Deny inbound \(No xlate\))"  nodrop 
| parse regex "(?<action>Deny inbound \(No xlate\)) (?<protocol>\w+) src (?<src_interface>.+?):(?<src_host>.+?) dst (?<dest_interface>.+?):(?<dest_host>.+?)(?:\s|$)" nodrop 
| parse regex "(?<action>Deny inbound \(No xlate\)) (?<protocol>\w+) src (?<src_interface>.+?):(?<src_host>.+?)\/(?<src_port>\d+) dst (?<dest_interface>.+?):(?<dest_host>.+?)\/(?<dest_port>\d+)" nodrop 
| parse regex " (?<protocol>\w+) (?<action>Connection denied by outbound list) (?<acl_id>.+?) src (?<src_host>.+?) dest (?<dest_host>.+?)(?:\s|$)" nodrop 
| parse regex "(?<action>Deny inbound) (?<protocol>\w+) from (?<src_host>.+?)/(?<src_port>\d+) to (?<dest_host>.+?)/(?<dest_port>\d+)" nodrop 
| parse regex "(?<action>Deny inbound) (?<protocol>\w+) from (?<src_host>.+?)/(?<src_port>\d+) to (?<dest_host>.+?)/(?<dest_port>\d+) on interface (?<src_interface>.+?)(?:\s|$)" nodrop 
| parse regex "(?<action>Deny inbound) (?<protocol>\w+) src (?<src_interface>.+?):(?<src_host>.+?)/(?<src_port>\d+) dst (?<dest_interface>.+?):(?<dest_host>.+?)/(?<dest_port>\d+)" nodrop 
| parse regex "(?<action>Deny IP) from (?<src_host>.+?) to (?<dest_host>.+?)(?:,|\s|$)" nodrop 
| parse regex "(?<action>Dropping echo request) from (?<src_host>.+?) to PAT address" nodrop 
| parse regex "(?<action>Deny inbound icmp) src (?<src_interface>.+?):(?<src_host>.+?) dst (?<dest_interface>.+?):(?<dest_host>.+?)(?:\s|$)" nodrop 
| parse regex "(?<action>Deny TCP \(no connection\)) from (?<src_host>.+?)/(?<src_port>\d+) to (?<dest_host>.+?)/(?<dest_port>\d+) flags (?<flags>.+?) on interface (?<src_interface>.+?)(?:\s|$)" nodrop 
| parse regex "(?<action>Deny IP spoof) from \((?<src_host>.+?)\) to (?<dest_host>.+?) on interface (?<src_interface>.+?)(?:\s|$)" nodrop 
| parse regex "(?<action>Deny IP due to Land Attack) from (?<src_host>.+?) to (?<dest_host>.+?)(?:\s|$)" nodrop 
| parse regex "(?<action>ICMP packet type .+? denied by outbound list) (?<acl_id>.+?) src (?<src_host>.+?) dest (?<dest_host>.+?)(?:\s|$)" nodrop 
| parse regex "(?<action>Deny IP teardrop fragment .+?) from (?<src_host>.+?) to (?<dest_host>.+?)(?:\s|$)" nodrop 
| parse regex "(?<action>Teardown) (?<protocol>TCP|UDP) connection \d+ for " nodrop 
| parse regex "%[A-Z]{3}-\d-\d{6}: (?<src_host>.+?) (?<action>Accessed URL) (?<dest_host>[\d\.]+):(?<url>.+)$" nodrop
| parse regex "%[A-Z]{3}-\d-\d{6}: (?<user>.+?)@(?<src_host>.+?) (?<action>Accessed URL) (?<dest_host>.+?):(?<url>.+)$" nodrop 
| parse regex "(?<action>\w+ local-host) (?<src_interface>.+?):(?<src_host>.+?)$" nodrop 
| parse regex "(?<action>\w+ local-host) (?<src_interface>.+?):(?<src_host>.+?) duration (?<duration>.+)$" nodrop 
| parse regex "%[A-Z]{3}-(?<severity>\d)-(?<msg_code>\d{6})[:]{0,1} IPS:(?<ips_num>\d+) (?<action>.+?) from (?<src_host>.+?) to (?<dest_host>.+?) on interface (?<src_interface>.+?)(?:\s|$)" nodrop
 
```
### Use Cases:
All Daily NAT assignment messages, All NAT assignment messages, Bandwidth Served, Bandwidth Served in MBytes, Denied And Dropped Connections, Denied Connections by Location, Detected Attacks, Hosts by Bandwidth usage, Inbound connections, Most frequent IPS messages, Most Severe Messages, Outbound connections, Outbound Connections Over Time, Outbound Connections To High Risk Countries, Outbound Destinations, Protocol Distribution Over Time, Top Denied Destinations, Top Denied Sources, Top Denying ACLs, Top Hosts by Number of Flows, Top Internal destinations, Top Sources with outbound connections, Total Denied Sources



## Parser:
```
| parse regex "to .*?(?<dest_host>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
 
```
### Use Cases:
All Daily NAT assignment messages, All NAT assignment messages, Bandwidth Served, Bandwidth Served in MBytes, Count by Severity Code, Count of ASA Logs by LogLevel, Denied And Dropped Connections, Denied Connections by Location, Detected Attacks, Hosts by Bandwidth usage, Inbound connections, Most frequent IPS messages, Most Severe Messages, Outbound connections, Outbound Connections Over Time, Outbound Connections To High Risk Countries, Outbound Destinations, Parameterized Search, Protocol Distribution Over Time, Top Denied Destinations, Top Denied Sources, Top Denying ACLs, Top Hosts by Number of Flows, Top Internal destinations, Top Sources with outbound connections, Total Denied Sources


