# Parsers For Palo Alto Firewall - Cloud Security Monitoring and Analytics

## Parser:
```
| csv _raw extract 1 as f1, 2 as Receive_Time, 3 as serialNum, 4 as type, 5 as subtype, 6 as f2, 7 as LogGenerationTime, 8 as src_ip, 9 as dest_ip, 10 as NAT_src_ip, 11 as NAT_dest_ip, 12 as ruleName, 13 as src_user, 14 as dest_user, 15 as app, 16 as vsys, 17 as src_zone, 18 as dest_zone, 19 as inbound_interface, 20 as outbound_interface, 21 as LogAction, 22 as f3, 23 as SessonID, 24 as RepeatCount, 25 as src_port, 26 as dest_port, 27 as NAT_src_port, 28 as NAT_dest_port, 29 as flags, 30 as protocol, 31 as action, 32 as urlORFileName, 33 as Threat_Content_Name, 34 as category, 35 as severity, 36 as direction, 37 as seqNum, 38 as action_flags, 39 as src_country, 40 as dest_country, 41 as f4, 42 as content_type, 43 as pcap_id, 44 as filedigest, 45 as cloud, 46 as url_idx, 47 as user_agent, 48 as filetype, 49 as xff, 50 as referer, 51 as sender, 52 as subject, 53 as recipient, 54 as reportid, 55 as Device_Group_Hierarchy, 56 as vsys_name, 57 as DeviceName, 58 as f5, 59 as Source_VM_UUID, 60 as Destination_VM_UUID, 61 as Parent_Session_ID, 62 as Tunnel_ID_IMSI, 63 as Monitor_Tag_IMEI, 64 as method, 65 as parent_start_time, 66 as Tunnel, 67 as thr_category, 68 as contentver, 69 as f6, 70 as SCTP_Association_ID, 71 as Payload_Protocol_ID, 72 as http_headers
 
```
### Use Cases:
App is Incomplete, Not-Applicable, or Insufficient Data, App is Named, Daily Trend, Day Over Day Outbound DNS Activity, Detail, DNS Traffic - Multi-Dimensional Outlier (Outbound), DNS Traffic - Parameterized Outlier Lookup, INBOUND Traffic from OFAC Countries, Outbound DNS by src_ip, Outbound Traffic by App, Outbound Traffic by src_ip, Outbound Traffic Deltas by App - Now vs Last Week, Same Time Window, OUTBOUND Traffic to OFAC Countries, Outlier - Threats, Port Scanning Behavior (1src, 1dst, multi-port), Port Scanning Behavior (1src, 1port, multi-dest), Source IP by Bytes Sent, Stacked Count by Port, Top 20 Hosts with Outbound DNS Traffic, Top 20 Hosts with Outbound Traffic, Total, Traffic from OFAC Countries - Inbound, Traffic to OFAC Countries - Outbound, TREAT Traffic Categories by Timeslice, Trend



