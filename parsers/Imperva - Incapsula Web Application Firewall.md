# Parsers For Imperva - Incapsula Web Application Firewall

**Imperva - Incapsula Web Application Firewall/Imperva - Incapsula WAF - Blocked Countries/Blocked Countries Top Values**
```
_sourceCategory={{Logsdatasource}} 
AND "Blocked Country" 
| parse "sourceServiceName=* " as site_name 
| parse "requestClientApplication=* cs2" as user_agent 
| parse "src=* " as source_ip 
| parse "dproc=* cs6" as browser_type 
| parse "ccode=* " as Country 
| parse "cicode=* " as City
```

**Imperva - Incapsula Web Application Firewall/Imperva - Incapsula WAF - Blocked Countries/browser_type Top Values**
```
_sourceCategory={{Logsdatasource}} 
AND "Blocked Country"  
| parse "sourceServiceName=* " as site_name 
| parse "requestClientApplication=* cs2" as user_agent 
| parse "src=* " as source_ip 
| parse "dproc=* cs6" as browser_type
| parse "ccode=* " as Country
| parse "cicode=* " as City
```

**Imperva - Incapsula Web Application Firewall/Imperva - Incapsula WAF - Blocked Countries/Source IP Top Values**
```
_sourceCategory={{Logsdatasource}}  AND "Blocked Country" 
| parse "sourceServiceName=* " as site_name 
| parse "requestClientApplication=* cs2" as user_agent 
| parse "src=* " as source_ip 
| parse "dproc=* cs6" as browser_type
| parse "ccode=* " as Country
| parse "cicode=* " as City
```

**Imperva - Incapsula Web Application Firewall/Imperva - Incapsula WAF - Blocked Countries/Threat Table based on Client IP**
```
_sourceCategory={{Logsdatasource}} 
| parse "fileId=* " as ID nodrop
| parse "src=* " as main_client_ip nodrop
| parse "caIP=* " as additional_client_ip nodrop
| parse "requestClientApplication=* cs2" as user_agent nodrop
| parse "request=* " as URL nodrop
| parse "tag=* " as ref_id nodrop
| parse "ccode=* " as country_code nodrop
| parse "cicode=* " as City nodrop
| parse "ccode=[*] " as country_code nodrop
| parse "app=* " as Protocol nodrop
| parse "deviceExternalId=* " as request_id nodrop
| parse "ref=* " as Referrer nodrop
| parse "requestMethod=* " as Method nodrop
| parse "cn1=* " as http_status_code nodrop
| parse "xff=* " as X_Forwarded_For nodrop
| parse "in=* " as content_length nodrop
| parse "suid=* " as account_id nodrop
| parse "Customer=* " as account_name nodrop
| parse "siteid=* " as site_id nodrop
| parse "sourceServiceName=* " as site_name nodrop
| parse "act=* " as request_result nodrop
| parse "postbody=* " as post_body nodrop
| parse "start=* " as request_start_time nodrop
| parse "sip=* " as server_ip nodrop
| parse "spt=* " as server_port nodrop
| parse "qstr=* " as query_string nodrop
| parse "cs1=* " as captcha_support nodrop
| parse "cs2=* cs2" as js_support nodrop
| parse "cs3=* cs3" as cookies_support nodrop
| parse "cs4=* cs4" as visitor_id nodrop
| parse "cs5=* cs5" as Debug nodrop
| parse "cs6=* cs6" as client_app
| parse "cs7=* cs7" as Latitude nodrop
| parse "cs8=* cs8" as Longitude nodrop
| parse "cs9=* cs9" as rule_name nodrop
| parse "filePermission=* " as attack_id nodrop
| parse "fileType=* " as attack_type nodrop
| parse "dproc=* cs6" as browser_type nodrop 
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=main_client_ip
| json field=raw "labels[*].name" as label_name 
```

**Imperva - Incapsula Web Application Firewall/Imperva - Incapsula WAF - Blocked Countries/user_agent Top Values**
```
_sourceCategory={{Logsdatasource}}  AND "Blocked Country" 
| parse "sourceServiceName=* " as site_name 
| parse "requestClientApplication=* cs2" as user_agent 
| parse "src=* " as source_ip 
| parse "dproc=* cs6" as browser_type
| parse "ccode=* " as Country
| parse "cicode=* " as City
```

