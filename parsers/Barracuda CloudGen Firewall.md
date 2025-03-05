# Parsers For Barracuda CloudGen Firewall

## Parser:
```
| parse regex " (?<action>[\S]*): type=(?<type>[^|]*)\|proto=(?<proto>[^|]*)\|srcIF=(?<srcif>[^|]*)\|srcIP=(?<src_ip>[^|]*)\|srcPort=(?<src_port>[^|]*)\|srcMAC=(?<srcmac>[^|]*)\|dstIP=(?<dest_ip>[^|]*)\|dstPort=(?<dest_port>[^|]*)\|dstService=(?<dstservice>[^|]*)\|dstIF=(?<dstif>[^|]*)\|rule=(?<rule>[^|]*)\|info=(?<info>[^|]*)\|srcNAT=(?<srcnat>[^|]*)\|dstNAT=(?<dstnat>[^|]*)\|duration=(?<duration>[^|]*)\|count=(?<count>[^|]*)\|receivedBytes=(?<receivedbytes>[^|]*)\|sentBytes=(?<sentbytes>[^|]*)\|receivedPackets=(?<receivedpackets>[^|]*)\|sentPackets=(?<sentpackets>[^|]*)\|user=(?<user>[^|]*)\|protocol=(?<protocol>[^|]*)\|application=(?<application>[^|]*)\|target=(?<target>[^|]*)\|content=(?<content>[^|]*)\|urlcat=(?<urlcat>[^|]*)",regex " - (?<timestamp>[\S]+) 1 (?<src_ip>[\S]+) (?<dest_ip>[\S]+) (?<content_type>[\S]+) (?<srcip>[\S]+) (?<uri>[\S]+) (?<content_length>[\S]+) BYF \S+ \S+  \S+ \S+ \S+ \S+ \S+ \(\S+\) \S+ \S+ \S+ \S+ \S+ \S+ \S+ \[(?<user>[^]]*)\]"| where !isEmpty(user) | replace(user,"-","Unauthenticated")as %"User"
```
### Use Cases:
Destination IP Addresses, Top Source IP Addresses, Top Users



## Parser:
```
| parse regex "\(\S\|\d\|\S+\|\d\|\S+\|\d+\|(?<atp_action>[^|]*)\|(?<hostname>[^|]*)\|(?<atp_timestamp>\d+)\|.*(?<src_ip>\d+.\d+.\d+.\d+):(?<src_port>\d+) -> (?<dest_ip>\d+.\d+.\d+.\d+):(?<dest_port>\d+)",regex " - (?<timestamp>[\S]+) 1 (?<src_ip>[\S]+) (?<dest_ip>[\S]+) (?<content_type>[\S]+) (?<srcip>[\S]+) (?<uri>[\S]+) (?<content_length>[\S]+) BYF",regex " (?<action>[\S]*): type=(?<type>[^|]*)\|proto=(?<proto>[^|]*)\|srcIF=(?<srcif>[^|]*)\|srcIP=(?<src_ip>[^|]*)\|srcPort=(?<src_port>[^|]*)\|srcMAC=(?<srcmac>[^|]*)\|dstIP=(?<dest_ip>[^|]*)\|dstPort=(?<dest_port>[^|]*)\|dstService=(?<dstservice>[^|]*)\|dstIF=(?<dstif>[^|]*)\|rule=(?<rule>[^|]*)\|info=(?<info>[^|]*)\|srcNAT=(?<srcnat>[^|]*)\|dstNAT=(?<dstnat>[^|]*)\|duration=(?<duration>[^|]*)\|count=(?<count>[^|]*)\|receivedBytes=(?<receivedbytes>[^|]*)\|sentBytes=(?<sentbytes>[^|]*)\|receivedPackets=(?<receivedpackets>[^|]*)\|sentPackets=(?<sentpackets>[^|]*)\|user=(?<src_user>[^|]*)\|protocol=(?<protocol>[^|]*)\|application=(?<application>[^|]*)\|target=(?<target>[^|]*)\|content=(?<content>[^|]*)\|urlcat=(?<urlcat>[^|]*)" ,regex "File: (?<file>\S+) SHA1: (?<sha1>\S+) DestinationIP: (?<dest_ip>\S+) DestinationPort: (?<dest_port>\S+) SourceIP: (?<src_ip>\S+) SourcePort: (?<src_port>\S+) Url: (?<url>\S+) Disposition: (?<disposition>\S+)"|where !isBlank(dest_ip) | lookup latitude, longitude from geo://location on ip=dest_ip
```
### Use Cases:
Destination IP Addresses



