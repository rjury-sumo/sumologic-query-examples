# Parsers For Microsoft Graph Security

## Parser:
```
| extract field=comments "(?<comment_info>\{.*?\})" multi
| json field=comment_info "createdByDisplayName" as analyst
 
```
### Use Cases:
Geo Locations of Alerts, Top 10 Analysts, Top 10 Users Associated with Alerts



## Parser:
```
| extract field=evidence_info "(?<evidence_detail>\{.*?\})" multi
| json field=evidence_detail "$['@odata.type']" as data_type
| json field=evidence_detail "ipAddress" as ip
 
```
### Use Cases:
Alerts from Risky Countries, Geo Locations of Alerts, Top 10 Analysts, Top 10 Users Associated with Alerts



## Parser:
```
| extract field=evidence_info "(?<evidence_detail>\{.*?\})" multi
| json field=evidence_detail "$['@odata.type']" as data_type
| json field=evidence_detail "verdict" as verdict
| json field=evidence_detail "ipAddress" as ip
 
```
### Use Cases:
Alerts from Risky Countries, Geo Locations of Alerts, Top 10 Analysts, Top 10 Attacked Device, Top 10 Country with Suspicious or Malicious IP Verdict, Top 10 Users Associated with Alerts



## Parser:
```
| extract field=evidence_info "(?<evidence_detail>\{[^\{\}]*?\"userAccount\"[^\{\}]*?\{[^\{\}]*?\}[^\{\}]*?\})" multi
| json field=evidence_detail "$['@odata.type']" as data_type
| json field= evidence_detail "userAccount" as user_account
| json field = user_account "userPrincipalName" as user_name
| json field = user_account "userSid" as user_id
| json field = user_account "azureAdUserId" as user_azure_id
| json field = user_account "accountName" as user_account_name
| json field = user_account "displayName" as user_display_name
| json field = user_account "domainName"  as domain_name
 
```
### Use Cases:
Top 10 Users Associated with Alerts



## Parser:
```
| extract field=evidence_info "(?<evidence_detail>\{[^\{\}]*?\"userAccount\"[^\{\}]*?\{[^\{\}]*?\}[^\{\}]*?\})" multi
| json field=evidence_detail "$['@odata.type']" as data_type
| json field=evidence_detail "roles[*]" as roles
| json field=evidence_detail "userAccount" as user_account
| json field = user_account "userPrincipalName" as user_name
| json field = user_account "userSid" as user_id
| json field = user_account "azureAdUserId" as user_azure_id
| json field = user_account "accountName" as user_account_name
| json field = user_account "displayName" as user_display_name
| json field = user_account "domainName"  as domain_name
 
```
### Use Cases:
Alerts from Risky Countries, Geo Locations of Alerts, Top 10 Analysts, Top 10 Attacked Device, Top 10 Country with Suspicious or Malicious IP Verdict, Top 10 User Account with Compromised Role, Top 10 Users Associated with Alerts



## Parser:
```
| extract field=evidence_info "(?<evidence_detail>\{[^\{\}]*?\"vmMetadata\"[^\{\}]*?\{[^\{\}]*?\}[^\{\}]*?\})" multi
| json field=evidence_detail "$['@odata.type']" as data_type
| json field=evidence_detail "roles[*]" as roles
| json field=evidence_detail "mdeDeviceId" as device_id
| json field=evidence_detail "riskScore" as risk_score
| json field=evidence_detail "healthStatus" as health_status
| json field=evidence_detail "osPlatform" as os 
| json field=evidence_detail "deviceDnsName" as dns_name
| json field=evidence_detail "azureAdDeviceId" as azure_id
 
```
### Use Cases:
Alerts from Risky Countries, Geo Locations of Alerts, Top 10 Analysts, Top 10 Attacked Device, Top 10 Users Associated with Alerts