**Imperva - Incapsula Web Application Firewall/Imperva - Incapsula WAF - Overview/browser_type Top Values**
```
_sourceCategory={{Logsdatasource}}  | parse "fileId=* " as ID nodrop
| parse "src=* " as main_client_ip nodrop
| parse "caIP=* " as additional_client_ip nodrop
| parse "requestClientApplication=* cs2" as user_agent nodrop
| parse "request=* " as URL nodrop
| parse "tag=* " as ref_id nodrop
| parse "ccode=* " as country_code nodrop
| parse "cicode=* " as City nodrop
| parse "ccode=[*] " as country_code nodrop
| parse "app=* " as Protocol nodrop
| parse "deviceExternalId=* " as request_id nodrop
| parse "ref=* " as Referrer nodrop
| parse "requestMethod=* " as Method nodrop
| parse "cn1=* " as http_status_code nodrop
| parse "xff=* " as X_Forwarded_For nodrop
| parse "in=* " as content_length nodrop
| parse "suid=* " as account_id nodrop
| parse "Customer=* " as account_name nodrop
| parse "siteid=* " as site_id nodrop
| parse "sourceServiceName=* " as site_name nodrop
| parse "act=* " as request_result nodrop
| parse "postbody=* " as post_body nodrop
| parse "start=* " as request_start_time nodrop
| parse "sip=* " as server_ip nodrop
| parse "spt=* " as server_port nodrop
| parse "qstr=* " as query_string nodrop
| parse "cs1=* " as captcha_support nodrop
| parse "cs2=* cs2" as js_support nodrop
| parse "cs3=* cs3" as cookies_support nodrop
| parse "cs4=* cs4" as visitor_id nodrop
| parse "cs5=* cs5" as Debug nodrop
| parse "cs6=* cs6" as client_app
| parse "cs7=* cs7" as Latitude nodrop
| parse "cs8=* cs8" as Longitude nodrop
| parse "cs9=* cs9" as rule_name nodrop
| parse "filePermission=* " as attack_id nodrop
| parse "fileType=* " as attack_type nodrop
| parse "dproc=* cs6" as browser_type nodrop
```

**Imperva - Incapsula Web Application Firewall/Imperva - Incapsula WAF - Overview/client_app Top Values**
```
_sourceCategory={{Logsdatasource}}  
| parse "fileId=* " as ID nodrop
| parse "src=* " as main_client_ip nodrop
| parse "caIP=* " as additional_client_ip nodrop
| parse "requestClientApplication=* cs2" as user_agent nodrop
| parse "request=* " as URL nodrop
| parse "tag=* " as ref_id nodrop
| parse "ccode=* " as country_code nodrop
| parse "cicode=* " as City nodrop
| parse "ccode=[*] " as country_code nodrop
| parse "app=* " as Protocol nodrop
| parse "deviceExternalId=* " as request_id nodrop
| parse "ref=* " as Referrer nodrop
| parse "requestMethod=* " as Method nodrop
| parse "cn1=* " as http_status_code nodrop
| parse "xff=* " as X_Forwarded_For nodrop
| parse "in=* " as content_length nodrop
| parse "suid=* " as account_id nodrop
| parse "Customer=* " as account_name nodrop
| parse "siteid=* " as site_id nodrop
| parse "sourceServiceName=* " as site_name nodrop
| parse "act=* " as request_result nodrop
| parse "postbody=* " as post_body nodrop
| parse "start=* " as request_start_time nodrop
| parse "sip=* " as server_ip nodrop
| parse "spt=* " as server_port nodrop
| parse "qstr=* " as query_string nodrop
| parse "cs1=* " as captcha_support nodrop
| parse "cs2=* cs2" as js_support nodrop
| parse "cs3=* cs3" as cookies_support nodrop
| parse "cs4=* cs4" as visitor_id nodrop
| parse "cs5=* cs5" as Debug nodrop
| parse "cs6=* cs6" as client_app
| parse "cs7=* cs7" as Latitude nodrop
| parse "cs8=* cs8" as Longitude nodrop
| parse "cs9=* cs9" as rule_name nodrop
| parse "filePermission=* " as attack_id nodrop
| parse "fileType=* " as attack_type nodrop
| parse "dproc=* cs6" as browser_type nodrop
```

**Imperva - Incapsula Web Application Firewall/Imperva - Incapsula WAF - Overview/Country Top Values**
```
_sourceCategory={{Logsdatasource}}  
| parse "fileId=* " as ID nodrop
| parse "src=* " as main_client_ip nodrop
| parse "caIP=* " as additional_client_ip nodrop
| parse "requestClientApplication=* cs2" as user_agent nodrop
| parse "request=* " as URL nodrop
| parse "tag=* " as ref_id nodrop
| parse "ccode=* " as country_code nodrop
| parse "cicode=* " as City nodrop
| parse "ccode=[*] " as country_code nodrop
| parse "app=* " as Protocol nodrop
| parse "deviceExternalId=* " as request_id nodrop
| parse "ref=* " as Referrer nodrop
| parse "requestMethod=* " as Method nodrop
| parse "cn1=* " as http_status_code nodrop
| parse "xff=* " as X_Forwarded_For nodrop
| parse "in=* " as content_length nodrop
| parse "suid=* " as account_id nodrop
| parse "Customer=* " as account_name nodrop
| parse "siteid=* " as site_id nodrop
| parse "sourceServiceName=* " as site_name nodrop
| parse "act=* " as request_result nodrop
| parse "postbody=* " as post_body nodrop
| parse "start=* " as request_start_time nodrop
| parse "sip=* " as server_ip nodrop
| parse "spt=* " as server_port nodrop
| parse "qstr=* " as query_string nodrop
| parse "cs1=* " as captcha_support nodrop
| parse "cs2=* cs2" as js_support nodrop
| parse "cs3=* cs3" as cookies_support nodrop
| parse "cs4=* cs4" as visitor_id nodrop
| parse "cs5=* cs5" as Debug nodrop
| parse "cs6=* cs6" as client_app
| parse "cs7=* cs7" as Latitude nodrop
| parse "cs8=* cs8" as Longitude nodrop
| parse "cs9=* cs9" as rule_name nodrop
| parse "filePermission=* " as attack_id nodrop
| parse "fileType=* " as attack_type nodrop
| parse "dproc=* cs6" as browser_type nodrop
```

**Imperva - Incapsula Web Application Firewall/Imperva - Incapsula WAF - Overview/policy_type**
```
_sourceCategory={{Logsdatasource}}  
| parse "SIEMintegration|1|1|*|" as policy_type 
| parse "sourceServiceName=* " as site_name
```

**Imperva - Incapsula Web Application Firewall/Imperva - Incapsula WAF - Overview/Source IP Top Values**
```
_sourceCategory={{Logsdatasource}}  | parse "fileId=* " as ID nodrop
| parse "src=* " as main_client_ip nodrop
| parse "caIP=* " as additional_client_ip nodrop
| parse "requestClientApplication=* cs2" as user_agent nodrop
| parse "request=* " as URL nodrop
| parse "tag=* " as ref_id nodrop
| parse "ccode=* " as country_code nodrop
| parse "cicode=* " as City nodrop
| parse "ccode=[*] " as country_code nodrop
| parse "app=* " as Protocol nodrop
| parse "deviceExternalId=* " as request_id nodrop
| parse "ref=* " as Referrer nodrop
| parse "requestMethod=* " as Method nodrop
| parse "cn1=* " as http_status_code nodrop
| parse "xff=* " as X_Forwarded_For nodrop
| parse "in=* " as content_length nodrop
| parse "suid=* " as account_id nodrop
| parse "Customer=* " as account_name nodrop
| parse "siteid=* " as site_id nodrop
| parse "sourceServiceName=* " as site_name nodrop
| parse "act=* " as request_result nodrop
| parse "postbody=* " as post_body nodrop
| parse "start=* " as request_start_time nodrop
| parse "sip=* " as server_ip nodrop
| parse "spt=* " as server_port nodrop
| parse "qstr=* " as query_string nodrop
| parse "cs1=* " as captcha_support nodrop
| parse "cs2=* cs2" as js_support nodrop
| parse "cs3=* cs3" as cookies_support nodrop
| parse "cs4=* cs4" as visitor_id nodrop
| parse "cs5=* cs5" as Debug nodrop
| parse "cs6=* cs6" as client_app
| parse "cs7=* cs7" as Latitude nodrop
| parse "cs8=* cs8" as Longitude nodrop
| parse "cs9=* cs9" as rule_name nodrop
| parse "filePermission=* " as attack_id nodrop
| parse "fileType=* " as attack_type nodrop
| parse "dproc=* cs6" as browser_type nodrop
```

