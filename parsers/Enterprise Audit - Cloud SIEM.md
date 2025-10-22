# Parsers For Enterprise Audit - Cloud SIEM

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Failed Records Analysis/Details ( Last 1000)**
```
_index=sec_record_failure objectType=FailedRecord metadata_sourceCategory={{{sourceCategory}}} metadata_vendor={{{vendor}}} metadata_product={{{product}}} metadata_deviceEventId={{{deviceEventId}}}
| limit 1000
| json field=_raw "reason" nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Failed Records Details (parsing or mapping issue)/Cloud SIEM - Failed Records Details (parsing or mapping issue)**
```
_index=sec_record_failure AND objectType=FailedRecord
| json "reason" nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insight Explorer/Data BreakDown**
```
_index=sec_record* 
[subquery:(((_index=sumologic_audit_events _sourcecategory=cseinsight) or (_index=sumologic_system_events _sourcecategory=cseinsight)))
| json field=_raw "insight.readableId" as insight_readableid
| json field=_raw "insight.entityValue" as entityvalue
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insight Explorer/Dwell Time (Days)**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight  OR
_index=sumologic_system_events _sourcecategory=cseinsight )
| json field=_raw "insight.timeToDetection" as dwelltime
| json field=_raw "insightIdentity.readableId" as insight_id
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insight Explorer/Dwell Time (Hours)**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight  OR
_index=sumologic_system_events _sourcecategory=cseinsight )
| json field=_raw "insight.timeToDetection" as dwelltime
| json field=_raw "insightIdentity.readableId" as insight_id
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insight Explorer/Entity Activities**
```

_index=sec_signal 
[subquery:(((_index=sumologic_audit_events _sourcecategory=cseinsight) or (_index=sumologic_system_events _sourcecategory=cseinsight)))
| json field=_raw "insight.readableId" as insight_readableid
| json field=_raw "insight.signals[*]" as signals_array
| parse regex field=signals_array "entityId\"\:\"(?<EntityId>.*?)\".*?\"" multi
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insight Explorer/Entity SourceCategory**
```
_index=sec_record* 
[subquery:(((_index=sumologic_audit_events _sourcecategory=cseinsight) or (_index=sumologic_system_events _sourcecategory=cseinsight)))
| json field=_raw "insight.readableId" as insight_readableid
| json field=_raw "insight.entityValue" as entityvalue
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insight Explorer/Entity SourceCatergory**
```
_index=sec_record* 
[subquery:(((_index=sumologic_audit_events _sourcecategory=cseinsight) or (_index=sumologic_system_events _sourcecategory=cseinsight)))
| json field=_raw "insight.readableId" as insight_readableid
| json field=_raw "insight.entityValue" as entityvalue
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insight Explorer/Entity Tracked**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight  OR
_index=sumologic_system_events _sourcecategory=cseinsight )
| json field=_raw "insight.entityValue" as entity
| json field=_raw "insightIdentity.readableId" as insight_id
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insight Explorer/GlobalConfidence**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight  OR
_index=sumologic_system_events _sourcecategory=cseinsight )
| json field=_raw "insight.confidence" as GC
| json field=_raw "insightIdentity.readableId" as insight_id
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insight Explorer/Insight Closed Date**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight  OR
_index=sumologic_system_events _sourcecategory=cseinsight )
| json field=_raw "to.closed" as ClosedDate
| json field=_raw "to.timeToRemediation" as TimeToRemediate
| json field=_raw "to.resolution" as Resolution
| json field=_raw "insightIdentity.readableId" as insight_id
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insight Explorer/Remediation Time (Hours)**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight  OR
_index=sumologic_system_events _sourcecategory=cseinsight )
| json field=_raw "to.closed" as ClosedDate
| json field=_raw "to.timeToRemediation" as TimeToRemediate
| json field=_raw "to.resolution" as Resolution
| json field=_raw "insightIdentity.readableId" as insight_id
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insight Explorer/Severity**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight  OR
_index=sumologic_system_events _sourcecategory=cseinsight )
| json field=_raw "insight.severity" 
| json field=_raw "insight.severity" as severity
| json field=_raw "insightIdentity.readableId" as insight_id
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insight Explorer/Severity Level**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight  OR
_index=sumologic_system_events _sourcecategory=cseinsight )
| json field=_raw "insight.severityName" as SeverityName
| json field=_raw "insightIdentity.readableId" as insight_id
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insight Explorer/Signal Tags**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight  OR
_index=sumologic_system_events _sourcecategory=cseinsight )
| json field=_raw "insight.tags" as Tags
| json field=_raw "insightIdentity.readableId" as insight_id
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insight Explorer/Signals details**
```
(((_index=sumologic_audit_events _sourcecategory=cseinsight) or (_index=sumologic_system_events _sourcecategory=cseinsight)))
| json field=_raw "insight.readableId" as insight_readableid
| json field=_raw "insight.signals[*]" as signals_array
| parse regex field=signals_array "name\"\:\"(?<Name>.*?)\".*?\"summary\"\:\"(?<Summary>.*?)\".*?\"description\"\:\"(?<Description>.*?)\".*?\"severity\"\:\"(?<Severity>.*?)\".*?\"created\"\:\"(?<Created>.*?)\".*?" multi
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insight Explorer/SOC analyst**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight  OR
_index=sumologic_system_events _sourcecategory=cseinsight )
| json field=_raw "operator.email" as ClosedBy
| json field=_raw "insightIdentity.readableId" as insight_id
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insight Explorer/Status**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight  OR
_index=sumologic_system_events _sourcecategory=cseinsight )
| json field=_raw "to.resolution" as Resolution
| json field=_raw "insightIdentity.readableId" as insight_id
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insight Explorer/TimeCreated**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight  OR
_index=sumologic_system_events _sourcecategory=cseinsight )
| json field=_raw "insight.created" as TimeCreated
//| formatDate(toLong(timestamp), "MM-dd-yyyy HH:mm:ss") as TimeCreated
| json field=_raw "insightIdentity.readableId" as insight_id
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insight Report/ASSIGNEE**
```
_index=sumologic_*_events AND _sourceCategory=cseInsight AND "{{ID}}"
| json "insight.readableId" nodrop
| where %"insight.readableId" = "{{ID}}"
| limit 1

| json "insight.assignee" as assignee nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insight Report/DESCRIPTION**
```
_index=sumologic_*_events AND _sourceCategory=cseInsight AND "{{ID}}"
| json "insight.readableId" nodrop
| where %"insight.readableId" = "{{ID}}"
| limit 1

| json "insight.description" as description nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insight Report/ENTITY**
```
_index=sumologic_*_events AND _sourceCategory=cseInsight AND "{{ID}}"
| json "insight.readableId" nodrop
| where %"insight.readableId" = "{{ID}}"
| limit 1

| json "insight.entityValue" as entityValue nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insight Report/INSIGHT ID**
```
_index=sumologic_*_events AND _sourceCategory=cseInsight AND "{{ID}}"
| json "insight.readableId" nodrop
| where %"insight.readableId" = "{{ID}}"
| limit 1

| json "insight.readableId" as readableId nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insight Report/NAME**
```
_index=sumologic_*_events AND _sourceCategory=cseInsight AND "{{ID}}"
| json "insight.readableId" nodrop
| where %"insight.readableId" = "{{ID}}"
| limit 1

| json "insight.name" as name nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insight Report/SEVERITY**
```
_index=sumologic_*_events AND _sourceCategory=cseInsight AND "{{ID}}"
| json "insight.readableId" nodrop
| where %"insight.readableId" = "{{ID}}"
| limit 1

| json "insight.severity" as severity nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insight Report/SIGNALS**
```
_index=sumologic_*_events AND _sourceCategory=cseInsight AND "{{ID}}"

| json "insight.readableId" nodrop
| where %"insight.readableId" = "{{ID}}"
| limit 1

| json "insight.signals" as signals nodrop
| parse regex field=signals "(?<signal>\{\"id\"\:[^\}]+\})" multi nodrop
| json field=signal "description" as description nodrop
| json field=signal "summary" as summary nodrop
| json field=signal "name" as name nodrop
| json field=signal "ruleName" as ruleName nodrop
| json field=signal "ruleId" as ruleId nodrop
| json field=signal "created" as created nodrop
| json field=signal "severity" as severity nodrop

| format("? ID: %s\n? NAME: %s", ruleId, ruleName) as rule
| format("? NAME: %s\n? SUMMARY: %s\n? DESCRIPTION: %s\n\n? SEVERITY: %s", name, summary, description, severity) as signal

| parse regex field=created "(?<timestamp>^\d{4}-\d{2}-\d{2}T\d{2}:\d{2}:\d{2}\.\d{3})"
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insight Report/STATUS**
```
_index=sumologic_*_events AND _sourceCategory=cseInsight AND "{{ID}}"
| json "insight.readableId" nodrop
| where %"insight.readableId" = "{{ID}}"
| limit 1

| json "insight.status" as status nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insight Report/TIME TO DETECTION**
```
_index=sumologic_*_events AND _sourceCategory=cseInsight AND "{{ID}}"
| json "insight.readableId" nodrop
| where %"insight.readableId" = "{{ID}}"
| limit 1

| json "insight.timeToDetection" as timeToDetection nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insight Report/TIME TO REMEDIATE**
```
_index=sumologic_*_events AND _sourceCategory=cseInsight AND "{{ID}}"
| json "insight.readableId" nodrop
| where %"insight.readableId" = "{{ID}}"
| limit 1

| json "insight.timeToRemediation" as timeToRemediation nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insight Report/TIME TO RESPONSE**
```
_index=sumologic_*_events AND _sourceCategory=cseInsight AND "{{ID}}"
| json "insight.readableId" nodrop
| where %"insight.readableId" = "{{ID}}"
| limit 1

