# Parsers For Amazon Inspector

**Amazon Inspector/Overview/All Security Findings**
```
_sourceCategory={{SecurityHubFindingsDataSource}}   
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**Amazon Inspector/Overview/Critical Severity Findings**
```
_sourceCategory={{SecurityHubFindingsDataSource}}   
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**Amazon Inspector/Overview/Critical Severity Findings Outlier**
```
_sourceCategory={{SecurityHubFindingsDataSource}}   
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**Amazon Inspector/Overview/Findings by Severity**
```
_sourceCategory={{SecurityHubFindingsDataSource}}   
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**Amazon Inspector/Overview/High Severity Findings**
```
_sourceCategory={{SecurityHubFindingsDataSource}}   
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**Amazon Inspector/Overview/High Severity Findings Outlier**
```
_sourceCategory={{SecurityHubFindingsDataSource}}   
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**Amazon Inspector/Overview/Last 20 Critical Severity Findings**
```
_sourceCategory={{SecurityHubFindingsDataSource}}   
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**Amazon Inspector/Overview/Last 20 Findings**
```
_sourceCategory={{SecurityHubFindingsDataSource}}   
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**Amazon Inspector/Overview/Last 20 High Severity Findings**
```
_sourceCategory={{SecurityHubFindingsDataSource}}   
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**Amazon Inspector/Overview/Last 20 Low Severity Findings**
```
_sourceCategory={{SecurityHubFindingsDataSource}}   
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**Amazon Inspector/Overview/Last 20 Medium Severity Findings**
```
_sourceCategory={{SecurityHubFindingsDataSource}}   
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**Amazon Inspector/Overview/Low Severity Findings**
```
_sourceCategory={{SecurityHubFindingsDataSource}}   
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**Amazon Inspector/Overview/Low Severity Findings Outlier**
```
_sourceCategory={{SecurityHubFindingsDataSource}}   
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**Amazon Inspector/Overview/Medium Severity Findings**
```
_sourceCategory={{SecurityHubFindingsDataSource}}   
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**Amazon Inspector/Overview/Medium Severity Findings Outlier**
```
_sourceCategory={{SecurityHubFindingsDataSource}}   
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```