**Imperva - Incapsula Web Application Firewall/Imperva - Incapsula WAF - Overview/Top Applied ADR Rules**
```
_sourceCategory={{Logsdatasource}}  AND cs10
| parse "cs10=[*] cs10Label" as adr_rule
| parse "sourceServiceName=* " as site_name
```

**Imperva - Incapsula Web Application Firewall/Imperva - Incapsula WAF - Overview/URL Top Values**
```
_sourceCategory={{Logsdatasource}}  
| parse "fileId=* " as ID nodrop
| parse "src=* " as main_client_ip nodrop
| parse "caIP=* " as additional_client_ip nodrop
| parse "requestClientApplication=* cs2" as user_agent nodrop
| parse "request=* " as URL nodrop
| parse "tag=* " as ref_id nodrop
| parse "ccode=* " as country_code nodrop
| parse "cicode=* " as City nodrop
| parse "ccode=[*] " as country_code nodrop
| parse "app=* " as Protocol nodrop
| parse "deviceExternalId=* " as request_id nodrop
| parse "ref=* " as Referrer nodrop
| parse "requestMethod=* " as Method nodrop
| parse "cn1=* " as http_status_code nodrop
| parse "xff=* " as X_Forwarded_For nodrop
| parse "in=* " as content_length nodrop
| parse "suid=* " as account_id nodrop
| parse "Customer=* " as account_name nodrop
| parse "siteid=* " as site_id nodrop
| parse "sourceServiceName=* " as site_name nodrop
| parse "act=* " as request_result nodrop
| parse "postbody=* " as post_body nodrop
| parse "start=* " as request_start_time nodrop
| parse "sip=* " as server_ip nodrop
| parse "spt=* " as server_port nodrop
| parse "qstr=* " as query_string nodrop
| parse "cs1=* " as captcha_support nodrop
| parse "cs2=* cs2" as js_support nodrop
| parse "cs3=* cs3" as cookies_support nodrop
| parse "cs4=* cs4" as visitor_id nodrop
| parse "cs5=* cs5" as Debug nodrop
| parse "cs6=* cs6" as client_app
| parse "cs7=* cs7" as Latitude nodrop
| parse "cs8=* cs8" as Longitude nodrop
| parse "cs9=* cs9" as rule_name nodrop
| parse "filePermission=* " as attack_id nodrop
| parse "fileType=* " as attack_type nodrop
| parse "dproc=* cs6" as browser_type nodrop
```

**Imperva - Incapsula Web Application Firewall/Imperva - Incapsula WAF - Overview/user_agent Top Values**
```
_sourceCategory={{Logsdatasource}} 
| parse "fileId=* " as ID nodrop
| parse "src=* " as main_client_ip nodrop
| parse "caIP=* " as additional_client_ip nodrop
| parse "requestClientApplication=* cs2" as user_agent nodrop
| parse "request=* " as URL nodrop
| parse "tag=* " as ref_id nodrop
| parse "ccode=* " as country_code nodrop
| parse "cicode=* " as City nodrop
| parse "ccode=[*] " as country_code nodrop
| parse "app=* " as Protocol nodrop
| parse "deviceExternalId=* " as request_id nodrop
| parse "ref=* " as Referrer nodrop
| parse "requestMethod=* " as Method nodrop
| parse "cn1=* " as http_status_code nodrop
| parse "xff=* " as X_Forwarded_For nodrop
| parse "in=* " as content_length nodrop
| parse "suid=* " as account_id nodrop
| parse "Customer=* " as account_name nodrop
| parse "siteid=* " as site_id nodrop
| parse "sourceServiceName=* " as site_name nodrop
| parse "act=* " as request_result nodrop
| parse "postbody=* " as post_body nodrop
| parse "start=* " as request_start_time nodrop
| parse "sip=* " as server_ip nodrop
| parse "spt=* " as server_port nodrop
| parse "qstr=* " as query_string nodrop
| parse "cs1=* " as captcha_support nodrop
| parse "cs2=* cs2" as js_support nodrop
| parse "cs3=* cs3" as cookies_support nodrop
| parse "cs4=* cs4" as visitor_id nodrop
| parse "cs5=* cs5" as Debug nodrop
| parse "cs6=* cs6" as client_app
| parse "cs7=* cs7" as Latitude nodrop
| parse "cs8=* cs8" as Longitude nodrop
| parse "cs9=* cs9" as rule_name nodrop
| parse "filePermission=* " as attack_id nodrop
| parse "fileType=* " as attack_type nodrop
| parse "dproc=* cs6" as browser_type nodrop
```

