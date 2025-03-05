# Parsers For Cato Networks

## Parser:
```
| json "account_id", "admin", "admin_id", "change_type", "creation_date", "insertion_date", "model_name", "model_type", "module" as account_id, admin, admin_id, activity, creation_date, insertion_date, model_name, model_type, module nodrop
```
### Use Cases:
Activity Types, Admin Activities Over Time, Audits Summary, Top 10 Active Admins, Top 10 Modules Changed, Top 10 Objects Changed, Total Audit Logs



## Parser:
```
| json "user_name", "api_type", "event_message", "application", "api_name", "file_size", "socket_interface", "matched_data_types", "rule", "device_name", "src_site", "internalId", "dlp_profiles", "ip_protocol", "custom_categories", "src_isp_ip", "threat_verdict", "src_ip", "action", "file_type", "dest_is_site_or_vpn", "file_name", "is_sanctioned_app", "vpn_user_email", "threat_type", "dest_ip", "risk_level", "domain_name", "src_is_site_or_vpn", "account_id", "event_sub_type", "signature_id", "rule_id", "host_mac", "client_class", "user_reference_id", "event_type", "full_path_url", "host_ip", "rule_name", "severity", "login_type", "mitre_attack_tactics", "os_version", "src_country", "time", "dest_port", "application_risk", "categories", "src_port", "mitre_attack_subtechniques", "dest_site", "traffic_direction", "link_type", "event_count", "ISP_name", "mitre_attack_techniques", "authentication_type", "os_type", "dest_country", "key_name", "threat_reference", "url", "threat_name", "tunnel_protocol", "dest_country_code", "client_version", "src_country_code", "pop_name" as user_name, api_type, event_message, application, api_name, file_size, socket_interface, matched_data_types, rule, device_name, src_site, internalId, dlp_profiles, ip_protocol, custom_categories, src_isp_ip, threat_verdict, src_ip, action, file_type, dest_is_site_or_vpn, file_name, is_sanctioned_app, vpn_user_email, threat_type, dest_ip, risk_level, domain_name, src_is_site_or_vpn, account_id, event_sub_type, signature_id, rule_id, host_mac, client_class, user_reference_id, event_type, full_path_url, host_ip, rule_name, severity, login_type, mitre_attack_tactics, os_version, src_country, time, dest_port, application_risk, categories, src_port, mitre_attack_subtechniques, dest_site, traffic_direction, link_type, event_count, isp_name, mitre_attack_techniques, authentication_type, os_type, dest_country, key_name, threat_reference, url, threat_name, tunnel_protocol, dest_country_code, client_version, src_country_code, pop_name nodrop
```
### Use Cases:
Activity Types, Admin Activities Over Time, Audits Summary, Events by Sub Type, Events by Type, Events from Risky Geo Locations, Top 10 Active Admins, Top 10 ISPs, Top 10 Modules Changed, Top 10 Objects Changed, Total Audit Logs, Tunnel Protocol Distribution



## Parser:
```
| json "user_name", "api_type", "event_message", "application", "api_name", "file_size", "socket_interface", "matched_data_types", "rule", "device_name", "src_site", "internalId", "dlp_profiles", "ip_protocol", "custom_categories", "src_isp_ip", "threat_verdict", "src_ip", "action", "file_type", "dest_is_site_or_vpn", "file_name", "is_sanctioned_app", "vpn_user_email", "threat_type", "dest_ip", "risk_level", "domain_name", "src_is_site_or_vpn", "account_id", "event_sub_type", "signature_id", "rule_id", "host_mac", "client_class", "user_reference_id", "event_type", "full_path_url", "host_ip", "rule_name", "severity", "login_type", "mitre_attack_tactics", "os_version", "src_country", "time", "dest_port", "application_risk", "categories", "src_port", "mitre_attack_subtechniques", "dest_site", "traffic_direction", "link_type", "event_count", "ISP_name", "mitre_attack_techniques", "authentication_type", "os_type", "dest_country", "key_name", "threat_reference", "url", "threat_name", "tunnel_protocol", "dest_country_code", "client_version", "src_country_code", "pop_name" as user_name, api_type, event_message, application, api_name, file_size, socket_interface, matched_data_types, rule, device_name, src_site, internalId, dlp_profiles, ip_protocol, custom_categories, src_isp_ip, threat_verdict, src_ip, action, file_type, dest_is_site_or_vpn, file_name, is_sanctioned_app, vpn_user_email, threat_type, dest_ip, risk_level, domain_name, src_is_site_or_vpn, account_id, event_sub_type, signature_id, rule_id, host_mac, client_class, user_reference_id, event_type, full_path_url, host_ip, rule_name, severity, login_type, mitre_attack_tactics, os_version, src_country, time, dest_port, application_risk, categories, src_port, mitre_attack_subtechniques, dest_site, traffic_direction, link_type, event_count, ISP_name, mitre_attack_techniques, authentication_type, os_type, dest_country, key_name, threat_reference, url, threat_name, tunnel_protocol, dest_country_code, client_version, src_country_code, pop_name nodrop
```
### Use Cases:
Action Distribution, Activity Types, Admin Activities Over Time, Audits Summary, Events by Sub Type, Events by Type, Events from Risky Geo Locations, Geo Locations of Threat's Destination, Geo Locations of Threat's Source, MITRE Attack Summary, Source Site/VPN Details, Threats by Risk Level, Threats by Type, Threats Frequency, Threats Over Time, Top 10 Active Admins, Top 10 Destination Countries, Top 10 ISPs, Top 10 Modules Changed, Top 10 Objects Changed, Top 10 POP Names, Top 10 Source Countries, Top Attack Signatures, Top Threats, Total Audit Logs, Total Events, Total Threat Events, Tunnel Protocol Distribution


