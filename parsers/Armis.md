# Parsers For Armis

## Parser:
```
| json "alertId","activityUUIDs","connectionIds","description","deviceIds","severity","status","time","title","type" as alertId,activityUUIDs,connectionIds,description,deviceIds,severity,status,time,title,type nodrop
| extract field=deviceIds "(?<ids>\b\d+\b)" multi
| json "id","site.name" as ids, site
 `n```
### Use Cases:
Alerts by Pending Severity, Alerts by Severity, Alerts by Severity and Type, Alerts by Title, Alerts over time by Severity, Devices by Category, Devices by Operating System, Devices by Risk Level, Devices by Site, Devices by Type, Devices Over Time by Risk Level, Last 10 Seen Devices, Status of Alerts, Top 10 Devices by Manufacturer, Total Alerts, Total Devices, Type of Alerts



## Parser:
```
| json "id", "name", "manufacturer", "model", "riskLevel", "sensor", "site.name", "type", "category", "operatingSystem", "macAddress", "ipAddress", "firstSeen", "lastSeen" as id, name, manufacturer, model, riskLevel, sensor, site, type, category, operatingSystem, macAddress,ipAddress,firstSeen,lastSeen nodrop
 `n```
### Use Cases:
Alerts by Pending Severity, Alerts by Severity, Alerts by Severity and Type, Alerts by Title, Alerts over time by Severity, Devices by Category, Devices by Operating System, Devices by Risk Level, Devices by Site, Devices by Type, Devices Over Time by Risk Level, Last 10 Seen Devices, Status of Alerts, Top 10 Devices by Manufacturer, Total Alerts, Total Devices, Type of Alerts



## Parser:
```
| json "id","name","manufacturer","model","riskLevel","sensor","site.name","type","category","operatingSystem" as id, name, manufacturer, model, riskLevel, sensor, site, type, category, operatingSystem nodrop
 `n```
### Use Cases:
Alerts by Pending Severity, Alerts by Severity, Alerts by Severity and Type, Alerts by Title, Alerts over time by Severity, Devices by Category, Devices by Operating System, Devices by Risk Level, Devices by Site, Devices by Type, Devices Over Time by Risk Level, Last 10 Seen Devices, Status of Alerts, Top 10 Devices by Manufacturer, Total Alerts, Total Devices, Type of Alerts