| json "insight.timeToResponse" as timeToResponse nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insight Report/TIMELINE**
```
_index=sumologic_*_events AND (_sourceCategory=cseInsight OR _sourceCategory=cseInsightComment) AND "{{ID}}"

| json "insight.readableId" nodrop
| json "insightComment.insightReadableId" nodrop
| where (%"insight.readableId" = "{{ID}}" OR %"insightComment.insightReadableId" = "{{ID}}")

| json "eventName" as eventName nodrop
| toUpperCase(eventName) as eventName
| if(eventName = "INSIGHTCREATED", "CREATION", eventName) as eventName
| if(eventName = "INSIGHTUPDATED", "UPDATE", eventName) as eventName
| if(eventName = "INSIGHTCOMMENTCREATED", "COMMENT ADDED", eventName) as eventName

| json "operator.email" as operator nodrop
| if(IsEmpty(operator), "-", toUpperCase(operator)) as operator

| json "insight.status" as status nodrop
| if(IsEmpty(status), "-", status) as status
| toUpperCase(status) as status

| json "insightComment.body" as comment nodrop
| replace(comment, "?", "\n?") as comment
| replace(comment, ".  ", ".\n\n") as comment

| json "to" nodrop
| parse regex field=to "\"assignee\"\:\"(?<update_assignee>[^\,]+)\"" nodrop
| parse regex field=to "\"resolution\"\:\"(?<update_resolution>[^\,]+)\"" nodrop
| parse regex field=to "\"status\"\:\"(?<update_status>[^\,]+)\"" nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insight Trainer/Rule Severities - Current v. Recommended, sorted by Tunability**
```
// id=@rule_severities_recommendations:cse_rules:
_index=sec_record*
| count 
| infer _model=severityrecommender _category=cse type=rule_severities minimize="{{minimize}}" 
| "{{show_rules}}" as variable_rules | "{{deployment}}" as variable_deployment | "{{domain}}" as domain | if(variable_rules = "Rules with severity recommendations", 0, -1) as delta_reference | if (variable_deployment = "prod", ".", concat(".", variable_deployment, ".")) as sumo_deployment | int(tunability_factor) as tunability | (current_severity - recommended_severity) as delta | abs(delta) as delta | int(delta) as delta
| where delta > delta_reference
| parse field=rule "[*] *" as rule_id, rule_name
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Closed/Average Time to Detection**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated) 
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Closed/Average Time to Remediate**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated) 
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Closed/Average Time to Respond**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated) 
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Closed/Closed Insights Over Time**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated) 
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Closed/Closed Insights Summary**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated) 
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
| where insight_status = "closed"
| json field=_raw "insight.signals.length()" as signal_count
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Closed/False Positive Insights Summary**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated) 
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
| if(isBlank(insight_assignee), "Unassigned", insight_assignee) as insight_assignee
| where insight_status = "closed"
| where insight_resolution = "False Positive"
| json field=_raw "insight.signals.length()" as signal_count
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Closed/Insights by Entity Type**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated) 
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Closed/Insights by Resolution**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated) 
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Closed/Insights by Rule ID**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated) 
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
| where insight_status = "closed"
| replace(insight_tags, "[","") as insight_tags
| replace(insight_tags, "]"," ") as insight_tags
| replace(insight_tags, "\"","") as insight_tags
| replace(insight_tags, ","," | ") as insight_tags
| replace(insight_ruleId, "[","") as insight_ruleId
| replace(insight_ruleId, "]"," ") as insight_ruleId
| replace(insight_ruleId, "\"","") as insight_ruleId
| replace(insight_ruleId, ","," | ") as insight_ruleId
| parse regex field=insight_ruleId "(?<ruleID>[\w-_ :.]+)" multi
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Closed/Insights by Severity**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated) 
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Closed/Insights by Severity Over Time**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated) 
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Closed/Insights by Source**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated) 
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Closed/Insights by Tag**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated) 
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
| where insight_status = "closed"
| replace(insight_tags, "[","") as insight_tags
| replace(insight_tags, "]"," ") as insight_tags
| replace(insight_tags, "\"","") as insight_tags
| replace(insight_tags, ","," | ") as insight_tags
| replace(insight_ruleId, "[","") as insight_ruleId
| replace(insight_ruleId, "]"," ") as insight_ruleId
| replace(insight_ruleId, "\"","") as insight_ruleId
| replace(insight_ruleId, ","," | ") as insight_ruleId
| parse regex field=insight_tags "(?<tag>[\w-_ :.]+)" multi
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Closed/Top 10 Insights by Assignee**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated) 
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Closed/Top 10 Insights by Entity Value**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated) 
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Closed/Top 10 Insights by Name**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated) 
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Created/Average Insight Confidence**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightcreated) OR 
(_index=sumologic_system_events _sourcecategory=cseinsight insightcreated)
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToDetection" ,"insight.assignee", "operator.email",  "insight.status", "insight.severity", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.entitySensorZone" ,"insight.description",  "insight.name", "insight.readableId", "insight.id",  "insight.confidence"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time , insight_time_to_detection , insight_assignee , operator_email, insight_status, insight_severity, insight_source, entity_value, entity_type, entity_id, entity_sensor_zone ,insight_description, insight_name, insight_readableId, insight_Id, insight_confidence nodrop
| json field=_raw "insight.signals.length()" as signal_count
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Created/Average Time to Detection**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightcreated) OR 
(_index=sumologic_system_events _sourcecategory=cseinsight insightcreated)
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToDetection" ,"insight.assignee", "operator.email",  "insight.status", "insight.severity", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.entitySensorZone" ,"insight.description",  "insight.name", "insight.readableId", "insight.id",  "insight.confidence"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time , insight_time_to_detection , insight_assignee , operator_email, insight_status, insight_severity, insight_source, entity_value, entity_type, entity_id, entity_sensor_zone ,insight_description, insight_name, insight_readableId, insight_Id, insight_confidence nodrop
| json field=_raw "insight.signals.length()" as signal_count
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Created/Insights by Entity Type**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightcreated) OR 
(_index=sumologic_system_events _sourcecategory=cseinsight insightcreated)
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToDetection" ,"insight.assignee", "operator.email",  "insight.status", "insight.severity", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.entitySensorZone" ,"insight.description",  "insight.name", "insight.readableId", "insight.id",  "insight.confidence"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time , insight_time_to_detection , insight_assignee , operator_email, insight_status, insight_severity, insight_source, entity_value, entity_type, entity_id, entity_sensor_zone ,insight_description, insight_name, insight_readableId, insight_Id, insight_confidence nodrop
| json field=_raw "insight.signals.length()" as signal_count
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Created/Insights by Name**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightcreated) OR 
(_index=sumologic_system_events _sourcecategory=cseinsight insightcreated)
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToDetection" ,"insight.assignee", "operator.email",  "insight.status", "insight.severity", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.entitySensorZone" ,"insight.description",  "insight.name", "insight.readableId", "insight.id",  "insight.confidence"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time , insight_time_to_detection , insight_assignee , operator_email, insight_status, insight_severity, insight_source, entity_value, entity_type, entity_id, entity_sensor_zone ,insight_description, insight_name, insight_readableId, insight_Id, insight_confidence nodrop
| json field=_raw "insight.signals.length()" as signal_count
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Created/Insights by Severity**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightcreated) OR 
(_index=sumologic_system_events _sourcecategory=cseinsight insightcreated)
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToDetection" ,"insight.assignee", "operator.email",  "insight.status", "insight.severity", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.entitySensorZone" ,"insight.description",  "insight.name", "insight.readableId", "insight.id",  "insight.confidence"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time , insight_time_to_detection , insight_assignee , operator_email, insight_status, insight_severity, insight_source, entity_value, entity_type, entity_id, entity_sensor_zone ,insight_description, insight_name, insight_readableId, insight_Id, insight_confidence nodrop
| json field=_raw "insight.signals.length()" as signal_count
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Created/Insights by Severity Over Time**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightcreated) OR 
(_index=sumologic_system_events _sourcecategory=cseinsight insightcreated)
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToDetection" ,"insight.assignee", "operator.email",  "insight.status", "insight.severity", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.entitySensorZone" ,"insight.description",  "insight.name", "insight.readableId", "insight.id",  "insight.confidence"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time , insight_time_to_detection , insight_assignee , operator_email, insight_status, insight_severity, insight_source, entity_value, entity_type, entity_id, entity_sensor_zone ,insight_description, insight_name, insight_readableId, insight_Id, insight_confidence nodrop
| json field=_raw "insight.signals.length()" as signal_count
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Created/Insights by Source**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightcreated) OR 
(_index=sumologic_system_events _sourcecategory=cseinsight insightcreated)
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToDetection" ,"insight.assignee", "operator.email",  "insight.status", "insight.severity", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.entitySensorZone" ,"insight.description",  "insight.name", "insight.readableId", "insight.id",  "insight.confidence"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time , insight_time_to_detection , insight_assignee , operator_email, insight_status, insight_severity, insight_source, entity_value, entity_type, entity_id, entity_sensor_zone ,insight_description, insight_name, insight_readableId, insight_Id, insight_confidence nodrop
| json field=_raw "insight.signals.length()" as signal_count
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Created/Insights by Tags**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightcreated) OR 
(_index=sumologic_system_events _sourcecategory=cseinsight insightcreated)
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToDetection" ,"insight.assignee", "operator.email",  "insight.status", "insight.severity", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.entitySensorZone" ,"insight.description",  "insight.name", "insight.readableId", "insight.id",  "insight.confidence"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time , insight_time_to_detection , insight_assignee , operator_email, insight_status, insight_severity, insight_source, entity_value, entity_type, entity_id, entity_sensor_zone ,insight_description, insight_name, insight_readableId, insight_Id, insight_confidence nodrop
| json field=_raw "insight.signals.length()" as signal_count
| replace(insight_tags, "[","") as insight_tags
| replace(insight_tags, "]","") as insight_tags
| replace(insight_tags, "\"","") as insight_tags
| replace(insight_tags, ","," | ") as insight_tags
| replace(insight_ruleId, "[","") as insight_ruleId
| replace(insight_ruleId, "]","") as insight_ruleId
| replace(insight_ruleId, "\"","") as insight_ruleId
| replace(insight_ruleId, ","," | ") as insight_ruleId
| parse regex field=insight_tags "(?<tag>[\w-_ :.]+)" multi
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Created/Insights Created**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightcreated) OR 
(_index=sumologic_system_events _sourcecategory=cseinsight insightcreated)
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToDetection" ,"insight.assignee", "operator.email",  "insight.status", "insight.severity", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.entitySensorZone" ,"insight.description",  "insight.name", "insight.readableId", "insight.id",  "insight.confidence"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time , insight_time_to_detection , insight_assignee , operator_email, insight_status, insight_severity, insight_source, entity_value, entity_type, entity_id, entity_sensor_zone ,insight_description, insight_name, insight_readableId, insight_Id, insight_confidence nodrop
| json field=_raw "insight.signals.length()" as signal_count
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Created/Insights Created Over Time**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightcreated) OR 
(_index=sumologic_system_events _sourcecategory=cseinsight insightcreated)
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToDetection" ,"insight.assignee", "operator.email",  "insight.status", "insight.severity", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.entitySensorZone" ,"insight.description",  "insight.name", "insight.readableId", "insight.id",  "insight.confidence"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time , insight_time_to_detection , insight_assignee , operator_email, insight_status, insight_severity, insight_source, entity_value, entity_type, entity_id, entity_sensor_zone ,insight_description, insight_name, insight_readableId, insight_Id, insight_confidence nodrop
| json field=_raw "insight.signals.length()" as signal_count
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Created/Insights Summary**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightcreated) OR 
(_index=sumologic_system_events _sourcecategory=cseinsight insightcreated)
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToDetection" ,"insight.assignee", "operator.email",  "insight.status", "insight.severity", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.entitySensorZone" ,"insight.description",  "insight.name", "insight.readableId", "insight.id",  "insight.confidence"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time , insight_time_to_detection , insight_assignee , operator_email, insight_status, insight_severity, insight_source, entity_value, entity_type, entity_id, entity_sensor_zone ,insight_description, insight_name, insight_readableId, insight_Id, insight_confidence nodrop
| json field=_raw "insight.signals.length()" as signal_count
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Created/Max Insight Confidence**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightcreated) OR 
(_index=sumologic_system_events _sourcecategory=cseinsight insightcreated)
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToDetection" ,"insight.assignee", "operator.email",  "insight.status", "insight.severity", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.entitySensorZone" ,"insight.description",  "insight.name", "insight.readableId", "insight.id",  "insight.confidence"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time , insight_time_to_detection , insight_assignee , operator_email, insight_status, insight_severity, insight_source, entity_value, entity_type, entity_id, entity_sensor_zone ,insight_description, insight_name, insight_readableId, insight_Id, insight_confidence nodrop
| json field=_raw "insight.signals.length()" as signal_count
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Created/Median Insight Confidence**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightcreated) OR 
(_index=sumologic_system_events _sourcecategory=cseinsight insightcreated)
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToDetection" ,"insight.assignee", "operator.email",  "insight.status", "insight.severity", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.entitySensorZone" ,"insight.description",  "insight.name", "insight.readableId", "insight.id",  "insight.confidence"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time , insight_time_to_detection , insight_assignee , operator_email, insight_status, insight_severity, insight_source, entity_value, entity_type, entity_id, entity_sensor_zone ,insight_description, insight_name, insight_readableId, insight_Id, insight_confidence nodrop
| json field=_raw "insight.signals.length()" as signal_count
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Created/Min Insight Confidence**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightcreated) OR 
(_index=sumologic_system_events _sourcecategory=cseinsight insightcreated)
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToDetection" ,"insight.assignee", "operator.email",  "insight.status", "insight.severity", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.entitySensorZone" ,"insight.description",  "insight.name", "insight.readableId", "insight.id",  "insight.confidence"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time , insight_time_to_detection , insight_assignee , operator_email, insight_status, insight_severity, insight_source, entity_value, entity_type, entity_id, entity_sensor_zone ,insight_description, insight_name, insight_readableId, insight_Id, insight_confidence nodrop
| json field=_raw "insight.signals.length()" as signal_count
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Created/Top 10 Insights by Assignee**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightcreated) OR 
(_index=sumologic_system_events _sourcecategory=cseinsight insightcreated)
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToDetection" ,"insight.assignee", "operator.email",  "insight.status", "insight.severity", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.entitySensorZone" ,"insight.description",  "insight.name", "insight.readableId", "insight.id",  "insight.confidence"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time , insight_time_to_detection , insight_assignee , operator_email, insight_status, insight_severity, insight_source, entity_value, entity_type, entity_id, entity_sensor_zone ,insight_description, insight_name, insight_readableId, insight_Id, insight_confidence nodrop
| json field=_raw "insight.signals.length()" as signal_count
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Created/Top 10 Insights by Entity Value**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightcreated) OR 
(_index=sumologic_system_events _sourcecategory=cseinsight insightcreated)
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToDetection" ,"insight.assignee", "operator.email",  "insight.status", "insight.severity", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.entitySensorZone" ,"insight.description",  "insight.name", "insight.readableId", "insight.id",  "insight.confidence"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time , insight_time_to_detection , insight_assignee , operator_email, insight_status, insight_severity, insight_source, entity_value, entity_type, entity_id, entity_sensor_zone ,insight_description, insight_name, insight_readableId, insight_Id, insight_confidence nodrop
| json field=_raw "insight.signals.length()" as signal_count
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Created/Top 10 Insights by Rule ID**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightcreated) OR 
(_index=sumologic_system_events _sourcecategory=cseinsight insightcreated)
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToDetection" ,"insight.assignee", "operator.email",  "insight.status", "insight.severity", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.entitySensorZone" ,"insight.description",  "insight.name", "insight.readableId", "insight.id",  "insight.confidence"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time , insight_time_to_detection , insight_assignee , operator_email, insight_status, insight_severity, insight_source, entity_value, entity_type, entity_id, entity_sensor_zone ,insight_description, insight_name, insight_readableId, insight_Id, insight_confidence nodrop
| json field=_raw "insight.signals.length()" as signal_count
| replace(insight_tags, "[","") as insight_tags
| replace(insight_tags, "]","") as insight_tags
| replace(insight_tags, "\"","") as insight_tags
| replace(insight_tags, ","," | ") as insight_tags
| replace(insight_ruleId, "[","") as insight_ruleId
| replace(insight_ruleId, "]","") as insight_ruleId
| replace(insight_ruleId, "\"","") as insight_ruleId
| replace(insight_ruleId, ","," | ") as insight_ruleId
| parse regex field=insight_ruleId "(?<ruleID>[\w-_ :.]+)" multi
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Overview/Insights - No Action Required**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated) 
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Overview/Insights by Created vs Closed**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightcreated) OR 
(_index=sumologic_system_events _sourcecategory=cseinsight insightcreated)
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToDetection" ,"insight.assignee", "operator.email",  "insight.status", "insight.severity", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.entitySensorZone" ,"insight.description",  "insight.name", "insight.readableId", "insight.id",  "insight.confidence"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time , insight_time_to_detection , insight_assignee , operator_email, insight_status, insight_severity, insight_source, entity_value, entity_type, entity_id, entity_sensor_zone ,insight_description, insight_name, insight_readableId, insight_Id, insight_confidence nodrop
| json field=_raw "insight.signals.length()" as signal_count
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Overview/Insights by Entity Value**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight) or (_index=sumologic_system_events _sourcecategory=cseinsight) 
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Overview/Insights by Rule ID, and Insight Name**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight) or (_index=sumologic_system_events _sourcecategory=cseinsight)
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
| replace(insight_tags, "[","") as insight_tags
| replace(insight_tags, "]"," ") as insight_tags
| replace(insight_tags, "\"","") as insight_tags
| replace(insight_tags, ","," | ") as insight_tags
| replace(insight_ruleId, "[","") as insight_ruleId
| replace(insight_ruleId, "]"," ") as insight_ruleId
| replace(insight_ruleId, "\"","") as insight_ruleId
| replace(insight_ruleId, ","," | ") as insight_ruleId
| parse regex field=insight_ruleId "(?<ruleID>[A-Z0-9-]+)" multi
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Overview/Insights by Tag**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight) or (_index=sumologic_system_events _sourcecategory=cseinsight)
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
| replace(insight_tags, "[","") as insight_tags
| replace(insight_tags, "]"," ") as insight_tags
| replace(insight_tags, "\"","") as insight_tags
| replace(insight_tags, ","," | ") as insight_tags
| replace(insight_ruleId, "[","") as insight_ruleId
| replace(insight_ruleId, "]"," ") as insight_ruleId
| replace(insight_ruleId, "\"","") as insight_ruleId
| replace(insight_ruleId, ","," | ") as insight_ruleId
| parse regex field=insight_tags "(?<tag>[\w-_ :.]+)" multi
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Overview/Insights Closed**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated) 
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Overview/Insights Created**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightcreated) OR 
(_index=sumologic_system_events _sourcecategory=cseinsight insightcreated)
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToDetection" ,"insight.assignee", "operator.email",  "insight.status", "insight.severity", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.entitySensorZone" ,"insight.description",  "insight.name", "insight.readableId", "insight.id",  "insight.confidence"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time , insight_time_to_detection , insight_assignee , operator_email, insight_status, insight_severity, insight_source, entity_value, entity_type, entity_id, entity_sensor_zone ,insight_description, insight_name, insight_readableId, insight_Id, insight_confidence nodrop
| json field=_raw "insight.signals.length()" as signal_count
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Overview/Insights Created - Outlier**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightcreated) OR 
(_index=sumologic_system_events _sourcecategory=cseinsight insightcreated)
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToDetection" ,"insight.assignee", "operator.email",  "insight.status", "insight.severity", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.entitySensorZone" ,"insight.description",  "insight.name", "insight.readableId", "insight.id",  "insight.confidence"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time , insight_time_to_detection , insight_assignee , operator_email, insight_status, insight_severity, insight_source, entity_value, entity_type, entity_id, entity_sensor_zone ,insight_description, insight_name, insight_readableId, insight_Id, insight_confidence nodrop
| json field=_raw "insight.signals.length()" as signal_count
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Overview/Insights Duplicates**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated) 
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Overview/Insights False Positives**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated) 
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Overview/Top 10 Closed Insights by Confidence Level**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated) 
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id", "insight.confidence"   as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id, insight_confidence nodrop
| where insight_status = "closed"
| insight_confidence * 100 as insight_confidence 
| json field=_raw "insight.signals.length()" as signal_count
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Insights Overview/Top 10 Insights Created by Confidence Level**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightcreated) OR 
(_index=sumologic_system_events _sourcecategory=cseinsight insightcreated) 
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToDetection" ,"insight.assignee", "operator.email",  "insight.status", "insight.severity", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.entitySensorZone" ,"insight.description",  "insight.name", "insight.readableId", "insight.id",  "insight.confidence"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time , insight_time_to_detection , insight_assignee , operator_email, insight_status, insight_severity, insight_source, entity_value, entity_type, entity_id, entity_sensor_zone ,insight_description, insight_name, insight_readableId, insight_Id, insight_confidence nodrop
| json field=_raw "insight.signals.length()" as signal_count
| insight_confidence * 100 as insight_confidence 
| if(isBlank(insight_assignee), "Unassigned", insight_assignee) as insight_assignee
| replace(insight_tags, "[","") as insight_tags
| replace(insight_tags, "]","") as insight_tags
| replace(insight_tags, "\"","") as insight_tags
| replace(insight_tags, ","," | ") as insight_tags
| replace(insight_ruleId, "[","") as insight_ruleId
| replace(insight_ruleId, "]","") as insight_ruleId
| replace(insight_ruleId, "\"","") as insight_ruleId
| replace(insight_ruleId, ","," | ") as insight_ruleId
| json "insight.timeToResponse" as timeToResponse nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Overview/Insights for {{{Keyword}}}**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight) or (_index=sumologic_system_events _sourcecategory=cseinsight)
 {{{Keyword}}}
