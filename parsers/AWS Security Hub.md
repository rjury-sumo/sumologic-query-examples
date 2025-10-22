# Parsers For AWS Security Hub

**AWS Security Hub/Provider Status by Most Recent Finding/Provider Status by Most Recent Finding**
```
_sourceCategory = Labs/AWS/SecurityHub 
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", 
"Types", "Title" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, finding_types, title
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
```


