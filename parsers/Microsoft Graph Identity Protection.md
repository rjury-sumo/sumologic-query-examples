# Parsers For Microsoft Graph Identity Protection

**Microsoft Graph Identity Protection/Risk Detections/Actions on Risk**
```
_sourceCategory={{Logsdatasource}}   riskEventType // Distinguish Risky Users data from Risk Detections data which have "riskEventType" field
| json "activity", "activityDateTime", "detectedDateTime", "detectionTimingType", "id", "ipAddress", "lastUpdatedDateTime", "location", "location.geoCoordinates.latitude", "location.geoCoordinates.longitude", "riskDetail", "riskEventType", "riskLevel", "riskState", "source", "tokenIssuerType", "userPrincipalName", "userId" as activity, activity_date_time, detected_date_time, detection_timing_type, risk_id, ip_address, last_updated_date_time, location, latitude, longitude, risk_action, risk_event_type, risk_level, risk_state, source, token_issuer_type, user, user_id nodrop
```

**Microsoft Graph Identity Protection/Risk Detections/Geo Locations of Risk**
```
_sourceCategory={{Logsdatasource}}   riskEventType // Distinguish Risky Users data from Risk Detections data which have "riskEventType" field
| json "activity", "activityDateTime", "detectedDateTime", "detectionTimingType", "id", "ipAddress", "lastUpdatedDateTime", "location", "location.geoCoordinates.latitude", "location.geoCoordinates.longitude", "riskDetail", "riskEventType", "riskLevel", "riskState", "source", "tokenIssuerType", "userPrincipalName", "userId" as activity, activity_date_time, detected_date_time, detection_timing_type, risk_id, ip_address, last_updated_date_time, location, latitude, longitude, risk_action, risk_event_type, risk_level, risk_state, source, token_issuer_type, user, user_id nodrop
```

**Microsoft Graph Identity Protection/Risk Detections/Latency between Risk Occurrence and Detection**
```
_sourceCategory={{Logsdatasource}}   riskEventType // Distinguish Risky Users data from Risk Detections data which have "riskEventType" field
| json "activity", "activityDateTime", "detectedDateTime", "detectionTimingType", "id", "ipAddress", "lastUpdatedDateTime", "location", "location.geoCoordinates.latitude", "location.geoCoordinates.longitude", "riskDetail", "riskEventType", "riskLevel", "riskState", "source", "tokenIssuerType", "userPrincipalName", "userId" as activity, activity_date_time, detected_date_time, detection_timing_type, risk_id, ip_address, last_updated_date_time, location, latitude, longitude, risk_action, risk_event_type, risk_level, risk_state, source, token_issuer_type, user, user_id nodrop
| concat(location.city, ", ", location.state, ", ", location.countryOrRegion) as location
| topk(1, last_updated_date_time) by risk_id // Consider only most recent details of the risk.

// Apply global filters.
| where activity matches "{{activity}}"
| where risk_event_type matches "{{risk_event_type}}"
| where risk_level matches "{{risk_level}}"
| where risk_state matches "{{risk_state}}"
| where risk_action matches "{{risk_action}}"
| where location matches "{{location}}"

| extract field=activity_date_time "(?<activity_date_time_ms>.*\.\d{3}).*Z"
| extract field=detected_date_time "(?<detected_date_time_ms>.*\.\d{3}).*Z"
```

**Microsoft Graph Identity Protection/Risk Detections/One Day Frequency Comparison of Risk by Type**
```
_sourceCategory={{Logsdatasource}}   riskEventType // Distinguish Risky Users data from Risk Detections data which have "riskEventType" field
| json "activity", "activityDateTime", "detectedDateTime", "detectionTimingType", "id", "ipAddress", "lastUpdatedDateTime", "location", "location.geoCoordinates.latitude", "location.geoCoordinates.longitude", "riskDetail", "riskEventType", "riskLevel", "riskState", "source", "tokenIssuerType", "userPrincipalName", "userId" as activity, activity_date_time, detected_date_time, detection_timing_type, risk_id, ip_address, last_updated_date_time, location, latitude, longitude, risk_action, risk_event_type, risk_level, risk_state, source, token_issuer_type, user, user_id nodrop
```

**Microsoft Graph Identity Protection/Risk Detections/Risk by Activity**
```
_sourceCategory={{Logsdatasource}}   riskEventType // Distinguish Risky Users data from Risk Detections data which have "riskEventType" field
| json "activity", "activityDateTime", "detectedDateTime", "detectionTimingType", "id", "ipAddress", "lastUpdatedDateTime", "location", "location.geoCoordinates.latitude", "location.geoCoordinates.longitude", "riskDetail", "riskEventType", "riskLevel", "riskState", "source", "tokenIssuerType", "userPrincipalName", "userId" as activity, activity_date_time, detected_date_time, detection_timing_type, risk_id, ip_address, last_updated_date_time, location, latitude, longitude, risk_action, risk_event_type, risk_level, risk_state, source, token_issuer_type, user, user_id nodrop
```

