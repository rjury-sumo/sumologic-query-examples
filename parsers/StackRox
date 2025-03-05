# Parsers For StackRox

## Parser:
```
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace
```
### Use Cases:
Anomalous Process Executions, Anomalous Process Executions by Cluster, Anomalous Process Executions by Deployment, Bad Image Components, Clusters with Violations, CVEs, CVEs by Cluster, CVEs by Severity, CVEs Over Time, Deploy Time Violations, Deployments Using Latest Tag, Deployments with Kubernetes Violations, Deployments with Violations, Kubernetes Best Practices Violations, Kubernetes Violations by Namespace, Kubernetes Violations by Severity, Malicious Process Executions, Malicious Process Executions by Cluster, Malicious Process Executions by Deployment, Most Violated Policies, Namespaces with Kubernetes Violations, Processes Targeting Kubernetes Endpoints, Runtime Violations, Top CVE Violations, Total number of Bad Image Components, Total number of Image Violations, Total number of Kubernetes Violations, Total Number of Violations, Violations by Category, Violations by Cluster, Violations by Deployment Label, Violations by Namespaces, Violations by Severity, Violations Over Time



## Parser:
```
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace
| json "policy.lifecycleStages" as lifecycle_stage 
```
### Use Cases:
Anomalous Process Executions, Anomalous Process Executions by Cluster, Anomalous Process Executions by Deployment, Bad Image Components, Clusters with Violations, CVEs, CVEs by Cluster, CVEs by Severity, CVEs Over Time, Deploy Time Violations, Deployments Using Latest Tag, Deployments with Kubernetes Violations, Deployments with Violations, Kubernetes Best Practices Violations, Kubernetes Violations by Namespace, Kubernetes Violations by Severity, Malicious Process Executions, Malicious Process Executions by Cluster, Malicious Process Executions by Deployment, Most Violated Policies, Namespaces with Kubernetes Violations, Processes Targeting Kubernetes Endpoints, Runtime Violations, Top CVE Violations, Total number of Bad Image Components, Total number of Image Violations, Total number of Kubernetes Violations, Total Number of Violations, Violations by Category, Violations by Cluster, Violations by Deployment Label, Violations by Namespaces, Violations by Severity, Violations Over Time



## Parser:
```
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace
| json "policy.name", "policy.severity", "policy.fields.cve", "policy.fields.cvss", "policy.lifecycleStages" as policy, severity, policy_fields_cve, policy_fields_cvss, lifecycle_stage
```
### Use Cases:
Bad Image Components, CVEs, CVEs by Cluster, CVEs by Severity, CVEs Over Time, Deployments Using Latest Tag, Top CVE Violations, Total number of Bad Image Components, Total number of Image Violations



## Parser:
```
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace
| json "policy.name", "policy.severity", "policy.fields.cve", "policy.fields.cvss", "policy.lifecycleStages" as policy, severity, policy_fields_cve, policy_fields_cvss, lifecycle_stage
| json "violations[0].message" as violation_msg | parse regex field=violation_msg "[CVE|cve:] (?<CVE_ID>CVE\-\d{4}\-\d+?)(?:\s|\))" nodrop
| json "violations[0].link" as link
```
### Use Cases:
Bad Image Components, CVEs, CVEs by Cluster, CVEs by Severity, Deployments Using Latest Tag, Top CVE Violations, Total number of Bad Image Components, Total number of Image Violations



## Parser:
```
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace
| json "policy.name", "policy.severity", "policy.fields.cve", "policy.fields.cvss", "policy.lifecycleStages", "policy.policySections[*].policyGroups[*].fieldName"  as policy, severity, policy_fields_cve, policy_fields_cvss, lifecycle_stage, fieldNames nodrop
```
### Use Cases:
Anomalous Process Executions, Anomalous Process Executions by Cluster, Anomalous Process Executions by Deployment, Bad Image Components, Clusters with Violations, CVEs, CVEs by Cluster, CVEs by Severity, CVEs Over Time, Deploy Time Violations, Deployments Using Latest Tag, Deployments with Kubernetes Violations, Deployments with Violations, Kubernetes Best Practices Violations, Kubernetes Violations by Namespace, Kubernetes Violations by Severity, Malicious Process Executions, Malicious Process Executions by Cluster, Malicious Process Executions by Deployment, Most Violated Policies, Namespaces with Kubernetes Violations, Processes Targeting Kubernetes Endpoints, Runtime Violations, Top CVE Violations, Total number of Bad Image Components, Total number of Image Violations, Total number of Kubernetes Violations, Total Number of Violations, Violations by Category, Violations by Cluster, Violations by Deployment Label, Violations by Namespaces, Violations by Severity, Violations Over Time



