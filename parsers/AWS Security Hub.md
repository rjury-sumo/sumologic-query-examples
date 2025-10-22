# Parsers For AWS Security Hub

| use_case | parser |
|--- | --- |
| AWS Security Hub/Provider Status by Most Recent Finding/Provider Status by Most Recent Finding | _sourceCategory = Labs/AWS/SecurityHub <br>\| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", <br>"Types", "Title" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, finding_types, title<br>\| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi<br>\| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi<br>\| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi |

