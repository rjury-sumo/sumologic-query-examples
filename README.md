# sumologic-query-examples
A collection of example Sumo Logic search queries using exports of Sumo Logic apps from Demo orgs using a scripted export by Sumo Logic TAE team.

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