## Parser:
```
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace
| json "policy.name", "policy.severity", "policy.fields.cve", "policy.fields.cvss", "policy.lifecycleStages", "policy.policySections[*].policyGroups[*].fieldName" as policy, severity, policy_fields_cve, policy_fields_cvss, lifecycle_stage, fieldNames nodrop
```
### Use Cases:
Anomalous Process Executions, Anomalous Process Executions by Cluster, Anomalous Process Executions by Deployment, Bad Image Components, Clusters with Violations, CVEs, CVEs by Cluster, CVEs by Severity, CVEs Over Time, Deploy Time Violations, Deployments Using Latest Tag, Deployments with Kubernetes Violations, Deployments with Violations, Kubernetes Best Practices Violations, Kubernetes Violations by Namespace, Kubernetes Violations by Severity, Malicious Process Executions, Malicious Process Executions by Cluster, Malicious Process Executions by Deployment, Most Violated Policies, Namespaces with Kubernetes Violations, Processes Targeting Kubernetes Endpoints, Runtime Violations, Top CVE Violations, Total number of Bad Image Components, Total number of Image Violations, Total number of Kubernetes Violations, Total Number of Violations, Violations by Category, Violations by Cluster, Violations by Deployment Label, Violations by Namespaces, Violations by Severity, Violations Over Time



## Parser:
```
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace
| json "policy.name", "policy.severity", "policy.fields.cve", "policy.fields.cvss", "policy.lifecycleStages", "policy.policySections[*].policyGroups[*].fieldName" as policy, severity, policy_fields_cve, policy_fields_cvss, lifecycle_stage, fieldNames nodrop
| json "violations[0].message" as violation_msg | parse regex field=violation_msg "(?<CVE_ID>CVE\-\d{4}\-\d+?)(?:\s|\))" nodrop
```
### Use Cases:
Anomalous Process Executions, Anomalous Process Executions by Cluster, Anomalous Process Executions by Deployment, Bad Image Components, Clusters with Violations, CVEs, CVEs by Cluster, CVEs by Severity, CVEs Over Time, Deploy Time Violations, Deployments Using Latest Tag, Deployments with Kubernetes Violations, Deployments with Violations, Kubernetes Best Practices Violations, Kubernetes Violations by Namespace, Kubernetes Violations by Severity, Malicious Process Executions, Malicious Process Executions by Cluster, Malicious Process Executions by Deployment, Most Violated Policies, Namespaces with Kubernetes Violations, Processes Targeting Kubernetes Endpoints, Runtime Violations, Top CVE Violations, Total number of Bad Image Components, Total number of Image Violations, Total number of Kubernetes Violations, Total Number of Violations, Violations by Category, Violations by Cluster, Violations by Deployment Label, Violations by Namespaces, Violations by Severity, Violations Over Time



## Parser:
```
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace 
```
### Use Cases:
Anomalous Process Executions, Anomalous Process Executions by Cluster, Anomalous Process Executions by Deployment, Bad Image Components, Clusters with Violations, CVEs, CVEs by Cluster, CVEs by Severity, CVEs Over Time, Deploy Time Violations, Deployments Using Latest Tag, Deployments with Kubernetes Violations, Deployments with Violations, Kubernetes Best Practices Violations, Kubernetes Violations by Namespace, Kubernetes Violations by Severity, Malicious Process Executions, Malicious Process Executions by Cluster, Malicious Process Executions by Deployment, Most Violated Policies, Namespaces with Kubernetes Violations, Processes Targeting Kubernetes Endpoints, Runtime Violations, Top CVE Violations, Total number of Bad Image Components, Total number of Image Violations, Total number of Kubernetes Violations, Total Number of Violations, Violations by Category, Violations by Cluster, Violations by Deployment Label, Violations by Namespaces, Violations by Severity, Violations Over Time



## Parser:
```
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace 
| json "deployment.labels.run" as applabel 
```
### Use Cases:
Anomalous Process Executions, Anomalous Process Executions by Cluster, Anomalous Process Executions by Deployment, Bad Image Components, Clusters with Violations, CVEs, CVEs by Cluster, CVEs by Severity, CVEs Over Time, Deploy Time Violations, Deployments Using Latest Tag, Deployments with Kubernetes Violations, Deployments with Violations, Kubernetes Best Practices Violations, Kubernetes Violations by Namespace, Kubernetes Violations by Severity, Malicious Process Executions, Malicious Process Executions by Cluster, Malicious Process Executions by Deployment, Most Violated Policies, Namespaces with Kubernetes Violations, Processes Targeting Kubernetes Endpoints, Runtime Violations, Top CVE Violations, Total number of Bad Image Components, Total number of Image Violations, Total number of Kubernetes Violations, Total Number of Violations, Violations by Category, Violations by Cluster, Violations by Deployment Label, Violations by Namespaces, Violations by Severity, Violations Over Time



## Parser:
```
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace 
| json "policy.categories" as policy_categories
| parse regex field=policy_categories "\"(?<Categories>[^\"]*)\"" multi 
```
### Use Cases:
Anomalous Process Executions, Anomalous Process Executions by Cluster, Anomalous Process Executions by Deployment, Bad Image Components, Clusters with Violations, CVEs, CVEs by Cluster, CVEs by Severity, CVEs Over Time, Deploy Time Violations, Deployments Using Latest Tag, Deployments with Kubernetes Violations, Deployments with Violations, Kubernetes Best Practices Violations, Kubernetes Violations by Namespace, Kubernetes Violations by Severity, Malicious Process Executions, Malicious Process Executions by Cluster, Malicious Process Executions by Deployment, Most Violated Policies, Namespaces with Kubernetes Violations, Processes Targeting Kubernetes Endpoints, Runtime Violations, Top CVE Violations, Total number of Bad Image Components, Total number of Image Violations, Total number of Kubernetes Violations, Total Number of Violations, Violations by Category, Violations by Cluster, Violations by Deployment Label, Violations by Namespaces, Violations by Severity, Violations Over Time