**Microsoft Graph Identity Protection/Risk Detections/Risk by Detection Type**
```
_sourceCategory={{Logsdatasource}}   riskEventType // Distinguish Risky Users data from Risk Detections data which have "riskEventType" field
| json "activity", "activityDateTime", "detectedDateTime", "detectionTimingType", "id", "ipAddress", "lastUpdatedDateTime", "location", "location.geoCoordinates.latitude", "location.geoCoordinates.longitude", "riskDetail", "riskEventType", "riskLevel", "riskState", "source", "tokenIssuerType", "userPrincipalName", "userId" as activity, activity_date_time, detected_date_time, detection_timing_type, risk_id, ip_address, last_updated_date_time, location, latitude, longitude, risk_action, risk_event_type, risk_level, risk_state, source, token_issuer_type, user, user_id nodrop
```

**Microsoft Graph Identity Protection/Risk Detections/Risk by Level**
```
_sourceCategory={{Logsdatasource}}   riskEventType // Distinguish Risky Users data from Risk Detections data which have "riskEventType" field
| json "activity", "activityDateTime", "detectedDateTime", "detectionTimingType", "id", "ipAddress", "lastUpdatedDateTime", "location", "location.geoCoordinates.latitude", "location.geoCoordinates.longitude", "riskDetail", "riskEventType", "riskLevel", "riskState", "source", "tokenIssuerType", "userPrincipalName", "userId" as activity, activity_date_time, detected_date_time, detection_timing_type, risk_id, ip_address, last_updated_date_time, location, latitude, longitude, risk_action, risk_event_type, risk_level, risk_state, source, token_issuer_type, user, user_id nodrop
```

**Microsoft Graph Identity Protection/Risk Detections/Risk by State**
```
_sourceCategory={{Logsdatasource}}   riskEventType // Distinguish Risky Users data from Risk Detections data which have "riskEventType" field
| json "activity", "activityDateTime", "detectedDateTime", "detectionTimingType", "id", "ipAddress", "lastUpdatedDateTime", "location", "location.geoCoordinates.latitude", "location.geoCoordinates.longitude", "riskDetail", "riskEventType", "riskLevel", "riskState", "source", "tokenIssuerType", "userPrincipalName", "userId" as activity, activity_date_time, detected_date_time, detection_timing_type, risk_id, ip_address, last_updated_date_time, location, latitude, longitude, risk_action, risk_event_type, risk_level, risk_state, source, token_issuer_type, user, user_id nodrop
```

**Microsoft Graph Identity Protection/Risk Detections/Risk by Token Issuer Type**
```
_sourceCategory={{Logsdatasource}}   riskEventType // Distinguish Risky Users data from Risk Detections data which have "riskEventType" field
| json "activity", "activityDateTime", "detectedDateTime", "detectionTimingType", "id", "ipAddress", "lastUpdatedDateTime", "location", "location.geoCoordinates.latitude", "location.geoCoordinates.longitude", "riskDetail", "riskEventType", "riskLevel", "riskState", "source", "tokenIssuerType", "userPrincipalName", "userId" as activity, activity_date_time, detected_date_time, detection_timing_type, risk_id, ip_address, last_updated_date_time, location, latitude, longitude, risk_action, risk_event_type, risk_level, risk_state, source, token_issuer_type, user, user_id nodrop
```

**Microsoft Graph Identity Protection/Risk Detections/Risk Detections Summary**
```
_sourceCategory={{Logsdatasource}}   riskEventType // Distinguish Risky Users data from Risk Detections data which have "riskEventType" field
| json "activity", "activityDateTime", "detectedDateTime", "detectionTimingType", "id", "ipAddress", "lastUpdatedDateTime", "location", "location.geoCoordinates.latitude", "location.geoCoordinates.longitude", "riskDetail", "riskEventType", "riskLevel", "riskState", "source", "tokenIssuerType", "userPrincipalName", "userId" as activity, activity_date_time, detected_date_time, detection_timing_type, risk_id, ip_address, last_updated_date_time, location, latitude, longitude, risk_action, risk_event_type, risk_level, risk_state, source, token_issuer_type, user, user_id nodrop
```

**Microsoft Graph Identity Protection/Risk Detections/Risk Level Over Time**
```
_sourceCategory={{Logsdatasource}}   riskEventType // Distinguish Risky Users data from Risk Detections data which have "riskEventType" field
| json "activity", "activityDateTime", "detectedDateTime", "detectionTimingType", "id", "ipAddress", "lastUpdatedDateTime", "location", "location.geoCoordinates.latitude", "location.geoCoordinates.longitude", "riskDetail", "riskEventType", "riskLevel", "riskState", "source", "tokenIssuerType", "userPrincipalName", "userId" as activity, activity_date_time, detected_date_time, detection_timing_type, risk_id, ip_address, last_updated_date_time, location, latitude, longitude, risk_action, risk_event_type, risk_level, risk_state, source, token_issuer_type, user, user_id nodrop
```

