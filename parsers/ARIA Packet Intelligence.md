# Parsers For ARIA Packet Intelligence

## Parser:
```
| parse "\"hostName\":\"*\",\"product\":\"*\",\"metaData\":{\"flowID\":*,\"flowStart\":*,\"flowEnd\":*,\"pktsSent\":*,\"pktsRcvd\":*,\"bytesSent\":*,\"bytesRcvd\":*,\"srcMac\":\"*\",\"dstMac\":\"*\",\"vlanId\":*,\"srcIP\":\"*\",\"dstIP\":\"*\",\"srcTOS\":*,\"dstTOS\":*,\"l4Proto\":*,\"srcPort\":*,\"dstPort\":*,\"tcpFlags\":*}}" as HostName,Product,FlowID,FlowStart,FlowEnd,PktsSent,PktsRcvd,BytesSent,BytesRcvd,SrcMac,DstMac,VlanID,SrcIP,DstIP,SrcTos,DstTos,Protocol,SrcPort,DstPort,TcpFlags
 `n```
### Use Cases:
Frequent Internal Destinations, Frequent Internal Sources, Geo IP of Traffic Sources, Possible Intrusion Events, Possible Intrusion Events Over Time, Possible Intrusion Traffic, Possible Malware/Ransomware Events, Possible Malware/Ransomware Events Over Time, Possible Malware/Ransomware Traffic, Possible Policy Violation, Possible Policy Violation Traffic, Possible Policy Violations Over Time, Query example, Query example 2, Traffic by Type