## Parser:
```
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace 
| json "policy.categories", "policy.severity" as policy_categories, severity
| parse regex field=policy_categories "\"(?<Categories>[^\"]*)\"" multi 
```
### Use Cases:
Anomalous Process Executions, Anomalous Process Executions by Cluster, Anomalous Process Executions by Deployment, Bad Image Components, Clusters with Violations, CVEs, CVEs by Cluster, CVEs by Severity, CVEs Over Time, Deploy Time Violations, Deployments Using Latest Tag, Deployments with Kubernetes Violations, Deployments with Violations, Kubernetes Best Practices Violations, Kubernetes Violations by Namespace, Kubernetes Violations by Severity, Malicious Process Executions, Malicious Process Executions by Cluster, Malicious Process Executions by Deployment, Most Violated Policies, Namespaces with Kubernetes Violations, Processes Targeting Kubernetes Endpoints, Runtime Violations, Top CVE Violations, Total number of Bad Image Components, Total number of Image Violations, Total number of Kubernetes Violations, Total Number of Violations, Violations by Category, Violations by Cluster, Violations by Deployment Label, Violations by Namespaces, Violations by Severity, Violations Over Time



## Parser:
```
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace 
| json "policy.fields.cve", "policy.fields.cvss" as policy_fields_cve, policy_fields_cvss
```
### Use Cases:
Bad Image Components, Clusters with Violations, CVEs, CVEs by Cluster, CVEs by Severity, CVEs Over Time, Deploy Time Violations, Deployments Using Latest Tag, Deployments with Kubernetes Violations, Deployments with Violations, Kubernetes Best Practices Violations, Kubernetes Violations by Namespace, Kubernetes Violations by Severity, Namespaces with Kubernetes Violations, Processes Targeting Kubernetes Endpoints, Runtime Violations, Top CVE Violations, Total number of Bad Image Components, Total number of Image Violations, Total number of Kubernetes Violations, Total Number of Violations



## Parser:
```
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace 
| json "policy.fields.cve", "policy.fields.cvss", "policy.policySections[*].policyGroups[*].fieldName" as policy_fields_cve, policy_fields_cvss, fieldNames nodrop
```
### Use Cases:
Anomalous Process Executions, Anomalous Process Executions by Cluster, Anomalous Process Executions by Deployment, Bad Image Components, Clusters with Violations, CVEs, CVEs by Cluster, CVEs by Severity, CVEs Over Time, Deploy Time Violations, Deployments Using Latest Tag, Deployments with Kubernetes Violations, Deployments with Violations, Kubernetes Best Practices Violations, Kubernetes Violations by Namespace, Kubernetes Violations by Severity, Malicious Process Executions, Malicious Process Executions by Cluster, Malicious Process Executions by Deployment, Most Violated Policies, Namespaces with Kubernetes Violations, Processes Targeting Kubernetes Endpoints, Runtime Violations, Top CVE Violations, Total number of Bad Image Components, Total number of Image Violations, Total number of Kubernetes Violations, Total Number of Violations, Violations by Category, Violations by Cluster, Violations by Deployment Label, Violations by Namespaces, Violations by Severity, Violations Over Time



## Parser:
```
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace 
| json "policy.name" as policy
```
### Use Cases:
Anomalous Process Executions, Anomalous Process Executions by Cluster, Anomalous Process Executions by Deployment, Bad Image Components, Clusters with Violations, CVEs, CVEs by Cluster, CVEs by Severity, CVEs Over Time, Deploy Time Violations, Deployments Using Latest Tag, Deployments with Kubernetes Violations, Deployments with Violations, Kubernetes Best Practices Violations, Kubernetes Violations by Namespace, Kubernetes Violations by Severity, Malicious Process Executions, Malicious Process Executions by Cluster, Malicious Process Executions by Deployment, Most Violated Policies, Namespaces with Kubernetes Violations, Processes Targeting Kubernetes Endpoints, Runtime Violations, Top CVE Violations, Total number of Bad Image Components, Total number of Image Violations, Total number of Kubernetes Violations, Total Number of Violations, Violations by Category, Violations by Cluster, Violations by Deployment Label, Violations by Namespaces, Violations by Severity, Violations Over Time



## Parser:
```
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace 
| json "policy.name", "policy.severity", "policy.fields.cve", "policy.fields.cvss", "policy.lifecycleStages" as policy, severity, policy_fields_cve, policy_fields_cvss, lifecycle_stage
```
### Use Cases:
Bad Image Components, CVEs, Total number of Bad Image Components, Total number of Image Violations



