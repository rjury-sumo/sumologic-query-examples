# Parsers For StackRox

**StackRox/Image Violations/Bad Image Components**
```
_sourceCategory={{Logsdatasource}}  deployment name clusterName namespace policy "in Image"
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace 
| json "policy.name", "policy.severity", "policy.fields.cve", "policy.fields.cvss", "policy.lifecycleStages", "policy.policySections[*].policyGroups[*].fieldName", "policy.fields.component" as policy, severity, policy_fields_cve, policy_fields_cvss, lifecycle_stage, fieldNames, policyComponent nodrop
```

**StackRox/Image Violations/CVEs**
```
_sourceCategory={{Logsdatasource}}  deployment name clusterName namespace policy
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace 
| json "policy.name", "policy.severity", "policy.fields.cve", "policy.fields.cvss", "policy.lifecycleStages", "policy.policySections[*].policyGroups[*].fieldName" as policy, severity, policy_fields_cve, policy_fields_cvss, lifecycle_stage, fieldNames nodrop
```

**StackRox/Image Violations/CVEs by Cluster**
```
_sourceCategory={{Logsdatasource}}  deployment name clusterName namespace policy
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace
| json "policy.name", "policy.severity", "policy.fields.cve", "policy.fields.cvss", "policy.lifecycleStages", "policy.policySections[*].policyGroups[*].fieldName" as policy, severity, policy_fields_cve, policy_fields_cvss, lifecycle_stage, fieldNames nodrop
```

**StackRox/Image Violations/CVEs by Severity**
```
_sourceCategory={{Logsdatasource}}  deployment name clusterName namespace policy severity
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace
| json "policy.name", "policy.severity", "policy.fields.cve", "policy.fields.cvss", "policy.lifecycleStages", "policy.policySections[*].policyGroups[*].fieldName" as policy, severity, policy_fields_cve, policy_fields_cvss, lifecycle_stage, fieldNames nodrop
```

**StackRox/Image Violations/CVEs Over Time**
```
_sourceCategory={{Logsdatasource}}  deployment name clusterName namespace policy
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace
| json "policy.name", "policy.severity", "policy.fields.cve", "policy.fields.cvss", "policy.lifecycleStages", "policy.policySections[*].policyGroups[*].fieldName"  as policy, severity, policy_fields_cve, policy_fields_cvss, lifecycle_stage, fieldNames nodrop
```

**StackRox/Image Violations/Deployments Using Latest Tag**
```
_sourceCategory={{Logsdatasource}}  deployment name clusterName namespace policy containers image fullName
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace 
| json "policy.name", "policy.severity", "policy.lifecycleStages", "policy.policySections[*].policyGroups[*].fieldName", "policy.policySections[*].policyGroups[*].values" as policy, severity, lifecycle_stage, fieldNames, fieldValues nodrop
| json "deployment.containers[0].image.name.fullName" as image
```

**StackRox/Image Violations/Top CVE Violations**
```
_sourceCategory={{Logsdatasource}}  deployment name clusterName namespace policy violations
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace
| json "policy.name", "policy.severity", "policy.fields.cve", "policy.fields.cvss", "policy.lifecycleStages", "policy.policySections[*].policyGroups[*].fieldName" as policy, severity, policy_fields_cve, policy_fields_cvss, lifecycle_stage, fieldNames nodrop
| json "violations[0].message" as violation_msg | parse regex field=violation_msg "(?<CVE_ID>CVE\-\d{4}\-\d+?)(?:\s|\))" nodrop
```

**StackRox/Image Violations/Total number of Bad Image Components**
```
_sourceCategory={{Logsdatasource}}  deployment name clusterName namespace policy "in Image"
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace 
| json "policy.name", "policy.severity", "policy.fields.cve", "policy.fields.cvss", "policy.lifecycleStages", "policy.policySections[*].policyGroups[*].fieldName", "policy.fields.component" as policy, severity, policy_fields_cve, policy_fields_cvss, lifecycle_stage, fieldNames, policyComponent nodrop
```

