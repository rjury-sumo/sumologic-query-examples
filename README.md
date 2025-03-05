# sumologic-query-examples
A collection of over 20,000 example Sumo Logic search queries using exports of Sumo Logic apps from Demo orgs using a scripted export by Sumo Logic TAE team.

This export includes two datasets:
1. an export from a Sumo Logic legacy demo app covering about 10 years of 'legacy' sumo apps
2. an export of 'Installed Apps' - the new 'v2' apps from a new Sumo Logic Demo org

Given that searches existed in a similar format in old and new apps you will often find duplicates within a specific file / topic with multiple origin path names.

## Search Examples folder By App Name
Extracted seaches from each exported app's dashbaords and saved searches are exported in md format to the ./examples folder with one md file per high level app name.

Some of the exported searches come from 'saved searches' items in the app folder but most come from panels in dashboards. 

In each app md file you can see:
- a description and app link if it could be automaticaly matched to a Sumo Logic apps page
- a list of all searches found
- a markdown table of each search with details such as search type and origionating file

### final_searches_db.json
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
## Parsers Index
There are two parsers information files exported from the db file (see script: extract_parsers.ps1)

- [parsers.json](./parsers.json): is a json format export of all parsers
- [parsers.md](./parsers.md): is a md file format showing all parsers found.

