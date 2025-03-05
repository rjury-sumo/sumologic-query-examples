# Parsers For PCI Compliance For Palo Alto Networks 9

## Parser:
```
| csv _raw extract 1 as f1, 2 as Receive_Time, 3 as serialNum, 4 as type, 5 as subtype, 6 as f2, 7 as LogGenerationTime, 8 as src_ip, 9 as dest_ip, 10 as NAT_src_ip, 11 as NAT_dest_ip, 12 as ruleName, 13 as src_user, 14 as dest_user, 15 as app, 16 as vsys, 17 as src_zone, 18 as dest_zone, 19 as inbound_interface, 20 as outbound_interface, 21 as LogAction, 22 as f3, 23 as SessonID, 24 as RepeatCount, 25 as src_port, 26 as dest_port, 27 as NAT_src_port, 28 as NAT_dest_port, 29 as flags, 30 as protocol, 31 as action,32 as bytes, 33 as bytes_sent, 34 as bytes_recv, 35 as Packets, 36 as StartTime, 37 as ElapsedTime, 38 as Category, 39 as f4, 40 as seqNum, 41 as ActionFlags, 42 as src_Country, 43 as dest_country, 44 as pkts_sent, 45 as pkts_received, 46 as session_end_reason, 47 as Device_Group_Hierarchy , 48 as vsys_Name, 49 as DeviceName, 50 as action_source, 51 as Source_VM_UUID, 52 as Destination_VM_UUID, 53 as Tunnel_ID_IMSI, 54 as Monitor_Tag_IMEI, 55 as Parent_Session_ID, 56 as parent_start_time, 57 as Tunnel, 58 as SCTP_Association_ID, 59 as SCTP_Chunks, 60 as SCTP_Chunks_Sent, 61 as SCTP_Chunks_Received
 
```
### Use Cases:
Allowed Insecure Transport Protocol to or from CDE, Allowed Network Activity by Direction, Allowed Network Activity by Transport and Internet Layer Protocol, Allowed Traffic By Application Over Time, Allowed Traffic Over Time, Denied Traffic Over Time, Inbound Network Activity, Insecure Allowed Traffic by Application and Involved Host, Insecure Allowed Traffic by Protocol, Insecure Allowed Traffic by Target Port and Involved Host, Insecure Denied Traffic by Protocol, Multi-service Detected on Same Host, Network Activity - Unencrypted Default Port, Network Traffic Over Time, Outbound Network Activity, Possible Horizontal Port Scan Attack - Allowed, Possible Port Scan Attack - Rejected, Possible Vertical Port Scan Attack - Allowed, Silently Dropped Traffic Over Time, Top 10 Host - Receiving Inbound Traffic, Top 10 Host - Sending Outbound Traffic, Top Destination IP, Top Source IP, Top TCP Dest Ports, Top UDP Dest Ports, Traffic to Cardholder Environment