## Parser:
```
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace 
| json "policy.name", "policy.severity", "policy.fields.cve", "policy.fields.cvss", "policy.lifecycleStages", "policy.policySections[*].policyGroups[*].fieldName" as policy, severity, policy_fields_cve, policy_fields_cvss, lifecycle_stage, fieldNames nodrop
```
### Use Cases:
Anomalous Process Executions, Anomalous Process Executions by Cluster, Anomalous Process Executions by Deployment, Bad Image Components, Clusters with Violations, CVEs, CVEs by Cluster, CVEs by Severity, CVEs Over Time, Deploy Time Violations, Deployments Using Latest Tag, Deployments with Kubernetes Violations, Deployments with Violations, Kubernetes Best Practices Violations, Kubernetes Violations by Namespace, Kubernetes Violations by Severity, Malicious Process Executions, Malicious Process Executions by Cluster, Malicious Process Executions by Deployment, Most Violated Policies, Namespaces with Kubernetes Violations, Processes Targeting Kubernetes Endpoints, Runtime Violations, Top CVE Violations, Total number of Bad Image Components, Total number of Image Violations, Total number of Kubernetes Violations, Total Number of Violations, Violations by Category, Violations by Cluster, Violations by Deployment Label, Violations by Namespaces, Violations by Severity, Violations Over Time



## Parser:
```
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace 
| json "policy.name", "policy.severity", "policy.fields.cve", "policy.fields.cvss", "policy.lifecycleStages", "policy.policySections[*].policyGroups[*].fieldName" as policy, severity, policy_fields_cve, policy_fields_cvss, lifecycle_stage, policyFieldNames nodrop
```
### Use Cases:
Anomalous Process Executions, Anomalous Process Executions by Cluster, Anomalous Process Executions by Deployment, Bad Image Components, Clusters with Violations, CVEs, CVEs by Cluster, CVEs by Severity, CVEs Over Time, Deploy Time Violations, Deployments Using Latest Tag, Deployments with Kubernetes Violations, Deployments with Violations, Kubernetes Best Practices Violations, Kubernetes Violations by Namespace, Kubernetes Violations by Severity, Malicious Process Executions, Malicious Process Executions by Cluster, Malicious Process Executions by Deployment, Most Violated Policies, Namespaces with Kubernetes Violations, Processes Targeting Kubernetes Endpoints, Runtime Violations, Top CVE Violations, Total number of Bad Image Components, Total number of Image Violations, Total number of Kubernetes Violations, Total Number of Violations, Violations by Category, Violations by Cluster, Violations by Deployment Label, Violations by Namespaces, Violations by Severity, Violations Over Time



## Parser:
```
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace 
| json "policy.name", "policy.severity", "policy.fields.cve", "policy.fields.cvss", "policy.lifecycleStages", "policy.policySections[*].policyGroups[*].fieldName", "policy.fields.component" as policy, severity, policy_fields_cve, policy_fields_cvss, lifecycle_stage, fieldNames, policyComponent nodrop
```
### Use Cases:
Anomalous Process Executions, Anomalous Process Executions by Cluster, Anomalous Process Executions by Deployment, Bad Image Components, Clusters with Violations, CVEs, CVEs by Cluster, CVEs by Severity, CVEs Over Time, Deploy Time Violations, Deployments Using Latest Tag, Deployments with Kubernetes Violations, Deployments with Violations, Kubernetes Best Practices Violations, Kubernetes Violations by Namespace, Kubernetes Violations by Severity, Malicious Process Executions, Malicious Process Executions by Cluster, Malicious Process Executions by Deployment, Most Violated Policies, Namespaces with Kubernetes Violations, Processes Targeting Kubernetes Endpoints, Runtime Violations, Top CVE Violations, Total number of Bad Image Components, Total number of Image Violations, Total number of Kubernetes Violations, Total Number of Violations, Violations by Category, Violations by Cluster, Violations by Deployment Label, Violations by Namespaces, Violations by Severity, Violations Over Time



## Parser:
```
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace 
| json "policy.name", "policy.severity", "policy.lifecycleStages" as policy, severity, lifecycle_stage
| json "deployment.containers[0].image.name.fullName" as image
```
### Use Cases:
Bad Image Components, CVEs, Deployments Using Latest Tag, Total number of Bad Image Components, Total number of Image Violations



## Parser:
```
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace 
| json "policy.name", "policy.severity", "policy.lifecycleStages", "policy.policySections[*].policyGroups[*].fieldName", "policy.policySections[*].policyGroups[*].values" as policy, severity, lifecycle_stage, fieldNames, fieldValues nodrop
| json "deployment.containers[0].image.name.fullName" as image
```
### Use Cases:
Anomalous Process Executions, Anomalous Process Executions by Cluster, Anomalous Process Executions by Deployment, Bad Image Components, Clusters with Violations, CVEs, CVEs by Cluster, CVEs by Severity, CVEs Over Time, Deploy Time Violations, Deployments Using Latest Tag, Deployments with Kubernetes Violations, Deployments with Violations, Kubernetes Best Practices Violations, Kubernetes Violations by Namespace, Kubernetes Violations by Severity, Malicious Process Executions, Malicious Process Executions by Cluster, Malicious Process Executions by Deployment, Most Violated Policies, Namespaces with Kubernetes Violations, Processes Targeting Kubernetes Endpoints, Runtime Violations, Top CVE Violations, Total number of Bad Image Components, Total number of Image Violations, Total number of Kubernetes Violations, Total Number of Violations, Violations by Category, Violations by Cluster, Violations by Deployment Label, Violations by Namespaces, Violations by Severity, Violations Over Time



