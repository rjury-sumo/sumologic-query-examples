# Parsers For Palo Alto Networks 6

## Parser:
```
| parse "*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*" as f1,recvTime,serialNum,type,subtype,f2,genTime,src_ip,dest_ip,natsrc_ip,natdest_ip,ruleName,src_user,dest_user,app,vsys,src_zone,dest_zone,ingress_if,egress_if,logProfile,f3,sessionID,repeatCnt,src_port,dest_port,natsrc_port,natdest_port,flags,protocol,action,bytes,bytes_sent,bytes_recv,packets,start_time,elapsed_time,cat,f4,seqNum,action_flags,src_loc,dest_loc,f5,packets_sent,packets_rcv| join( * | count as ipAPPCnt by src_ip,app ) as src_app,( * | count as evtCnt by src_ip | top 10 src_ip by evtCnt) as topIP on topIP.src_ip = src_app.src_ip timewindow 12h | fields src_app_src_ip,src_app_app,src_app_ipAppcnt | sum(src_app_ipappcnt) by src_app_src_ip,src_app_app | `n```
### Use Cases:
Requested Apps of Top 10 most active source IPs



## Parser:
```
| parse "*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*,*" as f1,recvTime,serialNum,type,subtype,f2,genTime,src_ip,dest_ip,natsrc_ip,natdest_ip,ruleName,src_user,dest_user,app,vsys,src_zone,dest_zone,ingress_if,egress_if,logProfile,f3,sessionID,repeatCnt,src_port,dest_port,natsrc_port,natdest_port,flags,protocol,action,misc,threatID,cat,severity,direction,seqNum,action_flags,src_loc,dest_loc,f4,content_type| join( * | count as ipAPPCnt by src_ip,dest_ip,src_port,dest_port, threatid ) as threat,( * | count as evtCnt by src_ip | top 10 src_ip by evtCnt) as src_ip on threat.src_ip = src_ip.src_ip timewindow 12h| count_distinct(threat_dest_ip) as DistinctTargets by threat_src_ip,threat_dest_port, threat_threatid| `n```
### Use Cases:
Requested Apps of Top 10 most active source IPs, Targets of Top 10 Attackers