**Microsoft Graph Identity Protection/Risk Detections/Top 10 Sources of Risk**
```
_sourceCategory={{Logsdatasource}}   riskEventType // Distinguish Risky Users data from Risk Detections data which have "riskEventType" field
| json "activity", "activityDateTime", "detectedDateTime", "detectionTimingType", "id", "ipAddress", "lastUpdatedDateTime", "location", "location.geoCoordinates.latitude", "location.geoCoordinates.longitude", "riskDetail", "riskEventType", "riskLevel", "riskState", "source", "tokenIssuerType", "userPrincipalName", "userId" as activity, activity_date_time, detected_date_time, detection_timing_type, risk_id, ip_address, last_updated_date_time, location, latitude, longitude, risk_action, risk_event_type, risk_level, risk_state, source, token_issuer_type, user, user_id nodrop
```

**Microsoft Graph Identity Protection/Risky Users/Actions on Risk**
```
_sourceCategory={{Logsdatasource}}   !riskEventType // Distinguish Risky Users data from Risk Detections data which have "riskEventType" field
| json "id", "userPrincipalName", "isDeleted", "isProcessing", "riskLevel", "riskState", "riskDetail", "riskLastUpdatedDateTime" as user_id, user, is_deleted, is_processing, risk_level, risk_state, risk_action, risk_last_updated_date_time nodrop
```

**Microsoft Graph Identity Protection/Risky Users/Risky Users by Level**
```
_sourceCategory={{Logsdatasource}}   !riskEventType // Distinguish Risky Users data from Risk Detections data which have "riskEventType" field
| json "id", "userPrincipalName", "isDeleted", "isProcessing", "riskLevel", "riskState", "riskDetail", "riskLastUpdatedDateTime" as user_id, user, is_deleted, is_processing, risk_level, risk_state, risk_action, risk_last_updated_date_time nodrop
```

**Microsoft Graph Identity Protection/Risky Users/Risky Users by Processing State**
```
_sourceCategory={{Logsdatasource}}   !riskEventType // Distinguish Risky Users data from Risk Detections data which have "riskEventType" field
| json "id", "userPrincipalName", "isDeleted", "isProcessing", "riskLevel", "riskState", "riskDetail", "riskLastUpdatedDateTime" as user_id, user, is_deleted, is_processing, risk_level, risk_state, risk_action, risk_last_updated_date_time nodrop
```

**Microsoft Graph Identity Protection/Risky Users/Risky Users by State**
```
_sourceCategory={{Logsdatasource}}   !riskEventType // Distinguish Risky Users data from Risk Detections data which have "riskEventType" field
| json "id", "userPrincipalName", "isDeleted", "isProcessing", "riskLevel", "riskState", "riskDetail", "riskLastUpdatedDateTime" as user_id, user, is_deleted, is_processing, risk_level, risk_state, risk_action, risk_last_updated_date_time nodrop
```

**Microsoft Graph Identity Protection/Risky Users/Risky Users by Status**
```
_sourceCategory={{Logsdatasource}}   !riskEventType // Distinguish Risky Users data from Risk Detections data which have "riskEventType" field
| json "id", "userPrincipalName", "isDeleted", "isProcessing", "riskLevel", "riskState", "riskDetail", "riskLastUpdatedDateTime" as user_id, user, is_deleted, is_processing, risk_level, risk_state, risk_action, risk_last_updated_date_time nodrop
```

**Microsoft Graph Identity Protection/Risky Users/Risky Users Summary**
```
_sourceCategory={{Logsdatasource}}   !riskEventType // Distinguish Risky Users data from Risk Detections data which have "riskEventType" field
| json "id", "userPrincipalName", "isDeleted", "isProcessing", "riskLevel", "riskState", "riskDetail", "riskLastUpdatedDateTime" as user_id, user, is_deleted, is_processing, risk_level, risk_state, risk_action, risk_last_updated_date_time nodrop
```

**Microsoft Graph Identity Protection/Risky Users/Risky Users Trend by Level**
```
_sourceCategory={{Logsdatasource}}   !riskEventType // Distinguish Risky Users data from Risk Detections data which have "riskEventType" field
| json "id", "userPrincipalName", "isDeleted", "isProcessing", "riskLevel", "riskState", "riskDetail", "riskLastUpdatedDateTime" as user_id, user, is_deleted, is_processing, risk_level, risk_state, risk_action, risk_last_updated_date_time nodrop
```


