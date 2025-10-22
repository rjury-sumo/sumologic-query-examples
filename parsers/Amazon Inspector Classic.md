# Parsers For Amazon Inspector Classic

**Amazon Inspector Classic/Amazon Inspector - Findings/Finding Details**
```
_sourceCategory={{Logsdatasource}}  FINDING REPORTED
| json "Message" as rawMsg
| json field=rawMsg "event","target","run","template","targetLookup.name","runLookup.name","templateLookup.name","findingDetails" nodrop 
| where event="FINDING_REPORTED"
| json field=findingDetails "id","severity","indicatorOfCompromise","title","createdAt","description" as findingName, findingSeverity,findingIoC, findingTitle, createdAt,description nodrop 
```

**Amazon Inspector Classic/Amazon Inspector - Findings/Finding Severity by Template and Run**
```
_sourceCategory={{Logsdatasource}}  FINDING REPORTED
| json "Message" as rawMsg
| json field=rawMsg "event","target","run","template","targetLookup.name","runLookup.createdAt","runLookup.name","templateLookup.name","findingDetails" nodrop 
| where event="FINDING_REPORTED"
| json field=findingDetails "id","severity","indicatorOfCompromise","title","description" as findingName, findingSeverity,findingIoC, findingTitle,description  
```

**Amazon Inspector Classic/Amazon Inspector - Findings/Finding Severity Over Time**
```
_sourceCategory={{Logsdatasource}}  FINDING REPORTED 
| json "Message" as rawMsg
| json field=rawMsg "event","target","run","template","targetLookup.name","runLookup.name","templateLookup.name","findingDetails" nodrop 
| where event="FINDING_REPORTED"
| json field=findingDetails "id","severity","indicatorOfCompromise","title","createdAt","description","rulesPackageLookup.name","serviceAttributes.rulesPackageArn" as findingName, findingSeverity,findingIoC, findingTitle, createdAt,description,rulesPackageName,rulesPackageArn nodrop 
```

**Amazon Inspector Classic/Amazon Inspector - Findings/Outlier Indicator of Non-Informational Findings**
```
_sourceCategory={{Logsdatasource}}  FINDING REPORTED 
| json "Message" as rawMsg
| json field=rawMsg "event","target","run","template","targetLookup.name","runLookup.name","templateLookup.name","findingDetails" nodrop 
| where event="FINDING_REPORTED"
| json field=findingDetails "id","severity","indicatorOfCompromise","title","createdAt","description","rulesPackageLookup.name","serviceAttributes.rulesPackageArn" as findingName, findingSeverity,findingIoC, findingTitle, createdAt,description,rulesPackageName,rulesPackageArn nodrop 
```

**Amazon Inspector Classic/Amazon Inspector - Findings/Persistent Findings**
```
_sourceCategory={{Logsdatasource}}  FINDING REPORTED
| json "Message" as rawMsg
| json field=rawMsg "event","target","run","template","targetLookup.name","runLookup.name","templateLookup.name","findingDetails" nodrop 
| where event="FINDING_REPORTED"
| json field=findingDetails "id","severity","indicatorOfCompromise","title","createdAt","description" as findingName, findingSeverity,findingIoC, findingTitle, createdAt,description 
```

**Amazon Inspector Classic/Amazon Inspector - Findings/Templates Not Run in a Day**
```
_sourceCategory={{Logsdatasource}}  event
| json "Message","Timestamp" as rawMsg, timestamp
| json field=rawMsg "event","target","run","template","targetLookup.name","runLookup.name","templateLookup.name","newstate" nodrop 
```

**Amazon Inspector Classic/Amazon Inspector - Overview/Events by Template**
```
_sourceCategory={{Logsdatasource}} 
| json "Message" as rawMsg
| json field=rawMsg "event","target","run","template","targetLookup.name","runLookup.name","templateLookup.name" nodrop 
```