## Parser:
```
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace 
| json "policy.severity" as severity
```
### Use Cases:
Anomalous Process Executions, Anomalous Process Executions by Cluster, Anomalous Process Executions by Deployment, Bad Image Components, Clusters with Violations, CVEs, CVEs by Cluster, CVEs by Severity, CVEs Over Time, Deploy Time Violations, Deployments Using Latest Tag, Deployments with Kubernetes Violations, Deployments with Violations, Kubernetes Best Practices Violations, Kubernetes Violations by Namespace, Kubernetes Violations by Severity, Malicious Process Executions, Malicious Process Executions by Cluster, Malicious Process Executions by Deployment, Most Violated Policies, Namespaces with Kubernetes Violations, Processes Targeting Kubernetes Endpoints, Runtime Violations, Top CVE Violations, Total number of Bad Image Components, Total number of Image Violations, Total number of Kubernetes Violations, Total Number of Violations, Violations by Category, Violations by Cluster, Violations by Deployment Label, Violations by Namespaces, Violations by Severity, Violations Over Time



## Parser:
```
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace 
| json "policy.severity" as severity 
```
### Use Cases:
Anomalous Process Executions, Anomalous Process Executions by Cluster, Anomalous Process Executions by Deployment, Bad Image Components, Clusters with Violations, CVEs, CVEs by Cluster, CVEs by Severity, CVEs Over Time, Deploy Time Violations, Deployments Using Latest Tag, Deployments with Kubernetes Violations, Deployments with Violations, Kubernetes Best Practices Violations, Kubernetes Violations by Namespace, Kubernetes Violations by Severity, Malicious Process Executions, Malicious Process Executions by Cluster, Malicious Process Executions by Deployment, Most Violated Policies, Namespaces with Kubernetes Violations, Processes Targeting Kubernetes Endpoints, Runtime Violations, Top CVE Violations, Total number of Bad Image Components, Total number of Image Violations, Total number of Kubernetes Violations, Total Number of Violations, Violations by Category, Violations by Cluster, Violations by Deployment Label, Violations by Namespaces, Violations by Severity, Violations Over Time



## Parser:
```
| json "deployment.name", "deployment.clusterName", "deployment.namespace", "policy.lifecycleStages" as deployment, cluster, namespace, lifecycle_stage 
```
### Use Cases:
Anomalous Process Executions, Anomalous Process Executions by Cluster, Anomalous Process Executions by Deployment, Bad Image Components, Clusters with Violations, CVEs, CVEs by Cluster, CVEs by Severity, CVEs Over Time, Deploy Time Violations, Deployments Using Latest Tag, Deployments with Kubernetes Violations, Deployments with Violations, Kubernetes Best Practices Violations, Kubernetes Violations by Namespace, Kubernetes Violations by Severity, Malicious Process Executions, Malicious Process Executions by Cluster, Malicious Process Executions by Deployment, Most Violated Policies, Namespaces with Kubernetes Violations, Processes Targeting Kubernetes Endpoints, Runtime Violations, Top CVE Violations, Total number of Bad Image Components, Total number of Image Violations, Total number of Kubernetes Violations, Total Number of Violations, Violations by Category, Violations by Cluster, Violations by Deployment Label, Violations by Namespaces, Violations by Severity, Violations Over Time



## Parser:
```
| json "deployment.name", "deployment.namespace", "deployment.clusterName" as deployment, namespace, cluster
| json "policy.name", "policy.categories", "policy.severity", "policy.lifecycleStages" as policy, policy_categories, severity, lifecycle_stage 
| parse regex field=policy_categories "\"(?<Categories>[^\"]*)\"" multi 
```
### Use Cases:
Anomalous Process Executions, Anomalous Process Executions by Cluster, Anomalous Process Executions by Deployment, Bad Image Components, Clusters with Violations, CVEs, CVEs by Cluster, CVEs by Severity, CVEs Over Time, Deploy Time Violations, Deployments Using Latest Tag, Deployments with Kubernetes Violations, Deployments with Violations, Kubernetes Best Practices Violations, Kubernetes Violations by Namespace, Kubernetes Violations by Severity, Malicious Process Executions, Malicious Process Executions by Cluster, Malicious Process Executions by Deployment, Most Violated Policies, Namespaces with Kubernetes Violations, Processes Targeting Kubernetes Endpoints, Runtime Violations, Top CVE Violations, Total number of Bad Image Components, Total number of Image Violations, Total number of Kubernetes Violations, Total Number of Violations, Violations by Category, Violations by Cluster, Violations by Deployment Label, Violations by Namespaces, Violations by Severity, Violations Over Time



## Parser:
```
| json "deployment.name", "deployment.namespace", "deployment.clusterName" as deployment, namespace, cluster
| json "policy.name", "policy.categories", "policy.severity", "policy.lifecycleStages", "policy.fields.whitelistEnabled" as policy, policy_categories, severity, lifecycle_stage, whitelistEnabled
| parse regex field=policy_categories "\"(?<Categories>[^\"]*)\"" multi 
| json "processViolation.processes[0].signal.name", "processViolation.processes[0].signal.execFilePath", "processViolation.processes[0].signal.args" as Process, Path, Args 
```
### Use Cases:
Anomalous Process Executions, Bad Image Components, Clusters with Violations, CVEs, CVEs by Cluster, CVEs by Severity, CVEs Over Time, Deploy Time Violations, Deployments Using Latest Tag, Deployments with Kubernetes Violations, Deployments with Violations, Kubernetes Best Practices Violations, Kubernetes Violations by Namespace, Kubernetes Violations by Severity, Malicious Process Executions, Malicious Process Executions by Cluster, Malicious Process Executions by Deployment, Most Violated Policies, Namespaces with Kubernetes Violations, Processes Targeting Kubernetes Endpoints, Runtime Violations, Top CVE Violations, Total number of Bad Image Components, Total number of Image Violations, Total number of Kubernetes Violations, Total Number of Violations, Violations by Category, Violations by Cluster, Violations by Deployment Label, Violations by Namespaces, Violations by Severity, Violations Over Time