**StackRox/Image Violations/Total number of Image Violations**
```
_sourceCategory={{Logsdatasource}}  deployment name clusterName namespace policy
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace 
| json "policy.name", "policy.severity", "policy.fields.cve", "policy.fields.cvss", "policy.lifecycleStages", "policy.policySections[*].policyGroups[*].fieldName" as policy, severity, policy_fields_cve, policy_fields_cvss, lifecycle_stage, policyFieldNames nodrop
```

**StackRox/Kubernetes Violations/Deployments with Kubernetes Violations**
```
_sourceCategory={{Logsdatasource}}  deployment name namespace clusterName policy categories Kubernetes
| json "deployment.name", "deployment.namespace", "deployment.clusterName" as deployment, namespace, cluster 
| json "policy.name", "policy.categories", "policy.severity", "policy.lifecycleStages" as policy, policy_categories, severity, lifecycle_stage 
| parse regex field=policy_categories "\"(?<Categories>[^\"]*)\"" multi 
```

**StackRox/Kubernetes Violations/Kubernetes Best Practices Violations**
```
_sourceCategory={{Logsdatasource}}  deployment name namespace clusterName policy categories Kubernetes
| json "deployment.name", "deployment.namespace", "deployment.clusterName" as deployment, namespace, cluster
| json "policy.name", "policy.categories", "policy.severity", "policy.lifecycleStages" as policy, policy_categories, severity, lifecycle_stage 
| parse regex field=policy_categories "\"(?<Categories>[^\"]*)\"" multi 
```

**StackRox/Kubernetes Violations/Kubernetes Violations by Namespace**
```
_sourceCategory={{Logsdatasource}}  deployment name namespace clusterName policy categories Kubernetes
| json "deployment.name", "deployment.namespace", "deployment.clusterName" as deployment, namespace, cluster 
| json "policy.name", "policy.categories", "policy.severity", "policy.lifecycleStages" as policy, policy_categories, severity, lifecycle_stage nodrop
| parse regex field=policy_categories "\"(?<Categories>[^\"]*)\"" multi 
```

**StackRox/Kubernetes Violations/Kubernetes Violations by Severity**
```
_sourceCategory={{Logsdatasource}}  deployment name namespace clusterName policy categories Kubernetes 
| json "deployment.name", "deployment.namespace", "deployment.clusterName" as deployment, namespace, cluster 
| json "policy.name", "policy.categories", "policy.severity", "policy.lifecycleStages" as policy, policy_categories, severity, lifecycle_stage 
| parse regex field=policy_categories "\"(?<Categories>[^\"]*)\"" multi 
```

**StackRox/Kubernetes Violations/Namespaces with Kubernetes Violations**
```
_sourceCategory={{Logsdatasource}}  deployment name namespace clusterName policy categories Kubernetes
| json "deployment.name", "deployment.namespace", "deployment.clusterName" as deployment, namespace, cluster
| json "policy.name", "policy.categories", "policy.severity", "policy.lifecycleStages" as policy, policy_categories, severity, lifecycle_stage 
| parse regex field=policy_categories "\"(?<Categories>[^\"]*)\"" multi 
```

**StackRox/Kubernetes Violations/Processes Targeting Kubernetes Endpoints**
```
_sourceCategory={{Logsdatasource}}  deployment name namespace clusterName policy lifecycleStages Kubernetes processViolation processes signal execFilePath args "Process Targeting" Endpoint
| json "deployment.name", "deployment.namespace", "deployment.clusterName" as deployment, namespace, cluster 
| json "policy.name", "policy.categories", "policy.severity", "policy.lifecycleStages" as policy, policy_categories, severity, lifecycle_stage
| json "processViolation.processes[0].signal.name", "processViolation.processes[0].signal.execFilePath", "processViolation.processes[0].signal.args" as Process, Path, Args 
| parse regex field=policy_categories "\"(?<Categories>[^\"]*)\"" multi 
```