## Parser:
```
| parse regex "\(\S\|\d\|\S+\|\d\|\S+\|\d+\|(?<atp_action>[^|]*)\|(?<hostname>[^|]*)\|(?<atp_timestamp>\d+)\|.*(?<src_ip>\d+.\d+.\d+.\d+):(?<src_port>\d+) -> (?<dest_ip>\d+.\d+.\d+.\d+):(?<dest_port>\d+)",regex " - (?<timestamp>[\S]+) 1 (?<src_ip>[\S]+) (?<dest_ip>[\S]+) (?<content_type>[\S]+) (?<srcip>[\S]+) (?<uri>[\S]+) (?<content_length>[\S]+) BYF",regex " (?<action>[\S]*): type=(?<type>[^|]*)\|proto=(?<proto>[^|]*)\|srcIF=(?<srcif>[^|]*)\|srcIP=(?<src_ip>[^|]*)\|srcPort=(?<src_port>[^|]*)\|srcMAC=(?<srcmac>[^|]*)\|dstIP=(?<dest_ip>[^|]*)\|dstPort=(?<dest_port>[^|]*)\|dstService=(?<dstservice>[^|]*)\|dstIF=(?<dstif>[^|]*)\|rule=(?<rule>[^|]*)\|info=(?<info>[^|]*)\|srcNAT=(?<srcnat>[^|]*)\|dstNAT=(?<dstnat>[^|]*)\|duration=(?<duration>[^|]*)\|count=(?<count>[^|]*)\|receivedBytes=(?<receivedbytes>[^|]*)\|sentBytes=(?<sentbytes>[^|]*)\|receivedPackets=(?<receivedpackets>[^|]*)\|sentPackets=(?<sentpackets>[^|]*)\|user=(?<src_user>[^|]*)\|protocol=(?<protocol>[^|]*)\|application=(?<application>[^|]*)\|target=(?<target>[^|]*)\|content=(?<content>[^|]*)\|urlcat=(?<urlcat>[^|]*)", regex "File: (?<file>\S+) SHA1: (?<sha1>\S+) DestinationIP: (?<dest_ip>\S+) DestinationPort: (?<dest_port>\S+) SourceIP: (?<src_ip>\S+) SourcePort: (?<src_port>\S+) Url: (?<url>\S+) Disposition: (?<disposition>\S+)"
```
### Use Cases:
Destination IP Addresses, Top Source IP Addresses



## Parser:
```
| parse regex "\(\S\|\d\|\S+\|\d\|\S+\|\d+\|(?<atp_action>[^|]*)\|(?<hostname>[^|]*)\|(?<atp_timestamp>\d+)\|.*(?<src_ip>\d+.\d+.\d+.\d+):(?<src_port>\d+) -> (?<dest_ip>\d+.\d+.\d+.\d+):(?<dest_port>\d+)",regex " - (?<timestamp>[\S]+) 1 (?<src_ip>[\S]+) (?<dest_ip>[\S]+) (?<content_type>[\S]+) (?<srcip>[\S]+) (?<uri>[\S]+) (?<content_length>[\S]+) BYF",regex " (?<action>[\S]*): type=(?<type>[^|]*)\|proto=(?<proto>[^|]*)\|srcIF=(?<srcif>[^|]*)\|srcIP=(?<src_ip>[^|]*)\|srcPort=(?<src_port>[^|]*)\|srcMAC=(?<srcmac>[^|]*)\|dstIP=(?<dest_ip>[^|]*)\|dstPort=(?<dest_port>[^|]*)\|dstService=(?<dstservice>[^|]*)\|dstIF=(?<dstif>[^|]*)\|rule=(?<rule>[^|]*)\|info=(?<info>[^|]*)\|srcNAT=(?<srcnat>[^|]*)\|dstNAT=(?<dstnat>[^|]*)\|duration=(?<duration>[^|]*)\|count=(?<count>[^|]*)\|receivedBytes=(?<receivedbytes>[^|]*)\|sentBytes=(?<sentbytes>[^|]*)\|receivedPackets=(?<receivedpackets>[^|]*)\|sentPackets=(?<sentpackets>[^|]*)\|user=(?<src_user>[^|]*)\|protocol=(?<protocol>[^|]*)\|application=(?<application>[^|]*)\|target=(?<target>[^|]*)\|content=(?<content>[^|]*)\|urlcat=(?<urlcat>[^|]*)",regex "File: (?<file>\S+) SHA1: (?<sha1>\S+) DestinationIP: (?<dest_ip>\S+) DestinationPort: (?<dest_port>\S+) SourceIP: (?<src_ip>\S+) SourcePort: (?<src_port>\S+) Url: (?<url>\S+) Disposition: (?<disposition>\S+)"|where !isBlank(dest_ip)
```
### Use Cases:
Destination IP Addresses, Top Destination IP Addresses, Top Source IP Addresses, Top Users