| json field=_raw "insight.readableId" as insight_readableId
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Record Analysis - Failed Records/Failed Record Summary**
```
_index=sec_record_failure objectType=FailedRecord 
| json field=_raw "reason" nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Record Analysis - Failed Records/Last 1000 Failed Records**
```
_index=sec_record_failure objectType=FailedRecord 
| limit 1000
| json field=_raw "reason" nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Record Parsing and Analysis/Map**
```
_index=sec_record_failure objectType=FailedRecord 
| where !(metadata_vendor = "UNKNOWN") 
| json field=_raw "reason" nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Record Parsing and Analysis/Messages Failed to Parse**
```
_index=sec_record_failure
| json field=_raw "reason" as reason
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Record Parsing and Analysis/Non Parsed Messages**
```
_index=sec_record_failure
| json field=_raw "reason" as reason
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Record Parsing and Analysis/Top Sources to Rules Mapping**
```
_index=sec_signal 
| json field=fullRecords "[0].metadata_product" as fromState nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Rule Overview/Auditing Rule Configuration Changes**
```
(_index=sumologic_audit_events _sourcecategory=cse* 
OR
_index=sumologic_system_events _sourcecategory=cse* )
*Rule*

{{{rule}}}
//THRESHOLD-S00096

| json field=_raw "eventName"
| where eventname matches "*Rule*"
| json field=_raw "operator.email" as operator nodrop
| json field=_raw "from" as old nodrop
| json field=_raw "to" as new nodrop

| json field=_raw "templatedMatchRule" as rulea nodrop
| json field=_raw "matchRule" as ruleb nodrop
| json field=_raw "yaraRule" as rulec nodrop
| json field=_raw "thresholdRule" as ruled nodrop
| json field=_raw "chainRule" as rulee nodrop
| json field=_raw "aggregationRule" as rulef nodrop

| rulea as rule
| if(isempty(rule),ruleb,rule) as rule
| if(isempty(rule),rulec,rule) as rule
| if(isempty(rule),ruled,rule) as rule
| if(isempty(rule),rulee,rule) as rule
| if(isempty(rule),rulef,rule) as rule

//| where isempty(rule)

| json field=rule "readableId" as id
| json field=rule "name"
| json field=rule "enabled"
| json field=rule "expression"
| json field=rule "severityMapping"
| json field=rule "tuningExpressions"
| json field=rule "isPrototype"
| json field=rule "tags"
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Rule Overview/Device Event IDs**
```
_index=sec_signal
{{{rule}}}

_index=sec_signal
{{{rule}}}
| json field=entities "[0].value" as entityid nodrop
//
//| json field=fullRecords "[*].metadata_vendor" as vendors nodrop
//| json field=fullRecords "[*].metadata_sourceCategory" as sourceCategories nodrop
//| json field=fullRecords "[*].metadata_product" as products nodrop
//| json field=fullRecords "[*].metadata_mapperName" as mapperNames nodrop
| json field=fullRecords "[*].metadata_deviceEventId" as deviceEventIds nodrop

//| concat (ruleid," ",rulename) as rule
//| parse regex field=vendors "(?<vendor>[\w\d_ -]+)" multi
//| count_distinct(id) as signals by vendor,sourcecategories,products //,deviceEventIds
//
//| parse regex field=products "(?<product>[\w\d_ -]+)" multi
//| max(signals) as signals by vendor,product,sourcecategories //,deviceEventIds
//
| parse regex field=deviceEventIds "(?<deviceEventId>[^\r\n\"\[\]\{\},]+)" multi
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Rule Overview/Mappers**
```
_index=sec_signal
{{{rule}}}

_index=sec_signal
{{{rule}}}
| json field=entities "[0].value" as entityid nodrop
//
//| json field=fullRecords "[*].metadata_vendor" as vendors nodrop
//| json field=fullRecords "[*].metadata_sourceCategory" as sourceCategories nodrop
//| json field=fullRecords "[*].metadata_product" as products nodrop
| json field=fullRecords "[*].metadata_mapperName" as mapperNames nodrop
//| json field=fullRecords "[*].metadata_parser" as parsers nodrop
//
////| concat (ruleid," ",rulename) as rule
////| parse regex field=vendors "(?<vendor>[\w\d_ -]+)" multi
////| count_distinct(id) as signals by vendor,sourcecategories,products //,deviceEventIds
////
////| parse regex field=products "(?<product>[\w\d_ -]+)" multi
////| max(signals) as signals by vendor,product,sourcecategories //,deviceEventIds
////
//| parse regex field=deviceEventIds "(?<deviceEventId>[^\r\n\"\[\]\{\},]+)" multi
| parse regex field=mappernames "(?<mappername>[\w\d_ -]+)" multi
|  count_distinct(id) as signals by  mappername //,parsers

//| parse regex field=parsers "(?<parser>[\w\d_\/ -]+)" multi
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Rule Overview/Parsers**
```
_index=sec_signal
{{{rule}}}

