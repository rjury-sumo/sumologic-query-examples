# Parsers For Cisco ASA

**Cisco ASA/All Daily NAT assignment messages/All Daily NAT assignment messages**
```
_sourceCategory={{_sourceCategory}} "Built" "translation" | parse regex "%[A-Z]{3}-(?<severity>\d)-(?<msg_code>\d{6}):(?<action>.+)$" nodrop 
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

**Cisco ASA/All NAT assignment messages/All NAT assignment messages**
```
_sourceCategory={{_sourceCategory}} "Built" "translation" 
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

**Cisco ASA/Denied And Dropped Connections/Denied And Dropped Connections**
```
_sourceCategory={{_sourceCategory}} AND ("denied" OR "Deny") 
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

**Cisco ASA/Detected Attacks/Detected Attacks**
```
_sourceCategory={{_sourceCategory}} ": ips:" AND ("attack" OR "Proxied RPC Request" OR "buffer overflow" OR "IP Impossible Packet" OR "IP Fragments Overlap" OR "Fragmented ICMP Traffic" OR "Large ICMP Traffic" OR "TCP NULL flags" OR "TCP SYN+FIN flags" OR "TCP FIN only flags") 
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

**Cisco ASA/Firewall Detail - New/Bandwidth Served in MBytes**
```
_sourceCategory = Labs/Cisco teardown bytes
| parse regex "%[A-Z]{3}-(?<severity>\d)-(?<msg_code>\d{6}): (?<action>\S+)\s" nodrop 
| where action="Teardown"
| parse regex " bytes (?<bytes>\d+)" 
```

**Cisco ASA/Firewall Detail - New/Denied Connections by Location**
```
_sourceCategory = Labs/Cisco AND ("denied" OR "Deny")  
| parse regex "(?: to | dst | dest | -> ).*?(?<dest_host>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" 
```

**Cisco ASA/Firewall Detail - New/Most Severe Messages**
```
_sourceCategory = Labs/Cisco 
| parse regex "%[A-Z]{3}-(?<severity>\d)-(?<msg_code>\d{6}):(?<action>.+?)(?:$| from | by |\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3})" nodrop 
```

**Cisco ASA/Firewall Detail - New/Outbound Connections Over Time**
```
_sourceCategory = Labs/Cisco built outbound 
| parse regex "to .*?(?<dest_host>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
```

**Cisco ASA/Firewall Detail - New/Outbound Connections To High Risk Countries**
```
_sourceCategory = Labs/Cisco built outbound 
| parse regex "to .*?(?<dest_host>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
```

**Cisco ASA/Firewall Detail - New/Outbound Destinations**
```
_sourceCategory = Labs/Cisco built outbound 
| parse regex "to .*?(?<dest_host>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
```

**Cisco ASA/Firewall Detail - New/Protocol Distribution Over Time**
```
_sourceCategory = Labs/Cisco built (inbound or outbound) 
| parse "Built * * connection" as direction, protocol
```

**Cisco ASA/Firewall Detail - New/Top Denied Sources**
```
_sourceCategory = Labs/Cisco AND ("denied" OR "Deny")  
| parse regex "(?:src|from) .*?(?<src_host>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
```

**Cisco ASA/Firewall Detail - New/Top Denying ACLs**
```
_sourceCategory = Labs/Cisco AND ("denied" OR "Deny") 
| parse regex "(?<action>access-list) (?<acl_id>\S+?) (?<access_decision>\w+) \w+ " nodrop 
| parse regex " (?<protocol>\w+) (?<action>Connection denied by outbound list) (?<acl_id>\S+?) src " nodrop
| parse regex "(?<action>ICMP packet type .+? denied by outbound list) (?<acl_id>\S+?) src "
```

**Cisco ASA/Firewall Detail/Bandwidth Served**
```
_sourceCategory={{_sourceCategory}} teardown bytes
| parse regex "%[A-Z]{3}-(?<severity>\d)-(?<msg_code>\d{6}): (?<action>\S+)\s" nodrop 
| where action="Teardown"
| parse regex " bytes (?<bytes>\d+)" 
```

**Cisco ASA/Firewall Detail/Denied Connections by Location**
```
_sourceCategory={{_sourceCategory}} AND ("denied" OR "Deny")  
| parse regex "(?: to | dst | dest | -> ).*?(?<dest_host>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" 
```

**Cisco ASA/Firewall Detail/Most Severe Messages**
```
_sourceCategory={{_sourceCategory}} 
| parse regex "%[A-Z]{3}-(?<severity>\d)-(?<msg_code>\d{6}):(?<action>.+?)(?:$| from | by |\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3})" nodrop 
```

**Cisco ASA/Firewall Detail/Outbound Connections Over Time**
```
_sourceCategory={{_sourceCategory}} built outbound 
| parse regex "to .*?(?<dest_host>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
```

**Cisco ASA/Firewall Detail/Outbound Connections To High Risk Countries**
```
_sourceCategory={{_sourceCategory}} built outbound 
| parse regex "to .*?(?<dest_host>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
```

**Cisco ASA/Firewall Detail/Outbound Destinations**
```
_sourceCategory={{_sourceCategory}} built outbound 
| parse regex "to .*?(?<dest_host>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
```

**Cisco ASA/Firewall Detail/Protocol Distribution Over Time**
```
_sourceCategory={{_sourceCategory}} built (inbound or outbound) 
| parse "Built * * connection" as direction, protocol
```