**Amazon Inspector Classic/Amazon Inspector - Overview/Finding Severity by InstanceId**
```
_sourceCategory={{Logsdatasource}}  FINDING REPORTED
| json "Message" as rawMsg
| json field=rawMsg "event","target","run","template","targetLookup.name","runLookup.name","templateLookup.name","findingDetails" nodrop 
| where event="FINDING_REPORTED"
| json field=findingDetails "id","severity","indicatorOfCompromise","title","createdAt","description" as findingName, findingSeverity,findingIoC, findingTitle, createdAt,description nodrop 
| format("%s - %s", %"templatelookup.name", template) as template
| format("%s - %s", %"runLookup.name", run) as run
| format("%s - %s", %"targetLookup.name", target) as target
| parse regex field=findingtitle " (?<instanceId>i\-\w+) "
```

**Amazon Inspector Classic/Amazon Inspector - Overview/Finding Severity by Template**
```
_sourceCategory={{Logsdatasource}}  FINDING REPORTED
| json "Message" as rawMsg
| json field=rawMsg "event","target","run","template","targetLookup.name","runLookup.name","templateLookup.name","findingDetails" nodrop 
| where event="FINDING_REPORTED"
| json field=findingDetails "id","severity","indicatorOfCompromise","title","createdAt","description" as findingName, findingSeverity,findingIoC, findingTitle, createdAt,description nodrop 
```

**Amazon Inspector Classic/Amazon Inspector - Overview/Last Run by Template**
```
_sourceCategory={{Logsdatasource}}  event
| json "Message","Timestamp" as rawMsg, timestamp
| json field=rawMsg "event","target","run","template","targetLookup.name","runLookup.name","templateLookup.name","newstate" nodrop 
```

**Amazon Inspector Classic/Amazon Inspector - Overview/Top 5 Findings**
```
_sourceCategory={{Logsdatasource}}  FINDING REPORTED
| json "Message" as rawMsg
| json field=rawMsg "event","target","run","template","targetLookup.name","runLookup.name","templateLookup.name","findingDetails" nodrop 
| where event="FINDING_REPORTED"
| json field=findingDetails "id","severity","indicatorOfCompromise","title","createdAt","description" as findingName, findingSeverity,findingIoC, findingTitle, createdAt,description nodrop 
```

**Amazon Inspector Classic/Amazon Inspector - Overview/Top 5 RulesPackages by Findings**
```
_sourceCategory={{Logsdatasource}}  FINDING REPORTED 
| json "Message" as rawMsg
| json field=rawMsg "event","target","run","template","targetLookup.name","runLookup.name","templateLookup.name","findingDetails" nodrop 
| where event="FINDING_REPORTED"
| json field=findingDetails "id","severity","indicatorOfCompromise","title","createdAt","description","rulesPackageLookup.name","serviceAttributes.rulesPackageArn" as findingName, findingSeverity,findingIoC, findingTitle, createdAt,description,rulesPackageName,rulesPackageArn nodrop 
```

**Amazon Inspector Classic/Amazon Inspector - Overview/Trend of Findings by  RulesPackage**
```
_sourceCategory={{Logsdatasource}}  FINDING REPORTED 
| json "Message" as rawMsg
| json field=rawMsg "event","target","run","template","targetLookup.name","runLookup.name","templateLookup.name","findingDetails" nodrop 
| where event="FINDING_REPORTED"
| json field=findingDetails "id","severity","indicatorOfCompromise","title","createdAt","description","rulesPackageLookup.name","serviceAttributes.rulesPackageArn" as findingName, findingSeverity,findingIoC, findingTitle, createdAt,description,rulesPackageName,rulesPackageArn nodrop 
```

**Amazon Inspector Classic/Amazon Inspector - Overview/Trend of Findings by Template**
```
_sourceCategory={{Logsdatasource}}  FINDING REPORTED 
| json "Message" as rawMsg
| json field=rawMsg "event","target","run","template","targetLookup.name","runLookup.name","templateLookup.name","findingDetails" nodrop 
| where event="FINDING_REPORTED"
| json field=findingDetails "id","severity","indicatorOfCompromise","title","createdAt","description","rulesPackageLookup.name","serviceAttributes.rulesPackageArn" as findingName, findingSeverity,findingIoC, findingTitle, createdAt,description,rulesPackageName,rulesPackageArn nodrop 
```