_index=sec_signal
{{{rule}}}
| json field=entities "[0].value" as entityid nodrop
//
//| json field=fullRecords "[*].metadata_vendor" as vendors nodrop
//| json field=fullRecords "[*].metadata_sourceCategory" as sourceCategories nodrop
//| json field=fullRecords "[*].metadata_product" as products nodrop
//| json field=fullRecords "[*].metadata_mapperName" as mapperNames nodrop
| json field=fullRecords "[*].metadata_parser" as parsers nodrop
//
////| concat (ruleid," ",rulename) as rule
////| parse regex field=vendors "(?<vendor>[\w\d_ -]+)" multi
////| count_distinct(id) as signals by vendor,sourcecategories,products //,deviceEventIds
////
////| parse regex field=products "(?<product>[\w\d_ -]+)" multi
////| max(signals) as signals by vendor,product,sourcecategories //,deviceEventIds
////
//| parse regex field=deviceEventIds "(?<deviceEventId>[^\r\n\"\[\]\{\},]+)" multi
//| parse regex field=mappernames "(?<mappername>[\w\d_ -]+)" multi
//|  count_distinct(id) as signals by  mappername //,parsers
//
| parse regex field=parsers "(?<parser>[\w\d_\/ -]+)" multi
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Rule Overview/Rule Signal Tags**
```
_index=sec_signal
{{{rule}}}

| if (isempty(suppressedreasons),"NO","YES") as suppressed

| if(suppressed="YES",1,0) as is_suppressed
| if(suppressed="NO",1,0) as is_generated

| json field=entities "[0].value" as entityid nodrop

| json field=fullRecords "[0].metadata_vendor" as vendor nodrop
| json field=fullRecords "[0].metadata_sourceCategory" as sourceCategory nodrop
| json field=fullRecords "[0].metadata_product" as product nodrop
| json field=fullRecords "[0].metadata_mapperName" as mapperName nodrop
| json field=fullRecords "[0].metadata_deviceEventId" as deviceEventId nodrop
| json field=fullRecords "[0].metadata_parser" as parser nodrop
| concat (ruleid," ",rulename) as rule

| parse regex field=tags "\"(?<tagname>[^:\"]+):(?<tagvalue>[^:\"]+)" multi
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Rule Overview/Signal Entities**
```
_index=sec_signal
{{{rule}}}

| if (isempty(suppressedreasons),"NO","YES") as suppressed

| if(suppressed="YES",1,0) as is_suppressed
| if(suppressed="NO",1,0) as is_generated

| json field=entities "[0].value" as entityid nodrop
//
//| json field=fullRecords "[0].metadata_vendor" as vendor nodrop
//| json field=fullRecords "[0].metadata_sourceCategory" as sourceCategory nodrop
//| json field=fullRecords "[0].metadata_product" as product nodrop
//| json field=fullRecords "[0].metadata_mapperName" as mapperName nodrop
//| json field=fullRecords "[0].metadata_deviceEventId" as deviceEventId nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Rule Overview/Signal Record Metadata**
```
_index=sec_signal
{{{rule}}}

_index=sec_signal
{{{rule}}}
| json field=entities "[0].value" as entityid nodrop
//
| json field=fullRecords "[*].metadata_vendor" as vendors nodrop
| json field=fullRecords "[*].metadata_sourceCategory" as sourceCategories nodrop
| json field=fullRecords "[*].metadata_product" as products nodrop
//| json field=fullRecords "[*].metadata_mapperName" as mapperNames nodrop
//| json field=fullRecords "[*].metadata_deviceEventId" as deviceEventIds nodrop

| concat (ruleid," ",rulename) as rule
| parse regex field=vendors "(?<vendor>[\w\d_ -]+)" multi
| count_distinct(id) as signals by vendor,sourcecategories,products //,deviceEventIds

| parse regex field=products "(?<product>[\w\d_ -]+)" multi
| max(signals) as signals by vendor,product,sourcecategories //,deviceEventIds

| parse regex field=sourcecategories "(?<sourceCategory>[\w\d_ \\\/-]+)" multi
| max(signals) as signals by vendor,product,sourcecategory //,deviceEventIds

//| parse regex field=deviceEventIds "(?<deviceEventId>[^\r\n\"\[\]\{\},]+)" multi
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Rule Overview/Signals Matching Rule**
```
_index=sec_signal
{{{rule}}}

| if (isempty(suppressedreasons),"NO","YES") as suppressed

| if(suppressed="YES",1,0) as is_suppressed
| if(suppressed="NO",1,0) as is_generated

| json field=entities "[0].value" as entityid nodrop
//
//| json field=fullRecords "[0].metadata_vendor" as vendor nodrop
//| json field=fullRecords "[0].metadata_sourceCategory" as sourceCategory nodrop
//| json field=fullRecords "[0].metadata_product" as product nodrop
//| json field=fullRecords "[0].metadata_mapperName" as mapperName nodrop
//| json field=fullRecords "[0].metadata_deviceEventId" as deviceEventId nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Rule Overview/Source Categories**
```
_index=sec_signal
{{{rule}}}

| json field=entities "[0].value" as entityid nodrop
//
//| json field=fullRecords "[*].metadata_vendor" as vendors nodrop
| json field=fullRecords "[*].metadata_sourceCategory" as sourceCategories nodrop
//| json field=fullRecords "[*].metadata_product" as products nodrop
//| json field=fullRecords "[*].metadata_mapperName" as mapperNames nodrop
//| json field=fullRecords "[*].metadata_deviceEventId" as deviceEventIds nodrop

//| concat (ruleid," ",rulename) as rule
| parse regex field=sourceCategories "(?<sourcecategory>[\w\d_\/\.-]+)" multi
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Rule Overview/Supppression Reason Summary**
```
_index=sec_signal
{{{rule}}}

| json field=entities "[0].value" as entityid
| if (isempty(suppressedreasons),"NO","YES") as suppressed
| where suppressed="YES"

| concat (ruleid," ",rulename) as rule
| parse regex field=suppressedreasons "\"(?<suppress_by>[^\":\[\]]+)" multi
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Rule Overview/Supppression Reasons**
```
_index=sec_signal
{{{rule}}}

| json field=entities "[0].value" as entityid
| if (isempty(suppressedreasons),"NO","YES") as suppressed
| where suppressed="YES"

| concat (ruleid," ",rulename) as rule
| parse regex field=suppressedreasons "\"(?<suppress_by>[^\":\[\]]+)" multi
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Rules and Mapping Changes/Detailed Rule Events**
```
(_index=sumologic_audit_events _sourcecategory=cse*) 
OR
(_index=sumologic_system_events _sourcecategory=cse* )
*Rule*

{{{keywords}}}

| json field=_raw "eventName"
| where eventname matches "*Rule*"
| json field=_raw "operator.email" as operator nodrop
| json field=_raw "from" as old nodrop
| json field=_raw "to" as new nodrop

| json field=_raw "templatedMatchRule" as rulea nodrop
| json field=_raw "matchRule" as ruleb nodrop
| json field=_raw "yaraRule" as rulec nodrop
| json field=_raw "thresholdRule" as ruled nodrop
| json field=_raw "chainRule" as rulee nodrop
| json field=_raw "aggregationRule" as rulef nodrop

| rulea as rule
| if(isempty(rule),ruleb,rule) as rule
| if(isempty(rule),rulec,rule) as rule
| if(isempty(rule),ruled,rule) as rule
| if(isempty(rule),rulee,rule) as rule
| if(isempty(rule),rulef,rule) as rule

//| where isempty(rule)

| json field=rule "readableId" as id
| json field=rule "name"
| json field=rule "enabled"
| json field=rule "expression"
| json field=rule "severityMapping"
| json field=rule "tuningExpressions"
| json field=rule "isPrototype"
| json field=rule "tags"
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Rules and Mapping Changes/Log Mapping Change Details**
```
(_index=sumologic_audit_events _sourcecategory=cse*) 
OR
(_index=sumologic_system_events _sourcecategory=cse* )

*Mapping*

{{{keywords}}}

| json field=_raw "eventName"
| where eventname matches "*Mapping*"
| json field=_raw "operator.email" as operator nodrop
| json field=_raw "from" as old nodrop
| json field=_raw "to" as new nodrop

| json field=_raw "logMapping"

//
| json field=logMapping "id" 
| json field=logMapping "name"
| json field=logMapping "source"
| json field=logMapping "recordType"
| json field=logMapping "enabled"
| json field=logMapping "vendor"
| json field=logMapping "product"
| json field=logMapping "fields" nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Rules and Mapping Changes/Prototype or Recently Enabled Rules**
```
(_index=sumologic_audit_events _sourcecategory=cse*) 
OR
(_index=sumologic_system_events _sourcecategory=cse* )
*rule*

{{{keywords}}}

| json field=_raw "eventName"
| where eventname matches "*Rule*"
| json field=_raw "operator.email" as operator nodrop
| json field=_raw "from" nodrop
| json field=_raw "to" nodrop

| json field=_raw "templatedMatchRule" as rulea nodrop
| json field=_raw "matchRule" as ruleb nodrop
| json field=_raw "yaraRule" as rulec nodrop
| json field=_raw "thresholdRule" as ruled nodrop
| json field=_raw "chainRule" as rulee nodrop
| json field=_raw "aggregationRule" as rulef nodrop

| rulea as rule
| if(isempty(rule),ruleb,rule) as rule
| if(isempty(rule),rulec,rule) as rule
| if(isempty(rule),ruled,rule) as rule
| if(isempty(rule),rulee,rule) as rule
| if(isempty(rule),rulef,rule) as rule

//| where isempty(rule)

| json field=rule "readableId" as id
| json field=rule "name"
| json field=rule "enabled"
| json field=rule "expression"
| json field=rule "severityMapping"
| json field=rule "tuningExpressions"
| json field=rule "isPrototype"
| json field=rule "tags"
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Rules and Mapping Changes/Rule Update Events Trend**
```
(_index=sumologic_audit_events _sourcecategory=cse*) 
OR
(_index=sumologic_system_events _sourcecategory=cse* )
(*Rule* or *Mapping*)

*

| json field=_raw "eventName"
| where eventname matches "*Rule*" or eventname matches "*Mapping*"
| json field=_raw "operator.email" as operator nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Rules and Mapping Changes/Rules Changes**
```
(_index=sumologic_audit_events _sourcecategory=cse*) 
OR
(_index=sumologic_system_events _sourcecategory=cse* )
*rule*

{{{keywords}}}

| json field=_raw "eventName"
| where eventname matches "*Rule*"
| json field=_raw "operator.email" as operator nodrop
| json field=_raw "from" nodrop
| json field=_raw "to" nodrop

| json field=_raw "templatedMatchRule" as rulea nodrop
| json field=_raw "matchRule" as ruleb nodrop
| json field=_raw "yaraRule" as rulec nodrop
| json field=_raw "thresholdRule" as ruled nodrop
| json field=_raw "chainRule" as rulee nodrop
| json field=_raw "aggregationRule" as rulef nodrop

| rulea as rule
| if(isempty(rule),ruleb,rule) as rule
| if(isempty(rule),rulec,rule) as rule
| if(isempty(rule),ruled,rule) as rule
| if(isempty(rule),rulee,rule) as rule
| if(isempty(rule),rulef,rule) as rule

//| where isempty(rule)

| json field=rule "readableId" as id
| json field=rule "name"
| json field=rule "enabled"
| json field=rule "expression"
| json field=rule "severityMapping"
| json field=rule "tuningExpressions"
| json field=rule "isPrototype"
| json field=rule "tags"
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Rules and Mapping Changes/Rules Created**
```
(_index=sumologic_audit_events _sourcecategory=cse*) 
OR
(_index=sumologic_system_events _sourcecategory=cse* )
*RuleCreated

{{{keywords}}}

| json field=_raw "eventName"
| where eventname matches "*Rule*"
| json field=_raw "operator.email" as operator nodrop
| json field=_raw "from" nodrop
| json field=_raw "to" nodrop

| json field=_raw "templatedMatchRule" as rulea nodrop
| json field=_raw "matchRule" as ruleb nodrop
| json field=_raw "yaraRule" as rulec nodrop
| json field=_raw "thresholdRule" as ruled nodrop
| json field=_raw "chainRule" as rulee nodrop
| json field=_raw "aggregationRule" as rulef nodrop

| rulea as rule
| if(isempty(rule),ruleb,rule) as rule
| if(isempty(rule),rulec,rule) as rule
| if(isempty(rule),ruled,rule) as rule
| if(isempty(rule),rulee,rule) as rule
| if(isempty(rule),rulef,rule) as rule

//| where isempty(rule)

| json field=rule "readableId" as id
| json field=rule "name"
| json field=rule "enabled"
| json field=rule "expression"
| json field=rule "severityMapping"
| json field=rule "tuningExpressions"
| json field=rule "isPrototype"
| json field=rule "tags"
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Rules and Mapping Changes/Rules Deleted**
```
(_index=sumologic_audit_events _sourcecategory=cse*) 
OR
(_index=sumologic_system_events _sourcecategory=cse* )
*RuleDeleted

{{{keywords}}}

| json field=_raw "eventName"
| where eventname matches "*Rule*"
| json field=_raw "operator.email" as operator nodrop
| json field=_raw "from" nodrop
| json field=_raw "to" nodrop