**Imperva - Incapsula Web Application Firewall/Imperva - Incapsula WAF BOT - Access Control/browser_type Top Values**
```
_sourceCategory={{Logsdatasource}}  AND "Bot Access Control"
| parse "fileId=* " as ID nodrop
| parse "src=* " as main_client_ip nodrop
| parse "caIP=* " as additional_client_ip nodrop
| parse "requestClientApplication=* cs2" as user_agent nodrop
| parse "request=* " as URL nodrop
| parse "tag=* " as ref_id nodrop
| parse "ccode=* " as country_code nodrop
| parse "cicode=* " as City nodrop
| parse "ccode=[*] " as country_code nodrop
| parse "app=* " as Protocol nodrop
| parse "deviceExternalId=* " as request_id nodrop
| parse "ref=* " as Referrer nodrop
| parse "requestMethod=* " as Method nodrop
| parse "cn1=* " as http_status_code nodrop
| parse "xff=* " as X_Forwarded_For nodrop
| parse "in=* " as content_length nodrop
| parse "suid=* " as account_id nodrop
| parse "Customer=* " as account_name nodrop
| parse "siteid=* " as site_id nodrop
| parse "sourceServiceName=* " as site_name nodrop
| parse "act=* " as request_result nodrop
| parse "postbody=* " as post_body nodrop
| parse "start=* " as request_start_time nodrop
| parse "sip=* " as server_ip nodrop
| parse "spt=* " as server_port nodrop
| parse "qstr=* " as query_string nodrop
| parse "cs1=* " as captcha_support nodrop
| parse "cs2=* cs2" as js_support nodrop
| parse "cs3=* cs3" as cookies_support nodrop
| parse "cs4=* cs4" as visitor_id nodrop
| parse "cs5=* cs5" as Debug nodrop
| parse "cs6=* cs6" as client_app
| parse "cs7=* cs7" as Latitude nodrop
| parse "cs8=* cs8" as Longitude nodrop
| parse "cs9=* cs9" as rule_name nodrop
| parse "filePermission=* " as attack_id nodrop
| parse "fileType=* " as attack_type nodrop
| parse "dproc=* cs6" as browser_type nodrop
```

**Imperva - Incapsula Web Application Firewall/Imperva - Incapsula WAF BOT - Access Control/City Top Values**
```
_sourceCategory={{Logsdatasource}}  AND "Bot Access Control"
|parse "fileId=* " as ID nodrop
| parse "src=* " as main_client_ip nodrop
| parse "caIP=* " as additional_client_ip nodrop
| parse "requestClientApplication=* cs2" as user_agent nodrop
| parse "request=* " as URL nodrop
| parse "tag=* " as ref_id nodrop
| parse "ccode=* " as country_code nodrop
| parse "cicode=* " as City nodrop
| parse "ccode=[*] " as country_code nodrop
| parse "app=* " as Protocol nodrop
| parse "deviceExternalId=* " as request_id nodrop
| parse "ref=* " as Referrer nodrop
| parse "requestMethod=* " as Method nodrop
| parse "cn1=* " as http_status_code nodrop
| parse "xff=* " as X_Forwarded_For nodrop
| parse "in=* " as content_length nodrop
| parse "suid=* " as account_id nodrop
| parse "Customer=* " as account_name nodrop
| parse "siteid=* " as site_id nodrop
| parse "sourceServiceName=* " as site_name nodrop
| parse "act=* " as request_result nodrop
| parse "postbody=* " as post_body nodrop
| parse "start=* " as request_start_time nodrop
| parse "sip=* " as server_ip nodrop
| parse "spt=* " as server_port nodrop
| parse "qstr=* " as query_string nodrop
| parse "cs1=* " as captcha_support nodrop
| parse "cs2=* cs2" as js_support nodrop
| parse "cs3=* cs3" as cookies_support nodrop
| parse "cs4=* cs4" as visitor_id nodrop
| parse "cs5=* cs5" as Debug nodrop
| parse "cs6=* cs6" as client_app
| parse "cs7=* cs7" as Latitude nodrop
| parse "cs8=* cs8" as Longitude nodrop
| parse "cs9=* cs9" as rule_name nodrop
| parse "filePermission=* " as attack_id nodrop
| parse "fileType=* " as attack_type nodrop
| parse "dproc=* cs6" as browser_type nodrop
```

