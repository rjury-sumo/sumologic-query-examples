# Parsers For Amazon Inspector

## Parser:
```
| json  "AwsAccountId", "Id", "GeneratorId", "ProductArn", "CreatedAt", "UpdatedAt", "Resources", "Severity.Normalized", "SourceUrl", "Title","Types", "Compliance.Status" as aws_account_id, finding_id, generator_id, product_arn, created_at, updated_at, resources, severity_normalized, sourceurl, title, finding_types, compliance_status nodrop
| parse regex field=product_arn "product/(?<finding_provider>.*?)$"
 
```
### Use Cases:
All Security Findings, Critical Severity Findings, Critical Severity Findings Outlier, Findings by Severity, High Severity Findings, High Severity Findings Outlier, Last 20 Critical Severity Findings, Last 20 Findings, Last 20 High Severity Findings, Last 20 Low Severity Findings, Last 20 Medium Severity Findings, Low Severity Findings, Low Severity Findings Outlier, Medium Severity Findings, Medium Severity Findings Outlier