| json field=_raw "templatedMatchRule" as rulea nodrop
| json field=_raw "matchRule" as ruleb nodrop
| json field=_raw "yaraRule" as rulec nodrop
| json field=_raw "thresholdRule" as ruled nodrop
| json field=_raw "chainRule" as rulee nodrop
| json field=_raw "aggregationRule" as rulef nodrop

| rulea as rule
| if(isempty(rule),ruleb,rule) as rule
| if(isempty(rule),rulec,rule) as rule
| if(isempty(rule),ruled,rule) as rule
| if(isempty(rule),rulee,rule) as rule
| if(isempty(rule),rulef,rule) as rule

//| where isempty(rule)

| json field=rule "readableId" as id
| json field=rule "name"
| json field=rule "enabled"
| json field=rule "expression"
| json field=rule "severityMapping"
| json field=rule "tuningExpressions"
| json field=rule "isPrototype"
| json field=rule "tags"
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Security Operations Overview/Closed By**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated
OR
_index=sumologic_system_events _sourcecategory=cseinsight insightcreated)

{{{keywords}}}

| json field=_raw "eventName"
//| json field=_raw "insightIdentity.id" as id
| json field=_raw "insightIdentity.readableId" as insightid
| json field=_raw "insight.status" as status
| json field=_raw "insight.name" as name
| json field=_raw "insight.entityType" as entitytype
| json field=_raw "insight.entityValue" as entityvalue
| json field=_raw "insight.tags" as tags
| json field=_raw "insight.severity" as severity
| json field=_raw "insight.confidence" as confidence
| json field=_raw "insight.signals" as signals

// in closed events
| json field=_raw "insight.assignee" as assignee nodrop
| json field=_raw "insight.resolution" as resolution nodrop

// in update events 
//| json field=_raw "to" as last_change nodrop

// may exist after an update
| json field=_raw "insight.timeToResponse" as timeToResponse nodrop
| json field=_raw "insight.timeToDetection" as timeToDetection nodrop
| json field=_raw "insight.timeToRemediation" as timeToRemediation nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Security Operations Overview/Entities To Insights, Rules and Tags**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated
OR
_index=sumologic_system_events _sourcecategory=cseinsight insightcreated)

{{{keywords}}}

| json field=_raw "eventName"
| json field=_raw "insightIdentity.readableId" as insightid
| json field=_raw "insight.status" as status
| json field=_raw "insight.name" as name
| json field=_raw "insight.entityType" as entitytype
| json field=_raw "insight.entityValue" as entityvalue
| json field=_raw "insight.tags" as tags
| json field=_raw "insight.severity" as severity
| json field=_raw "insight.confidence" as confidence
| json field=_raw "insight.signals" as signals

// in closed events
| json field=_raw "insight.assignee" as assignee nodrop
| json field=_raw "insight.resolution" as resolution nodrop


// may exist after an update
| json field=_raw "insight.timeToResponse" as timeToResponse nodrop
| json field=_raw "insight.timeToDetection" as timeToDetection nodrop
| json field=_raw "insight.timeToRemediation" as timeToRemediation nodrop

| if (isnull(timeToResponse),-1,timeToResponse/3600) as timeToResponse
| if (isnull(timeToDetection),-1,timeToDetection/3600) as timeToDetection
| if (isnull(timeToRemediation),-1,timeToRemediation/3600) as timeToRemediation
| sort _messagetime

// ensure we only store the most recent result
| count as events, max(_messagetime) as _messagetime,first(status) as status,first(tags) as tags, min(severity) as severity,first(confidence) as confidence,first(assignee) as assignee,first(resolution) as resolution,first(timeToResponse) as timeToResponse,first(timeToDetection) as timeToDetection,first(timeToRemediation) as timeToRemediation,first(signals) as signals,values(eventname) as eventnames by insightid,name,entitytype,entityvalue 

// lets squash down size of the signals field so we don't generate a massive lookup
| parse regex field=signals "\"ruleId\":\"(?<rule>[^\"]+\",\"ruleName\":\"[^\"]+\")" multi
| replace (rule,"\"","") as rule
| replace (rule,"ruleName","") as rule

| parse regex field=tags "\"(?<tag>[^\":,]+:[^\",:]+)\"" multi
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Security Operations Overview/Event History**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated
OR
_index=sumologic_system_events _sourcecategory=cseinsight insightcreated)

{{{keywords}}}

| json field=_raw "eventName"
//| json field=_raw "insightIdentity.id" as id
| json field=_raw "insightIdentity.readableId" as insightid
| json field=_raw "insight.status" as status
| json field=_raw "insight.name" as name
| json field=_raw "insight.entityType" as entitytype
| json field=_raw "insight.entityValue" as entityvalue
| json field=_raw "insight.tags" as tags
| json field=_raw "insight.severity" as severity
| json field=_raw "insight.confidence" as confidence
| json field=_raw "insight.signals" as signals

// in closed events
| json field=_raw "insight.assignee" as assignee nodrop
| json field=_raw "insight.resolution" as resolution nodrop

// in update events 
| json field=_raw "to" as updates nodrop

// may exist after an update
| json field=_raw "insight.timeToResponse" as timeToResponse nodrop
| json field=_raw "insight.timeToDetection" as timeToDetection nodrop
| json field=_raw "insight.timeToRemediation" as timeToRemediation nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Security Operations Overview/Highest Severity Entities**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated
OR
_index=sumologic_system_events _sourcecategory=cseinsight insightcreated)

{{{keywords}}}

| json field=_raw "eventName"
//| json field=_raw "insightIdentity.id" as id
| json field=_raw "insightIdentity.readableId" as insightid
| json field=_raw "insight.status" as status
| json field=_raw "insight.name" as name
| json field=_raw "insight.entityType" as entitytype
| json field=_raw "insight.entityValue" as entityvalue
| json field=_raw "insight.tags" as tags
| json field=_raw "insight.severity" as severity
| json field=_raw "insight.confidence" as confidence
| json field=_raw "insight.signals" as signals

// in closed events
| json field=_raw "insight.assignee" as assignee nodrop
| json field=_raw "insight.resolution" as resolution nodrop

// severity used to be numeric but now it's not
| tostring(severity) as sev_string
| 0 as s
| if (sev_string matches /1|LOW/,1,s) as s
| if (sev_string matches /2|MEDIUM/,2,s) as s
| if (sev_string matches /3|HIGH/,3,s) as s
| if (sev_string matches /4|CRITICAL/,4,s) as s

// may exist after an update
| json field=_raw "insight.timeToResponse" as timeToResponse nodrop
| json field=_raw "insight.timeToDetection" as timeToDetection nodrop
| json field=_raw "insight.timeToRemediation" as timeToRemediation nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Security Operations Overview/Inisght Events By Type**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated
OR
_index=sumologic_system_events _sourcecategory=cseinsight insightcreated)

{{{keywords}}}

| json field=_raw "eventName"
| json field=_raw "insightIdentity.id" as id
| json field=_raw "insightIdentity.readableId" as insightid
| json field=_raw "insight.status" as status
| json field=_raw "insight.name" as name
| json field=_raw "insight.severity" as severity

// in closed events
| json field=_raw "insight.assignee" as assignee nodrop
| json field=_raw "insight.resolution" as resolution nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Security Operations Overview/Insight Resolution**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated
OR
_index=sumologic_system_events _sourcecategory=cseinsight insightcreated)

closed 

{{{keywords}}}

| json field=_raw "eventName"
| json field=_raw "insightIdentity.id" as id
| json field=_raw "insightIdentity.readableId" as insightid
| json field=_raw "insight.status" as status
| json field=_raw "insight.name" as name
| json field=_raw "insight.entityType" as entitytype
| json field=_raw "insight.entityValue" as entityvalue
| json field=_raw "insight.tags" as tags
| json field=_raw "insight.severity" as severity
| json field=_raw "insight.confidence" as confidence
| json field=_raw "insight.signals" as signals

// in closed events
| json field=_raw "insight.assignee" as assignee nodrop
| json field=_raw "insight.resolution" as resolution nodrop

// in update events 
//| json field=_raw "to" as last_change nodrop

// may exist after an update
| json field=_raw "insight.timeToResponse" as timeToResponse nodrop
| json field=_raw "insight.timeToDetection" as timeToDetection nodrop
| json field=_raw "insight.timeToRemediation" as timeToRemediation nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Security Operations Overview/Insights Closed By Resolution**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated
OR
_index=sumologic_system_events _sourcecategory=cseinsight insightcreated)

{{{keywords}}}

closed

| json field=_raw "eventName"
| json field=_raw "insightIdentity.id" as id
| json field=_raw "insightIdentity.readableId" as insightid
| json field=_raw "insight.status" as status
| json field=_raw "insight.name" as name
| json field=_raw "insight.entityType" as entitytype
| json field=_raw "insight.entityValue" as entityvalue
| json field=_raw "insight.tags" as tags
| json field=_raw "insight.severity" as severity
| json field=_raw "insight.confidence" as confidence
| json field=_raw "insight.signals" as signals

// in closed events
| json field=_raw "insight.assignee" as assignee nodrop
| json field=_raw "insight.resolution" as resolution nodrop


// may exist after an update
| json field=_raw "insight.timeToResponse" as timeToResponse nodrop
| json field=_raw "insight.timeToDetection" as timeToDetection nodrop
| json field=_raw "insight.timeToRemediation" as timeToRemediation nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Security Operations Overview/Insights Closed By Time and Severity**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated
OR
_index=sumologic_system_events _sourcecategory=cseinsight insightcreated)

{{{keywords}}}

closed

| json field=_raw "eventName"
| json field=_raw "insightIdentity.id" as id
| json field=_raw "insightIdentity.readableId" as insightid
| json field=_raw "insight.status" as status
| json field=_raw "insight.name" as name
| json field=_raw "insight.entityType" as entitytype
| json field=_raw "insight.entityValue" as entityvalue
| json field=_raw "insight.tags" as tags
| json field=_raw "insight.severity" as severity
| json field=_raw "insight.confidence" as confidence
| json field=_raw "insight.signals" as signals

// in closed events
| json field=_raw "insight.assignee" as assignee nodrop
| json field=_raw "insight.resolution" as resolution nodrop


