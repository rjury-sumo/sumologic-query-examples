# sumologic-query-examples
A collection of over 20,000 example Sumo Logic search queries using exports of Sumo Logic apps from Demo orgs using a scripted export by Sumo Logic TAE team.

This export includes two datasets:
1. an export from a Sumo Logic legacy demo app covering about 10 years of 'legacy' sumo apps
2. an export of 'Installed Apps' - the new 'v2' apps from a new Sumo Logic Demo org

Given that searches existed in a similar format in old and new apps you will often find duplicates within a specific file / topic with multiple origin path names.

## Examples folder
These are all merged together in the ./examples folder with one md file per high level app name.

Some of the exported searches come from 'saved searches' items in the app folder but most come from panels in dashboards. 

In each app md file you can see:
- a description and app link if it could be automaticaly matched to a Sumo Logic apps page
- a list of all searches found
- a markdown table of each search with details such as search type and origionating file


## final_searches_db.json
This is a single json file for programmatic analysis of exported searches. Every search that was exported can be found here grouped by high level app name.

For example.
```
{
  "AWS Security Hub - Cloud Security Monitoring and Analytics": [
    {
      "itemtype": "Dashboard",
      "source_path": "AWS Security Hub - Cloud Security Monitoring and Analytics/AWS Security Hub - Security Analytics - Compliance",
      "app_topic": "AWS Security Hub - Cloud Security Monitoring and Analytics",
      "parent": "AWS Security Hub - Cloud Security Monitoring and Analytics",
      "origin": "AWS Security Hub - Cloud Security Monitoring and Analytics/AWS Security Hub - Security Analytics - Compliance",
      "search": "_sourceCategory = Labs/AWS/SecurityHub \n| json  \"AwsAccountId\", \"Id\", \"GeneratorId\", \"ProductArn\", \"CreatedAt\", \"UpdatedAt\", \"Resources\", \"Severity.Normalized\", \"SourceUrl\", \"Title\",\"Types\", \"Compliance.Status\" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop\n| where aws_account_id matches \"{{aws_account_id}}\"\n| where finding_id matches \"{{finding_id}}\"\n| where finding_types matches \"{{finding_types}}\"\n| where severity_normalized matches \"{{severity_normalized}}\"\n| where title matches \"{{title}}\"\n| where compliance_status matches \"{{compliance_status}}\"\n|topk(1, updated_at) by finding_id\n| parse regex field=product_arn \":(?<sechub_region>[a-z]*-[a-z]*-\\d{1}):\"\n| parse regex field=finding_types \"\\\"(?<finding_type>.*?)\\\"\" multi\n| parse regex field=resources \"\\\"Type\\\":\\\"(?<resource_type>.*?)\\\"\" multi\n| parse regex field=resources \"\\\"Id\\\":\\\"(?<resource_id>.*?)\\\"\" multi\n| parse regex field=product_arn \"product/(?<finding_provider>.*?)$\"\n| where !isBlank(compliance_status)\n| count",
      "search_name": "All Compliance Findings",
      "type": "Logs"
    },
    {
      "itemtype": "Dashboard",
      "source_path": "AWS Security Hub - Cloud Security Monitoring and Analytics/AWS Security Hub - Security Analytics - Compliance",
      "app_topic": "AWS Security Hub - Cloud Security Monitoring and Analytics",
      "parent": "AWS Security Hub - Cloud Security Monitoring and Analytics",
      "origin": "AWS Security Hub - Cloud Security Monitoring and Analytics/AWS Security Hub - Security Analytics - Compliance",
      "search": "_sourceCategory = Labs/AWS/SecurityHub AND !(isBlank(compliance_status))\n| json  \"AwsAccountId\", \"Id\", \"GeneratorId\", \"ProductArn\", \"CreatedAt\", \"UpdatedAt\", \"Resources\", \"Severity.Normalized\", \"SourceUrl\", \"Title\",\"Types\", \"Compliance.Status\" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop\n| where aws_account_id matches \"{{aws_account_id}}\"\n| where finding_id matches \"{{finding_id}}\"\n| where finding_types matches \"{{finding_types}}\"\n| where severity_normalized matches \"{{severity_normalized}}\"\n| where title matches \"{{title}}\"\n| where compliance_status matches \"{{compliance_status}}\"\n| parse regex field=product_arn \"product/(?<finding_provider>.*?)$\"\n| if (severity_normalized == 0, \"Informational\", \"Others\") as severity_bucket\n| if (severity_normalized <= 39, \"Low\", severity_bucket) as severity_bucket\n| if ((severity_normalized <= 69) and (severity_normalized >= 40), \"Medium\", severity_bucket) as severity_bucket\n| if ((severity_normalized <= 89) and (severity_normalized >= 70), \"High\", severity_bucket) as severity_bucket\n| if (severity_normalized <= 100 and severity_normalized >= 90, \"Critical\", severity_bucket) as severity_bucket\n|topk(1, updated_at) by finding_id\n| parse regex field=product_arn \":(?<sechub_region>[a-z]*-[a-z]*-\\d{1}):\"\n| parse regex field=finding_types \"\\\"(?<finding_type>.*?)\\\"\" multi\n| parse regex field=resources \"\\\"Type\\\":\\\"(?<resource_type>.*?)\\\"\" multi\n| parse regex field=resources \"\\\"Id\\\":\\\"(?<resource_id>.*?)\\\"\" multi\n| parse regex field=product_arn \"product/(?<finding_provider>.*?)$\"\n| timeslice 1h\n| count by _timeslice,compliance_status \n| transpose row _timeslice column compliance_status",
      "search_name": "Compliance Breakdown",
      "type": "Logs"
    },
    ....
}
```