## Search Topic Index With Search Count
- [1Password](../../tree/main/examples/1Password): 70
- [Abnormal Security](../../tree/main/examples/Abnormal%20Security): 23
- [Acquia](../../tree/main/examples/Acquia): 174
- [Active Directory 2012+ - OpenTelemetry](../../tree/main/examples/Active%20Directory%202012%2B%20-%20OpenTelemetry): 15
- [Active Directory 2012+ (JSON)](../../tree/main/examples/Active%20Directory%202012%2B%20%28JSON%29): 62
- [Active Directory JSON](../../tree/main/examples/Active%20Directory%20JSON): 31
- [Active Directory Legacy](../../tree/main/examples/Active%20Directory%20Legacy): 26
- [ActiveMQ](../../tree/main/examples/ActiveMQ): 60
- [ActiveMQ - OpenTelemetry](../../tree/main/examples/ActiveMQ%20-%20OpenTelemetry): 55
- [Airtable](../../tree/main/examples/Airtable): 11
- [Akamai Cloud Monitor](../../tree/main/examples/Akamai%20Cloud%20Monitor): 42
- [Akamai DataStream](../../tree/main/examples/Akamai%20DataStream): 31
- [Akamai Security Events](../../tree/main/examples/Akamai%20Security%20Events): 56
- [Alert Logic](../../tree/main/examples/Alert%20Logic): 11
- [Alex Amazon VPC Flow](../../tree/main/examples/Alex%20Amazon%20VPC%20Flow): 107
- [Amazon CloudFront](../../tree/main/examples/Amazon%20CloudFront): 50
- [Amazon CloudTrail - Cloud Security Monitoring and Analytics](../../tree/main/examples/Amazon%20CloudTrail%20-%20Cloud%20Security%20Monitoring%20and%20Analytics): 102
- [Amazon EKS - Control Plane](../../tree/main/examples/Amazon%20EKS%20-%20Control%20Plane): 32
- [Amazon GuardDuty - Cloud Security Monitoring and Analytics](../../tree/main/examples/Amazon%20GuardDuty%20-%20Cloud%20Security%20Monitoring%20and%20Analytics): 15
- [Amazon Inspector](../../tree/main/examples/Amazon%20Inspector): 30
- [Amazon Inspector Classic](../../tree/main/examples/Amazon%20Inspector%20Classic): 14
- [Amazon Kinesis - Streams](../../tree/main/examples/Amazon%20Kinesis%20-%20Streams): 18
- [Amazon Redshift ULM](../../tree/main/examples/Amazon%20Redshift%20ULM): 129
- [Amazon Route 53 Resolver Security](../../tree/main/examples/Amazon%20Route%2053%20Resolver%20Security): 58
- [Amazon S3 Audit](../../tree/main/examples/Amazon%20S3%20Audit): 34
- [Amazon SES](../../tree/main/examples/Amazon%20SES): 54
- [Amazon SNS](../../tree/main/examples/Amazon%20SNS): 22
- [Amazon SQS](../../tree/main/examples/Amazon%20SQS): 37
- [Amazon VPC Flow - Cloud Security Monitoring and Analytics](../../tree/main/examples/Amazon%20VPC%20Flow%20-%20Cloud%20Security%20Monitoring%20and%20Analytics): 49
- [Apache](../../tree/main/examples/Apache): 114
- [Apache - OpenTelemetry](../../tree/main/examples/Apache%20-%20OpenTelemetry): 92
- [Apache Tomcat](../../tree/main/examples/Apache%20Tomcat): 102
- [Apache Tomcat - OpenTelemetry](../../tree/main/examples/Apache%20Tomcat%20-%20OpenTelemetry): 72
- [Aqua Security](../../tree/main/examples/Aqua%20Security): 36
- [ARIA Packet Intelligence](../../tree/main/examples/ARIA%20Packet%20Intelligence): 16
- [Armis](../../tree/main/examples/Armis): 34
- [Artifactory 7](../../tree/main/examples/Artifactory%207): 58
- [Artifactory 7 - OpenTelemetry](../../tree/main/examples/Artifactory%207%20-%20OpenTelemetry): 58
- [Asana](../../tree/main/examples/Asana): 14
- [Atlassian](../../tree/main/examples/Atlassian): 20
- [Audit](../../tree/main/examples/Audit): 78
- [Aurora PostgreSQL ULM](../../tree/main/examples/Aurora%20PostgreSQL%20ULM): 32
- [AWS CloudTrail](../../tree/main/examples/AWS%20CloudTrail): 21
- [AWS Config](../../tree/main/examples/AWS%20Config): 6
- [AWS Cost Explorer](../../tree/main/examples/AWS%20Cost%20Explorer): 31
- [AWS DynamoDB](../../tree/main/examples/AWS%20DynamoDB): 11
- [AWS EKS - Control Plane](../../tree/main/examples/AWS%20EKS%20-%20Control%20Plane): 31
- [AWS Elastic Load Balancer - Application](../../tree/main/examples/AWS%20Elastic%20Load%20Balancer%20-%20Application): 42
- [AWS Elastic Load Balancing Metrics](../../tree/main/examples/AWS%20Elastic%20Load%20Balancing%20Metrics): 6
- [AWS GuardDuty](../../tree/main/examples/AWS%20GuardDuty): 8
- [AWS GuardDuty Benchmark](../../tree/main/examples/AWS%20GuardDuty%20Benchmark): 1
- [AWS Kinesis - Streams](../../tree/main/examples/AWS%20Kinesis%20-%20Streams): 10
- [AWS Lambda](../../tree/main/examples/AWS%20Lambda): 18
- [AWS Lambda ULM](../../tree/main/examples/AWS%20Lambda%20ULM): 11
- [AWS Network Firewall](../../tree/main/examples/AWS%20Network%20Firewall): 16
- [AWS Security Hub](../../tree/main/examples/AWS%20Security%20Hub): 1
- [AWS Security Hub - Cloud Security Monitoring and Analytics](../../tree/main/examples/AWS%20Security%20Hub%20-%20Cloud%20Security%20Monitoring%20and%20Analytics): 33
- [AWS SES](../../tree/main/examples/AWS%20SES): 12
- [AWS VPC Flow Logs](../../tree/main/examples/AWS%20VPC%20Flow%20Logs): 44
- [AWS WAF](../../tree/main/examples/AWS%20WAF): 32
- [AWS WAF - Cloud Security Monitoring and Analytics](../../tree/main/examples/AWS%20WAF%20-%20Cloud%20Security%20Monitoring%20and%20Analytics): 30
- [Azure Active Directory](../../tree/main/examples/Azure%20Active%20Directory): 95
- [Azure API Management](../../tree/main/examples/Azure%20API%20Management): 68
- [Azure App Service Environment](../../tree/main/examples/Azure%20App%20Service%20Environment): 18
- [Azure App Service Plan](../../tree/main/examples/Azure%20App%20Service%20Plan): 31
- [Azure Application Gateway](../../tree/main/examples/Azure%20Application%20Gateway): 158
- [Azure Audit](../../tree/main/examples/Azure%20Audit): 43
- [Azure Cache for Redis](../../tree/main/examples/Azure%20Cache%20for%20Redis): 75
- [Azure Cosmos DB](../../tree/main/examples/Azure%20Cosmos%20DB): 60
- [Azure Cosmos DB for PostgreSQL](../../tree/main/examples/Azure%20Cosmos%20DB%20for%20PostgreSQL): 60
- [Azure Database for MySQL](../../tree/main/examples/Azure%20Database%20for%20MySQL): 86
- [Azure Database for PostgreSQL](../../tree/main/examples/Azure%20Database%20for%20PostgreSQL): 154
- [Azure Event Grid](../../tree/main/examples/Azure%20Event%20Grid): 40
- [Azure Functions](../../tree/main/examples/Azure%20Functions): 166
- [Azure Kubernetes Service (AKS) - Control Plane](../../tree/main/examples/Azure%20Kubernetes%20Service%20%28AKS%29%20-%20Control%20Plane): 44
- [Azure Load Balancer](../../tree/main/examples/Azure%20Load%20Balancer): 28
- [Azure Network Watcher](../../tree/main/examples/Azure%20Network%20Watcher): 23
- [Azure Service Bus](../../tree/main/examples/Azure%20Service%20Bus): 70
- [Azure SQL](../../tree/main/examples/Azure%20SQL): 221
- [Azure Storage](../../tree/main/examples/Azure%20Storage): 109
- [Azure Web Apps](../../tree/main/examples/Azure%20Web%20Apps): 153
- [Barracuda CloudGen Firewall](../../tree/main/examples/Barracuda%20CloudGen%20Firewall): 9
- [Barracuda WAF](../../tree/main/examples/Barracuda%20WAF): 97
- [BitBucket](../../tree/main/examples/BitBucket): 56
- [Box](../../tree/main/examples/Box): 20
- [Carbon Black](../../tree/main/examples/Carbon%20Black): 141
- [Carbon Black Cloud](../../tree/main/examples/Carbon%20Black%20Cloud): 156
- [Cassandra](../../tree/main/examples/Cassandra): 144
- [Cassandra - OpenTelemetry](../../tree/main/examples/Cassandra%20-%20OpenTelemetry): 114
- [Cato Networks](../../tree/main/examples/Cato%20Networks): 28
- [CircleCI](../../tree/main/examples/CircleCI): 11
- [CIS AWS Foundations Benchmark](../../tree/main/examples/CIS%20AWS%20Foundations%20Benchmark): 21
- [Cisco ASA](../../tree/main/examples/Cisco%20ASA): 59
- [Cisco Meraki](../../tree/main/examples/Cisco%20Meraki): 193
- [Cisco Meraki - C2C](../../tree/main/examples/Cisco%20Meraki%20-%20C2C): 36
- [Cisco Umbrella](../../tree/main/examples/Cisco%20Umbrella): 66
- [Citrix Cloud](../../tree/main/examples/Citrix%20Cloud): 20
- [Cloud Infrastructure Security for AWS](../../tree/main/examples/Cloud%20Infrastructure%20Security%20for%20AWS): 102
- [Cloud Infrastructure Security for AWS ](../../tree/main/examples/Cloud%20Infrastructure%20Security%20for%20AWS%20): 104
- [Cloud Infrastructure Security for AWS 2024-03-13  - DEMO  V1.0.1](../../tree/main/examples/Cloud%20Infrastructure%20Security%20for%20AWS%202024-03-13%20%20-%20DEMO%20%20V1.0.1): 105
- [Cloudflare](../../tree/main/examples/Cloudflare): 223
- [CloudPassage Halo](../../tree/main/examples/CloudPassage%20Halo): 20
- [Couchbase](../../tree/main/examples/Couchbase): 87
- [Couchbase - OpenTelemetry](../../tree/main/examples/Couchbase%20-%20OpenTelemetry): 27
- [CrowdStrike - Falcon Endpoint Protection](../../tree/main/examples/CrowdStrike%20-%20Falcon%20Endpoint%20Protection): 60
- [CrowdStrike - Falcon Platform](../../tree/main/examples/CrowdStrike%20-%20Falcon%20Platform): 44
- [CrowdStrike - Falcon V2](../../tree/main/examples/CrowdStrike%20-%20Falcon%20V2): 48
- [CrowdStrike FDR Host Inventory](../../tree/main/examples/CrowdStrike%20FDR%20Host%20Inventory): 12
- [Cylance](../../tree/main/examples/Cylance): 121
- [Cyral](../../tree/main/examples/Cyral): 55
- [Data Volume](../../tree/main/examples/Data%20Volume): 168
- [Data Volume (Legacy)](../../tree/main/examples/Data%20Volume%20%28Legacy%29): 35
- [Docker](../../tree/main/examples/Docker): 27
- [Docker - OpenTelemetry](../../tree/main/examples/Docker%20-%20OpenTelemetry): 32
- [Docker ULM](../../tree/main/examples/Docker%20ULM): 36
- [DocuSign](../../tree/main/examples/DocuSign): 33
- [Dropbox](../../tree/main/examples/Dropbox): 29
- [Druva](../../tree/main/examples/Druva): 22
- [Druva Cyber Resilience](../../tree/main/examples/Druva%20Cyber%20Resilience): 42
- [Duo Security](../../tree/main/examples/Duo%20Security): 78
- [Elasticsearch](../../tree/main/examples/Elasticsearch): 139
- [Elasticsearch - OpenTelemetry](../../tree/main/examples/Elasticsearch%20-%20OpenTelemetry): 276
- [Endace](../../tree/main/examples/Endace): 25
- [Enterprise Audit - Cloud SIEM](../../tree/main/examples/Enterprise%20Audit%20-%20Cloud%20SIEM): 676
- [Enterprise Audit - Collector & Data Forwarding Management](../../tree/main/examples/Enterprise%20Audit%20-%20Collector%20%26%20Data%20Forwarding%20Management): 89
- [Enterprise Audit - Content Management](../../tree/main/examples/Enterprise%20Audit%20-%20Content%20Management): 126
- [Enterprise Audit - Security Management](../../tree/main/examples/Enterprise%20Audit%20-%20Security%20Management): 36
- [Enterprise Audit - User & Role Management](../../tree/main/examples/Enterprise%20Audit%20-%20User%20%26%20Role%20Management): 76
- [Enterprise Search Audit](../../tree/main/examples/Enterprise%20Search%20Audit): 104
- [Evident.io ESP](../../tree/main/examples/Evident.io%20ESP): 12
- [F5 - BIG-IP - LTM](../../tree/main/examples/F5%20-%20BIG-IP%20-%20LTM): 35
- [Fastly](../../tree/main/examples/Fastly): 132
- [Flex](../../tree/main/examples/Flex): 134
- [G Suite](../../tree/main/examples/G%20Suite): 51
- [GitHub](../../tree/main/examples/GitHub): 22
- [Gitlab](../../tree/main/examples/Gitlab): 112
- [Global Intelligence for Amazon GuardDuty](../../tree/main/examples/Global%20Intelligence%20for%20Amazon%20GuardDuty): 5
- [Global Intelligence for Apache](../../tree/main/examples/Global%20Intelligence%20for%20Apache): 44
- [Global Intelligence for Apache Tomcat](../../tree/main/examples/Global%20Intelligence%20for%20Apache%20Tomcat): 36
- [Global Intelligence for AWS CloudTrail](../../tree/main/examples/Global%20Intelligence%20for%20AWS%20CloudTrail): 45
- [Global Intelligence for CloudTrail DevOps](../../tree/main/examples/Global%20Intelligence%20for%20CloudTrail%20DevOps): 30
- [Google App Engine](../../tree/main/examples/Google%20App%20Engine): 28
- [Google BigQuery](../../tree/main/examples/Google%20BigQuery): 92
- [Google Cloud Audit](../../tree/main/examples/Google%20Cloud%20Audit): 36
- [Google Cloud Compute Engine](../../tree/main/examples/Google%20Cloud%20Compute%20Engine): 89
- [Google Cloud Firewall](../../tree/main/examples/Google%20Cloud%20Firewall): 46
- [Google Cloud Functions](../../tree/main/examples/Google%20Cloud%20Functions): 36
- [Google Cloud IAM](../../tree/main/examples/Google%20Cloud%20IAM): 19
- [Google Cloud Load Balancing](../../tree/main/examples/Google%20Cloud%20Load%20Balancing): 22
- [Google Cloud SQL](../../tree/main/examples/Google%20Cloud%20SQL): 91
- [Google Cloud Storage](../../tree/main/examples/Google%20Cloud%20Storage): 27
- [Google Cloud VPC](../../tree/main/examples/Google%20Cloud%20VPC): 47
- [Google Compute Engine](../../tree/main/examples/Google%20Compute%20Engine): 2
- [Google Kubernetes Engine (GKE) - Control Plane](../../tree/main/examples/Google%20Kubernetes%20Engine%20%28GKE%29%20-%20Control%20Plane): 130
- [Google Workspace](../../tree/main/examples/Google%20Workspace): 198
- [HAProxy](../../tree/main/examples/HAProxy): 108
- [HAProxy - OpenTelemetry](../../tree/main/examples/HAProxy%20-%20OpenTelemetry): 129
- [Hasura](../../tree/main/examples/Hasura): 16
- [Heroku](../../tree/main/examples/Heroku): 114
- [Host and Process Metrics](../../tree/main/examples/Host%20and%20Process%20Metrics): 178
- [Host Metrics](../../tree/main/examples/Host%20Metrics): 48
- [IIS 10](../../tree/main/examples/IIS%2010): 243
- [IIS 10 - OpenTelemetry](../../tree/main/examples/IIS%2010%20-%20OpenTelemetry): 85
- [IIS 10 (Legacy)](../../tree/main/examples/IIS%2010%20%28Legacy%29): 15
- [IIS 7](../../tree/main/examples/IIS%207): 22
- [iLert](../../tree/main/examples/iLert): 15
- [Imperva - Incapsula Web Application Firewall](../../tree/main/examples/Imperva%20-%20Incapsula%20Web%20Application%20Firewall): 19
- [Infrequent Data Tier](../../tree/main/examples/Infrequent%20Data%20Tier): 36
- [Istio](../../tree/main/examples/Istio): 130
- [Jenkins](../../tree/main/examples/Jenkins): 226
- [JFrog Xray](../../tree/main/examples/JFrog%20Xray): 106
- [Jira](../../tree/main/examples/Jira): 72
- [Jira - OpenTelemetry](../../tree/main/examples/Jira%20-%20OpenTelemetry): 72
- [Jira Cloud](../../tree/main/examples/Jira%20Cloud): 39
- [JMX](../../tree/main/examples/JMX): 130
- [JMX - OpenTelemetry](../../tree/main/examples/JMX%20-%20OpenTelemetry): 58
- [Kafka](../../tree/main/examples/Kafka): 161
- [Kafka - OpenTelemetry](../../tree/main/examples/Kafka%20-%20OpenTelemetry): 44
- [Kubernetes](../../tree/main/examples/Kubernetes): 302
- [Kubernetes - Control Plane](../../tree/main/examples/Kubernetes%20-%20Control%20Plane): 72
- [Kubernetes - Control Plane >= 1.16](../../tree/main/examples/Kubernetes%20-%20Control%20Plane%20%3E%3D%201.16): 150
- [Kubernetes_Old](../../tree/main/examples/Kubernetes_Old): 302
- [LambdaTest](../../tree/main/examples/LambdaTest): 42
- [Linux](../../tree/main/examples/Linux): 96
- [Linux - Cloud Security Monitoring and Analytics](../../tree/main/examples/Linux%20-%20Cloud%20Security%20Monitoring%20and%20Analytics): 70
- [Linux - Cloud Security Monitoring and Analytics - OpenTelemetry](../../tree/main/examples/Linux%20-%20Cloud%20Security%20Monitoring%20and%20Analytics%20-%20OpenTelemetry): 35
- [Linux - OpenTelemetry](../../tree/main/examples/Linux%20-%20OpenTelemetry): 184
- [Log Analysis QuickStart](../../tree/main/examples/Log%20Analysis%20QuickStart): 30
- [macOS - OpenTelemetry](../../tree/main/examples/macOS%20-%20OpenTelemetry): 70
- [Mailgun](../../tree/main/examples/Mailgun): 30
- [MariaDB](../../tree/main/examples/MariaDB): 120
- [MariaDB - OpenTelemetry](../../tree/main/examples/MariaDB%20-%20OpenTelemetry): 34
- [Memcached](../../tree/main/examples/Memcached): 76
- [Memcached - OpenTelemetry](../../tree/main/examples/Memcached%20-%20OpenTelemetry): 58
- [Microsoft Exchange Trace Logs](../../tree/main/examples/Microsoft%20Exchange%20Trace%20Logs): 18
- [Microsoft Graph Azure AD Reporting](../../tree/main/examples/Microsoft%20Graph%20Azure%20AD%20Reporting): 29
- [Microsoft Graph Identity Protection](../../tree/main/examples/Microsoft%20Graph%20Identity%20Protection): 19
- [Microsoft Graph Security](../../tree/main/examples/Microsoft%20Graph%20Security): 17
- [Microsoft Office 365](../../tree/main/examples/Microsoft%20Office%20365): 259
- [Microsoft Teams](../../tree/main/examples/Microsoft%20Teams): 55
- [Miro](../../tree/main/examples/Miro): 19
- [MongoDB](../../tree/main/examples/MongoDB): 91
- [MongoDB - OpenTelemetry](../../tree/main/examples/MongoDB%20-%20OpenTelemetry): 54
- [MongoDB Atlas 6](../../tree/main/examples/MongoDB%20Atlas%206): 222
- [MySQL](../../tree/main/examples/MySQL): 100
- [MySQL - OpenTelemetry](../../tree/main/examples/MySQL%20-%20OpenTelemetry): 94
- [NeoLoad](../../tree/main/examples/NeoLoad): 21
- [Netlify](../../tree/main/examples/Netlify): 29
- [Netskope](../../tree/main/examples/Netskope): 124
- [Nginx](../../tree/main/examples/Nginx): 78
- [Nginx - OpenTelemetry](../../tree/main/examples/Nginx%20-%20OpenTelemetry): 136
- [Nginx (Legacy)](../../tree/main/examples/Nginx%20%28Legacy%29): 64
- [Nginx Ingress](../../tree/main/examples/Nginx%20Ingress): 86
- [Nginx Plus](../../tree/main/examples/Nginx%20Plus): 171
- [Nginx Plus Ingress](../../tree/main/examples/Nginx%20Plus%20Ingress): 166
- [Observable Networks](../../tree/main/examples/Observable%20Networks): 9
- [Okta](../../tree/main/examples/Okta): 78
- [OneLogin](../../tree/main/examples/OneLogin): 32
- [Opsgenie](../../tree/main/examples/Opsgenie): 30
- [Oracle - OpenTelemetry](../../tree/main/examples/Oracle%20-%20OpenTelemetry): 186
- [Palo Alto Cortex XDR](../../tree/main/examples/Palo%20Alto%20Cortex%20XDR): 19
- [Palo Alto Firewall - Cloud Security Monitoring and Analytics](../../tree/main/examples/Palo%20Alto%20Firewall%20-%20Cloud%20Security%20Monitoring%20and%20Analytics): 111
- [Palo Alto Firewall 10 - Cloud Security Monitoring and Analytics](../../tree/main/examples/Palo%20Alto%20Firewall%2010%20-%20Cloud%20Security%20Monitoring%20and%20Analytics): 222
- [Palo Alto Firewall 9 - Cloud Security Monitoring and Analytics](../../tree/main/examples/Palo%20Alto%20Firewall%209%20-%20Cloud%20Security%20Monitoring%20and%20Analytics): 222
- [Palo Alto Networks 6](../../tree/main/examples/Palo%20Alto%20Networks%206): 2
- [Palo Alto Networks 8](../../tree/main/examples/Palo%20Alto%20Networks%208): 17
- [Palo Alto Networks 9](../../tree/main/examples/Palo%20Alto%20Networks%209): 163
- [PCI Compliance For Amazon VPC Flow](../../tree/main/examples/PCI%20Compliance%20For%20Amazon%20VPC%20Flow): 19
- [PCI Compliance For AWS CloudTrail](../../tree/main/examples/PCI%20Compliance%20For%20AWS%20CloudTrail): 16
- [PCI Compliance For Linux](../../tree/main/examples/PCI%20Compliance%20For%20Linux): 34
- [PCI Compliance for Linux - OpenTelemetry](../../tree/main/examples/PCI%20Compliance%20for%20Linux%20-%20OpenTelemetry): 22
- [PCI Compliance For Palo Alto Networks](../../tree/main/examples/PCI%20Compliance%20For%20Palo%20Alto%20Networks): 15
- [PCI Compliance For Palo Alto Networks 10](../../tree/main/examples/PCI%20Compliance%20For%20Palo%20Alto%20Networks%2010): 28
- [PCI Compliance For Palo Alto Networks 9](../../tree/main/examples/PCI%20Compliance%20For%20Palo%20Alto%20Networks%209): 28
- [PCI Compliance For Windows](../../tree/main/examples/PCI%20Compliance%20For%20Windows): 28
- [PCI Compliance For Windows JSON](../../tree/main/examples/PCI%20Compliance%20For%20Windows%20JSON): 28
- [PCI Compliance For Windows JSON - OpenTelemetry](../../tree/main/examples/PCI%20Compliance%20For%20Windows%20JSON%20-%20OpenTelemetry): 30
- [PostgreSQL - OpenTelemetry](../../tree/main/examples/PostgreSQL%20-%20OpenTelemetry): 66
- [Postman](../../tree/main/examples/Postman): 48
- [Privacy Insights & GDPR](../../tree/main/examples/Privacy%20Insights%20%26%20GDPR): 4
- [Proofpoint On Demand](../../tree/main/examples/Proofpoint%20On%20Demand): 42
- [Proofpoint TAP](../../tree/main/examples/Proofpoint%20TAP): 29
- [Puppet](../../tree/main/examples/Puppet): 24
- [Puppet - OpenTelemetry](../../tree/main/examples/Puppet%20-%20OpenTelemetry): 23
- [Qualys VMDR](../../tree/main/examples/Qualys%20VMDR): 18
- [RabbitMQ](../../tree/main/examples/RabbitMQ): 36
- [RabbitMQ - OpenTelemetry](../../tree/main/examples/RabbitMQ%20-%20OpenTelemetry): 8
- [Rapid7](../../tree/main/examples/Rapid7): 15
- [Redis - OpenTelemetry](../../tree/main/examples/Redis%20-%20OpenTelemetry): 51
- [RUM Dashboards](../../tree/main/examples/RUM%20Dashboards): 251
- [SailPoint](../../tree/main/examples/SailPoint): 40
- [Salesforce](../../tree/main/examples/Salesforce): 54
- [Sauce Labs](../../tree/main/examples/Sauce%20Labs): 13
- [SentinelOne](../../tree/main/examples/SentinelOne): 24
- [Sentry](../../tree/main/examples/Sentry): 24
- [Slack](../../tree/main/examples/Slack): 119
- [Spinnaker](../../tree/main/examples/Spinnaker): 27
- [Split](../../tree/main/examples/Split): 28
- [SQL Server - OpenTelemetry](../../tree/main/examples/SQL%20Server%20-%20OpenTelemetry): 86
- [SQL Server for Linux - OpenTelemetry](../../tree/main/examples/SQL%20Server%20for%20Linux%20-%20OpenTelemetry): 29
- [Squadcast](../../tree/main/examples/Squadcast): 29
- [Squid Proxy](../../tree/main/examples/Squid%20Proxy): 76
- [Squid Proxy - OpenTelemetry](../../tree/main/examples/Squid%20Proxy%20-%20OpenTelemetry): 37
- [StackRox](../../tree/main/examples/StackRox): 72
- [Stripe](../../tree/main/examples/Stripe): 46
- [Symantec Web Security Service](../../tree/main/examples/Symantec%20Web%20Security%20Service): 25
- [Tenable](../../tree/main/examples/Tenable): 14
- [Threat Intel for AWS](../../tree/main/examples/Threat%20Intel%20for%20AWS): 16
- [Threat Intel Quick Analysis](../../tree/main/examples/Threat%20Intel%20Quick%20Analysis): 50
- [Tracing - Application Services Health](../../tree/main/examples/Tracing%20-%20Application%20Services%20Health): 172
- [Trend Micro Deep Security](../../tree/main/examples/Trend%20Micro%20Deep%20Security): 66
- [Twistlock](../../tree/main/examples/Twistlock): 162
- [Twistlock Classic](../../tree/main/examples/Twistlock%20Classic): 81
- [Varnish](../../tree/main/examples/Varnish): 119
- [Varnish - OpenTelemetry](../../tree/main/examples/Varnish%20-%20OpenTelemetry): 45
- [VMware](../../tree/main/examples/VMware): 166
- [VMware ULM](../../tree/main/examples/VMware%20ULM): 6
- [Webex](../../tree/main/examples/Webex): 30
- [Windows](../../tree/main/examples/Windows): 57
- [Windows - Cloud Security Monitoring and Analytics](../../tree/main/examples/Windows%20-%20Cloud%20Security%20Monitoring%20and%20Analytics): 178
- [Windows - Cloud Security Monitoring and Analytics - OpenTelemetry](../../tree/main/examples/Windows%20-%20Cloud%20Security%20Monitoring%20and%20Analytics%20-%20OpenTelemetry): 178
- [Windows 2012+ - OpenTelemetry](../../tree/main/examples/Windows%202012%2B%20-%20OpenTelemetry): 178
- [Windows 2012+ (JSON)](../../tree/main/examples/Windows%202012%2B%20%28JSON%29): 140
- [Windows 7+ - 2008 (Legacy)](../../tree/main/examples/Windows%207%2B%20-%202008%20%28Legacy%29): 61
- [Windows Performance](../../tree/main/examples/Windows%20Performance): 47
- [Workday](../../tree/main/examples/Workday): 110
- [Zoom](../../tree/main/examples/Zoom): 86
- [Zscaler Internet Access](../../tree/main/examples/Zscaler%20Internet%20Access): 122
- [Zscaler Private Access](../../tree/main/examples/Zscaler%20Private%20Access): 116
- [Zscaler Web Security](../../tree/main/examples/Zscaler%20Web%20Security): 8