// may exist after an update
| json field=_raw "insight.timeToResponse" as timeToResponse nodrop
| json field=_raw "insight.timeToDetection" as timeToDetection nodrop
| json field=_raw "insight.timeToRemediation" as timeToRemediation nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Security Operations Overview/Insights New Events By Time and Severity**
```

_index=sumologic_system_events _sourcecategory=cseinsight insightcreated 

{{{keywords}}}

new


| json field=_raw "insightIdentity.readableId" as insightid
| json field=_raw "insight.status" as status

| json field=_raw "insight.severity" as severity
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Security Operations Overview/Insights vs Signals Mapping**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated
OR
_index=sumologic_system_events _sourcecategory=cseinsight insightcreated)

{{{keywords}}}

| json field=_raw "eventName"
//| json field=_raw "insightIdentity.id" as id
| json field=_raw "insightIdentity.readableId" as insightid
| json field=_raw "insight.status" as status
| json field=_raw "insight.name" as name
| json field=_raw "insight.entityType" as entitytype
| json field=_raw "insight.entityValue" as entityvalue
| json field=_raw "insight.tags" as tags
| json field=_raw "insight.severity" as severity
| json field=_raw "insight.confidence" as confidence
| json field=_raw "insight.signals" as signals

// in closed events
| json field=_raw "insight.assignee" as assignee nodrop
| json field=_raw "insight.resolution" as resolution nodrop



// may exist after an update
| json field=_raw "insight.timeToResponse" as timeToResponse nodrop
| json field=_raw "insight.timeToDetection" as timeToDetection nodrop
| json field=_raw "insight.timeToRemediation" as timeToRemediation nodrop

| if (isnull(timeToResponse),-1,timeToResponse/3600) as timeToResponse
| if (isnull(timeToDetection),-1,timeToDetection/3600) as timeToDetection
| if (isnull(timeToRemediation),-1,timeToRemediation/3600) as timeToRemediation
| sort _messagetime

// ensure we only store the most recent result
| count as events, max(_messagetime) as _messagetime,first(status) as status,first(tags) as tags, max(severity) as severity,first(confidence) as confidence,first(assignee) as assignee,first(resolution) as resolution,first(timeToResponse) as timeToResponse,first(timeToDetection) as timeToDetection,first(timeToRemediation) as timeToRemediation,first(signals) as signals,values(eventname) as eventnames by insightid,name,entitytype,entityvalue 

// lets squash down size of the signals field so we don't generate a massive lookup
| parse regex field=signals "\"ruleId\":\"(?<rule>[^\"]+\",\"ruleName\":\"[^\"]+\")" multi
| replace (rule,"\"","") as rule
| replace (rule,"ruleName","") as rule

| parse regex field=tags "\"(?<tag>[^\":,]+:[^\",:]+)\"" multi
| parse regex field=signals "(?<signal>\{\"id\":\"[^\}]+\})" multi
| json field=signal "tags" as signal_tags
| parse regex field=signal_tags "\"(?<tag>[^\":,]+:[^\",:]+)\"" multi
// use this to explode tags
//| parse regex field=signal_tags "\"(?<tagname>[^:\"]+):(?<tagvalue>[^:\"]+)" multi

| json field=signal "id" as signal_id
| json field=signal "name" as signal_name
| json field=signal "severity" as signal_severity
| json field=signal "ruleId" as ruleid
| json field=signal "ruleName" as rulename
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Security Operations Overview/Last Status Per Insight**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated
OR
_index=sumologic_system_events _sourcecategory=cseinsight insightcreated)

{{{keywords}}}

| json field=_raw "eventName"
//| json field=_raw "insightIdentity.id" as id
| json field=_raw "insightIdentity.readableId" as insightid
| json field=_raw "insight.status" as status
| json field=_raw "insight.name" as name
| json field=_raw "insight.entityType" as entitytype
| json field=_raw "insight.entityValue" as entityvalue
| json field=_raw "insight.tags" as tags
| json field=_raw "insight.severity" as severity
| json field=_raw "insight.confidence" as confidence
| json field=_raw "insight.signals" as signals

// in closed events
| json field=_raw "insight.assignee" as assignee nodrop
| json field=_raw "insight.resolution" as resolution nodrop

// in update events 
| json field=_raw "to" as updates nodrop

// may exist after an update
| json field=_raw "insight.timeToResponse" as timeToResponse nodrop
| json field=_raw "insight.timeToDetection" as timeToDetection nodrop
| json field=_raw "insight.timeToRemediation" as timeToRemediation nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Security Operations Overview/Latest Status Event Per Insight**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated
OR
_index=sumologic_system_events _sourcecategory=cseinsight insightcreated)

{{{keywords}}}

| json field=_raw "eventName"
| json field=_raw "insightIdentity.id" as id
| json field=_raw "insightIdentity.readableId" as insightid
| json field=_raw "insight.status" as status
| json field=_raw "insight.name" as name
| json field=_raw "insight.entityType" as entitytype
| json field=_raw "insight.entityValue" as entityvalue
| json field=_raw "insight.tags" as tags
| json field=_raw "insight.severity" as severity
| json field=_raw "insight.confidence" as confidence
| json field=_raw "insight.signals" as signals

// in closed events
| json field=_raw "insight.assignee" as assignee nodrop
| json field=_raw "insight.resolution" as resolution nodrop

// in update events 
//| json field=_raw "to" as last_change nodrop

// may exist after an update
| json field=_raw "insight.timeToResponse" as timeToResponse nodrop
| json field=_raw "insight.timeToDetection" as timeToDetection nodrop
| json field=_raw "insight.timeToRemediation" as timeToRemediation nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Security Operations Overview/Mitre Techniques In Insights Map**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated
OR
_index=sumologic_system_events _sourcecategory=cseinsight insightcreated)

{{{keywords}}}

| json field=_raw "eventName"
//| json field=_raw "insightIdentity.id" as id
| json field=_raw "insightIdentity.readableId" as insightid
| json field=_raw "insight.status" as status
| json field=_raw "insight.name" as name
| json field=_raw "insight.entityType" as entitytype
| json field=_raw "insight.entityValue" as entityvalue
| json field=_raw "insight.tags" as tags
| json field=_raw "insight.severity" as severity
| json field=_raw "insight.confidence" as confidence
| json field=_raw "insight.signals" as signals

// in closed events
| json field=_raw "insight.assignee" as assignee nodrop
| json field=_raw "insight.resolution" as resolution nodrop

// in update events 
//| json field=_raw "to" as last_change nodrop

// may exist after an update
| json field=_raw "insight.timeToResponse" as timeToResponse nodrop
| json field=_raw "insight.timeToDetection" as timeToDetection nodrop
| json field=_raw "insight.timeToRemediation" as timeToRemediation nodrop

| if (isnull(timeToResponse),-1,timeToResponse/3600) as timeToResponse
| if (isnull(timeToDetection),-1,timeToDetection/3600) as timeToDetection
| if (isnull(timeToRemediation),-1,timeToRemediation/3600) as timeToRemediation
| sort _messagetime

// ensure we only store the most recent result
| count as events, max(_messagetime) as _messagetime,first(status) as status,first(tags) as tags, max(severity) as severity,first(confidence) as confidence,first(assignee) as assignee,first(resolution) as resolution,first(timeToResponse) as timeToResponse,first(timeToDetection) as timeToDetection,first(timeToRemediation) as timeToRemediation,first(signals) as signals,values(eventname) as eventnames by insightid,name,entitytype,entityvalue 

// explode signals array embedded in insight to get individual severities and tags
| parse regex field=signals "(?<signal>\{\"id\":\"[^\}]+\})" multi
| json field=signal "id" as s_id
| json field=signal "tags" as signaltags
| parse regex field=signaltags "\"(?<s_tag>[^\"\:]+):(?<s_value>[^\"]+)" multi
| parse regex field=tags "_mitreAttackTactic:(?<tactic>[^\":\r\n]+)" multi
| parse regex field=tags "_mitreAttackTechnique:(?<technique>[^\":\r\n]+)" multi
| parse regex field=signals "\"severity\":\"(?<s_severity>[0-9]+)" 
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Security Operations Overview/New insights vs Last Week**
```

_index=sumologic_system_events _sourcecategory=cseinsight insightcreated 

{{{keywords}}}


| json field=_raw "insightIdentity.readableId" as insightid
| json field=_raw "insight.status" as status

| json field=_raw "insight.severity" as severity
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Security Operations Overview/Rules Vs Insights Mappings**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated
OR
_index=sumologic_system_events _sourcecategory=cseinsight insightcreated)

{{{keywords}}}

| json field=_raw "eventName"
| json field=_raw "insightIdentity.readableId" as insightid
| json field=_raw "insight.status" as status
| json field=_raw "insight.name" as name
| json field=_raw "insight.entityType" as entitytype
| json field=_raw "insight.entityValue" as entityvalue
| json field=_raw "insight.tags" as tags
| json field=_raw "insight.severity" as severity
| json field=_raw "insight.confidence" as confidence
| json field=_raw "insight.signals" as signals

// in closed events
| json field=_raw "insight.assignee" as assignee nodrop
| json field=_raw "insight.resolution" as resolution nodrop


// may exist after an update
| json field=_raw "insight.timeToResponse" as timeToResponse nodrop
| json field=_raw "insight.timeToDetection" as timeToDetection nodrop
| json field=_raw "insight.timeToRemediation" as timeToRemediation nodrop

| if (isnull(timeToResponse),-1,timeToResponse/3600) as timeToResponse
| if (isnull(timeToDetection),-1,timeToDetection/3600) as timeToDetection
| if (isnull(timeToRemediation),-1,timeToRemediation/3600) as timeToRemediation
| sort _messagetime

// ensure we only store the most recent result
| count as events, max(_messagetime) as _messagetime,first(status) as status,first(tags) as tags, max(severity) as severity,first(confidence) as confidence,first(assignee) as assignee,first(resolution) as resolution,first(timeToResponse) as timeToResponse,first(timeToDetection) as timeToDetection,first(timeToRemediation) as timeToRemediation,first(signals) as signals,values(eventname) as eventnames by insightid,name,entitytype,entityvalue 

// lets squash down size of the signals field so we don't generate a massive lookup
| parse regex field=signals "\"ruleId\":\"(?<rule>[^\"]+\",\"ruleName\":\"[^\"]+\")" multi
| replace (rule,"\"","") as rule
| replace (rule,"ruleName","") as rule

| parse regex field=tags "\"(?<tag>[^\":,]+:[^\",:]+)\"" multi
| parse regex field=signals "(?<signal>\{\"id\":\"[^\}]+\})" multi
| parse regex field=signals "\"severity\":\"(?<severity>[0-9]+)" 

| json field=signal "id" as signal_id
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Security Operations Overview/Time To Detection**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated
OR
_index=sumologic_system_events _sourcecategory=cseinsight insightcreated)

{{{keywords}}}

| json field=_raw "eventName"
//| json field=_raw "insightIdentity.id" as id
| json field=_raw "insightIdentity.readableId" as insightid
| json field=_raw "insight.status" as status
| json field=_raw "insight.name" as name
| json field=_raw "insight.entityType" as entitytype
| json field=_raw "insight.entityValue" as entityvalue
| json field=_raw "insight.tags" as tags
| json field=_raw "insight.severity" as severity
| json field=_raw "insight.confidence" as confidence
| json field=_raw "insight.signals" as signals

// in closed events
| json field=_raw "insight.assignee" as assignee nodrop
| json field=_raw "insight.resolution" as resolution nodrop

// in update events 
//| json field=_raw "to" as last_change nodrop

// may exist after an update
| json field=_raw "insight.timeToResponse" as timeToResponse nodrop
| json field=_raw "insight.timeToDetection" as timeToDetection nodrop
| json field=_raw "insight.timeToRemediation" as timeToRemediation nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Security Operations Overview/Time To Remediation**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated
OR
_index=sumologic_system_events _sourcecategory=cseinsight insightcreated)

{{{keywords}}}

| json field=_raw "eventName"
//| json field=_raw "insightIdentity.id" as id
| json field=_raw "insightIdentity.readableId" as insightid
| json field=_raw "insight.status" as status
| json field=_raw "insight.name" as name
| json field=_raw "insight.entityType" as entitytype
| json field=_raw "insight.entityValue" as entityvalue
| json field=_raw "insight.tags" as tags
| json field=_raw "insight.severity" as severity
| json field=_raw "insight.confidence" as confidence
| json field=_raw "insight.signals" as signals

// in closed events
| json field=_raw "insight.assignee" as assignee nodrop
| json field=_raw "insight.resolution" as resolution nodrop

// in update events 
//| json field=_raw "to" as last_change nodrop

// may exist after an update
| json field=_raw "insight.timeToResponse" as timeToResponse nodrop
| json field=_raw "insight.timeToDetection" as timeToDetection nodrop
| json field=_raw "insight.timeToRemediation" as timeToRemediation nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Security Operations Overview/Time To Response**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated
OR
_index=sumologic_system_events _sourcecategory=cseinsight insightcreated)

{{{keywords}}}

| json field=_raw "eventName"
//| json field=_raw "insightIdentity.id" as id
| json field=_raw "insightIdentity.readableId" as insightid
| json field=_raw "insight.status" as status
| json field=_raw "insight.name" as name
| json field=_raw "insight.entityType" as entitytype
| json field=_raw "insight.entityValue" as entityvalue
| json field=_raw "insight.tags" as tags
| json field=_raw "insight.severity" as severity
| json field=_raw "insight.confidence" as confidence
| json field=_raw "insight.signals" as signals

// in closed events
| json field=_raw "insight.assignee" as assignee nodrop
| json field=_raw "insight.resolution" as resolution nodrop

// in update events 
//| json field=_raw "to" as last_change nodrop

// may exist after an update
| json field=_raw "insight.timeToResponse" as timeToResponse nodrop
| json field=_raw "insight.timeToDetection" as timeToDetection nodrop
| json field=_raw "insight.timeToRemediation" as timeToRemediation nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Security Operations Overview/Top 25 Highest Severity and Confidence Score**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated
OR
_index=sumologic_system_events _sourcecategory=cseinsight insightcreated)

{{{keywords}}}

| json field=_raw "eventName"
//| json field=_raw "insightIdentity.id" as id
| json field=_raw "insightIdentity.readableId" as insightid
| json field=_raw "insight.status" as status
| json field=_raw "insight.name" as name
| json field=_raw "insight.entityType" as entitytype
| json field=_raw "insight.entityValue" as entityvalue
| json field=_raw "insight.tags" as tags
| json field=_raw "insight.severity" as severity
| json field=_raw "insight.confidence" as confidence
| json field=_raw "insight.signals" as signals

// in closed events
| json field=_raw "insight.assignee" as assignee nodrop
| json field=_raw "insight.resolution" as resolution nodrop

// in update events 
//| json field=_raw "to" as last_change nodrop

// may exist after an update
| json field=_raw "insight.timeToResponse" as timeToResponse nodrop
| json field=_raw "insight.timeToDetection" as timeToDetection nodrop
| json field=_raw "insight.timeToRemediation" as timeToRemediation nodrop

