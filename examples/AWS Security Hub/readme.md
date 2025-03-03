# AWS Security Hub
## Sumo Logic App For: AWS Security Hub
AWS Security Hub is an AWS security service that provides a comprehensive view of your security state within AWS and your compliance with the security industry standards and best practices.The Sumo Logic App for AWS Security Hub leverages findings data from Security Hub and visually displays the data in Dashboards. The dashboards provide a high-level view of findings, showing the type, when they occurred, the resources that were affected, their severity, and their distribution, showing the current security and compliance status of an aws account from all sources.
Docs Link: [AWS Security Hub](https://help.sumologic.com/?cid=1958)

## Searches

### Log Searches

- **Provider Status by Most Recent Finding**: from Search: AWS Security Hub/Provider Status by Most Recent Finding

### Metric Searches


## Search Table

|app\_topic|search\_name|type|origin|search|
|:--|:--|:--|:--|:--|
|AWS Security Hub|Provider Status by Most Recent Finding|Logs|AWS Security Hub/Provider Status by Most Recent Finding|\_sourceCategory = Labs/AWS/SecurityHub <br />\| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", <br />"Types", "Title" as aws\_account\_id, finding\_id, generator\_id, product\_arn, created\_at, updated\_at, resources, severity\_normalized, sourceurl, finding\_types, title<br />\| parse regex field=finding\_types "\\"(?\<finding\_type\>.\*?)\\"" multi<br />\| parse regex field=resources "\\"Type\\":\\"(?\<resource\_type\>.\*?)\\"" multi<br />\| parse regex field=resources "\\"Id\\":\\"(?\<resource\_id\>.\*?)\\"" multi<br />\| withtime updated\_at \| most\_recent(updated\_at\_withtime) by product\_arn<br />\| sort by \_mostrecent|