# Search Topic Index With Search Count
- [1Password](./1Password): 70
- [Abnormal Security](./Abnormal%20Security): 23
- [Acquia](./Acquia): 174
- [Active Directory 2012+ - OpenTelemetry](./Active%20Directory%202012%2B%20-%20OpenTelemetry): 15
- [Active Directory 2012+ (JSON)](./Active%20Directory%202012%2B%20%28JSON%29): 62
- [Active Directory JSON](./Active%20Directory%20JSON): 31
- [Active Directory Legacy](./Active%20Directory%20Legacy): 26
- [ActiveMQ](./ActiveMQ): 60
- [ActiveMQ - OpenTelemetry](./ActiveMQ%20-%20OpenTelemetry): 55
- [Airtable](./Airtable): 11
- [Akamai Cloud Monitor](./Akamai%20Cloud%20Monitor): 42
- [Akamai DataStream](./Akamai%20DataStream): 31
- [Akamai Security Events](./Akamai%20Security%20Events): 56
- [Alert Logic](./Alert%20Logic): 11
- [Alex Amazon VPC Flow](./Alex%20Amazon%20VPC%20Flow): 107
- [Amazon CloudFront](./Amazon%20CloudFront): 50
- [Amazon CloudTrail - Cloud Security Monitoring and Analytics](./Amazon%20CloudTrail%20-%20Cloud%20Security%20Monitoring%20and%20Analytics): 102
- [Amazon EKS - Control Plane](./Amazon%20EKS%20-%20Control%20Plane): 32
- [Amazon GuardDuty - Cloud Security Monitoring and Analytics](./Amazon%20GuardDuty%20-%20Cloud%20Security%20Monitoring%20and%20Analytics): 15
- [Amazon Inspector](./Amazon%20Inspector): 30
- [Amazon Inspector Classic](./Amazon%20Inspector%20Classic): 14
- [Amazon Kinesis - Streams](./Amazon%20Kinesis%20-%20Streams): 18
- [Amazon Redshift ULM](./Amazon%20Redshift%20ULM): 129
- [Amazon Route 53 Resolver Security](./Amazon%20Route%2053%20Resolver%20Security): 58
- [Amazon S3 Audit](./Amazon%20S3%20Audit): 34
- [Amazon SES](./Amazon%20SES): 54
- [Amazon SNS](./Amazon%20SNS): 22
- [Amazon SQS](./Amazon%20SQS): 37
- [Amazon VPC Flow - Cloud Security Monitoring and Analytics](./Amazon%20VPC%20Flow%20-%20Cloud%20Security%20Monitoring%20and%20Analytics): 49
- [Apache](./Apache): 114
- [Apache - OpenTelemetry](./Apache%20-%20OpenTelemetry): 92
- [Apache Tomcat](./Apache%20Tomcat): 102
- [Apache Tomcat - OpenTelemetry](./Apache%20Tomcat%20-%20OpenTelemetry): 72
- [Aqua Security](./Aqua%20Security): 36
- [ARIA Packet Intelligence](./ARIA%20Packet%20Intelligence): 16
- [Armis](./Armis): 34
- [Artifactory 7](./Artifactory%207): 58
- [Artifactory 7 - OpenTelemetry](./Artifactory%207%20-%20OpenTelemetry): 58
- [Asana](./Asana): 14
- [Atlassian](./Atlassian): 20
- [Audit](./Audit): 78
- [Aurora PostgreSQL ULM](./Aurora%20PostgreSQL%20ULM): 32
- [AWS CloudTrail](./AWS%20CloudTrail): 21
- [AWS Config](./AWS%20Config): 6
- [AWS Cost Explorer](./AWS%20Cost%20Explorer): 31
- [AWS DynamoDB](./AWS%20DynamoDB): 11
- [AWS EKS - Control Plane](./AWS%20EKS%20-%20Control%20Plane): 31
- [AWS Elastic Load Balancer - Application](./AWS%20Elastic%20Load%20Balancer%20-%20Application): 42
- [AWS Elastic Load Balancing Metrics](./AWS%20Elastic%20Load%20Balancing%20Metrics): 6
- [AWS GuardDuty](./AWS%20GuardDuty): 8
- [AWS GuardDuty Benchmark](./AWS%20GuardDuty%20Benchmark): 1
- [AWS Kinesis - Streams](./AWS%20Kinesis%20-%20Streams): 10
- [AWS Lambda](./AWS%20Lambda): 18
- [AWS Lambda ULM](./AWS%20Lambda%20ULM): 11
- [AWS Network Firewall](./AWS%20Network%20Firewall): 16
- [AWS Security Hub](./AWS%20Security%20Hub): 1
- [AWS Security Hub - Cloud Security Monitoring and Analytics](./AWS%20Security%20Hub%20-%20Cloud%20Security%20Monitoring%20and%20Analytics): 33
- [AWS SES](./AWS%20SES): 12
- [AWS VPC Flow Logs](./AWS%20VPC%20Flow%20Logs): 44
- [AWS WAF](./AWS%20WAF): 32
- [AWS WAF - Cloud Security Monitoring and Analytics](./AWS%20WAF%20-%20Cloud%20Security%20Monitoring%20and%20Analytics): 30
- [Azure Active Directory](./Azure%20Active%20Directory): 95
- [Azure API Management](./Azure%20API%20Management): 68
- [Azure App Service Environment](./Azure%20App%20Service%20Environment): 18
- [Azure App Service Plan](./Azure%20App%20Service%20Plan): 31
- [Azure Application Gateway](./Azure%20Application%20Gateway): 158
- [Azure Audit](./Azure%20Audit): 43
- [Azure Cache for Redis](./Azure%20Cache%20for%20Redis): 75
- [Azure Cosmos DB](./Azure%20Cosmos%20DB): 60
- [Azure Cosmos DB for PostgreSQL](./Azure%20Cosmos%20DB%20for%20PostgreSQL): 60
- [Azure Database for MySQL](./Azure%20Database%20for%20MySQL): 86
- [Azure Database for PostgreSQL](./Azure%20Database%20for%20PostgreSQL): 154
- [Azure Event Grid](./Azure%20Event%20Grid): 40
- [Azure Functions](./Azure%20Functions): 166
- [Azure Kubernetes Service (AKS) - Control Plane](./Azure%20Kubernetes%20Service%20%28AKS%29%20-%20Control%20Plane): 44
- [Azure Load Balancer](./Azure%20Load%20Balancer): 28
- [Azure Network Watcher](./Azure%20Network%20Watcher): 23
- [Azure Service Bus](./Azure%20Service%20Bus): 70
- [Azure SQL](./Azure%20SQL): 221
- [Azure Storage](./Azure%20Storage): 109
- [Azure Web Apps](./Azure%20Web%20Apps): 153
- [Barracuda CloudGen Firewall](./Barracuda%20CloudGen%20Firewall): 9
- [Barracuda WAF](./Barracuda%20WAF): 97
- [BitBucket](./BitBucket): 56
- [Box](./Box): 20
- [Carbon Black](./Carbon%20Black): 141
- [Carbon Black Cloud](./Carbon%20Black%20Cloud): 156
- [Cassandra](./Cassandra): 144
- [Cassandra - OpenTelemetry](./Cassandra%20-%20OpenTelemetry): 114
- [Cato Networks](./Cato%20Networks): 28
- [CircleCI](./CircleCI): 11
- [CIS AWS Foundations Benchmark](./CIS%20AWS%20Foundations%20Benchmark): 21
- [Cisco ASA](./Cisco%20ASA): 59
- [Cisco Meraki](./Cisco%20Meraki): 193
- [Cisco Meraki - C2C](./Cisco%20Meraki%20-%20C2C): 36
- [Cisco Umbrella](./Cisco%20Umbrella): 66
- [Citrix Cloud](./Citrix%20Cloud): 20
- [Cloud Infrastructure Security for AWS](./Cloud%20Infrastructure%20Security%20for%20AWS): 102
- [Cloud Infrastructure Security for AWS ](./Cloud%20Infrastructure%20Security%20for%20AWS%20): 104
- [Cloud Infrastructure Security for AWS 2024-03-13  - DEMO  V1.0.1](./Cloud%20Infrastructure%20Security%20for%20AWS%202024-03-13%20%20-%20DEMO%20%20V1.0.1): 105
- [Cloudflare](./Cloudflare): 223
- [CloudPassage Halo](./CloudPassage%20Halo): 20
- [Couchbase](./Couchbase): 87
- [Couchbase - OpenTelemetry](./Couchbase%20-%20OpenTelemetry): 27
- [CrowdStrike - Falcon Endpoint Protection](./CrowdStrike%20-%20Falcon%20Endpoint%20Protection): 60
- [CrowdStrike - Falcon Platform](./CrowdStrike%20-%20Falcon%20Platform): 44
- [CrowdStrike - Falcon V2](./CrowdStrike%20-%20Falcon%20V2): 48
- [CrowdStrike FDR Host Inventory](./CrowdStrike%20FDR%20Host%20Inventory): 12
- [Cylance](./Cylance): 121
- [Cyral](./Cyral): 55
- [Data Volume](./Data%20Volume): 168
- [Data Volume (Legacy)](./Data%20Volume%20%28Legacy%29): 35
- [Docker](./Docker): 27
- [Docker - OpenTelemetry](./Docker%20-%20OpenTelemetry): 32
- [Docker ULM](./Docker%20ULM): 36
- [DocuSign](./DocuSign): 33
- [Dropbox](./Dropbox): 29
- [Druva](./Druva): 22
- [Druva Cyber Resilience](./Druva%20Cyber%20Resilience): 42
- [Duo Security](./Duo%20Security): 78
- [Elasticsearch](./Elasticsearch): 139
- [Elasticsearch - OpenTelemetry](./Elasticsearch%20-%20OpenTelemetry): 276
- [Endace](./Endace): 25
- [Enterprise Audit - Cloud SIEM](./Enterprise%20Audit%20-%20Cloud%20SIEM): 676
- [Enterprise Audit - Collector & Data Forwarding Management](./Enterprise%20Audit%20-%20Collector%20%26%20Data%20Forwarding%20Management): 89
- [Enterprise Audit - Content Management](./Enterprise%20Audit%20-%20Content%20Management): 126
- [Enterprise Audit - Security Management](./Enterprise%20Audit%20-%20Security%20Management): 36
- [Enterprise Audit - User & Role Management](./Enterprise%20Audit%20-%20User%20%26%20Role%20Management): 76
- [Enterprise Search Audit](./Enterprise%20Search%20Audit): 104
- [Evident.io ESP](./Evident.io%20ESP): 12
- [F5 - BIG-IP - LTM](./F5%20-%20BIG-IP%20-%20LTM): 35
- [Fastly](./Fastly): 132
- [Flex](./Flex): 134
- [G Suite](./G%20Suite): 51
- [GitHub](./GitHub): 22
- [Gitlab](./Gitlab): 112
- [Global Intelligence for Amazon GuardDuty](./Global%20Intelligence%20for%20Amazon%20GuardDuty): 5
- [Global Intelligence for Apache](./Global%20Intelligence%20for%20Apache): 44
- [Global Intelligence for Apache Tomcat](./Global%20Intelligence%20for%20Apache%20Tomcat): 36
- [Global Intelligence for AWS CloudTrail](./Global%20Intelligence%20for%20AWS%20CloudTrail): 45
- [Global Intelligence for CloudTrail DevOps](./Global%20Intelligence%20for%20CloudTrail%20DevOps): 30
- [Google App Engine](./Google%20App%20Engine): 28
- [Google BigQuery](./Google%20BigQuery): 92
- [Google Cloud Audit](./Google%20Cloud%20Audit): 36
- [Google Cloud Compute Engine](./Google%20Cloud%20Compute%20Engine): 89
- [Google Cloud Firewall](./Google%20Cloud%20Firewall): 46
- [Google Cloud Functions](./Google%20Cloud%20Functions): 36
- [Google Cloud IAM](./Google%20Cloud%20IAM): 19
- [Google Cloud Load Balancing](./Google%20Cloud%20Load%20Balancing): 22
- [Google Cloud SQL](./Google%20Cloud%20SQL): 91
- [Google Cloud Storage](./Google%20Cloud%20Storage): 27
- [Google Cloud VPC](./Google%20Cloud%20VPC): 47
- [Google Compute Engine](./Google%20Compute%20Engine): 2
- [Google Kubernetes Engine (GKE) - Control Plane](./Google%20Kubernetes%20Engine%20%28GKE%29%20-%20Control%20Plane): 130
- [Google Workspace](./Google%20Workspace): 198
- [HAProxy](./HAProxy): 108
- [HAProxy - OpenTelemetry](./HAProxy%20-%20OpenTelemetry): 129
- [Hasura](./Hasura): 16
- [Heroku](./Heroku): 114
- [Host and Process Metrics](./Host%20and%20Process%20Metrics): 178
- [Host Metrics](./Host%20Metrics): 48
- [IIS 10](./IIS%2010): 243
- [IIS 10 - OpenTelemetry](./IIS%2010%20-%20OpenTelemetry): 85
- [IIS 10 (Legacy)](./IIS%2010%20%28Legacy%29): 15
- [IIS 7](./IIS%207): 22
- [iLert](./iLert): 15
- [Imperva - Incapsula Web Application Firewall](./Imperva%20-%20Incapsula%20Web%20Application%20Firewall): 19
- [Infrequent Data Tier](./Infrequent%20Data%20Tier): 36
- [Istio](./Istio): 130
- [Jenkins](./Jenkins): 226
- [JFrog Xray](./JFrog%20Xray): 106
- [Jira](./Jira): 72
- [Jira - OpenTelemetry](./Jira%20-%20OpenTelemetry): 72
- [Jira Cloud](./Jira%20Cloud): 39
- [JMX](./JMX): 130
- [JMX - OpenTelemetry](./JMX%20-%20OpenTelemetry): 58
- [Kafka](./Kafka): 161
- [Kafka - OpenTelemetry](./Kafka%20-%20OpenTelemetry): 44
- [Kubernetes](./Kubernetes): 302
- [Kubernetes - Control Plane](./Kubernetes%20-%20Control%20Plane): 72
- [Kubernetes - Control Plane >= 1.16](./Kubernetes%20-%20Control%20Plane%20%3E%3D%201.16): 150
- [Kubernetes_Old](./Kubernetes_Old): 302
- [LambdaTest](./LambdaTest): 42
- [Linux](./Linux): 96
- [Linux - Cloud Security Monitoring and Analytics](./Linux%20-%20Cloud%20Security%20Monitoring%20and%20Analytics): 70
- [Linux - Cloud Security Monitoring and Analytics - OpenTelemetry](./Linux%20-%20Cloud%20Security%20Monitoring%20and%20Analytics%20-%20OpenTelemetry): 35
- [Linux - OpenTelemetry](./Linux%20-%20OpenTelemetry): 184
- [Log Analysis QuickStart](./Log%20Analysis%20QuickStart): 30
- [macOS - OpenTelemetry](./macOS%20-%20OpenTelemetry): 70
- [Mailgun](./Mailgun): 30
- [MariaDB](./MariaDB): 120
- [MariaDB - OpenTelemetry](./MariaDB%20-%20OpenTelemetry): 34
- [Memcached](./Memcached): 76
- [Memcached - OpenTelemetry](./Memcached%20-%20OpenTelemetry): 58
- [Microsoft Exchange Trace Logs](./Microsoft%20Exchange%20Trace%20Logs): 18
- [Microsoft Graph Azure AD Reporting](./Microsoft%20Graph%20Azure%20AD%20Reporting): 29
- [Microsoft Graph Identity Protection](./Microsoft%20Graph%20Identity%20Protection): 19
- [Microsoft Graph Security](./Microsoft%20Graph%20Security): 17
- [Microsoft Office 365](./Microsoft%20Office%20365): 259
- [Microsoft Teams](./Microsoft%20Teams): 55
- [Miro](./Miro): 19
- [MongoDB](./MongoDB): 91
- [MongoDB - OpenTelemetry](./MongoDB%20-%20OpenTelemetry): 54
- [MongoDB Atlas 6](./MongoDB%20Atlas%206): 222
- [MySQL](./MySQL): 100
- [MySQL - OpenTelemetry](./MySQL%20-%20OpenTelemetry): 94
- [NeoLoad](./NeoLoad): 21
- [Netlify](./Netlify): 29
- [Netskope](./Netskope): 124
- [Nginx](./Nginx): 78
- [Nginx - OpenTelemetry](./Nginx%20-%20OpenTelemetry): 136
- [Nginx (Legacy)](./Nginx%20%28Legacy%29): 64
- [Nginx Ingress](./Nginx%20Ingress): 86
- [Nginx Plus](./Nginx%20Plus): 171
- [Nginx Plus Ingress](./Nginx%20Plus%20Ingress): 166
- [Observable Networks](./Observable%20Networks): 9
- [Okta](./Okta): 78
- [OneLogin](./OneLogin): 32
- [Opsgenie](./Opsgenie): 30
- [Oracle - OpenTelemetry](./Oracle%20-%20OpenTelemetry): 186
- [Palo Alto Cortex XDR](./Palo%20Alto%20Cortex%20XDR): 19
- [Palo Alto Firewall - Cloud Security Monitoring and Analytics](./Palo%20Alto%20Firewall%20-%20Cloud%20Security%20Monitoring%20and%20Analytics): 111
- [Palo Alto Firewall 10 - Cloud Security Monitoring and Analytics](./Palo%20Alto%20Firewall%2010%20-%20Cloud%20Security%20Monitoring%20and%20Analytics): 222
- [Palo Alto Firewall 9 - Cloud Security Monitoring and Analytics](./Palo%20Alto%20Firewall%209%20-%20Cloud%20Security%20Monitoring%20and%20Analytics): 222
- [Palo Alto Networks 6](./Palo%20Alto%20Networks%206): 2
- [Palo Alto Networks 8](./Palo%20Alto%20Networks%208): 17
- [Palo Alto Networks 9](./Palo%20Alto%20Networks%209): 163
- [PCI Compliance For Amazon VPC Flow](./PCI%20Compliance%20For%20Amazon%20VPC%20Flow): 19
- [PCI Compliance For AWS CloudTrail](./PCI%20Compliance%20For%20AWS%20CloudTrail): 16
- [PCI Compliance For Linux](./PCI%20Compliance%20For%20Linux): 34
- [PCI Compliance for Linux - OpenTelemetry](./PCI%20Compliance%20for%20Linux%20-%20OpenTelemetry): 22
- [PCI Compliance For Palo Alto Networks](./PCI%20Compliance%20For%20Palo%20Alto%20Networks): 15
- [PCI Compliance For Palo Alto Networks 10](./PCI%20Compliance%20For%20Palo%20Alto%20Networks%2010): 28
- [PCI Compliance For Palo Alto Networks 9](./PCI%20Compliance%20For%20Palo%20Alto%20Networks%209): 28
- [PCI Compliance For Windows](./PCI%20Compliance%20For%20Windows): 28
- [PCI Compliance For Windows JSON](./PCI%20Compliance%20For%20Windows%20JSON): 28
- [PCI Compliance For Windows JSON - OpenTelemetry](./PCI%20Compliance%20For%20Windows%20JSON%20-%20OpenTelemetry): 30
- [PostgreSQL - OpenTelemetry](./PostgreSQL%20-%20OpenTelemetry): 66
- [Postman](./Postman): 48
- [Privacy Insights & GDPR](./Privacy%20Insights%20%26%20GDPR): 4
- [Proofpoint On Demand](./Proofpoint%20On%20Demand): 42
- [Proofpoint TAP](./Proofpoint%20TAP): 29
- [Puppet](./Puppet): 24
- [Puppet - OpenTelemetry](./Puppet%20-%20OpenTelemetry): 23
- [Qualys VMDR](./Qualys%20VMDR): 18
- [RabbitMQ](./RabbitMQ): 36
- [RabbitMQ - OpenTelemetry](./RabbitMQ%20-%20OpenTelemetry): 8
- [Rapid7](./Rapid7): 15
- [Redis - OpenTelemetry](./Redis%20-%20OpenTelemetry): 51
- [RUM Dashboards](./RUM%20Dashboards): 251
- [SailPoint](./SailPoint): 40
- [Salesforce](./Salesforce): 54
- [Sauce Labs](./Sauce%20Labs): 13
- [SentinelOne](./SentinelOne): 24
- [Sentry](./Sentry): 24
- [Slack](./Slack): 119
- [Spinnaker](./Spinnaker): 27
- [Split](./Split): 28
- [SQL Server - OpenTelemetry](./SQL%20Server%20-%20OpenTelemetry): 86
- [SQL Server for Linux - OpenTelemetry](./SQL%20Server%20for%20Linux%20-%20OpenTelemetry): 29
- [Squadcast](./Squadcast): 29
- [Squid Proxy](./Squid%20Proxy): 76
- [Squid Proxy - OpenTelemetry](./Squid%20Proxy%20-%20OpenTelemetry): 37
- [StackRox](./StackRox): 72
- [Stripe](./Stripe): 46
- [Symantec Web Security Service](./Symantec%20Web%20Security%20Service): 25
- [Tenable](./Tenable): 14
- [Threat Intel for AWS](./Threat%20Intel%20for%20AWS): 16
- [Threat Intel Quick Analysis](./Threat%20Intel%20Quick%20Analysis): 50
- [Tracing - Application Services Health](./Tracing%20-%20Application%20Services%20Health): 172
- [Trend Micro Deep Security](./Trend%20Micro%20Deep%20Security): 66
- [Twistlock](./Twistlock): 162
- [Twistlock Classic](./Twistlock%20Classic): 81
- [Varnish](./Varnish): 119
- [Varnish - OpenTelemetry](./Varnish%20-%20OpenTelemetry): 45
- [VMware](./VMware): 166
- [VMware ULM](./VMware%20ULM): 6
- [Webex](./Webex): 30
- [Windows](./Windows): 57
- [Windows - Cloud Security Monitoring and Analytics](./Windows%20-%20Cloud%20Security%20Monitoring%20and%20Analytics): 178
- [Windows - Cloud Security Monitoring and Analytics - OpenTelemetry](./Windows%20-%20Cloud%20Security%20Monitoring%20and%20Analytics%20-%20OpenTelemetry): 178
- [Windows 2012+ - OpenTelemetry](./Windows%202012%2B%20-%20OpenTelemetry): 178
- [Windows 2012+ (JSON)](./Windows%202012%2B%20%28JSON%29): 140
- [Windows 7+ - 2008 (Legacy)](./Windows%207%2B%20-%202008%20%28Legacy%29): 61
- [Windows Performance](./Windows%20Performance): 47
- [Workday](./Workday): 110
- [Zoom](./Zoom): 86
- [Zscaler Internet Access](./Zscaler%20Internet%20Access): 122
- [Zscaler Private Access](./Zscaler%20Private%20Access): 116
- [Zscaler Web Security](./Zscaler%20Web%20Security): 8