**Imperva - Incapsula Web Application Firewall/Imperva - Incapsula WAF BOT - Access Control/Country Top Values**
```
_sourceCategory={{Logsdatasource}}  AND "Bot Access Control"
| parse "fileId=* " as ID nodrop
| parse "src=* " as main_client_ip nodrop
| parse "caIP=* " as additional_client_ip nodrop
| parse "requestClientApplication=* cs2" as user_agent nodrop
| parse "request=* " as URL nodrop
| parse "tag=* " as ref_id nodrop
| parse "ccode=* " as Country nodrop
| parse "cicode=* " as City nodrop
| parse "ccode=[*] " as country_code nodrop
| parse "app=* " as Protocol nodrop
| parse "deviceExternalId=* " as request_id nodrop
| parse "ref=* " as Referrer nodrop
| parse "requestMethod=* " as Method nodrop
| parse "cn1=* " as http_status_code nodrop
| parse "xff=* " as X_Forwarded_For nodrop
| parse "in=* " as content_length nodrop
| parse "suid=* " as account_id nodrop
| parse "Customer=* " as account_name nodrop
| parse "siteid=* " as site_id nodrop
| parse "sourceServiceName=* " as site_name nodrop
| parse "act=* " as request_result nodrop
| parse "postbody=* " as post_body nodrop
| parse "start=* " as request_start_time nodrop
| parse "sip=* " as server_ip nodrop
| parse "spt=* " as server_port nodrop
| parse "qstr=* " as query_string nodrop
| parse "cs1=* " as captcha_support nodrop
| parse "cs2=* cs2" as js_support nodrop
| parse "cs3=* cs3" as cookies_support nodrop
| parse "cs4=* cs4" as visitor_id nodrop
| parse "cs5=* cs5" as Debug nodrop
| parse "cs6=* cs6" as client_app
| parse "cs7=* cs7" as Latitude nodrop
| parse "cs8=* cs8" as Longitude nodrop
| parse "cs9=* cs9" as rule_name nodrop
| parse "filePermission=* " as attack_id nodrop
| parse "fileType=* " as attack_type nodrop
| parse "dproc=* cs6" as browser_type nodrop
```

**Imperva - Incapsula Web Application Firewall/Imperva - Incapsula WAF BOT - Access Control/Geo Lookup**
```
_sourceCategory={{Logsdatasource}}  AND "Bot Access Control"
|parse "fileId=* " as ID nodrop
| parse "src=* " as main_client_ip nodrop
| parse "caIP=* " as additional_client_ip nodrop
| parse "requestClientApplication=* cs2" as user_agent nodrop
| parse "request=* " as URL nodrop
| parse "tag=* " as ref_id nodrop
| parse "ccode=* " as country_code nodrop
| parse "cicode=* " as City nodrop
| parse "ccode=[*] " as country_code nodrop
| parse "app=* " as Protocol nodrop
| parse "deviceExternalId=* " as request_id nodrop
| parse "ref=* " as Referrer nodrop
| parse "requestMethod=* " as Method nodrop
| parse "cn1=* " as http_status_code nodrop
| parse "xff=* " as X_Forwarded_For nodrop
| parse "in=* " as content_length nodrop
| parse "suid=* " as account_id nodrop
| parse "Customer=* " as account_name nodrop
| parse "siteid=* " as site_id nodrop
| parse "sourceServiceName=* " as site_name nodrop
| parse "act=* " as request_result nodrop
| parse "postbody=* " as post_body nodrop
| parse "start=* " as request_start_time nodrop
| parse "sip=* " as server_ip nodrop
| parse "spt=* " as server_port nodrop
| parse "qstr=* " as query_string nodrop
| parse "cs1=* " as captcha_support nodrop
| parse "cs2=* cs2" as js_support nodrop
| parse "cs3=* cs3" as cookies_support nodrop
| parse "cs4=* cs4" as visitor_id nodrop
| parse "cs5=* cs5" as Debug nodrop
| parse "cs6=* cs6" as client_app
| parse "cs7=* cs7" as Latitude nodrop
| parse "cs8=* cs8" as Longitude nodrop
| parse "cs9=* cs9" as rule_name nodrop
| parse "filePermission=* " as attack_id nodrop
| parse "fileType=* " as attack_type nodrop
| parse "dproc=* cs6" as browser_type nodrop 
```

