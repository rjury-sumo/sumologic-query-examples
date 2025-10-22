# Parsers For Alert Logic

**Alert Logic/Incident Overview/Attacker Count by Location**
```
_soursceCategory={{Logsdatasource}} 
| json   "extra.status", "extra.class", "incident.threatRating", "updatetime_str", "victim", "attacker", "incident.recommendations", "incident.description","incident.summary", "incidentId",  "asset_deployment_type", "customer", "accountId" as status,  incident_class, threat_rating, timestamp, victim, attacker, recommendations, description, summary, incident_id, deployment_name, customer_name, account_id  nodrop 
| json "extra.target_host", "extra.investigation_report", "extra.class", "extra.incidentUrl", "mitre_classification[*].technique", "mitre_classification[*].tactic" as target_host, investigation_report, incident_class, incident_url, mitre_technique, mitre_tactic nodrop
| json field=attacker "ip" as attacker_ip
```

**Alert Logic/Incident Overview/Incident Summarry**
```
_soursceCategory={{Logsdatasource}} 
| json   "extra.status", "extra.class", "incident.threatRating", "updatetime_str", "victim", "attacker", "incident.recommendations", "incident.description","incident.summary", "incidentId",  "asset_deployment_type", "customer", "accountId" as status,  incident_class, threat_rating, timestamp, victim, attacker, recommendations, description, summary, incident_id, deployment_name, customer_name, account_id  nodrop 
| json "extra.target_host", "extra.investigation_report", "extra.class", "extra.incidentUrl", "mitre_classification[*].technique", "mitre_classification[*].tactic" as target_host, investigation_report, incident_class, incident_url, mitre_technique, mitre_tactic nodrop
| json field=attacker "ip" as attacker_ip
| json field=_raw "attacker_country_name" as attacker_location
```

**Alert Logic/Incident Overview/Incident Threat Ratings**
```
_soursceCategory={{Logsdatasource}} 
| json   "extra.status", "extra.class", "incident.threatRating", "updatetime_str", "victim", "attacker", "incident.recommendations", "incident.description","incident.summary", "incidentId",  "asset_deployment_type", "customer", "accountId" as status,  incident_class, threat_rating, timestamp, victim, attacker, recommendations, description, summary, incident_id, deployment_name, customer_name, account_id  nodrop 
| json "extra.target_host", "extra.investigation_report", "extra.class", "extra.incidentUrl", "mitre_classification[*].technique", "mitre_classification[*].tactic" as target_host, investigation_report, incident_class, incident_url, mitre_technique, mitre_tactic nodrop
| json field=attacker "ip" as attacker_ip
```

**Alert Logic/Incident Overview/Incident Trend by Status**
```
_soursceCategory={{Logsdatasource}} 
| json   "extra.status", "extra.class", "incident.threatRating", "updatetime_str", "victim", "attacker", "incident.recommendations", "incident.description","incident.summary", "incidentId",  "asset_deployment_type", "customer", "accountId" as status,  incident_class, threat_rating, timestamp, victim, attacker, recommendations, description, summary, incident_id, deployment_name, customer_name, account_id  nodrop 
| json "extra.target_host", "extra.investigation_report", "extra.class", "extra.incidentUrl", "mitre_classification[*].technique", "mitre_classification[*].tactic" as target_host, investigation_report, incident_class, incident_url, mitre_technique, mitre_tactic nodrop
| json field=attacker "ip" as attacker_ip
```

**Alert Logic/Incident Overview/Incident Trend by Threat Rating**
```
_soursceCategory={{Logsdatasource}} 
| json   "extra.status", "extra.class", "incident.threatRating", "updatetime_str", "victim", "attacker", "incident.recommendations", "incident.description","incident.summary", "incidentId",  "asset_deployment_type", "customer", "accountId" as status,  incident_class, threat_rating, timestamp, victim, attacker, recommendations, description, summary, incident_id, deployment_name, customer_name, account_id  nodrop 
| json "extra.target_host", "extra.investigation_report", "extra.class", "extra.incidentUrl", "mitre_classification[*].technique", "mitre_classification[*].tactic" as target_host, investigation_report, incident_class, incident_url, mitre_technique, mitre_tactic nodrop
| json field=attacker "ip" as attacker_ip
```