| if (isnull(timeToResponse),-1,timeToResponse/3600) as timeToResponse
| if (isnull(timeToDetection),-1,timeToDetection/3600) as timeToDetection
| if (isnull(timeToRemediation),-1,timeToRemediation/3600) as timeToRemediation
| sort _messagetime

// severity used to be numeric but for a while it wasn't so covering bases here
| tostring(severity) as sev_string
| 0 as s
| if (sev_string matches /1|HIGH/,1,s) as s
| if (sev_string matches /2|MEDIUM/,2,s) as s
| if (sev_string matches /3|LOW/,3,s) as s
| s as severity
| if(s = 1,"1. HIGH","OTHER") as severity
| if(s = 2,"2. MEDIUM",severity) as severity
| if(s = 3,"3. LOW",severity) as severity
| if(s = 0,"0. OTHER",severity) as severity

// ensure we only store the most recent result
| count as events, max(_messagetime) as _messagetime,first(status) as status,first(tags) as tags, min(s) as max_sev,first(confidence) as confidence,first(assignee) as assignee,first(resolution) as resolution,first(timeToResponse) as timeToResponse,first(timeToDetection) as timeToDetection,first(timeToRemediation) as timeToRemediation,first(signals) as signals,values(eventname) as eventnames by insightid,name,entitytype,entityvalue ,severity

// lets squash down size of the signals field so we don't generate a massive lookup
| parse regex field=signals "\"ruleId\":\"(?<rule>[^\"]+\",\"ruleName\":\"[^\"]+\")" multi
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Security Operations Overview/Triggered Rules**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated
OR
_index=sumologic_system_events _sourcecategory=cseinsight insightcreated)

{{{keywords}}}

| json field=_raw "eventName"
//| json field=_raw "insightIdentity.id" as id
| json field=_raw "insightIdentity.readableId" as insightid
| json field=_raw "insight.status" as status
| json field=_raw "insight.name" as name
| json field=_raw "insight.entityType" as entitytype
| json field=_raw "insight.entityValue" as entityvalue
| json field=_raw "insight.tags" as tags
| json field=_raw "insight.severity" as severity
| json field=_raw "insight.confidence" as confidence
| json field=_raw "insight.signals" as signals

// in closed events
| json field=_raw "insight.assignee" as assignee nodrop
| json field=_raw "insight.resolution" as resolution nodrop

// in update events 
//| json field=_raw "to" as last_change nodrop

// may exist after an update
| json field=_raw "insight.timeToResponse" as timeToResponse nodrop
| json field=_raw "insight.timeToDetection" as timeToDetection nodrop
| json field=_raw "insight.timeToRemediation" as timeToRemediation nodrop

| if (isnull(timeToResponse),-1,timeToResponse/3600) as timeToResponse
| if (isnull(timeToDetection),-1,timeToDetection/3600) as timeToDetection
| if (isnull(timeToRemediation),-1,timeToRemediation/3600) as timeToRemediation
| sort _messagetime

// ensure we only store the most recent result
| count as events, max(_messagetime) as _messagetime,first(status) as status,first(tags) as tags, max(severity) as severity,first(confidence) as confidence,first(assignee) as assignee,first(resolution) as resolution,first(timeToResponse) as timeToResponse,first(timeToDetection) as timeToDetection,first(timeToRemediation) as timeToRemediation,first(signals) as signals,values(eventname) as eventnames by insightid,name,entitytype,entityvalue 

// lets squash down size of the signals field so we don't generate a massive lookup
| parse regex field=signals "\"ruleId\":\"(?<rule>[^\"]+\",\"ruleName\":\"[^\"]+\")" multi
| replace (rule,"\",\""," ") as rule
| replace (rule,"\"","") as rule
| replace (rule,"ruleName","") as rule

| parse regex field=tags "\"(?<tag>[^\":,]+:[^\",:]+)\"" multi
| parse regex field=signals "(?<signal>\{\"id\":\"[^\}]+\})" multi
| parse regex field=signals "\"severity\":\"(?<severity>[0-9]+)" 
| json field=signal "id" as signal_id
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Security Operations Overview/Triggered Tags**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated
OR
_index=sumologic_system_events _sourcecategory=cseinsight insightcreated)

{{{keywords}}}

| json field=_raw "eventName"
//| json field=_raw "insightIdentity.id" as id
| json field=_raw "insightIdentity.readableId" as insightid
| json field=_raw "insight.status" as status
| json field=_raw "insight.name" as name
| json field=_raw "insight.entityType" as entitytype
| json field=_raw "insight.entityValue" as entityvalue
| json field=_raw "insight.tags" as tags
| json field=_raw "insight.severity" as severity
| json field=_raw "insight.confidence" as confidence
| json field=_raw "insight.signals" as signals

// in closed events
| json field=_raw "insight.assignee" as assignee nodrop
| json field=_raw "insight.resolution" as resolution nodrop



// may exist after an update
| json field=_raw "insight.timeToResponse" as timeToResponse nodrop
| json field=_raw "insight.timeToDetection" as timeToDetection nodrop
| json field=_raw "insight.timeToRemediation" as timeToRemediation nodrop

| if (isnull(timeToResponse),-1,timeToResponse/3600) as timeToResponse
| if (isnull(timeToDetection),-1,timeToDetection/3600) as timeToDetection
| if (isnull(timeToRemediation),-1,timeToRemediation/3600) as timeToRemediation
| sort _messagetime

// ensure we only store the most recent result
| count as events, max(_messagetime) as _messagetime,first(status) as status,first(tags) as tags, max(severity) as severity,first(confidence) as confidence,first(assignee) as assignee,first(resolution) as resolution,first(timeToResponse) as timeToResponse,first(timeToDetection) as timeToDetection,first(timeToRemediation) as timeToRemediation,first(signals) as signals,values(eventname) as eventnames by insightid,name,entitytype,entityvalue 

// lets squash down size of the signals field so we don't generate a massive lookup
| parse regex field=signals "\"ruleId\":\"(?<rule>[^\"]+\",\"ruleName\":\"[^\"]+\")" multi
| replace (rule,"\",\""," ") as rule
| replace (rule,"\"","") as rule
| replace (rule,"ruleName","") as rule

| parse regex field=tags "\"(?<tag>[^\":,]+:[^\",:]+)\"" multi
| parse regex field=signals "(?<signal>\{\"id\":\"[^\}]+\})" multi
| parse regex field=signals "\"severity\":\"(?<severity>[0-9]+)" 
| json field=signal "id" as signal_id
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Signal Analysis/Signals by Destination Host and Rule Name**
```
_index=sec_signal 
| json field=fullRecords "[0].metadata_vendor" as vendor nodrop
| json field=fullRecords "[0].metadata_product" as product nodrop
| json field=entities "[0].type" as entity_type nodrop
| json field=entities "[0].value" as entity_value nodrop
| json field=fullRecords "[0].dstDevice_hostname" as dst_device_hostname nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Signal Analysis/Top 10 Signals by Destination Host**
```
_index=sec_signal 
| json field=fullRecords "[0].metadata_vendor" as vendor nodrop
| json field=fullRecords "[0].metadata_product" as product nodrop
| json field=entities "[0].type" as entity_type nodrop
| json field=entities "[0].value" as entity_value nodrop
| json field=fullRecords "[0].dstDevice_hostname" as dst_device_hostname nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Signal Analysis/Top 10 Signals by IP**
```
_index=sec_signal 
| json field=fullRecords "[0].metadata_vendor" as vendor nodrop
| json field=fullRecords "[0].metadata_product" as product nodrop
| json field=entities "[0].type" as entity_type nodrop
| json field=entities "[0].value" as entity_value nodrop
| json field=fullRecords "[0].dstDevice_hostname" as dst_device_hostname nodrop
| json field=fullRecords "[0].user_username" as user_username nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Signal Analysis/Top 10 Signals by Rule Name**
```
_index=sec_signal 
| json field=fullRecords "[0].metadata_vendor" as vendor nodrop
| json field=fullRecords "[0].metadata_product" as product nodrop
| json field=entities "[0].type" as entity_type nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Signal Analysis/Top 10 Signals by Rule Name and IP**
```
_index=sec_signal 
| json field=fullRecords "[0].metadata_vendor" as vendor nodrop
| json field=fullRecords "[0].metadata_product" as product nodrop
| json field=entities "[0].type" as entity_type nodrop
| json field=entities "[0].value" as entity_value nodrop
| json field=fullRecords "[0].dstDevice_hostname" as dst_device_hostname nodrop
| json field=fullRecords "[0].user_username" as user_username nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Signal Analysis/Top 10 Signals by Rule Name and User**
```
_index=sec_signal 
| json field=fullRecords "[0].metadata_vendor" as vendor nodrop
| json field=fullRecords "[0].metadata_product" as product nodrop
| json field=entities "[0].type" as entity_type nodrop
| json field=entities "[0].value" as entity_value nodrop
| json field=fullRecords "[0].dstDevice_hostname" as dst_device_hostname nodrop
| json field=fullRecords "[0].user_username" as user_username nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Signal Analysis/Top 10 Signals by User**
```
_index=sec_signal 
| json field=fullRecords "[0].metadata_vendor" as vendor nodrop
| json field=fullRecords "[0].metadata_product" as product nodrop
| json field=entities "[0].type" as entity_type nodrop
| json field=entities "[0].value" as entity_value nodrop
| json field=fullRecords "[0].dstDevice_hostname" as dst_device_hostname nodrop
| json field=fullRecords "[0].user_username" as user_username nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Signal Analysis/Top 10 Signals Summary**
```
_index=sec_signal 
| json field=fullRecords "[0].metadata_vendor" as vendor nodrop
| json field=fullRecords "[0].metadata_product" as product nodrop
| json field=entities "[0].type" as entity_type nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Signal Monitoring/Signal Disappearances by Vendor, Product, and Event ID - 7 Days Time Comparison**
```
_index=sec_signal 
| json field=fullRecords "[0].metadata_vendor" as vendor nodrop
| json field=fullRecords "[0].metadata_product" as product nodrop
| json field=fullRecords "[0].metadata_deviceEventId" as deviceEventId
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Signals by Product/CrowdStrike**
```
_index=sec_signal 
| json field=fullRecords "[0].metadata_vendor" as vendor nodrop
| where vendor = "CrowdStrike"
| json field=fullRecords "[0].metadata_product" as product nodrop
| json field=entities "[0].type" as entity_type nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Signals by Product/CrowdStrike Signals by Type**
```
_index=sec_signal 
| json field=fullRecords "[0].metadata_vendor" as vendor nodrop
| where vendor = "CrowdStrike"
| json field=fullRecords "[0].metadata_product" as product nodrop
| json field=entities "[0].type" as entity_type nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Signals by Product/CrowdStrike Signals Summary**
```
_index=sec_signal 
| json field=fullRecords "[0].metadata_vendor" as vendor nodrop
| json field=fullRecords "[0].metadata_product" as product nodrop
| json field=entities "[0].type" as entity_type nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Signals by Product/CSE Signals by Product**
```
_index=sec_signal 
| json field=fullRecords "[0].metadata_vendor" as vendor nodrop
| json field=fullRecords "[0].metadata_product" as product nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Signals by Product/CSE Signals by Vendor**
```
_index=sec_signal 
| json field=fullRecords "[0].metadata_vendor" as vendor nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Signals by Product/Duo Security**
```
_index=sec_signal 
| json field=fullRecords "[0].metadata_vendor" as vendor nodrop
| json field=fullRecords "[0].metadata_product" as product nodrop
| where vendor = "Duo Security"
| json field=entities "[0].type" as entity_type nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Signals by Product/Duo Security Signals by Type**
```
_index=sec_signal 
| json field=fullRecords "[0].metadata_vendor" as vendor nodrop
| json field=fullRecords "[0].metadata_product" as product nodrop
| where vendor = "Duo Security"
| json field=entities "[0].type" as entity_type nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Signals by Product/Duo Security Summary**
```
_index=sec_signal 
| json field=fullRecords "[0].metadata_vendor" as vendor nodrop
| json field=fullRecords "[0].metadata_product" as product nodrop
| json field=entities "[0].type" as entity_type nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Signals by Product/Microsoft**
```
_index=sec_signal 
| json field=fullRecords "[0].metadata_vendor" as vendor nodrop
| json field=fullRecords "[0].metadata_product" as product nodrop
| where vendor = "Microsoft"
| json field=entities "[0].type" as entity_type nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Signals by Product/Microsoft Signals by Type**
```
_index=sec_signal 
| json field=fullRecords "[0].metadata_vendor" as vendor nodrop
| json field=fullRecords "[0].metadata_product" as product nodrop
| where vendor = "Microsoft" 
| json field=entities "[0].type" as entity_type nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Signals by Product/Microsoft Signals Summary**
```
_index=sec_signal 
| json field=fullRecords "[0].metadata_vendor" as vendor nodrop
| json field=fullRecords "[0].metadata_product" as product nodrop
| json field=entities "[0].type" as entity_type nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Signals by Product/Signal Summary**
```
_index=sec_signal 
| json field=fullRecords "[0].metadata_vendor" as vendor nodrop
| json field=fullRecords "[0].metadata_product" as product nodrop
| json field=entities "[0].type" as entity_type nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Signals by Product/Signals by Product and Vendor**
```
_index=sec_signal 
| json field=fullRecords "[0].metadata_vendor" as vendor nodrop
| json field=fullRecords "[0].metadata_product" as product nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Signals by Product/Sumo Logic**
```
_index=sec_signal 
| json field=fullRecords "[0].metadata_vendor" as vendor nodrop
| json field=fullRecords "[0].metadata_product" as product nodrop
| where vendor =  "Sumo Logic"
| json field=entities "[0].type" as entity_type nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Signals by Product/Sumo Logic Signals by Type**
```
_index=sec_signal 
| json field=fullRecords "[0].metadata_vendor" as vendor nodrop
| json field=fullRecords "[0].metadata_product" as product nodrop
| where vendor =  "Sumo Logic"
| json field=entities "[0].type" as entity_type nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Signals by Product/Sumo Logic Summary**
```
_index=sec_signal 
| json field=fullRecords "[0].metadata_vendor" as vendor nodrop
| json field=fullRecords "[0].metadata_product" as product nodrop
| json field=entities "[0].type" as entity_type nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - Signals Overview/Signals Details**
```
_index=sec_signal
| json field=fullRecords "[0].dstDevice_hostname" as dstDevice_hostname nodrop
| json field=fullRecords "length()" as length nodrop
| formatDate(toLong(timestamp), "MM-dd-yyyy HH:mm:ss") as date_time
| "?" as sev
| if(severity = 1, "?", sev) as sev
| if(severity = 2, "??", sev) as sev
| if(severity = 3, "???", sev) as sev
| if(severity = 4, "????", sev) as sev
| if(severity = 5, "?????", sev) as sev
| if(severity = 6, "??????", sev) as sev
| if(severity = 7, "???????", sev) as sev
| if(severity = 8, "????????", sev) as sev
| if(severity = 9, "?????????", sev) as sev
| if(severity = 10,"??????????", sev) as sev
| format("%s\n\n?%s?", name, description) as alert
| json field=fullRecords "[0].objectType" as objectType nodrop
| json field=fullRecords "[0].metadata_vendor" as vendor nodrop
| json field=fullRecords "[0].metadata_product" as product nodrop
| json field=fullRecords "[0].metadata_orgId" as org_id nodrop