**StackRox/Kubernetes Violations/Total number of Kubernetes Violations**
```
_sourceCategory={{Logsdatasource}}  deployment name namespace clusterName policy categories Kubernetes 
| json "deployment.name", "deployment.namespace", "deployment.clusterName" as deployment, namespace, cluster 
| json "policy.name", "policy.categories", "policy.severity", "policy.lifecycleStages" as policy, policy_categories, severity, lifecycle_stage 
| parse regex field=policy_categories "\"(?<Categories>[^\"]*)\"" multi 
```

**StackRox/Overview/Clusters with Violations**
```
_sourceCategory={{Logsdatasource}}  deployment name namespace clusterName
| json "deployment.name", "deployment.namespace", "deployment.clusterName" as deployment, namespace, cluster  
```

**StackRox/Overview/Deploy Time Violations**
```
_sourceCategory={{Logsdatasource}}  deployment name clusterName namespace policy lifecycleStages DEPLOY 
| json "deployment.name", "deployment.clusterName", "deployment.namespace", "policy.lifecycleStages" as deployment, cluster, namespace, lifecycle_stage 
```

**StackRox/Overview/Deployments with Violations**
```
_sourceCategory={{Logsdatasource}}  deployment name clusterName namespace
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace 
```

**StackRox/Overview/Most Violated Policies**
```
_sourceCategory={{Logsdatasource}}  deployment name clusterName namespace policy name
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace 
| json "policy.name" as policy
```

**StackRox/Overview/Runtime Violations**
```
_sourceCategory={{Logsdatasource}}  deployment name clusterName namespace policy lifecycleStages RUNTIME
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace
| json "policy.lifecycleStages" as lifecycle_stage 
```

**StackRox/Overview/Total number of Image Violations**
```
_sourceCategory={{Logsdatasource}}  deployment name clusterName namespace policy
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace 
| json "policy.fields.cve", "policy.fields.cvss", "policy.policySections[*].policyGroups[*].fieldName" as policy_fields_cve, policy_fields_cvss, fieldNames nodrop
```

**StackRox/Overview/Total number of Kubernetes Violations**
```
_sourceCategory={{Logsdatasource}}  deployment name clusterName namespace policy categories severity Kubernetes
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace 
| json "policy.categories", "policy.severity" as policy_categories, severity
| parse regex field=policy_categories "\"(?<Categories>[^\"]*)\"" multi 
```

**StackRox/Overview/Total Number of Violations**
```
_sourceCategory={{Logsdatasource}}  deployment name clusterName namespace
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace
```

**StackRox/Overview/Violations by Category**
```
_sourceCategory={{Logsdatasource}}  deployment name clusterName namespace policy categories
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace 
| json "policy.categories" as policy_categories
| parse regex field=policy_categories "\"(?<Categories>[^\"]*)\"" multi 
```

**StackRox/Overview/Violations by Cluster**
```
_sourceCategory={{Logsdatasource}}  deployment name clusterName namespace
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace 
```

**StackRox/Overview/Violations by Deployment Label**
```
_sourceCategory={{Logsdatasource}}  deployment name clusterName namespace labels run
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace 
| json "deployment.labels.run" as applabel 
```

**StackRox/Overview/Violations by Namespaces**
```
_sourceCategory={{Logsdatasource}}  deployment name clusterName namespace
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace 
```

**StackRox/Overview/Violations by Severity**
```
_sourceCategory={{Logsdatasource}}   deployment name clusterName namespace policy severity
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace 
| json "policy.severity" as severity 
```

**StackRox/Overview/Violations Over Time**
```
_sourceCategory={{Logsdatasource}}  deployment name clusterName namespace policy severity
| json "deployment.name", "deployment.clusterName", "deployment.namespace" as deployment, cluster, namespace 
| json "policy.severity" as severity
```

