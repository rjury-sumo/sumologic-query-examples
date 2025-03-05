# Parsers For Squadcast

## Parser:
```
| json "event.type", "event.resource" as type, resource nodrop
 `n```
### Use Cases:
Communication Channel by Type, Communication Channel Events Trend, Communication Channels Created, Communication Channels Deleted, Communication Channels Updated, Events by Resource, Events by Type, Events Resource Trend, Events Type Trend, False Positive SLP Violating Incidents, Incident Note Events by Type, Incident Note Events Trend, Incident Task Events by Type, Incident Task Events Trend, Incidents Acknowledged, Incidents Resolved, Incidents Triggered, Postmortem Events Trend, Postmortems Created, Postmortems Deleted, Postmortems Updated, Recent Incident Note Events, Recent Incident Task Events, Recent SLO Violating Incidents Events, Recent Updated Incident Tags, SLO Violating Incidents, Top Alert Sources for Triggered Incident Events, Top Assignees for Triggered Incident Events, Top Services for Triggered Incident Events



## Parser:
```
| json "event.type", "event.resource", "data.incident.message", "data.incident.url", "data.incident.assigned_to.name", "data.incident.status" as type, resource, incident, incidentURL, assignedTo, status nodrop
 `n```
### Use Cases:
Communication Channel by Type, Communication Channel Events Trend, Communication Channels Created, Communication Channels Deleted, Communication Channels Updated, Events by Type, Incident Note Events by Type, Incident Note Events Trend, Incident Task Events by Type, Incident Task Events Trend, Postmortem Events Trend, Postmortems Created, Postmortems Deleted, Postmortems Updated, Recent Incident Note Events, Recent Incident Task Events, Recent SLO Violating Incidents Events



## Parser:
```
| json "event.type", "event.resource", "data.resource_data.message.message", "data.incident.url", "data.resource_data.created_by.email_id", "data.incident.assigned_to.name" as type, resource, noteMessage, incidentURL, noteCreator, assignedTo nodrop
 `n```
### Use Cases:
Communication Channels Created, Communication Channels Deleted, Communication Channels Updated, Incident Note Events by Type, Incident Note Events Trend, Incident Task Events by Type, Incident Task Events Trend, Postmortems Created, Postmortems Deleted, Postmortems Updated, Recent Incident Note Events, Recent Incident Task Events



## Parser:
```
| json "event.type", "event.resource", "data.resource_data.service.name" as type, resource, service nodrop
 `n```
### Use Cases:
Communication Channel by Type, Communication Channel Events Trend, Communication Channels Created, Communication Channels Deleted, Communication Channels Updated, Events by Type, False Positive SLP Violating Incidents, Incident Note Events by Type, Incident Note Events Trend, Incident Task Events by Type, Incident Task Events Trend, Incidents Acknowledged, Incidents Resolved, Incidents Triggered, Postmortem Events Trend, Postmortems Created, Postmortems Deleted, Postmortems Updated, Recent Incident Note Events, Recent Incident Task Events, Recent SLO Violating Incidents Events, Recent Updated Incident Tags, Top Alert Sources for Triggered Incident Events, Top Assignees for Triggered Incident Events, Top Services for Triggered Incident Events



## Parser:
```
| json "event.type", "event.resource", "data.resource_data.service.name", "data.resource_data.alert_source.type" as type, resource, service, alertSource nodrop
 `n```
### Use Cases:
Communication Channel by Type, Communication Channel Events Trend, Communication Channels Created, Communication Channels Deleted, Communication Channels Updated, Events by Type, Incident Note Events by Type, Incident Note Events Trend, Incident Task Events by Type, Incident Task Events Trend, Incidents Triggered, Postmortem Events Trend, Postmortems Created, Postmortems Deleted, Postmortems Updated, Recent Incident Note Events, Recent Incident Task Events, Recent SLO Violating Incidents Events, Top Alert Sources for Triggered Incident Events



## Parser:
```
| json "event.type", "event.resource", "data.resource_data.service.name", "data.resource_data.alert_source.type", "data.resource_data.assigned_to.name" as type, resource, service, alertSource, assignee nodrop
 `n```
### Use Cases:
Communication Channel by Type, Communication Channel Events Trend, Communication Channels Created, Communication Channels Deleted, Communication Channels Updated, Events by Type, Incident Note Events by Type, Incident Note Events Trend, Incident Task Events by Type, Incident Task Events Trend, Incidents Triggered, Postmortem Events Trend, Postmortems Created, Postmortems Deleted, Postmortems Updated, Recent Incident Note Events, Recent Incident Task Events, Recent SLO Violating Incidents Events, Top Alert Sources for Triggered Incident Events, Top Assignees for Triggered Incident Events



## Parser:
```
| json "event.type", "event.resource", "data.resource_data.tags", "data.resource_data.assigned_to.name", "data.resource_data.url", "data.resource_data.service.name", "data.resource_data.status" as type, resource, tags, assignedTo, incidentURL, service, status nodrop
 `n```
### Use Cases:
Communication Channel by Type, Communication Channel Events Trend, Communication Channels Created, Communication Channels Deleted, Communication Channels Updated, Events by Type, False Positive SLP Violating Incidents, Incident Note Events by Type, Incident Note Events Trend, Incident Task Events by Type, Incident Task Events Trend, Incidents Acknowledged, Incidents Resolved, Incidents Triggered, Postmortem Events Trend, Postmortems Created, Postmortems Deleted, Postmortems Updated, Recent Incident Note Events, Recent Incident Task Events, Recent SLO Violating Incidents Events, Recent Updated Incident Tags, Top Alert Sources for Triggered Incident Events, Top Assignees for Triggered Incident Events



## Parser:
```
| json "event.type", "event.resource", "data.resource_data.tasks", "data.resource_data.deleted_task","data.incident.url", "data.incident.assigned_to.name", "data.resource_data.created_by.email_id" as type, resource, tasks, deletedTask, incidentURL, assigedTo, taskCreator nodrop
 `n```
### Use Cases:
Communication Channels Created, Communication Channels Deleted, Communication Channels Updated, Incident Note Events by Type, Incident Note Events Trend, Incident Task Events by Type, Incident Task Events Trend, Postmortems Created, Postmortems Deleted, Postmortems Updated, Recent Incident Task Events



## Parser:
```
| json "event.type", "event.resource", "data.resource_data.type" as type, resource, communicationType nodrop
 `n```
### Use Cases:
Communication Channel by Type, Communication Channels Created, Communication Channels Deleted, Communication Channels Updated, Incident Note Events by Type, Incident Note Events Trend, Incident Task Events by Type, Incident Task Events Trend, Postmortem Events Trend, Postmortems Created, Postmortems Deleted, Postmortems Updated, Recent Incident Note Events, Recent Incident Task Events


