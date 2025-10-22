# Parsers For CrowdStrike FDR Host Inventory

**CrowdStrike FDR Host Inventory/CrowdStrike - FDR Host Inventory Overview/Devices by Manufacturers**
```
_sourceCategory={{Logsdatasource}} 
| json "status", "platform_name", "os_version", "system_manufacturer", "provision_status", "device_id" as status, platform_name, version, manufacturer, provision_status, device_id nodrop
```

**CrowdStrike FDR Host Inventory/CrowdStrike - FDR Host Inventory Overview/Devices by Platform**
```
_sourceCategory={{Logsdatasource}} 
| json "status", "platform_name", "os_version", "system_manufacturer", "provision_status", "device_id" as status, platform_name, version, manufacturer, provision_status, device_id nodrop
```

**CrowdStrike FDR Host Inventory/CrowdStrike - FDR Host Inventory Overview/Devices by Provision Status**
```
_sourceCategory={{Logsdatasource}} 
| json "status", "platform_name", "os_version", "system_manufacturer", "provision_status", "device_id" as status, platform_name, version, manufacturer, provision_status, device_id nodrop
```

**CrowdStrike FDR Host Inventory/CrowdStrike - FDR Host Inventory Overview/Devices by Status**
```
_sourceCategory={{Logsdatasource}} 
| json "status", "platform_name", "os_version", "system_manufacturer", "provision_status", "device_id" as status, platform_name, version, manufacturer, provision_status, device_id nodrop
```

**CrowdStrike FDR Host Inventory/CrowdStrike - FDR Host Inventory Overview/Geo-Location of Devices**
```
_sourceCategory={{Logsdatasource}} 
| json "status", "platform_name", "os_version", "system_manufacturer", "provision_status", "device_id", "local_ip" as status, platform_name, version, manufacturer, provision_status, device_id, ip nodrop
```

**CrowdStrike FDR Host Inventory/CrowdStrike - FDR Host Inventory Overview/Geo-Location of Risky Devices**
```
_sourceCategory={{Logsdatasource}} 
| json "status", "platform_name", "os_version", "system_manufacturer", "provision_status", "device_id", "local_ip" as status, platform_name, version, manufacturer, provision_status, device_id, ip nodrop

// global filters
| where manufacturer matches "{{system_manufacturer}}"
| where platform_name matches "{{platform_name}}"
| where version matches "{{os_version}}"
| where status matches "{{status}}"
| where provision_status matches "{{provision_status}}"

| where isValidIPv4(ip) or isValidIPv6(ip)
| where !isNull(ip)
| if(isValidIPv4(ip), if(!isPrivateIP(ip),true,false),true) as is_public
| where is_public
| count by ip, device_id
| count by ip
| lookup latitude, longitude, country_code from geo://location on ip = ip
| lookup country_code from https://sumologic-app-data.s3.amazonaws.com/riskycountries.csv on country_code=country_code
```

**CrowdStrike FDR Host Inventory/CrowdStrike - FDR Host Inventory Overview/Last Seen Devices**
```
_sourceCategory={{Logsdatasource}} 
| json "status", "platform_name", "os_version", "system_manufacturer", "provision_status", "device_id", "last_seen", "last_login_user", "bios_manufacturer" as status, platform_name, version, manufacturer, provision_status, device_id, last_seen, user, bios_manufacturer nodrop
```

**CrowdStrike FDR Host Inventory/CrowdStrike - FDR Host Inventory Overview/Network Configurations**
```
_sourceCategory={{Logsdatasource}} 
| json "status", "platform_name", "os_version", "system_manufacturer", "provision_status", "device_id", "last_login_user", "local_ip", "external_ip", "connection_ip", "default_gateway_ip", "last_seen" as status, platform_name, version, manufacturer, provision_status, device_id, user, local_ip, external_ip, connection_ip, default_gateway_ip, last_seen nodrop
```

**CrowdStrike FDR Host Inventory/CrowdStrike - FDR Host Inventory Overview/Policy Details**
```
_sourceCategory={{Logsdatasource}} 
| json "status", "platform_name", "os_version", "system_manufacturer", "provision_status", "device_id", "last_login_user", "policies[0].applied_date", "policies[0].assigned_date", "policies[0].applied", "policies[0].policy_id", "policies[0].policy_type", "last_seen" as status, platform_name, version, manufacturer, provision_status, device_id, user, applied_date, assigned_date, applied, policy_id, policy_type, last_seen nodrop
```

**CrowdStrike FDR Host Inventory/CrowdStrike - FDR Host Inventory Overview/Software Details**
```
_sourceCategory={{Logsdatasource}} 
| json "status", "platform_name", "os_version", "system_manufacturer", "provision_status", "device_id", "last_seen", "last_login_user", "bios_manufacturer", "kernel_version", "system_product_name", "minor_version", "major_version", "bios_version", "agent_version" as status, platform_name, version, manufacturer, provision_status, device_id, last_seen, user, bios_manufacturer, kernel_version, system_product_name, minor_version, major_version, bios_version, agent_version nodrop
```

**CrowdStrike FDR Host Inventory/CrowdStrike - FDR Host Inventory Overview/Top 10 Operating System**
```
_sourceCategory={{Logsdatasource}} 
| json "status", "platform_name", "os_version", "system_manufacturer", "provision_status", "device_id" as status, platform_name, version, manufacturer, provision_status, device_id nodrop
```

**CrowdStrike FDR Host Inventory/CrowdStrike - FDR Host Inventory Overview/Total Devices**
```
_sourceCategory={{Logsdatasource}} 
| json "status", "platform_name", "os_version", "system_manufacturer", "provision_status", "device_id" as status, platform_name, version, manufacturer, provision_status, device_id nodrop
```