**StackRox/Runtime Violations/Anomalous Process Executions**
```
_sourceCategory={{Logsdatasource}}  deployment name namespace clusterName policy processViolation processes signal execFilePath args (true or "Anomalous Activity") RUNTIME
| json "deployment.name", "deployment.namespace", "deployment.clusterName" as deployment, namespace, cluster
| json "policy.name", "policy.categories", "policy.severity", "policy.lifecycleStages", "policy.fields.whitelistEnabled" as policy, policy_categories, severity, lifecycle_stage, whitelistEnabled nodrop
| parse regex field=policy_categories "\"(?<Categories>[^\"]*)\"" multi 
| json "processViolation.processes[0].signal.name", "processViolation.processes[0].signal.execFilePath", "processViolation.processes[0].signal.args" as Process, Path, Args 
```

**StackRox/Runtime Violations/Anomalous Process Executions by Cluster**
```
_sourceCategory={{Logsdatasource}}  deployment name namespace clusterName policy (true or "Anomalous Activity") RUNTIME
| json "deployment.name", "deployment.namespace", "deployment.clusterName" as deployment, namespace, cluster 
| json "policy.name", "policy.categories", "policy.severity", "policy.lifecycleStages", "policy.fields.whitelistEnabled" as policy, policy_categories, severity, lifecycle_stage, whitelistEnabled nodrop
| parse regex field=policy_categories "\"(?<Categories>[^\"]*)\"" multi 
```

**StackRox/Runtime Violations/Anomalous Process Executions by Deployment**
```
_sourceCategory={{Logsdatasource}}  deployment name namespace clusterName policy (true or "Anomalous Activity") RUNTIME
| json "deployment.name", "deployment.namespace", "deployment.clusterName" as deployment, namespace, cluster 
| json "policy.name", "policy.categories", "policy.severity", "policy.lifecycleStages", "policy.fields.whitelistEnabled" as policy, policy_categories, severity, lifecycle_stage, whitelistEnabled nodrop
| parse regex field=policy_categories "\"(?<Categories>[^\"]*)\"" multi 
```

**StackRox/Runtime Violations/Malicious Process Executions**
```
_sourceCategory={{Logsdatasource}}  deployment name namespace clusterName processViolation processes signal execFilePath args RUNTIME
| json "deployment.name", "deployment.namespace", "deployment.clusterName" as deployment, namespace, cluster 
| json "processViolation.processes[0].signal.name", "processViolation.processes[0].signal.execFilePath", "processViolation.processes[0].signal.args" as Process, Path, Args 
| json "policy.name", "policy.severity", "policy.lifecycleStages", "policy.fields.processPolicy", "policy.policySections[*].policyGroups[*].fieldName" as policy, severity, lifecycle_stage, policy_fields_processPolicy, fieldNames nodrop
```

**StackRox/Runtime Violations/Malicious Process Executions by Cluster**
```
_sourceCategory={{Logsdatasource}}  deployment name namespace clusterName policy lifecycleStages RUNTIME
| json "deployment.name", "deployment.namespace", "deployment.clusterName" as deployment, namespace, cluster 
| json "policy.name", "policy.severity", "policy.lifecycleStages", "policy.fields.processPolicy", "policy.policySections[*].policyGroups[*].fieldName" as policy, severity, lifecycle_stage, policy_fields_processPolicy, fieldNames nodrop
```

**StackRox/Runtime Violations/Malicious Process Executions by Deployment**
```
_sourceCategory={{Logsdatasource}}  deployment name namespace clusterName policy lifecycleStages RUNTIME
| json "deployment.name", "deployment.namespace", "deployment.clusterName" as deployment, namespace, cluster 
| json "policy.name", "policy.severity", "policy.lifecycleStages", "policy.fields.processPolicy", "policy.policySections[*].policyGroups[*].fieldName" as policy, severity, lifecycle_stage, policy_fields_processPolicy, fieldNames nodrop
```