## Parser:
```
| json "deployment.name", "deployment.namespace", "deployment.clusterName" as deployment, namespace, cluster
| json "policy.name", "policy.categories", "policy.severity", "policy.lifecycleStages", "policy.fields.whitelistEnabled" as policy, policy_categories, severity, lifecycle_stage, whitelistEnabled nodrop
| parse regex field=policy_categories "\"(?<Categories>[^\"]*)\"" multi 
| json "processViolation.processes[0].signal.name", "processViolation.processes[0].signal.execFilePath", "processViolation.processes[0].signal.args" as Process, Path, Args 
```
### Use Cases:
Anomalous Process Executions, Anomalous Process Executions by Cluster, Anomalous Process Executions by Deployment, Bad Image Components, Clusters with Violations, CVEs, CVEs by Cluster, CVEs by Severity, CVEs Over Time, Deploy Time Violations, Deployments Using Latest Tag, Deployments with Kubernetes Violations, Deployments with Violations, Kubernetes Best Practices Violations, Kubernetes Violations by Namespace, Kubernetes Violations by Severity, Malicious Process Executions, Malicious Process Executions by Cluster, Malicious Process Executions by Deployment, Most Violated Policies, Namespaces with Kubernetes Violations, Processes Targeting Kubernetes Endpoints, Runtime Violations, Top CVE Violations, Total number of Bad Image Components, Total number of Image Violations, Total number of Kubernetes Violations, Total Number of Violations, Violations by Category, Violations by Cluster, Violations by Deployment Label, Violations by Namespaces, Violations by Severity, Violations Over Time



## Parser:
```
| json "deployment.name", "deployment.namespace", "deployment.clusterName" as deployment, namespace, cluster 
| json "policy.name", "policy.categories", "policy.severity", "policy.lifecycleStages" as policy, policy_categories, severity, lifecycle_stage
| json "processViolation.processes[0].signal.name", "processViolation.processes[0].signal.execFilePath", "processViolation.processes[0].signal.args" as Process, Path, Args 
| parse regex field=policy_categories "\"(?<Categories>[^\"]*)\"" multi 
```
### Use Cases:
Anomalous Process Executions, Anomalous Process Executions by Cluster, Anomalous Process Executions by Deployment, Bad Image Components, Clusters with Violations, CVEs, CVEs by Cluster, CVEs by Severity, CVEs Over Time, Deploy Time Violations, Deployments Using Latest Tag, Deployments with Kubernetes Violations, Deployments with Violations, Kubernetes Best Practices Violations, Kubernetes Violations by Namespace, Kubernetes Violations by Severity, Malicious Process Executions, Malicious Process Executions by Cluster, Malicious Process Executions by Deployment, Most Violated Policies, Namespaces with Kubernetes Violations, Processes Targeting Kubernetes Endpoints, Runtime Violations, Top CVE Violations, Total number of Bad Image Components, Total number of Image Violations, Total number of Kubernetes Violations, Total Number of Violations, Violations by Category, Violations by Cluster, Violations by Deployment Label, Violations by Namespaces, Violations by Severity, Violations Over Time



## Parser:
```
| json "deployment.name", "deployment.namespace", "deployment.clusterName" as deployment, namespace, cluster 
| json "policy.name", "policy.categories", "policy.severity", "policy.lifecycleStages" as policy, policy_categories, severity, lifecycle_stage 
| parse regex field=policy_categories "\"(?<Categories>[^\"]*)\"" multi 
```
### Use Cases:
Anomalous Process Executions, Anomalous Process Executions by Cluster, Anomalous Process Executions by Deployment, Bad Image Components, Clusters with Violations, CVEs, CVEs by Cluster, CVEs by Severity, CVEs Over Time, Deploy Time Violations, Deployments Using Latest Tag, Deployments with Kubernetes Violations, Deployments with Violations, Kubernetes Best Practices Violations, Kubernetes Violations by Namespace, Kubernetes Violations by Severity, Malicious Process Executions, Malicious Process Executions by Cluster, Malicious Process Executions by Deployment, Most Violated Policies, Namespaces with Kubernetes Violations, Processes Targeting Kubernetes Endpoints, Runtime Violations, Top CVE Violations, Total number of Bad Image Components, Total number of Image Violations, Total number of Kubernetes Violations, Total Number of Violations, Violations by Category, Violations by Cluster, Violations by Deployment Label, Violations by Namespaces, Violations by Severity, Violations Over Time



