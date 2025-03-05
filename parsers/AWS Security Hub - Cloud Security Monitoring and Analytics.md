# Parsers For AWS Security Hub - Cloud Security Monitoring and Analytics

## Parser:
```
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```
### Use Cases:
All Compliance Findings, Compliance Breakdown, Failed Compliance Findings, Failed Compliance Outlier, Last 20 Compliance Findings, Last 20 Failed Compliance Findings, Last 20 Not Available Compliance Findings, Last 20 Passed Compliance Findings, Last 20 Success Compliance Findings, Last 20 Warning Compliance Findings, Not Available Compliance Findings, Not Available Compliance Outlier, Passed Compliance Findings, Passed Compliance Outlier, Success Compliance Findings, Success Compliance Outlier, Warning Compliance Findings, Warning Compliance Outlier



## Parser:
```
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```
### Use Cases:
All Compliance Findings, All Security Findings, Compliance Breakdown, Critical Severity Findings, Critical Severity Findings Outlier, Failed Compliance Findings, Failed Compliance Outlier, Findings by Severity, High Severity Findings, High Severity Findings Outlier, Last 20 Compliance Findings, Last 20 Critical Severity Findings, Last 20 Failed Compliance Findings, Last 20 Findings, Last 20 High Severity Findings, Last 20 Low Severity Findings, Last 20 Medium Severity Findings, Last 20 Not Available Compliance Findings, Last 20 Passed Compliance Findings, Last 20 Success Compliance Findings, Last 20 Warning Compliance Findings, Low Severity Findings, Low Severity Findings Outlier, Medium Severity Findings, Medium Severity Findings Outlier, Not Available Compliance Findings, Not Available Compliance Outlier, Passed Compliance Findings, Passed Compliance Outlier, Success Compliance Findings, Success Compliance Outlier, Warning Compliance Findings, Warning Compliance Outlier



## Parser:
```
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
| parse regex field=product_arn ":(?<sechub_region>[a-z]*-[a-z]*-\d{1}):"
| parse regex field=finding_types "\"(?<finding_type>.*?)\"" multi
| parse regex field=resources "\"Type\":\"(?<resource_type>.*?)\"" multi
| parse regex field=resources "\"Id\":\"(?<resource_id>.*?)\"" multi
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
```
### Use Cases:
All Compliance Findings, Compliance Breakdown, Failed Compliance Findings, Failed Compliance Outlier, Last 20 Compliance Findings, Last 20 Failed Compliance Findings, Last 20 Not Available Compliance Findings, Last 20 Success Compliance Findings, Last 20 Warning Compliance Findings, Not Available Compliance Findings, Not Available Compliance Outlier, Passed Compliance Findings, Passed Compliance Outlier, Success Compliance Findings, Success Compliance Outlier, Warning Compliance Findings, Warning Compliance Outlier


