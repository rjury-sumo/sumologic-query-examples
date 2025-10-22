# Parsers For Squadcast

| use_case | parser |
|--- | --- |
| Squadcast/Incidents/Communication Channel by Type | _sourceCategory={{Logsdatasource}}  type communication_channel<br>\| json "event.type", "event.resource", "data.resource_data.type" as type, resource, communicationType nodrop |
| Squadcast/Incidents/Communication Channel Events Trend | _sourceCategory={{Logsdatasource}}  type communication_channel<br>\| json "event.type", "event.resource" as type, resource nodrop |
| Squadcast/Incidents/Communication Channels Created | _sourceCategory={{Logsdatasource}}  type "incident.communication_channel_created"<br>\| json "event.type", "event.resource" as type, resource nodrop |
| Squadcast/Incidents/Communication Channels Deleted | _sourceCategory={{Logsdatasource}}  type "incident.communication_channel_deleted"<br>\| json "event.type", "event.resource" as type, resource nodrop |
| Squadcast/Incidents/Communication Channels Updated | _sourceCategory={{Logsdatasource}}  type "incident.communication_channel_updated"<br>\| json "event.type", "event.resource" as type, resource nodrop |
| Squadcast/Incidents/Incident Note Events by Type | _sourceCategory={{Logsdatasource}}  type incident_notes<br>\| json "event.type", "event.resource" as type, resource nodrop |
| Squadcast/Incidents/Incident Note Events Trend | _sourceCategory={{Logsdatasource}}  type incident_notes<br>\| json "event.type", "event.resource" as type, resource nodrop |
| Squadcast/Incidents/Incident Task Events by Type | _sourceCategory={{Logsdatasource}}  type incident_task<br>\| json "event.type", "event.resource" as type, resource nodrop |
| Squadcast/Incidents/Incident Task Events Trend | _sourceCategory={{Logsdatasource}}  type incident_task<br>\| json "event.type", "event.resource" as type, resource nodrop |
| Squadcast/Incidents/Postmortem Events Trend | _sourceCategory={{Logsdatasource}}  type postmortem<br>\| json "event.type", "event.resource" as type, resource nodrop |
| Squadcast/Incidents/Postmortems Created | _sourceCategory={{Logsdatasource}}  type "incident.postmortem_created"<br>\| json "event.type", "event.resource" as type, resource nodrop |
| Squadcast/Incidents/Postmortems Deleted | _sourceCategory={{Logsdatasource}}  type "incident.postmortem_deleted"<br>\| json "event.type", "event.resource" as type, resource nodrop |
| Squadcast/Incidents/Postmortems Updated | _sourceCategory={{Logsdatasource}}  type "incident.postmortem_updated"<br>\| json "event.type", "event.resource" as type, resource nodrop |
| Squadcast/Incidents/Recent Incident Note Events | _sourceCategory={{Logsdatasource}}  type incident_notes<br>\| json "event.type", "event.resource", "data.resource_data.message.message", "data.incident.url", "data.resource_data.created_by.email_id", "data.incident.assigned_to.name" as type, resource, noteMessage, incidentURL, noteCreator, assignedTo nodrop |
| Squadcast/Incidents/Recent Incident Task Events | _sourceCategory={{Logsdatasource}}  type incident_task<br>\| json "event.type", "event.resource", "data.resource_data.tasks", "data.resource_data.deleted_task","data.incident.url", "data.incident.assigned_to.name", "data.resource_data.created_by.email_id" as type, resource, tasks, deletedTask, incidentURL, assigedTo, taskCreator nodrop |
| Squadcast/Overview/Events by Resource | _sourceCategory={{Logsdatasource}}  resource<br>\| json "event.type", "event.resource" as type, resource nodrop |
| Squadcast/Overview/Events by Type | _sourceCategory={{Logsdatasource}}  type <br>\| json "event.type", "event.resource" as type, resource nodrop |
| Squadcast/Overview/Events Resource Trend | _sourceCategory={{Logsdatasource}}  resource<br>\| json "event.type", "event.resource" as type, resource nodrop |
| Squadcast/Overview/Events Type Trend | _sourceCategory={{Logsdatasource}}  type <br>\| json "event.type", "event.resource" as type, resource nodrop |
| Squadcast/Overview/False Positive SLP Violating Incidents | _sourceCategory={{Logsdatasource}}  type "incident.slo_violating_incident_false_positive_marked"<br>\| json "event.type", "event.resource" as type, resource nodrop |
| Squadcast/Overview/Incidents Acknowledged | _sourceCategory={{Logsdatasource}}  type "incident.acknowledged"<br>\| json "event.type", "event.resource" as type, resource nodrop |
| Squadcast/Overview/Incidents Resolved | _sourceCategory={{Logsdatasource}}  type "incident.resolved"<br>\| json "event.type", "event.resource" as type, resource nodrop |
| Squadcast/Overview/Incidents Triggered | _sourceCategory={{Logsdatasource}}  type "incident.triggered"<br>\| json "event.type", "event.resource" as type, resource nodrop |
| Squadcast/Overview/Recent SLO Violating Incidents Events | _sourceCategory={{Logsdatasource}}  type "slo_violating_incident"<br>\| json "event.type", "event.resource", "data.incident.message", "data.incident.url", "data.incident.assigned_to.name", "data.incident.status" as type, resource, incident, incidentURL, assignedTo, status nodrop |
| Squadcast/Overview/Recent Updated Incident Tags | _sourceCategory={{Logsdatasource}}  "incident.tags_updated"<br>\| json "event.type", "event.resource", "data.resource_data.tags", "data.resource_data.assigned_to.name", "data.resource_data.url", "data.resource_data.service.name", "data.resource_data.status" as type, resource, tags, assignedTo, incidentURL, service, status nodrop |
| Squadcast/Overview/SLO Violating Incidents | _sourceCategory={{Logsdatasource}}  type "incident.slo_violating_incident_created"<br>\| json "event.type", "event.resource" as type, resource nodrop |
| Squadcast/Overview/Top Alert Sources for Triggered Incident Events | _sourceCategory={{Logsdatasource}}  type<br>\| json "event.type", "event.resource", "data.resource_data.service.name", "data.resource_data.alert_source.type" as type, resource, service, alertSource nodrop |
| Squadcast/Overview/Top Assignees for Triggered Incident Events | _sourceCategory={{Logsdatasource}}  type<br>\| json "event.type", "event.resource", "data.resource_data.service.name", "data.resource_data.alert_source.type", "data.resource_data.assigned_to.name" as type, resource, service, alertSource, assignee nodrop |
| Squadcast/Overview/Top Services for Triggered Incident Events |  _sourceCategory={{Logsdatasource}}  type<br>\| json "event.type", "event.resource", "data.resource_data.service.name" as type, resource, service nodrop |