## Parser:
```
| json "deployment.name", "deployment.namespace", "deployment.clusterName" as deployment, namespace, cluster 
| json "policy.name", "policy.categories", "policy.severity", "policy.lifecycleStages" as policy, policy_categories, severity, lifecycle_stage nodrop
| parse regex field=policy_categories "\"(?<Categories>[^\"]*)\"" multi 
```
### Use Cases:
Anomalous Process Executions, Anomalous Process Executions by Cluster, Anomalous Process Executions by Deployment, Bad Image Components, Clusters with Violations, CVEs, CVEs by Cluster, CVEs by Severity, CVEs Over Time, Deploy Time Violations, Deployments Using Latest Tag, Deployments with Kubernetes Violations, Deployments with Violations, Kubernetes Best Practices Violations, Kubernetes Violations by Namespace, Kubernetes Violations by Severity, Malicious Process Executions, Malicious Process Executions by Cluster, Malicious Process Executions by Deployment, Most Violated Policies, Namespaces with Kubernetes Violations, Processes Targeting Kubernetes Endpoints, Runtime Violations, Top CVE Violations, Total number of Bad Image Components, Total number of Image Violations, Total number of Kubernetes Violations, Total Number of Violations, Violations by Category, Violations by Cluster, Violations by Deployment Label, Violations by Namespaces, Violations by Severity, Violations Over Time



## Parser:
```
| json "deployment.name", "deployment.namespace", "deployment.clusterName" as deployment, namespace, cluster 
| json "policy.name", "policy.categories", "policy.severity", "policy.lifecycleStages", "policy.fields.whitelistEnabled" as policy, policy_categories, severity, lifecycle_stage, whitelistEnabled
| parse regex field=policy_categories "\"(?<Categories>[^\"]*)\"" multi 
```
### Use Cases:
Anomalous Process Executions, Anomalous Process Executions by Cluster, Anomalous Process Executions by Deployment, Bad Image Components, Clusters with Violations, CVEs, CVEs by Cluster, CVEs by Severity, CVEs Over Time, Deploy Time Violations, Deployments Using Latest Tag, Deployments with Kubernetes Violations, Deployments with Violations, Kubernetes Best Practices Violations, Kubernetes Violations by Namespace, Kubernetes Violations by Severity, Malicious Process Executions, Malicious Process Executions by Cluster, Malicious Process Executions by Deployment, Most Violated Policies, Namespaces with Kubernetes Violations, Processes Targeting Kubernetes Endpoints, Runtime Violations, Top CVE Violations, Total number of Bad Image Components, Total number of Image Violations, Total number of Kubernetes Violations, Total Number of Violations, Violations by Category, Violations by Cluster, Violations by Deployment Label, Violations by Namespaces, Violations by Severity, Violations Over Time



## Parser:
```
| json "deployment.name", "deployment.namespace", "deployment.clusterName" as deployment, namespace, cluster 
| json "policy.name", "policy.categories", "policy.severity", "policy.lifecycleStages", "policy.fields.whitelistEnabled" as policy, policy_categories, severity, lifecycle_stage, whitelistEnabled nodrop
| parse regex field=policy_categories "\"(?<Categories>[^\"]*)\"" multi 
```
### Use Cases:
Anomalous Process Executions, Anomalous Process Executions by Cluster, Anomalous Process Executions by Deployment, Bad Image Components, Clusters with Violations, CVEs, CVEs by Cluster, CVEs by Severity, CVEs Over Time, Deploy Time Violations, Deployments Using Latest Tag, Deployments with Kubernetes Violations, Deployments with Violations, Kubernetes Best Practices Violations, Kubernetes Violations by Namespace, Kubernetes Violations by Severity, Malicious Process Executions, Malicious Process Executions by Cluster, Malicious Process Executions by Deployment, Most Violated Policies, Namespaces with Kubernetes Violations, Processes Targeting Kubernetes Endpoints, Runtime Violations, Top CVE Violations, Total number of Bad Image Components, Total number of Image Violations, Total number of Kubernetes Violations, Total Number of Violations, Violations by Category, Violations by Cluster, Violations by Deployment Label, Violations by Namespaces, Violations by Severity, Violations Over Time



## Parser:
```
| json "deployment.name", "deployment.namespace", "deployment.clusterName" as deployment, namespace, cluster 
| json "policy.name", "policy.severity", "policy.lifecycleStages", "policy.fields.processPolicy" as policy, severity, lifecycle_stage, policy_fields_processPolicy
```
### Use Cases:
Bad Image Components, Clusters with Violations, CVEs, CVEs by Cluster, CVEs by Severity, CVEs Over Time, Deploy Time Violations, Deployments Using Latest Tag, Deployments with Kubernetes Violations, Deployments with Violations, Kubernetes Best Practices Violations, Kubernetes Violations by Namespace, Kubernetes Violations by Severity, Malicious Process Executions, Malicious Process Executions by Cluster, Malicious Process Executions by Deployment, Most Violated Policies, Namespaces with Kubernetes Violations, Processes Targeting Kubernetes Endpoints, Runtime Violations, Top CVE Violations, Total number of Bad Image Components, Total number of Image Violations, Total number of Kubernetes Violations, Total Number of Violations, Violations by Category, Violations by Cluster, Violations by Deployment Label, Violations by Namespaces, Violations by Severity, Violations Over Time



