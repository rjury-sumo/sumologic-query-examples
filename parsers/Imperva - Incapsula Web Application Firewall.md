# Parsers For Imperva - Incapsula Web Application Firewall

## Parser:
```
| parse "cs10=[*] cs10Label" as adr_rule
| parse "sourceServiceName=* " as site_name
 
```
### Use Cases:
Blocked Countries Top Values, browser_type Top Values, client_app Top Values, Country Top Values, policy_type, Source IP Top Values, Threat Table based on Client IP, Top Applied ADR Rules, URL Top Values, user_agent Top Values



## Parser:
```
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
### Use Cases:
Blocked Countries Top Values, browser_type Top Values, client_app Top Values, Country Top Values, Geo Lookup, policy_type, Source IP Top Values, Threat Table based on Client IP, Top Applied ADR Rules, URL Top Values, User Agents Top Values, user_agent Top Values



## Parser:
```
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
### Use Cases:
Blocked Countries Top Values, browser_type Top Values, client_app Top Values, Country Top Values, Geo Lookup, policy_type, Source IP Top Values, Threat Table based on Client IP, Top Applied ADR Rules, URL Top Values, User Agents Top Values, user_agent Top Values



## Parser:
```
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
| json field=raw "labels[*].name" as label_name 
 
```
### Use Cases:
Threat Table based on Client IP



## Parser:
```
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
### Use Cases:
Blocked Countries Top Values, browser_type Top Values, client_app Top Values, Country Top Values, policy_type, Source IP Top Values, Threat Table based on Client IP, Top Applied ADR Rules, URL Top Values, user_agent Top Values



## Parser:
```
| parse "SIEMintegration|1|1|*|" as policy_type 
| parse "sourceServiceName=* " as site_name
 
```
### Use Cases:
Blocked Countries Top Values, browser_type Top Values, client_app Top Values, policy_type, Source IP Top Values, Threat Table based on Client IP, URL Top Values, user_agent Top Values



## Parser:
```
| parse "sourceServiceName=* " as site_name 
| parse "requestClientApplication=* cs2" as user_agent 
| parse "src=* " as source_ip 
| parse "dproc=* cs6" as browser_type
| parse "ccode=* " as Country
| parse "cicode=* " as City
 
```
### Use Cases:
Blocked Countries Top Values, browser_type Top Values, Source IP Top Values, Threat Table based on Client IP, user_agent Top Values



## Parser:
```
| parse "sourceServiceName=* " as site_name 
| parse "requestClientApplication=* cs2" as user_agent 
| parse "src=* " as source_ip 
| parse "dproc=* cs6" as browser_type 
| parse "ccode=* " as Country 
| parse "cicode=* " as City
 
```
### Use Cases:
Blocked Countries Top Values, Threat Table based on Client IP



## Parser:
```
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
### Use Cases:
Blocked Countries Top Values, browser_type Top Values, City Top Values, client_app Top Values, Country Top Values, Geo Lookup, policy_type, Source IP Top Values, Threat Table based on Client IP, Top Applied ADR Rules, URL Top Values, User Agents Top Values, user_agent Top Values



## Parser:
```
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
### Use Cases:
Blocked Countries Top Values, browser_type Top Values, client_app Top Values, Country Top Values, Geo Lookup, policy_type, Source IP Top Values, Threat Table based on Client IP, Top Applied ADR Rules, URL Top Values, user_agent Top Values