**Imperva - Incapsula Web Application Firewall/Imperva - Incapsula WAF BOT - Access Control/Source IP Top Values**
```
_sourceCategory={{Logsdatasource}}  AND "Bot Access Control"
| parse "fileId=* " as ID nodrop 
| parse "src=* " as main_client_ip nodrop
| parse "caIP=* " as additional_client_ip nodrop
| parse "requestClientApplication=* cs2" as user_agent nodrop
| parse "request=* " as URL nodrop
| parse "tag=* " as ref_id nodrop
| parse "ccode=* " as country_code nodrop
| parse "cicode=* " as City nodrop
| parse "ccode=[*] " as country_code nodrop
| parse "app=* " as Protocol nodrop
| parse "deviceExternalId=* " as request_id nodrop
| parse "ref=* " as Referrer nodrop
| parse "requestMethod=* " as Method nodrop
| parse "cn1=* " as http_status_code nodrop
| parse "xff=* " as X_Forwarded_For nodrop
| parse "in=* " as content_length nodrop
| parse "suid=* " as account_id nodrop
| parse "Customer=* " as account_name nodrop
| parse "siteid=* " as site_id nodrop
| parse "sourceServiceName=* " as site_name nodrop
| parse "act=* " as request_result nodrop
| parse "postbody=* " as post_body nodrop
| parse "start=* " as request_start_time nodrop
| parse "sip=* " as server_ip nodrop
| parse "spt=* " as server_port nodrop
| parse "qstr=* " as query_string nodrop
| parse "cs1=* " as captcha_support nodrop
| parse "cs2=* cs2" as js_support nodrop
| parse "cs3=* cs3" as cookies_support nodrop
| parse "cs4=* cs4" as visitor_id nodrop
| parse "cs5=* cs5" as Debug nodrop
| parse "cs6=* cs6" as client_app
| parse "cs7=* cs7" as Latitude nodrop
| parse "cs8=* cs8" as Longitude nodrop
| parse "cs9=* cs9" as rule_name nodrop
| parse "filePermission=* " as attack_id nodrop
| parse "fileType=* " as attack_type nodrop
| parse "dproc=* cs6" as browser_type nodrop
```

**Imperva - Incapsula Web Application Firewall/Imperva - Incapsula WAF BOT - Access Control/User Agents Top Values**
```
_sourceCategory={{Logsdatasource}}  AND "Bot Access Control"
| parse "fileId=* " as ID nodrop
| parse "src=* " as main_client_ip nodrop
| parse "caIP=* " as additional_client_ip nodrop
| parse "requestClientApplication=* cs2" as user_agent nodrop
| parse "request=* " as URL nodrop
| parse "tag=* " as ref_id nodrop
| parse "ccode=* " as country_code nodrop
| parse "cicode=* " as City nodrop
| parse "ccode=[*] " as country_code nodrop
| parse "app=* " as Protocol nodrop
| parse "deviceExternalId=* " as request_id nodrop
| parse "ref=* " as Referrer nodrop
| parse "requestMethod=* " as Method nodrop
| parse "cn1=* " as http_status_code nodrop
| parse "xff=* " as X_Forwarded_For nodrop
| parse "in=* " as content_length nodrop
| parse "suid=* " as account_id nodrop
| parse "Customer=* " as account_name nodrop
| parse "siteid=* " as site_id nodrop
| parse "sourceServiceName=* " as site_name nodrop
| parse "act=* " as request_result nodrop
| parse "postbody=* " as post_body nodrop
| parse "start=* " as request_start_time nodrop
| parse "sip=* " as server_ip nodrop
| parse "spt=* " as server_port nodrop
| parse "qstr=* " as query_string nodrop
| parse "cs1=* " as captcha_support nodrop
| parse "cs2=* cs2" as js_support nodrop
| parse "cs3=* cs3" as cookies_support nodrop
| parse "cs4=* cs4" as visitor_id nodrop
| parse "cs5=* cs5" as Debug nodrop
| parse "cs6=* cs6" as client_app
| parse "cs7=* cs7" as Latitude nodrop
| parse "cs8=* cs8" as Longitude nodrop
| parse "cs9=* cs9" as rule_name nodrop
| parse "filePermission=* " as attack_id nodrop
| parse "fileType=* " as attack_type nodrop
| parse "dproc=* cs6" as browser_type nodrop
```