## Parser:
```
| json "deployment.name", "deployment.namespace", "deployment.clusterName" as deployment, namespace, cluster 
| json "policy.name", "policy.severity", "policy.lifecycleStages", "policy.fields.processPolicy", "policy.policySections[*].policyGroups[*].fieldName" as policy, severity, lifecycle_stage, policy_fields_processPolicy, fieldNames nodrop
```
### Use Cases:
Anomalous Process Executions, Anomalous Process Executions by Cluster, Anomalous Process Executions by Deployment, Bad Image Components, Clusters with Violations, CVEs, CVEs by Cluster, CVEs by Severity, CVEs Over Time, Deploy Time Violations, Deployments Using Latest Tag, Deployments with Kubernetes Violations, Deployments with Violations, Kubernetes Best Practices Violations, Kubernetes Violations by Namespace, Kubernetes Violations by Severity, Malicious Process Executions, Malicious Process Executions by Cluster, Malicious Process Executions by Deployment, Most Violated Policies, Namespaces with Kubernetes Violations, Processes Targeting Kubernetes Endpoints, Runtime Violations, Top CVE Violations, Total number of Bad Image Components, Total number of Image Violations, Total number of Kubernetes Violations, Total Number of Violations, Violations by Category, Violations by Cluster, Violations by Deployment Label, Violations by Namespaces, Violations by Severity, Violations Over Time



## Parser:
```
| json "deployment.name", "deployment.namespace", "deployment.clusterName" as deployment, namespace, cluster 
| json "processViolation.processes[0].signal.name", "processViolation.processes[0].signal.execFilePath", "processViolation.processes[0].signal.args" as Process, Path, Args 
| json "policy.name", "policy.severity", "policy.lifecycleStages", "policy.fields.processPolicy" as policy, severity, lifecycle_stage, policy_fields_processPolicy
```
### Use Cases:
Bad Image Components, Clusters with Violations, CVEs, CVEs by Cluster, CVEs by Severity, CVEs Over Time, Deploy Time Violations, Deployments Using Latest Tag, Deployments with Kubernetes Violations, Deployments with Violations, Kubernetes Best Practices Violations, Kubernetes Violations by Namespace, Kubernetes Violations by Severity, Malicious Process Executions, Most Violated Policies, Namespaces with Kubernetes Violations, Processes Targeting Kubernetes Endpoints, Runtime Violations, Top CVE Violations, Total number of Bad Image Components, Total number of Image Violations, Total number of Kubernetes Violations, Total Number of Violations, Violations by Category, Violations by Cluster, Violations by Deployment Label, Violations by Namespaces, Violations by Severity, Violations Over Time



## Parser:
```
| json "deployment.name", "deployment.namespace", "deployment.clusterName" as deployment, namespace, cluster 
| json "processViolation.processes[0].signal.name", "processViolation.processes[0].signal.execFilePath", "processViolation.processes[0].signal.args" as Process, Path, Args 
| json "policy.name", "policy.severity", "policy.lifecycleStages", "policy.fields.processPolicy", "policy.policySections[*].policyGroups[*].fieldName" as policy, severity, lifecycle_stage, policy_fields_processPolicy, fieldNames nodrop
```
### Use Cases:
Anomalous Process Executions, Anomalous Process Executions by Cluster, Anomalous Process Executions by Deployment, Bad Image Components, Clusters with Violations, CVEs, CVEs by Cluster, CVEs by Severity, CVEs Over Time, Deploy Time Violations, Deployments Using Latest Tag, Deployments with Kubernetes Violations, Deployments with Violations, Kubernetes Best Practices Violations, Kubernetes Violations by Namespace, Kubernetes Violations by Severity, Malicious Process Executions, Malicious Process Executions by Cluster, Malicious Process Executions by Deployment, Most Violated Policies, Namespaces with Kubernetes Violations, Processes Targeting Kubernetes Endpoints, Runtime Violations, Top CVE Violations, Total number of Bad Image Components, Total number of Image Violations, Total number of Kubernetes Violations, Total Number of Violations, Violations by Category, Violations by Cluster, Violations by Deployment Label, Violations by Namespaces, Violations by Severity, Violations Over Time



## Parser:
```
| json "deployment.name", "deployment.namespace", "deployment.clusterName" as deployment, namespace, cluster  
```
### Use Cases:
Anomalous Process Executions, Anomalous Process Executions by Cluster, Anomalous Process Executions by Deployment, Bad Image Components, Clusters with Violations, CVEs, CVEs by Cluster, CVEs by Severity, CVEs Over Time, Deploy Time Violations, Deployments Using Latest Tag, Deployments with Kubernetes Violations, Deployments with Violations, Kubernetes Best Practices Violations, Kubernetes Violations by Namespace, Kubernetes Violations by Severity, Malicious Process Executions, Malicious Process Executions by Cluster, Malicious Process Executions by Deployment, Most Violated Policies, Namespaces with Kubernetes Violations, Processes Targeting Kubernetes Endpoints, Runtime Violations, Top CVE Violations, Total number of Bad Image Components, Total number of Image Violations, Total number of Kubernetes Violations, Total Number of Violations, Violations by Category, Violations by Cluster, Violations by Deployment Label, Violations by Namespaces, Violations by Severity, Violations Over Time


