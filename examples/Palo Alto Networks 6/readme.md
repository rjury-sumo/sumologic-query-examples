# Palo Alto Networks 6

## Searches

### Log Searches

- **Requested Apps of Top 10 most active source IPs**: from Search: Palo Alto Networks 6/Requested Apps of Top 10 most active source IPs 
- **Targets of Top 10 Attackers**: from Search: Palo Alto Networks 6/Targets of Top 10 Attackers

### Metric Searches


## Search Table

|app\_topic|search\_name|type|origin|search|
|:--|:--|:--|:--|:--|
|Palo Alto Networks 6|Requested Apps of Top 10 most active source IPs|Logs|Palo Alto Networks 6/Requested Apps of Top 10 most active source IPs|\_sourceCategory = Labs/PaloAltoNetworks TRAFFIC\| parse "\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*" as f1,recvTime,serialNum,type,subtype,f2,genTime,src\_ip,dest\_ip,natsrc\_ip,natdest\_ip,ruleName,src\_user,dest\_user,app,vsys,src\_zone,dest\_zone,ingress\_if,egress\_if,logProfile,f3,sessionID,repeatCnt,src\_port,dest\_port,natsrc\_port,natdest\_port,flags,protocol,action,bytes,bytes\_sent,bytes\_recv,packets,start\_time,elapsed\_time,cat,f4,seqNum,action\_flags,src\_loc,dest\_loc,f5,packets\_sent,packets\_rcv\| join( \* \| count as ipAPPCnt by src\_ip,app ) as src\_app,( \* \| count as evtCnt by src\_ip \| top 10 src\_ip by evtCnt) as topIP on topIP.src\_ip = src\_app.src\_ip timewindow 12h \| fields src\_app\_src\_ip,src\_app\_app,src\_app\_ipAppcnt \| sum(src\_app\_ipappcnt) by src\_app\_src\_ip,src\_app\_app \| transpose row src\_app\_src\_ip column src\_app\_app|
|Palo Alto Networks 6|Targets of Top 10 Attackers|Logs|Palo Alto Networks 6/Targets of Top 10 Attackers|\_sourceCategory = Labs/PaloAltoNetworks THREAT\| parse "\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*,\*" as f1,recvTime,serialNum,type,subtype,f2,genTime,src\_ip,dest\_ip,natsrc\_ip,natdest\_ip,ruleName,src\_user,dest\_user,app,vsys,src\_zone,dest\_zone,ingress\_if,egress\_if,logProfile,f3,sessionID,repeatCnt,src\_port,dest\_port,natsrc\_port,natdest\_port,flags,protocol,action,misc,threatID,cat,severity,direction,seqNum,action\_flags,src\_loc,dest\_loc,f4,content\_type\| join( \* \| count as ipAPPCnt by src\_ip,dest\_ip,src\_port,dest\_port, threatid ) as threat,( \* \| count as evtCnt by src\_ip \| top 10 src\_ip by evtCnt) as src\_ip on threat.src\_ip = src\_ip.src\_ip timewindow 12h\| count\_distinct(threat\_dest\_ip) as DistinctTargets by threat\_src\_ip,threat\_dest\_port, threat\_threatid\| sort -DistinctTargets|