**Alert Logic/Incident Overview/Incidents by Deployments**
```
_soursceCategory={{Logsdatasource}} 
| json   "extra.status", "extra.class", "incident.threatRating", "updatetime_str", "victim", "attacker", "incident.recommendations", "incident.description","incident.summary", "incidentId",  "asset_deployment_type", "customer", "accountId" as status,  incident_class, threat_rating, timestamp, victim, attacker, recommendations, description, summary, incident_id, deployment_name, customer_name, account_id  nodrop 
| json "extra.target_host", "extra.investigation_report", "extra.class", "extra.incidentUrl", "mitre_classification[*].technique", "mitre_classification[*].tactic" as target_host, investigation_report, incident_class, incident_url, mitre_technique, mitre_tactic nodrop
| json field=attacker "ip" as attacker_ip
```

**Alert Logic/Incident Overview/Incidents by MITRE Technique**
```
_soursceCategory={{Logsdatasource}} 
| json   "extra.status", "extra.class", "incident.threatRating", "updatetime_str", "victim", "attacker", "incident.recommendations", "incident.description","incident.summary", "incidentId",  "asset_deployment_type", "customer", "accountId" as status,  incident_class, threat_rating, timestamp, victim, attacker, recommendations, description, summary, incident_id, deployment_name, customer_name, account_id  nodrop 
| json "extra.target_host", "extra.investigation_report", "extra.class", "extra.incidentUrl", "mitre_classification[*].technique", "mitre_classification[*].tactic" as target_host, investigation_report, incident_class, incident_url, mitre_technique, mitre_tactic nodrop
| json field=attacker "ip" as attacker_ip
```

**Alert Logic/Incident Overview/Incidents Completed**
```
_soursceCategory={{Logsdatasource}} 
| json   "extra.status", "extra.class", "incident.threatRating", "updatetime_str", "victim", "attacker", "incident.recommendations", "incident.description","incident.summary", "incidentId",  "asset_deployment_type", "customer", "accountId" as status,  incident_class, threat_rating, timestamp, victim, attacker, recommendations, description, summary, incident_id, deployment_name, customer_name, account_id  nodrop 
| json "extra.target_host", "extra.investigation_report", "extra.class", "extra.incidentUrl", "mitre_classification[*].technique", "mitre_classification[*].tactic" as target_host, investigation_report, incident_class, incident_url, mitre_technique, mitre_tactic nodrop
| json field=attacker "ip" as attacker_ip
```

**Alert Logic/Incident Overview/Incidents Opened**
```
_soursceCategory={{Logsdatasource}} 
| json   "extra.status", "extra.class", "incident.threatRating", "updatetime_str", "victim", "attacker", "incident.recommendations", "incident.description","incident.summary", "incidentId",  "asset_deployment_type", "customer", "accountId" as status,  incident_class, threat_rating, timestamp, victim, attacker, recommendations, description, summary, incident_id, deployment_name, customer_name, account_id  nodrop 
| json "extra.target_host", "extra.investigation_report", "extra.class", "extra.incidentUrl", "mitre_classification[*].technique", "mitre_classification[*].tactic" as target_host, investigation_report, incident_class, incident_url, mitre_technique, mitre_tactic nodrop
| json field=attacker "ip" as attacker_ip
```

**Alert Logic/Incident Overview/Top Attackers**
```
_soursceCategory={{Logsdatasource}} 
| json   "extra.status", "extra.class", "incident.threatRating", "updatetime_str", "victim", "attacker", "incident.recommendations", "incident.description","incident.summary", "incidentId",  "asset_deployment_type", "customer", "accountId" as status,  incident_class, threat_rating, timestamp, victim, attacker, recommendations, description, summary, incident_id, deployment_name, customer_name, account_id  nodrop 
| json "extra.target_host", "extra.investigation_report", "extra.class", "extra.incidentUrl", "mitre_classification[*].technique", "mitre_classification[*].tactic" as target_host, investigation_report, incident_class, incident_url, mitre_technique, mitre_tactic nodrop
| json field=attacker "ip" as attacker_ip
| json field=_raw "attacker_country_name" as attacker_location
```

**Alert Logic/Incident Overview/Top Targeted Hosts**
```
_soursceCategory={{Logsdatasource}} 
| json   "extra.status", "extra.class", "incident.threatRating", "updatetime_str", "victim", "attacker", "incident.recommendations", "incident.description","incident.summary", "incidentId",  "asset_deployment_type", "customer", "accountId" as status,  incident_class, threat_rating, timestamp, victim, attacker, recommendations, description, summary, incident_id, deployment_name, customer_name, account_id  nodrop 
| json "extra.target_host", "extra.investigation_report", "extra.class", "extra.incidentUrl", "mitre_classification[*].technique", "mitre_classification[*].tactic" as target_host, investigation_report, incident_class, incident_url, mitre_technique, mitre_tactic nodrop
| json field=attacker "ip" as attacker_ip
```


