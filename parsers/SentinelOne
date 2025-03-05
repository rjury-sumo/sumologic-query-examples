# Parsers For SentinelOne

## Parser:
```
| json "id", "threatInfo.incidentStatus", "threatInfo.classificationSource", "threatInfo.confidenceLevel", "threatInfo.detectionEngines", "threatInfo.initiatedBy", "threatInfo.rebootRequired", "threatInfo.createdAt", "threatInfo.detectionType", "threatInfo.mitigationStatus", "threatInfo.analystVerdict", "threatInfo.threatName", "agentRealtimeInfo.siteName","agentRealtimeInfo.agentOsType", "agentRealtimeInfo.agentMachineType" as id, incident_status, classification_source, confidence_level, detection_engines, initiated_by, reboot_required, created_time, detection_type, mitigation_status, analyst_verdict, threat_name, site_name, agent_os_type, agent_machine_type nodrop
```
### Use Cases:
Active Agents, Agents by Scan Status, Distribution of Agents by Machine Type, Distribution? of Agents by Mitigation, Frequency of Agents by Installer Type, Infected Agents, Most Infected Devices, Threats by Engines, Threats by Site, Threats over time by Confidence Level, Threats over time by Status, Threats Summary for Recent Incidents, Top 10 Agents Group Summary, Top 10 Agents OS Summary, Top Initiated Threats, Total Agents



## Parser:
```
| json "id", "threatInfo.incidentStatus", "threatInfo.classificationSource", "threatInfo.confidenceLevel", "threatInfo.detectionEngines", "threatInfo.initiatedBy", "threatInfo.rebootRequired", "threatInfo.createdAt", "threatInfo.detectionType", "threatInfo.mitigationStatus", "threatInfo.analystVerdict", "threatInfo.threatName", "agentRealtimeInfo.siteName","agentRealtimeInfo.agentOsType", "agentRealtimeInfo.agentMachineType" as id, incidentStatus, classificationSource, confidenceLevel, detectionEngines, initiatedBy, rebootRequired, createdAt, detectionType, mitigationStatus, analystVerdict, threatName, siteName, agentOsType, agentMachineType nodrop
```
### Use Cases:
Active Agents, Agents by Scan Status, Distribution of Agents by Machine Type, Distribution? of Agents by Mitigation, Frequency of Agents by Installer Type, Infected Agents, Most Infected Devices, Suspicious threats detected, Threats by Classification Source, Threats by Confidence Level, Threats by Detection Type, Threats by Engines, Threats by Site, Threats by Status, Threats over time by Confidence Level, Threats over time by Status, Threats required Reboot, Threats Summary for Recent Incidents, Threats to be Mitigated?, Top 10 Agents Group Summary, Top 10 Agents OS Summary, Top Initiated Threats, Total Agents, Unresolved Threats



## Parser:
```
| json "id", "threatInfo.incidentStatus", "threatInfo.classificationSource", "threatInfo.confidenceLevel", "threatInfo.detectionEngines", "threatInfo.initiatedBy", "threatInfo.rebootRequired", "threatInfo.createdAt", "threatInfo.detectionType", "threatInfo.mitigationStatus", "threatInfo.analystVerdict", "threatInfo.threatName", "agentRealtimeInfo.siteName","agentRealtimeInfo.agentOsType", "agentRealtimeInfo.agentMachineType" as id, incidentStatus, classificationSource, confidenceLevel, detectionEngines, initiatedBy, rebootRequired, createdAt, detectionType, mitigationStatus, analystVerdict, threatName, siteName, agentOsType, agentMachineType nodrop
| extract field=detectionEngines "(?<engines>\b\w+\b)" multi
```
### Use Cases:
Active Agents, Agents by Scan Status, Distribution of Agents by Machine Type, Distribution? of Agents by Mitigation, Frequency of Agents by Installer Type, Infected Agents, Threats by Engines, Threats over time by Confidence Level, Threats over time by Status, Top 10 Agents Group Summary, Top 10 Agents OS Summary, Top Initiated Threats, Total Agents



## Parser:
```
| json "id","computerName","accountName","groupName","siteName","activeThreats","networkInterfaces[0].gatewayIp","networkInterfaces[0].gatewayMacAddress" as agent_id, computer_name, account_name, group_name, site_name, active, ip_address, mac_address nodrop
| json "agentRealtimeInfo.agentId","threatInfo.incidentStatus", "agentRealtimeInfo.siteName", "threatInfo.mitigationStatus", "agentRealtimeInfo.agentOsType", "agentRealtimeInfo.agentMachineType", "threatInfo.confidenceLevel" as agent_id,incidentStatus, siteName, mitigationStatus, agentOsType, agentMachineType, confidenceLevel nodrop
```
### Use Cases:
Active Agents, Agents by Scan Status, Distribution of Agents by Machine Type, Distribution? of Agents by Mitigation, Frequency of Agents by Installer Type, Infected Agents, Most Infected Devices, Threats by Engines, Threats by Site, Threats over time by Confidence Level, Threats over time by Status, Top 10 Agents Group Summary, Top 10 Agents OS Summary, Top Initiated Threats, Total Agents



## Parser:
```
| json "id","computerName","accountName","groupName","siteName","activeThreats","networkInterfaces[0].gatewayIp","networkInterfaces[0].gatewayMacAddress", "osType", "machineType", "installerType"  as agent_id, computer_name, account_name, group_name, site_name, active, ip_address, mac_address, os_type, machine_type, installer_type  nodrop
```
### Use Cases:
Active Agents, Agents by Scan Status, Distribution of Agents by Machine Type, Distribution? of Agents by Mitigation, Frequency of Agents by Installer Type, Infected Agents, Top 10 Agents Group Summary, Total Agents



## Parser:
```
| Json "uuid","scanStatus","siteName","mitigationMode","infected","firewallEnabled","activeThreats","installerType","osName","isPendingUninstall","networkStatus","osType","isActive","isUninstalled","isDecommissioned","externalIp","modelName","machineType" as id,scan_status,site_name,mitigation_mode,infected,firewall_enabled,active_threats,installer_type,os_name,is_pending_uninstall,network_status,os_type,is_active,is_uninstalled,is_decommissioned,ip,model_name,machine_type nodrop
```
### Use Cases:
Active Agents, Agents by Scan Status, Distribution of Agents by Machine Type, Infected Agents, Total Agents



## Parser:
```
| Json "uuid","scanStatus","siteName","mitigationMode","infected","firewallEnabled","activeThreats","installerType","osName","mitigationModeSuspicious","isPendingUninstall","networkStatus","osType","isActive","isUninstalled","isDecommissioned","externalIp","modelName","machineType" as id,scan_status,site_name,mitigation_mode,infected,firewall_enabled,active_threats,installer_type,os_name,mitigation,is_pending_uninstall,network_status,os_type,is_active,is_uninstalled,is_decommissioned,ip,model_name,machine_type nodrop
```
### Use Cases:
Active Agents, Agents by Scan Status, Distribution of Agents by Machine Type, Distribution? of Agents by Mitigation, Frequency of Agents by Installer Type, Infected Agents, Top 10 Agents Group Summary, Top 10 Agents OS Summary, Total Agents