**Cisco ASA/Firewall Detail/Top Denied Sources**
```
_sourceCategory={{_sourceCategory}} AND ("denied" OR "Deny")  
| parse regex "(?:src|from) .*?(?<src_host>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
```

**Cisco ASA/Firewall Detail/Top Denying ACLs**
```
_sourceCategory={{_sourceCategory}} AND ("denied" OR "Deny") 
| parse regex "(?<action>access-list) (?<acl_id>\S+?) (?<access_decision>\w+) \w+ " nodrop 
| parse regex " (?<protocol>\w+) (?<action>Connection denied by outbound list) (?<acl_id>\S+?) src " nodrop
| parse regex "(?<action>ICMP packet type .+? denied by outbound list) (?<acl_id>\S+?) src "
```

**Cisco ASA/Hosts by Bandwidth usage/Hosts by Bandwidth usage**
```
_sourceCategory={{_sourceCategory}} "Teardown" 
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

**Cisco ASA/Inbound connections/Inbound connections**
```
_sourceCategory={{_sourceCategory}} AND "built inbound" 
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

**Cisco ASA/Logs Analytics/Count by Severity Code**
```
_sourceCategory={{_sourceCategory}}
| parse " %*:" as error
| where if ("{{error}}" = "*", true, error matches "{{error}}")
| count by error
| lookup severity, loglevel from https://s3.amazonaws.com/sumologic-app-data/cisco_ASA_syslog_messages.csv on error
```

**Cisco ASA/Logs Analytics/Count of ASA Logs by LogLevel**
```
_sourceCategory={{_sourceCategory}}
| parse " %*:" as error
| where if ("{{error}}" = "*", true, error matches "{{error}}")
| count by error
| lookup description, loglevel, severity from https://s3.amazonaws.com/sumologic-app-data/cisco_ASA_syslog_messages.csv on error
```

**Cisco ASA/Logs Analytics/Parameterized Search**
```
_sourceCategory={{_sourceCategory}}
| parse " %*:" as error
| where if ("{{error}}" = "*", true, error matches "{{error}}")
| count by _messagetime, error
| lookup description, loglevel from https://s3.amazonaws.com/sumologic-app-data/cisco_ASA_syslog_messages.csv on error
```

**Cisco ASA/Most frequent IPS messages/Most frequent IPS messages**
```
_sourceCategory={{_sourceCategory}} ": ips:" 
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

**Cisco ASA/Outbound connections/Outbound connections**
```
_sourceCategory={{_sourceCategory}} AND "built outbound" 
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

**Cisco ASA/Overview - New/Bandwidth Served**
```
_sourceCategory = Labs/Cisco teardown bytes
| parse regex "%[A-Z]{3}-(?<severity>\d)-(?<msg_code>\d{6}): (?<action>\S+)\s" nodrop 
| where action="Teardown"
| parse regex " bytes (?<bytes>\d+)" 
```

**Cisco ASA/Overview - New/Denied Connections by Location**
```
_sourceCategory = Labs/Cisco AND ("denied" OR "Deny")  
| parse regex "(?: to | dst | dest | -> ).*?(?<dest_host>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" 
```

**Cisco ASA/Overview - New/Outbound Destinations**
```
_sourceCategory = Labs/Cisco built outbound 
| parse regex "to .*?(?<dest_host>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
```

**Cisco ASA/Overview - New/Total Denied Sources**
```
_sourceCategory = Labs/Cisco AND ("denied" OR "Deny")  
| parse regex "(?:src|from) .*?(?<src_host>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
```

**Cisco ASA/Overview/Bandwidth Served**
```
_sourceCategory={{_sourceCategory}} teardown bytes
| parse regex "%[A-Z]{3}-(?<severity>\d)-(?<msg_code>\d{6}): (?<action>\S+)\s" nodrop 
| where action="Teardown"
| parse regex " bytes (?<bytes>\d+)" 
```

**Cisco ASA/Overview/Denied Connections by Location**
```
_sourceCategory={{_sourceCategory}} AND ("denied" OR "Deny")  
| parse regex "(?: to | dst | dest | -> ).*?(?<dest_host>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})" 
```

**Cisco ASA/Overview/Outbound Destinations**
```
_sourceCategory={{_sourceCategory}} built outbound 
| parse regex "to .*?(?<dest_host>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
```

**Cisco ASA/Overview/Total Denied Sources**
```
_sourceCategory={{_sourceCategory}} AND ("denied" OR "Deny")  
| parse regex "(?:src|from) .*?(?<src_host>\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3})"
```

**Cisco ASA/Top Denied Destinations/Top Denied Destinations**
```
_sourceCategory={{_sourceCategory}} AND ("denied" OR "Deny") 
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

**Cisco ASA/Top Denied Sources/Top Denied Sources**
```
_sourceCategory={{_sourceCategory}} AND ("denied" OR "Deny") 
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

**Cisco ASA/Top Denying ACLs/Top Denying ACLs**
```
_sourceCategory={{_sourceCategory}} AND ("denied" OR "Deny") 
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

**Cisco ASA/Top Hosts by Number of Flows/Top Hosts by Number of Flows**
```
_sourceCategory={{_sourceCategory}} "access-list" "permitted" 
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

**Cisco ASA/Top Internal destinations/Top Internal destinations**
```
_sourceCategory={{_sourceCategory}} AND "built inbound" 
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

**Cisco ASA/Top Sources with outbound connections/Top Sources with outbound connections**
```
_sourceCategory={{_sourceCategory}} AND "built outbound" 
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


