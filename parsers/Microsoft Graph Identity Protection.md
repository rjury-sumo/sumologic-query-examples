# Parsers For Microsoft Graph Identity Protection

## Parser:
```
| json "activity", "activityDateTime", "detectedDateTime", "detectionTimingType", "id", "ipAddress", "lastUpdatedDateTime", "location", "location.geoCoordinates.latitude", "location.geoCoordinates.longitude", "riskDetail", "riskEventType", "riskLevel", "riskState", "source", "tokenIssuerType", "userPrincipalName", "userId" as activity, activity_date_time, detected_date_time, detection_timing_type, risk_id, ip_address, last_updated_date_time, location, latitude, longitude, risk_action, risk_event_type, risk_level, risk_state, source, token_issuer_type, user, user_id nodrop
```
### Use Cases:
Actions on Risk, Geo Locations of Risk, Latency between Risk Occurrence and Detection, One Day Frequency Comparison of Risk by Type, Risk by Activity, Risk by Detection Type, Risk by Level, Risk by State, Risk by Token Issuer Type, Risk Detections Summary, Risk Level Over Time, Top 10 Sources of Risk



## Parser:
```
| json "activity", "activityDateTime", "detectedDateTime", "detectionTimingType", "id", "ipAddress", "lastUpdatedDateTime", "location", "location.geoCoordinates.latitude", "location.geoCoordinates.longitude", "riskDetail", "riskEventType", "riskLevel", "riskState", "source", "tokenIssuerType", "userPrincipalName", "userId" as activity, activity_date_time, detected_date_time, detection_timing_type, risk_id, ip_address, last_updated_date_time, location, latitude, longitude, risk_action, risk_event_type, risk_level, risk_state, source, token_issuer_type, user, user_id nodrop
| extract field=activity_date_time "(?<activity_date_time_ms>.*\.\d{3}).*Z"
| extract field=detected_date_time "(?<detected_date_time_ms>.*\.\d{3}).*Z"
```
### Use Cases:
Geo Locations of Risk, Latency between Risk Occurrence and Detection, One Day Frequency Comparison of Risk by Type, Risk by Activity, Risk by Detection Type, Risk by Level, Risk by State, Risk by Token Issuer Type, Risk Level Over Time



## Parser:
```
| json "id", "userPrincipalName", "isDeleted", "isProcessing", "riskLevel", "riskState", "riskDetail", "riskLastUpdatedDateTime" as user_id, user, is_deleted, is_processing, risk_level, risk_state, risk_action, risk_last_updated_date_time nodrop
```
### Use Cases:
Actions on Risk, Geo Locations of Risk, Latency between Risk Occurrence and Detection, One Day Frequency Comparison of Risk by Type, Risk by Activity, Risk by Detection Type, Risk by Level, Risk by State, Risk by Token Issuer Type, Risk Detections Summary, Risk Level Over Time, Risky Users by Level, Risky Users by Processing State, Risky Users by State, Risky Users by Status, Risky Users Summary, Risky Users Trend by Level, Top 10 Sources of Risk