| json field=fullRecords "[0].dstDevice_hostname" as dst_device_hostname nodrop
| json field=fullRecords "[0].dstDevice_ip" as dst_device_ip nodrop
| json field=fullRecords "[0].user_username" as user_username nodrop
| json field=fullRecords "[0].srcDevice_ip" as src_device_ip nodrop
| json field=fullRecords "[0].srcPort" as src_port nodrop
| json field=fullRecords "[0].srcDevice_ip_region" as srcDevice_ip_region nodrop
| json field=fullRecords "[0].dstDevice_ip_city" as dstDevice_ip_city nodrop

| json field=fullRecords "[0].dstPort" as dst_port nodrop
| json field=fullRecords "[0].ipProtocol" as ip_protocol nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - SOC Insights/Average Time to Detection (Hours)**
```
 (_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated) {{Filter}}
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - SOC Insights/Average Time to Remediate (Hours)**
```
 (_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated) {{Filter}}
 (_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated) {{Filter}}
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - SOC Insights/Average Time to Respond (Hours)**
```
 (_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated) {{Filter}}
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - SOC Insights/Insight False Positives**
```
 (_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated) {{Filter}}
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - SOC Insights/Insight Severity**
```
 (_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated) {{Filter}}
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - SOC Insights/Insights and Signals**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated) {{Filter}}
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - SOC Insights/Insights Assigned by Analyst**
```
 (_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated) {{Filter}}
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - SOC Insights/Insights by Resolution**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated) {{Filter}}
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - SOC Insights/Insights Closed by Analyst**
```
 (_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated) {{Filter}}
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - SOC Insights/Resolved Insights**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated) {{Filter}}
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - SOC KPIs/Average Hours to Detection**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated) 
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - SOC KPIs/Average Hours to Remediation**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated) 
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - SOC KPIs/Average Hours To Response**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated) 
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - SOC KPIs/Average Minutes to Remediation**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated) 
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - SOC KPIs/Average Minutes to Response**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight insightupdated) 
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - SOC KPIs/Insight Resolution Statuses**
```
_index=sumologic_*_events _sourceCategory=cseInsight _sourceName=Insight*
| json field=_raw "insight.entityId" as entity
| json field=_raw "insight.severity" as severity
| json field=_raw "insight.status" as resolution
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - SOC KPIs/Insights Closed by User**
```
_index=sumologic_*_events _sourceCategory=cseInsight _sourceName=Insight*
| json field=_raw "operator.email" as user
| json field=_raw "insight.entityId" as entity
| json field=_raw "insight.severity" as severity
| json field=_raw "insight.status" as resolution
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - SOC KRIs/Global Risk**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight) or (_index=sumologic_system_events _sourcecategory=cseinsight)
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - SOC KRIs/Global Risk Outlier**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight) or (_index=sumologic_system_events _sourcecategory=cseinsight)
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - SOC KRIs/List of Risks by Entity Name**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight) or (_index=sumologic_system_events _sourcecategory=cseinsight)
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - SOC KRIs/Predictive Risk - 3 day Forecast**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight) or (_index=sumologic_system_events _sourcecategory=cseinsight)
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - SOC KRIs/Risk over time by Entity**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight) or (_index=sumologic_system_events _sourcecategory=cseinsight)
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - SOC KRIs/Risk Score by Mitre Attack Stage**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight) or (_index=sumologic_system_events _sourcecategory=cseinsight)
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop

| tostring(insight_severity) as sev_string
| 0 as s
| if (sev_string matches /1|HIGH/,1,s) as s
| if (sev_string matches /2|MEDIUM/,2,s) as s
| if (sev_string matches /3|LOW/,3,s) as s
| s as severity
| if(s = "1","HIGH","OTHER") as severity
| if(s = "2","MEDIUM",severity) as severity
| if(s ="3","LOW",severity) as severity
| if(s = "0","OTHER",severity) as severity

| toLowerCase(severity) as severity
| if(severity="low",13,if(severity="medium",15,if(severity="high", 16,1))) as risk_score
| parse regex "stage\"\:\s+\"(?<stage>.*?)\"\," multi
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - SOC KRIs/Top 10 Risk by Entity**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight) or (_index=sumologic_system_events _sourcecategory=cseinsight)
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - SOC KRIs/Top 10 Risk by Username**
```
(_index=sumologic_audit_events _sourcecategory=cseinsight) or (_index=sumologic_system_events _sourcecategory=cseinsight)
| json field=_raw "insight.signals[*].ruleId", "insight.tags",  "insight.created", "eventTime", "insight.timeToResponse", "insight.timeToDetection" ,"insight.timeToRemediation","insight.assignee", "operator.email",  "insight.status", "insight.resolution", "insight.severity", "insight.closed", "insight.source" , "insight.entityValue","insight.entityType", "insight.entityId", "insight.description",  "insight.name", "insight.readableId", "insight.id"  as insight_ruleId, insight_tags, insight_createdAt, insight_event_time, insight_time_to_response , insight_time_to_detection, insight_time_to_remediation , insight_assignee , operator_email, insight_status, insight_resolution, insight_severity, insight_closedAt, insight_source, entity_value, entity_type, entity_id, insight_description, insight_name, insight_readableId, insight_Id nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - User Telemetry/HR Profile**
```
_sourceCategory=*cse/windows/inventory 
| json field=_raw "whenCreated" nodrop
| json field=_raw "userAccountControl" nodrop
| json field=_raw "manager" nodrop
| json field=_raw "mail" nodrop
| json field=_raw "department" nodrop
| json field=_raw "givenName" nodrop
| json field=_raw "sn" nodrop
| json field=_raw "title" nodrop
| json field=_raw "sAMAccountName" as user_username nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - User Telemetry/Signal Details**
```
_index=sec_signal
| json field=fullRecords "[0].dstDevice_hostname" as dstDevice_hostname nodrop
| json field=fullRecords "length()" as length nodrop
| formatDate(toLong(timestamp), "MM-dd-yyyy HH:mm:ss") as date_time
| "?" as sev
| if(severity = 1, "?", sev) as sev
| if(severity = 2, "??", sev) as sev
| if(severity = 3, "???", sev) as sev
| if(severity = 4, "????", sev) as sev
| if(severity = 5, "?????", sev) as sev
| if(severity = 6, "??????", sev) as sev
| if(severity = 7, "???????", sev) as sev
| if(severity = 8, "????????", sev) as sev
| if(severity = 9, "?????????", sev) as sev
| if(severity = 10,"??????????", sev) as sev
| format("%s\n\n?%s?", name, description) as alert
| json field=fullRecords "[0].objectType" as objectType nodrop
| json field=fullRecords "[0].metadata_vendor" as vendor nodrop
| json field=fullRecords "[0].metadata_product" as product nodrop
| json field=fullRecords "[0].metadata_orgId" as org_id nodrop


| json field=fullRecords "[0].dstDevice_hostname" as dst_device_hostname nodrop
| json field=fullRecords "[0].dstDevice_ip" as dst_device_ip nodrop
| json field=fullRecords "[0].user_username" as user_username nodrop
| json field=fullRecords "[0].srcDevice_ip" as src_device_ip nodrop
| json field=fullRecords "[0].srcPort" as src_port nodrop
| json field=fullRecords "[0].srcDevice_ip_region" as srcDevice_ip_region nodrop
| json field=fullRecords "[0].dstDevice_ip_city" as dstDevice_ip_city nodrop

| json field=fullRecords "[0].dstPort" as dst_port nodrop
| json field=fullRecords "[0].ipProtocol" as ip_protocol nodrop
```

**Enterprise Audit - Cloud SIEM/Cloud SIEM - User Telemetry/Signal Timeline**
```
_index=sec_signal
| formatDate(toLong(createdTimestamp), "yyyy-MM-dd HH:mm:ss") as timestamp
| json field=entities "[0].type" as entity_type nodrop
| where entity_type matches "*username"
| json field=entities "[0].value" as user_username nodrop
```

**Enterprise Audit - Cloud SIEM/CSE Failed Records Details (parsing or mapping issue)/CSE Failed Records Details (parsing or mapping issue)**
```
_index=sec_record_failure AND objectType=FailedRecord
| json "reason" nodrop
```

**Enterprise Audit - Cloud SIEM/Signal Analysis - Suppression/Suppressed Signals Summary**
```
_index=sec_signal
  {{{keywords}}}

| if (isempty(suppressedreasons),"NO","YES") as suppressed

| if(suppressed="YES",1,0) as is_suppressed
| if(suppressed="NO",1,0) as is_generated

| json field=entities "[0].value" as entityid nodrop

| json field=fullRecords "[0].metadata_vendor" as vendor nodrop
| json field=fullRecords "[0].metadata_sourceCategory" as sourceCategory nodrop
| json field=fullRecords "[0].metadata_product" as product nodrop
| json field=fullRecords "[0].metadata_mapperName" as mapperName nodrop
| json field=fullRecords "[0].metadata_deviceEventId" as deviceEventId nodrop
```

**Enterprise Audit - Cloud SIEM/Signal Analysis - Suppression/Suppression Reasons**
```

_index=sec_signal
  {{{keywords}}}

| json field=entities "[0].value" as entityid
| if (isempty(suppressedreasons),"NO","YES") as suppressed
| where suppressed="YES"
| parse regex field=fullrecords "\"active\":true,\"id\":\"[a-z0-9]*\",\"listId\":\"(?<listname>[^\"]*)\"" multi nodrop 

| concat (ruleid," ",rulename) as rule
| parse regex field=suppressedreasons "\"(?<suppress_by>[^\":\[\]]+)" multi
```