## Parser:
```
| csv _raw extract 1 as f1, 2 as Receive_Time, 3 as serialNum, 4 as type, 5 as subtype, 6 as f2, 7 as LogGenerationTime, 8 as src_ip, 9 as dest_ip, 10 as NAT_src_ip, 11 as NAT_dest_ip, 12 as ruleName, 13 as src_user, 14 as dest_user, 15 as app, 16 as vsys, 17 as src_zone, 18 as dest_zone, 19 as inbound_interface, 20 as outbound_interface, 21 as LogAction, 22 as f3, 23 as SessonID, 24 as RepeatCount, 25 as src_port, 26 as dest_port, 27 as NAT_src_port, 28 as NAT_dest_port, 29 as flags, 30 as protocol, 31 as action,32 as bytes, 33 as bytes_sent, 34 as bytes_recv, 35 as Packets, 36 as StartTime, 37 as ElapsedTime, 38 as Category, 39 as f4, 40 as seqNum, 41 as ActionFlags, 42 as src_Country, 43 as dest_country, 44 as pkts_sent, 45 as pkts_received, 46 as session_end_reason, 47 as Device_Group_Hierarchy , 48 as vsys_Name, 49 as DeviceName, 50 as action_source, 51 as Source_VM_UUID, 52 as Destination_VM_UUID, 53 as Tunnel_ID_IMSI, 54 as Monitor_Tag_IMEI, 55 as Parent_Session_ID, 56 as parent_start_time, 57 as Tunnel, 58 as SCTP_Association_ID, 59 as SCTP_Chunks, 60 as SCTP_Chunks_Sent, 61 as SCTP_Chunks_Received
 
```
### Use Cases:
Allowed Network Activity by Direction, Allowed Traffic Over Time, App is Incomplete, Not-Applicable, or Insufficient Data, App is Named, Daily Trend, Day Over Day Outbound DNS Activity, Denied Traffic Over Time, Detail, DNS Traffic - Multi-Dimensional Outlier (Outbound), DNS Traffic - Parameterized Outlier Lookup, INBOUND Traffic from OFAC Countries, Outbound DNS by src_ip, Outbound Traffic by App, Outbound Traffic by src_ip, Outbound Traffic Deltas by App - Now vs Last Week, Same Time Window, OUTBOUND Traffic to OFAC Countries, Outlier - Threats, Port Scanning Behavior (1src, 1dst, multi-port), Port Scanning Behavior (1src, 1port, multi-dest), Source IP by Bytes Sent, Stacked Count by Port, Top 10 Host - Receiving Inbound Traffic, Top 10 Host - Sending Outbound Traffic, Top 20 Hosts with Outbound DNS Traffic, Top 20 Hosts with Outbound Traffic, Top Destination IP, Top Source IP, Total, Traffic from OFAC Countries - Inbound, Traffic to OFAC Countries - Outbound, TREAT Traffic Categories by Timeslice, Trend



## Parser:
```
| csv _raw extract 1 as f1, 2 as Receive_Time, 3 as serialNum, 4 as type, 5 as subtype, 6 as f2, 7 as LogGenerationTime, 8 as src_ip, 9 as dest_ip, 10 as NAT_src_ip, 11 as NAT_dest_ip, 12 as ruleName, 13 as src_user, 14 as dest_user, 15 as app, 16 as vsys, 17 as src_zone, 18 as dest_zone, 19 as inbound_interface, 20 as outbound_interface, 21 as LogAction, 22 as f3, 23 as SessonID, 24 as RepeatCount, 25 as src_port, 26 as dest_port, 27 as NAT_src_port, 28 as NAT_dest_port, 29 as flags, 30 as protocol, 31 as action,32 as bytes, 33 as bytes_sent, 34 as bytes_recv, 35 as Packets, 36 as StartTime, 37 as ElapsedTime, 38 as Category, 39 as f4, 40 as seqNum, 41 as ActionFlags, 42 as src_Country, 43 as dest_country, 44 as pkts_sent, 45 as pkts_received, 46 as session_end_reason, 47 as Device_Group_Hierarchy , 48 as vsys_Name, 49 as DeviceName, 50 as action_source, 51 as Source_VM_UUID, 52 as Destination_VM_UUID, 53 as Tunnel_ID_IMSI, 54 as Monitor_Tag_IMEI, 55 as Parent_Session_ID, 56 as parent_start_time, 57 as Tunnel, 58 as SCTP_Association_ID, 59 as SCTP_Chunks, 60 as SCTP_Chunks_Sent, 61 as SCTP_Chunks_Received
| json field=raw "labels[*].name" as label_name 
 
```
### Use Cases:
App is Incomplete, Not-Applicable, or Insufficient Data, App is Named, Daily Trend, Day Over Day Outbound DNS Activity, Detail, DNS Traffic - Multi-Dimensional Outlier (Outbound), DNS Traffic - Parameterized Outlier Lookup, Outbound DNS by src_ip, Outbound Traffic by App, Outbound Traffic by src_ip, Outbound Traffic Deltas by App - Now vs Last Week, Same Time Window, Port Scanning Behavior (1src, 1dst, multi-port), Port Scanning Behavior (1src, 1port, multi-dest), Source IP by Bytes Sent, Stacked Count by Port, Top 20 Hosts with Outbound DNS Traffic, Top 20 Hosts with Outbound Traffic, Total, Traffic from OFAC Countries - Inbound, Traffic to OFAC Countries - Outbound, Trend


