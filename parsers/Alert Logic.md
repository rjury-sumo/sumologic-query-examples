# Parsers For Alert Logic

## Parser:
```
| json   "extra.status", "extra.class", "incident.threatRating", "updatetime_str", "victim", "attacker", "incident.recommendations", "incident.description","incident.summary", "incidentId",  "asset_deployment_type", "customer", "accountId" as status,  incident_class, threat_rating, timestamp, victim, attacker, recommendations, description, summary, incident_id, deployment_name, customer_name, account_id  nodrop 
| json "extra.target_host", "extra.investigation_report", "extra.class", "extra.incidentUrl", "mitre_classification[*].technique", "mitre_classification[*].tactic" as target_host, investigation_report, incident_class, incident_url, mitre_technique, mitre_tactic nodrop
| json field=attacker "ip" as attacker_ip
 `n```
### Use Cases:
Attacker Count by Location, Incident Summarry, Incident Threat Ratings, Incident Trend by Status, Incident Trend by Threat Rating, Incidents by Deployments, Incidents by MITRE Technique, Incidents Completed, Incidents Opened, Top Attackers, Top Targeted Hosts



## Parser:
```
| json   "extra.status", "extra.class", "incident.threatRating", "updatetime_str", "victim", "attacker", "incident.recommendations", "incident.description","incident.summary", "incidentId",  "asset_deployment_type", "customer", "accountId" as status,  incident_class, threat_rating, timestamp, victim, attacker, recommendations, description, summary, incident_id, deployment_name, customer_name, account_id  nodrop 
| json "extra.target_host", "extra.investigation_report", "extra.class", "extra.incidentUrl", "mitre_classification[*].technique", "mitre_classification[*].tactic" as target_host, investigation_report, incident_class, incident_url, mitre_technique, mitre_tactic nodrop
| json field=attacker "ip" as attacker_ip
| json field=_raw "attacker_country_name" as attacker_location
 `n```
### Use Cases:
Incident Summarry, Incident Trend by Status, Incidents by MITRE Technique, Incidents Completed, Top Attackers


