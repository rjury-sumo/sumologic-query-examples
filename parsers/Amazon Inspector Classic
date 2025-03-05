# Parsers For Amazon Inspector Classic

## Parser:
```
| json "Message" as rawMsg
| json field=rawMsg "event","target","run","template","targetLookup.name","runLookup.createdAt","runLookup.name","templateLookup.name","findingDetails" nodrop 
| json field=findingDetails "id","severity","indicatorOfCompromise","title","description" as findingName, findingSeverity,findingIoC, findingTitle,description  
```
### Use Cases:
Finding Severity by Template and Run, Finding Severity Over Time, Outlier Indicator of Non-Informational Findings, Persistent Findings, Templates Not Run in a Day



## Parser:
```
| json "Message" as rawMsg
| json field=rawMsg "event","target","run","template","targetLookup.name","runLookup.name","templateLookup.name" nodrop 
```
### Use Cases:
Events by Template, Finding Details, Finding Severity by InstanceId, Finding Severity by Template and Run, Finding Severity Over Time, Last Run by Template, Outlier Indicator of Non-Informational Findings, Persistent Findings, Templates Not Run in a Day, Top 5 Findings, Top 5 RulesPackages by Findings, Trend of Findings by Template



## Parser:
```
| json "Message" as rawMsg
| json field=rawMsg "event","target","run","template","targetLookup.name","runLookup.name","templateLookup.name","findingDetails" nodrop 
| json field=findingDetails "id","severity","indicatorOfCompromise","title","createdAt","description" as findingName, findingSeverity,findingIoC, findingTitle, createdAt,description 
```
### Use Cases:
Outlier Indicator of Non-Informational Findings, Persistent Findings, Templates Not Run in a Day



## Parser:
```
| json "Message" as rawMsg
| json field=rawMsg "event","target","run","template","targetLookup.name","runLookup.name","templateLookup.name","findingDetails" nodrop 
| json field=findingDetails "id","severity","indicatorOfCompromise","title","createdAt","description" as findingName, findingSeverity,findingIoC, findingTitle, createdAt,description nodrop 
```
### Use Cases:
Events by Template, Finding Details, Finding Severity by InstanceId, Finding Severity by Template, Finding Severity by Template and Run, Finding Severity Over Time, Last Run by Template, Outlier Indicator of Non-Informational Findings, Persistent Findings, Templates Not Run in a Day, Top 5 Findings, Top 5 RulesPackages by Findings, Trend of Findings by  RulesPackage, Trend of Findings by Template



## Parser:
```
| json "Message" as rawMsg
| json field=rawMsg "event","target","run","template","targetLookup.name","runLookup.name","templateLookup.name","findingDetails" nodrop 
| json field=findingDetails "id","severity","indicatorOfCompromise","title","createdAt","description" as findingName, findingSeverity,findingIoC, findingTitle, createdAt,description nodrop 
| parse regex field=findingtitle " (?<instanceId>i\-\w+) "
```
### Use Cases:
Finding Details, Finding Severity by InstanceId, Finding Severity by Template and Run, Finding Severity Over Time, Last Run by Template, Outlier Indicator of Non-Informational Findings, Persistent Findings, Templates Not Run in a Day



## Parser:
```
| json "Message" as rawMsg
| json field=rawMsg "event","target","run","template","targetLookup.name","runLookup.name","templateLookup.name","findingDetails" nodrop 
| json field=findingDetails "id","severity","indicatorOfCompromise","title","createdAt","description","rulesPackageLookup.name","serviceAttributes.rulesPackageArn" as findingName, findingSeverity,findingIoC, findingTitle, createdAt,description,rulesPackageName,rulesPackageArn nodrop 
```
### Use Cases:
Events by Template, Finding Details, Finding Severity by InstanceId, Finding Severity by Template and Run, Finding Severity Over Time, Last Run by Template, Outlier Indicator of Non-Informational Findings, Persistent Findings, Templates Not Run in a Day, Top 5 Findings, Top 5 RulesPackages by Findings, Trend of Findings by  RulesPackage, Trend of Findings by Template



## Parser:
```
| json "Message","Timestamp" as rawMsg, timestamp
| json field=rawMsg "event","target","run","template","targetLookup.name","runLookup.name","templateLookup.name","newstate" nodrop 
```
### Use Cases:
Finding Details, Finding Severity by Template and Run, Finding Severity Over Time, Last Run by Template, Outlier Indicator of Non-Informational Findings, Persistent Findings, Templates Not Run in a Day


