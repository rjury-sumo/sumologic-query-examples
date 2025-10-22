# Parsers For AWS Security Hub - Cloud Security Monitoring and Analytics

**AWS Security Hub - Cloud Security Monitoring and Analytics/AWS Security Hub - Security Analytics - Compliance/All Compliance Findings**
```
_sourceCategory = Labs/AWS/SecurityHub 
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| where compliance_status matches "{{compliance_status}}"
|topk(1, updated_at) by finding_id
| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**AWS Security Hub - Cloud Security Monitoring and Analytics/AWS Security Hub - Security Analytics - Compliance/Compliance Breakdown**
```
_sourceCategory = Labs/AWS/SecurityHub AND !(isBlank(compliance_status))
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| where compliance_status matches "{{compliance_status}}"
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
| if (severity_normalized == 0, "Informational", "Others") as severity_bucket
| if (severity_normalized <= 39, "Low", severity_bucket) as severity_bucket
| if ((severity_normalized <= 69) and (severity_normalized >= 40), "Medium", severity_bucket) as severity_bucket
| if ((severity_normalized <= 89) and (severity_normalized >= 70), "High", severity_bucket) as severity_bucket
| if (severity_normalized <= 100 and severity_normalized >= 90, "Critical", severity_bucket) as severity_bucket
|topk(1, updated_at) by finding_id
| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**AWS Security Hub - Cloud Security Monitoring and Analytics/AWS Security Hub - Security Analytics - Compliance/Failed Compliance Findings**
```
_sourceCategory = Labs/AWS/SecurityHub 
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| where compliance_status matches "{{compliance_status}}"|topk(1, updated_at) by finding_id
| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**AWS Security Hub - Cloud Security Monitoring and Analytics/AWS Security Hub - Security Analytics - Compliance/Failed Compliance Outlier**
```
_sourceCategory = Labs/AWS/SecurityHub compliance_status = "FAILED"
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| where compliance_status matches "{{compliance_status}}"
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
| if (severity_normalized == 0, "Informational", "Others") as severity_bucket
| if (severity_normalized <= 39, "Low", severity_bucket) as severity_bucket
| if ((severity_normalized <= 69) and (severity_normalized >= 40), "Medium", severity_bucket) as severity_bucket
| if ((severity_normalized <= 89) and (severity_normalized >= 70), "High", severity_bucket) as severity_bucket
| if (severity_normalized <= 100 and severity_normalized >= 90, "Critical", severity_bucket) as severity_bucket
|topk(1, updated_at) by finding_id
| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**AWS Security Hub - Cloud Security Monitoring and Analytics/AWS Security Hub - Security Analytics - Compliance/Last 20 Compliance Findings**
```
_sourceCategory = Labs/AWS/SecurityHub 
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| where compliance_status matches "{{compliance_status}}"
|topk(1, updated_at) by finding_id
| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**AWS Security Hub - Cloud Security Monitoring and Analytics/AWS Security Hub - Security Analytics - Compliance/Last 20 Failed Compliance Findings**
```
_sourceCategory = Labs/AWS/SecurityHub 
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| where compliance_status matches "{{compliance_status}}"|topk(1, updated_at) by finding_id
| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**AWS Security Hub - Cloud Security Monitoring and Analytics/AWS Security Hub - Security Analytics - Compliance/Last 20 Not Available Compliance Findings**
```
_sourceCategory = Labs/AWS/SecurityHub 
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| where compliance_status matches "{{compliance_status}}"
|topk(1, updated_at) by finding_id
| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**AWS Security Hub - Cloud Security Monitoring and Analytics/AWS Security Hub - Security Analytics - Compliance/Last 20 Passed Compliance Findings**
```
_sourceCategory = Labs/AWS/SecurityHub 
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| where compliance_status matches "{{compliance_status}}"
|topk(1, updated_at) by finding_id
| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**AWS Security Hub - Cloud Security Monitoring and Analytics/AWS Security Hub - Security Analytics - Compliance/Last 20 Success Compliance Findings**
```
_sourceCategory = Labs/AWS/SecurityHub 
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| where compliance_status matches "{{compliance_status}}"
|topk(1, updated_at) by finding_id
| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**AWS Security Hub - Cloud Security Monitoring and Analytics/AWS Security Hub - Security Analytics - Compliance/Last 20 Warning Compliance Findings**
```
_sourceCategory = Labs/AWS/SecurityHub 
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| where compliance_status matches "{{compliance_status}}"
|topk(1, updated_at) by finding_id
| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**AWS Security Hub - Cloud Security Monitoring and Analytics/AWS Security Hub - Security Analytics - Compliance/Not Available Compliance Findings**
```
_sourceCategory = Labs/AWS/SecurityHub 
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| where compliance_status matches "{{compliance_status}}"
|topk(1, updated_at) by finding_id
| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**AWS Security Hub - Cloud Security Monitoring and Analytics/AWS Security Hub - Security Analytics - Compliance/Not Available Compliance Outlier**
```
_sourceCategory = Labs/AWS/SecurityHub compliance_status = "NOT_AVAILABLE"
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
| if (severity_normalized == 0, "Informational", "Others") as severity_bucket
| if (severity_normalized <= 39, "Low", severity_bucket) as severity_bucket
| if ((severity_normalized <= 69) and (severity_normalized >= 40), "Medium", severity_bucket) as severity_bucket
| if ((severity_normalized <= 89) and (severity_normalized >= 70), "High", severity_bucket) as severity_bucket
| if (severity_normalized <= 100 and severity_normalized >= 90, "Critical", severity_bucket) as severity_bucket
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| where compliance_status matches "{{compliance_status}}"
|topk(1, updated_at) by finding_id
| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**AWS Security Hub - Cloud Security Monitoring and Analytics/AWS Security Hub - Security Analytics - Compliance/Passed Compliance Findings**
```
_sourceCategory = Labs/AWS/SecurityHub 
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| where compliance_status matches "{{compliance_status}}"
|topk(1, updated_at) by finding_id
| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**AWS Security Hub - Cloud Security Monitoring and Analytics/AWS Security Hub - Security Analytics - Compliance/Passed Compliance Outlier**
```
_sourceCategory = Labs/AWS/SecurityHub compliance_status = "PASSED"
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
| if (severity_normalized == 0, "Informational", "Others") as severity_bucket
| if (severity_normalized <= 39, "Low", severity_bucket) as severity_bucket
| if ((severity_normalized <= 69) and (severity_normalized >= 40), "Medium", severity_bucket) as severity_bucket
| if ((severity_normalized <= 89) and (severity_normalized >= 70), "High", severity_bucket) as severity_bucket
| if (severity_normalized <= 100 and severity_normalized >= 90, "Critical", severity_bucket) as severity_bucket
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| where compliance_status matches "{{compliance_status}}"
|topk(1, updated_at) by finding_id
| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**AWS Security Hub - Cloud Security Monitoring and Analytics/AWS Security Hub - Security Analytics - Compliance/Success Compliance Findings**
```
_sourceCategory = Labs/AWS/SecurityHub 
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| where compliance_status matches "{{compliance_status}}"
|topk(1, updated_at) by finding_id
| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**AWS Security Hub - Cloud Security Monitoring and Analytics/AWS Security Hub - Security Analytics - Compliance/Success Compliance Outlier**
```
_sourceCategory = Labs/AWS/SecurityHub compliance_status = "SUCCESS"
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| where compliance_status matches "{{compliance_status}}"
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
| if (severity_normalized == 0, "Informational", "Others") as severity_bucket
| if (severity_normalized <= 39, "Low", severity_bucket) as severity_bucket
| if ((severity_normalized <= 69) and (severity_normalized >= 40), "Medium", severity_bucket) as severity_bucket
| if ((severity_normalized <= 89) and (severity_normalized >= 70), "High", severity_bucket) as severity_bucket
| if (severity_normalized <= 100 and severity_normalized >= 90, "Critical", severity_bucket) as severity_bucket
|topk(1, updated_at) by finding_id

| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**AWS Security Hub - Cloud Security Monitoring and Analytics/AWS Security Hub - Security Analytics - Compliance/Warning Compliance Findings**
```
_sourceCategory = Labs/AWS/SecurityHub 
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| where compliance_status matches "{{compliance_status}}"
|topk(1, updated_at) by finding_id
| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**AWS Security Hub - Cloud Security Monitoring and Analytics/AWS Security Hub - Security Analytics - Compliance/Warning Compliance Outlier**
```
_sourceCategory = Labs/AWS/SecurityHub compliance_status = "WARNING"
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| where compliance_status matches "{{compliance_status}}"
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
| if (severity_normalized == 0, "Informational", "Others") as severity_bucket
| if (severity_normalized <= 39, "Low", severity_bucket) as severity_bucket
| if ((severity_normalized <= 69) and (severity_normalized >= 40), "Medium", severity_bucket) as severity_bucket
| if ((severity_normalized <= 89) and (severity_normalized >= 70), "High", severity_bucket) as severity_bucket
| if (severity_normalized <= 100 and severity_normalized >= 90, "Critical", severity_bucket) as severity_bucket
|where title matches "*"
|topk(1, updated_at) by finding_id
| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**AWS Security Hub - Cloud Security Monitoring and Analytics/AWS Security Hub - Security Monitoring - Overview/All Security Findings**
```
_sourceCategory = Labs/AWS/SecurityHub 
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**AWS Security Hub - Cloud Security Monitoring and Analytics/AWS Security Hub - Security Monitoring - Overview/Critical Severity Findings**
```
_sourceCategory = Labs/AWS/SecurityHub 
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**AWS Security Hub - Cloud Security Monitoring and Analytics/AWS Security Hub - Security Monitoring - Overview/Critical Severity Findings Outlier**
```
_sourceCategory = Labs/AWS/SecurityHub 
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**AWS Security Hub - Cloud Security Monitoring and Analytics/AWS Security Hub - Security Monitoring - Overview/Findings by Severity**
```
_sourceCategory = Labs/AWS/SecurityHub 
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**AWS Security Hub - Cloud Security Monitoring and Analytics/AWS Security Hub - Security Monitoring - Overview/High Severity Findings**
```
_sourceCategory = Labs/AWS/SecurityHub 
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**AWS Security Hub - Cloud Security Monitoring and Analytics/AWS Security Hub - Security Monitoring - Overview/High Severity Findings Outlier**
```
_sourceCategory = Labs/AWS/SecurityHub 
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**AWS Security Hub - Cloud Security Monitoring and Analytics/AWS Security Hub - Security Monitoring - Overview/Last 20 Critical Severity Findings**
```
_sourceCategory = Labs/AWS/SecurityHub 
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**AWS Security Hub - Cloud Security Monitoring and Analytics/AWS Security Hub - Security Monitoring - Overview/Last 20 Findings**
```
_sourceCategory = Labs/AWS/SecurityHub 
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**AWS Security Hub - Cloud Security Monitoring and Analytics/AWS Security Hub - Security Monitoring - Overview/Last 20 High Severity Findings**
```
_sourceCategory = Labs/AWS/SecurityHub 
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**AWS Security Hub - Cloud Security Monitoring and Analytics/AWS Security Hub - Security Monitoring - Overview/Last 20 Low Severity Findings**
```
_sourceCategory = Labs/AWS/SecurityHub 
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**AWS Security Hub - Cloud Security Monitoring and Analytics/AWS Security Hub - Security Monitoring - Overview/Last 20 Medium Severity Findings**
```
_sourceCategory = Labs/AWS/SecurityHub 
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**AWS Security Hub - Cloud Security Monitoring and Analytics/AWS Security Hub - Security Monitoring - Overview/Low Severity Findings**
```
_sourceCategory = Labs/AWS/SecurityHub 
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**AWS Security Hub - Cloud Security Monitoring and Analytics/AWS Security Hub - Security Monitoring - Overview/Low Severity Findings Outlier**
```
_sourceCategory = Labs/AWS/SecurityHub 
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**AWS Security Hub - Cloud Security Monitoring and Analytics/AWS Security Hub - Security Monitoring - Overview/Medium Severity Findings**
```
_sourceCategory = Labs/AWS/SecurityHub 
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```

**AWS Security Hub - Cloud Security Monitoring and Analytics/AWS Security Hub - Security Monitoring - Overview/Medium Severity Findings Outlier**
```
_sourceCategory = Labs/AWS/SecurityHub 
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| where aws_account_id matches "{{aws_account_id}}"
| where finding_id matches "{{finding_id}}"
| where finding_types matches "{{finding_types}}"
| where severity_normalized matches "{{severity_normalized}}"
| where title matches "{{title}}"
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```


