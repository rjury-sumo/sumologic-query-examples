# Parsers For Global Intelligence for AWS CloudTrail

**Global Intelligence for AWS CloudTrail/CloudTrail_DisableEvents,EncryptWithNewKey_CountEventResources/CloudTrail_DisableEvents,EncryptWithNewKey_CountEventResources**
```
_sourceCategory = Labs/AWS/CloudTrail 
(includeGlobalServiceEvents  or enableLogFileValidation or StopLogging or kmsKeyId)

| json "eventSource", "eventName", "errorCode" nodrop 
| where isBlank(errorCode) and eventSource="cloudtrail.amazonaws.com"  and (eventName="UpdateTrail"  or eventName="StopLogging") 
| json "requestParameters.includeGlobalServiceEvents" ,"requestParameters.enableLogFileValidation",  "requestParameters.name", "requestParameters.kmsKeyId" as inclGlobalServiceEvents, disableLogFileValidation, arn, kmsKeyId nodrop
| where (inclGlobalServiceEvents="false" or disableLogFileValidation="false" or eventName="StopLogging" or kmsKeyId="") 
| json "requestParameters.name" as name 
| "" as classification
| if (inclGlobalServiceEvents="false",concat("CloudTrail_DisableGlobalEvents_CountEventResources,",classification),classification) as classification
| if(disableLogFileValidation="false",concat("CloudTrail_DisableLogIntegrityValidation_CountEventResources,",classification),classification) as classification
| if(eventName="StopLogging",concat("CloudTrail_DisableTrails_CountEventResources,",classification),classification) as classification 
| if(kmsKeyId="",concat("CloudTrail_EncryptWithNewKey_CountEventResources,",classification),classification) as classification
| parse regex field=classification "(?<benchmarkname>[^,]+)," multi 
| parse regex field=name "(?<prefix>.*?:.*?:.*?:.*?:.*?:)?(?<resource>[^:]+$)" 
```

**Global Intelligence for AWS CloudTrail/CloudTrail_DisableGlobalEventsOrDisableLogOrEncryptWithNewKey/CloudTrail_DisableGlobalEventsOrDisableLogOrEncryptWithNewKey**
```
_sourceCategory = Labs/AWS/CloudTrail (includeGlobalServiceEvents or enableLogFileValidation or kmsKeyId)
| json "eventSource", "eventName", "errorCode" nodrop 
| where isBlank(errorCode) and eventName="UpdateTrail" and eventSource="cloudtrail.amazonaws.com" 
| json "requestParameters.includeGlobalServiceEvents", "requestParameters.enableLogFileValidation", "requestParameters.kmsKeyId" as inclGlobalServiceEvents, disableLogFileValidation, kmsKeyId nodrop
| "" as classification
| if(inclGlobalServiceEvents matches "false",concat("CloudTrail_DisableGlobalEvents,",classification),classification) as classification
| if(disableLogFileValidation matches "false",concat("CloudTrail_DisableLogIntegrityValidation,",classification ),classification) as classification
| if(_raw matches "*kmsKeyId*" and isBlank(kmsKeyId),concat("CloudTrail_EncryptWithNewKey,",classification ),classification) as classification
| if(!isBlank(classification), 1, 0) as indicator
| parse regex field=classification "(?<benchmarkname>[^,]+)," multi
```

**Global Intelligence for AWS CloudTrail/CloudTrail_DisableTrails/CloudTrail_DisableTrails**
```
_sourceCategory = Labs/AWS/CloudTrail StopLogging 
| json "eventName", "errorCode" nodrop 
```

**Global Intelligence for AWS CloudTrail/EC2_AuthorizeSecurityGroupIngressToPublic_CountEventResources/EC2_AuthorizeSecurityGroupIngressToPublic_CountEventResources**
```
_sourceCategory = Labs/AWS/CloudTrail AuthorizeSecurityGroupIngress 
| json "eventSource", "eventName", "errorCode" nodrop 
| where eventSource="ec2.amazonaws.com" and eventName="AuthorizeSecurityGroupIngress" and isBlank(errorCode) 
| json "requestParameters.ipPermissions.items[*]" as listIpPermissions 
| parse regex field=listIpPermissions "\"cidrIp\"\s*:\s*\"(?<cirdrIp>[^\"]+)\"" multi 
| parse regex field=listIpPermissions "\"ipProtocol\"\s*:\s*\"(?<ipProtocol>[^\"]+)\"" multi 
| where cirdrIp="0.0.0.0\\/0" and toString(ipProtocol)="-1" 
| json "requestParameters.groupId" as groupId 
```

**Global Intelligence for AWS CloudTrail/EC2_DescribeInstanceUserData_CountEventResources/EC2_DescribeInstanceUserData_CountEventResources**
```
_sourceCategory = Labs/AWS/CloudTrail DescribeInstanceAttribute 
| json "eventSource", "eventName", "errorCode", "requestParameters.attribute", "requestParameters.instanceId" as eventSource, eventName, errorCode, requestedAttribute, requestedInstance nodrop 
```

**Global Intelligence for AWS CloudTrail/EC2_DescribeInstanceUserData/EC2_DescribeInstanceUserData**
```
_sourceCategory = Labs/AWS/CloudTrail DescribeInstanceAttribute 
| json "eventSource", "eventName", "errorCode", "requestParameters.attribute" as eventSource, eventName, errorCode, requestedAttribute nodrop 
```

**Global Intelligence for AWS CloudTrail/EC2_DisableterminationprotectionOrListInstances_CountEventResources/EC2_DisableterminationprotectionOrListInstances_CountEventResources**
```
_sourceCategory = Labs/AWS/CloudTrail (ModifyInstanceAttribute or DescribeInstances )
| json "eventSource", "eventName", "errorCode" nodrop 
| where eventSource="ec2.amazonaws.com" and (eventName="ModifyInstanceAttribute" or eventName="DescribeInstances") and isBlank(errorCode) 
| json "requestParameters.attribute", "requestParameters.value" as attribute, val nodrop
| "" as classification
| if(eventName ="ModifyInstanceAttribute" and attribute="disableApiTermination" and val="true",concat("EC2_Disableterminationprotection_CountEventResources,",classification),classification) as classification
| if(eventName ="DescribeInstances",concat("EC2_ListInstances_CountEventResources,",classification),classification) as classification
| parse regex field=classification "(?<benchmarkname>[^,]+)," multi 
| parse regex "\"instanceId\"\s*:\s*\"(?<instanceId>[^\"]+)\"" multi 
```

**Global Intelligence for AWS CloudTrail/EC2_Events/EC2_Events**
```
_sourceCategory = Labs/AWS/CloudTrail (DescribeInstanceAttribute or ModifyInstanceAttribute or DescribeRouteTables or (AuthorizeSecurityGroupIngress and "0.0.0.0\\/0") or DescribeImages or DescribeInstances or DescribeSecurityGroups or CreateTraffic*)
| json "eventSource", "eventName", "errorCode", "requestParameters.ipPermissions.items[*]","requestParameters.attribute", "requestParameters.value" as eventSource, eventName, errorCode, listIpPermissions, attribute, val nodrop 
| where eventSource="ec2.amazonaws.com" and isBlank(errorCode) and eventName in ("AuthorizeSecurityGroupIngress","ModifyInstanceAttribute","DescribeRouteTables","DescribeImages", "DescribeInstances","DescribeSecurityGroups","CreateTrafficMirrorTarget", "CreateTrafficMirrorSession", "CreateTrafficMirrorFilter", "CreateTrafficMirrorFilterRule")  
| parse regex field=listIpPermissions "\"cidrIp\".*?:.*?(?<cirdrIp>[^\"]+)\"" multi nodrop
| parse regex field=listIpPermissions "\"ipProtocol\".*?:.*?(?<ipProtocol>[^\"]+)\"" multi nodrop
| "" as classification
| if(eventName = "ModifyInstanceAttribute" and attribute="disableApiTermination" and val="true",concat("EC2_Disableterminationprotection,",classification),classification) as classification
| if(eventName = "DescribeRouteTables",concat("EC2_DescribeRouteTables,",classification),classification) as classification
| if(eventName = "AuthorizeSecurityGroupIngress" and cirdrIp="0.0.0.0\\/0" and toString(ipProtocol)="-1" ,concat("EC2_AuthorizeSecurityGroupIngressToPublic,",classification),classification) as classification
| if(eventName = "DescribeImages",concat("EC2_ListAMIs,",classification),classification) as classification
| if(eventName = "DescribeInstances",concat("EC2_ListInstances,",classification),classification) as classification
| if(eventName = "DescribeSecurityGroups",concat("EC2_ListSecurityGroups,",classification),classification) as classification
| if(eventName in ("CreateTrafficMirrorTarget", "CreateTrafficMirrorSession", "CreateTrafficMirrorFilter", "CreateTrafficMirrorFilterRule"),concat("EC2_TrafficMirroring,",classification),classification) as classification
| parse regex field=classification "(?<benchmarkname>[^,]+)," multi 
```

**Global Intelligence for AWS CloudTrail/EC2_ListSecurityGroupsOrSecurityGroups_CountEventResources/EC2_ListSecurityGroupsOrSecurityGroups_CountEventResources**
```
_sourceCategory = Labs/AWS/CloudTrail (DescribeSecurityGroups or DescribeImages)
| json "eventSource", "eventName", "errorCode" nodrop 
| where eventSource="ec2.amazonaws.com" and (eventName="DescribeSecurityGroups" or eventName="DescribeImages") and isBlank(errorCode) 
| "" as classification
| if(eventName ="DescribeSecurityGroups" ,concat("EC2_ListSecurityGroups_CountEventResources,",classification),classification) as classification
| if(eventName ="DescribeImages",concat("EC2_ListAMIs_CountEventResources,",classification),classification) as classification
| parse regex field=classification "(?<benchmarkname>[^,]+)," multi 
| parse regex "\"groupId\"\s*:\s*\"(?<objectId>[^\"]+)\"" multi nodrop
| parse regex "\"imageId\"\s*:\s*\"(?<objectId>[^\"]+)\"" multi nodrop
```

**Global Intelligence for AWS CloudTrail/EC2_TrafficMirroringOrDescribeRouteTables_CountEventResources/EC2_TrafficMirroringOrDescribeRouteTables_CountEventResources**
```
_sourceCategory = Labs/AWS/CloudTrail ( CreateTraffic* or DescribeRouteTables)
| json "eventSource", "eventName", "errorCode" nodrop 
| where eventSource="ec2.amazonaws.com" and eventName in ("CreateTrafficMirrorTarget", "CreateTrafficMirrorSession", "CreateTrafficMirrorFilter", "CreateTrafficMirrorFilterRule","DescribeRouteTables") and isBlank(errorCode) 
| if(_raw matches /requestParameters.*?NetworkInterfaceId/,1,0) as hasNetworkInterface 
| if(_raw matches /requestParameters.*?TrafficMirrorFilterId/,1,0) as hasTrafficMirrorFilterId 
//| where hasNetworkInterface > 0 or hasTrafficMirrorFilterId > 0 
| "" as classification
| if (eventName in ("CreateTrafficMirrorTarget", "CreateTrafficMirrorSession", "CreateTrafficMirrorFilter", "CreateTrafficMirrorFilterRule") and (hasNetworkInterface > 0 or hasTrafficMirrorFilterId > 0),concat("EC2_TrafficMirroring_CountEventResources,",classification),classification) as classification
| if(eventName ="DescribeRouteTables",concat("EC2_DescribeRouteTables_CountEventResources,",classification),classification) as classification
| parse regex field=classification "(?<benchmarkname>[^,]+)," multi 
| parse regex "\"NetworkInterfaceId\"\s*:\s*\"(?<resource>[^\"]+)\"" multi nodrop 
| parse regex "\"hasTrafficMirrorFilterId\"\s*:\s*\"(?<resource>[^\"]+)\"" multi nodrop 
| parse regex "\"routeTableId\"\s*:\s*\"(?<resource>[^\"]+)\"" multi nodrop
```

**Global Intelligence for AWS CloudTrail/Event Priority Computation/Event Priority Computation**
```
_index=cloudtrail_analytics_v1_rnd4685946Wbczy2GDgJ2dKUvO2fFD
| where type in ("EventCount", "EventResourceCount")
| withtime count | most_recent(count_withtime) as count by benchmarkname | toInt(count) as count
| join (parse field=benchmarkname "*_CountEventResources" as event) as event1, (benchmarkname as event) as event2 on event1.event = event2.event
| event1_benchmarkname as benchmarkname | event1_count as resourceCount | event2_count as eventCount
| infer _category=cloudtrail _model=benchmark
| median as resourceCountBaseline
| toInt(resourceCountBaseline) as resourceCountBaseline

| event2_benchmarkname as benchmarkname
| fields benchmarkname, eventcount, resourcecount, resourcecountbaseline
| infer _category=cloudtrail _model=benchmark
| median as eventcountbaseline
| toInt(eventcountbaseline) as eventcountbaseline

| (eventCount - eventCountBaseline) as eventCount_difference | if (eventCount_difference < 0, 0, eventCount_difference) as eventCount_difference
| eventCount_difference * resourceCount as deviation
| sort by deviation
| parse field=benchmarkname "*_*" as resourceType, eventName
```

**Global Intelligence for AWS CloudTrail/IAM_AddUserToGroup,CompromisedUserOrKeys_CountEventResources/IAM_AddUserToGroup,CompromisedUserOrKeys_CountEventResources**
```
_sourceCategory = Labs/AWS/CloudTrail ( AddUser*  or "CreateAccessKey" or "CreateLoginProfile" or "UpdateLoginProfile" ) iam.amazonaws.com
| json "eventSource", "eventName", "errorCode", "requestParameters" nodrop 
| where eventName in ("AddUserToGroup", "AddUsersToGroup","CreateAccessKey", "CreateLoginProfile", "UpdateLoginProfile") and isBlank(errorCode) and eventSource="iam.amazonaws.com" 
| "" as classification
| if (eventName in ("AddUserToGroup", "AddUsersToGroup"),concat("IAM_AddUserToGroup_CountEventResources,",classification),classification) as classification
| if (eventName in ("CreateAccessKey", "CreateLoginProfile", "UpdateLoginProfile"),concat("IAM_CompromisedUserOrKeys_CountEventResources,",classification),classification) as classification
| parse regex field=classification "(?<benchmarkname>[^,]+)," multi 
| parse regex field=requestparameters "\"userName\"\s*:\s*\"(?<userName>[^\"]+)\"" multi 
```

**Global Intelligence for AWS CloudTrail/IAM_AttachPutRoleOrGroupOrUserPolicy_CountEventResources/IAM_AttachPutRoleOrGroupOrUserPolicy_CountEventResources**
```
_sourceCategory = Labs/AWS/CloudTrail *GroupPolicy or *RolePolicy or *UserPolicy
| json "eventSource", "eventName", "errorCode" nodrop 
| where eventName in ("AttachRolePolicy", "PutRolePolicy","AttachGroupPolicy", "PutGroupPolicy","AttachUserPolicy", "PutUserPolicy") and isBlank(errorCode) and eventSource="iam.amazonaws.com" 
| json "requestParameters.policyArn", "requestParameters.policyName" as policyArn, policyName nodrop 
| parse regex field=policyArn ".*?:.*?:.*?:.*?:.*?:policy/(?<resourceName>.*)" nodrop 
| "" as classification
| if (eventName in ("AttachRolePolicy", "PutRolePolicy"),concat("IAM_AttachPutRolePolicy_CountEventResources,",classification),classification) as classification
| if (eventName in ("AttachGroupPolicy", "PutGroupPolicy"),concat("IAM_AttachPutGroupPolicy_CountEventResources,",classification),classification) as classification
| if (eventName in ("AttachUserPolicy", "PutUserPolicy"),concat("IAM_AttachPutUserPolicy_CountEventResources,",classification),classification) as classification
| parse regex field=classification "(?<benchmarkname>[^,]+)," multi 
```

**Global Intelligence for AWS CloudTrail/IAM_ConsoleLoginsNoMfa/IAM_ConsoleLoginsNoMfa**
```
_sourceCategory = Labs/AWS/CloudTrail MFAUsed 
| json "eventName", "errorCode", "additionalEventData.MFAUsed" as eventName, errorCode, MFAUsed nodrop 
```

**Global Intelligence for AWS CloudTrail/IAM_ConsoleLoginsOrNoMfa_CountEventResources/IAM_ConsoleLoginsOrNoMfa_CountEventResources**
```
_sourceCategory = Labs/AWS/CloudTrail (ConsoleLogin or MFAUsed )
| json "eventName", "errorCode", "additionalEventData.MFAUsed" as eventName, errorCode, MFAUsed nodrop
| where isBlank(errorCode) and eventName="ConsoleLogin" 
| json "userIdentity.arn" as arn 
| where !isBlank(arn)
| "" as classification
| if (eventName="ConsoleLogin",concat("IAM_TotalConsoleLogins_CountEventResources,",classification),classification) as classification
| if(eventName="ConsoleLogin" and MFAUsed="No",concat("IAM_ConsoleLoginsNoMfa_CountEventResources,",classification),classification) as classification
| parse regex field=classification "(?<benchmarkname>[^,]+)," multi 
```

**Global Intelligence for AWS CloudTrail/IAM_CreateUpdatePolicy_CountEventResources/IAM_CreateUpdatePolicy_CountEventResources**
```
_sourceCategory = Labs/AWS/CloudTrail *Policy* 
| json "eventSource", "eventName", "errorCode" nodrop 
| where eventName in ("SetDefaultPolicyVersion" , "CreatePolicy", "CreatePolicyVersion") and isBlank(errorCode) and eventSource="iam.amazonaws.com" 
| parse regex "[vV]ersionId\"\s*:\s*\"(?<version>[^\"]+)\"" 
| parse regex "\"(?<arn>arn:[^\"]+)\"" multi 
| parse regex field=arn ".*?:.*?:.*?:.*?:.*?:(?<resource>[^:]+$)" multi 
```

**Global Intelligence for AWS CloudTrail/IAM_Events/IAM_Events**
```
_sourceCategory = Labs/AWS/CloudTrail (*UserPolicy or *RolePolicy or *GroupPolicy or AddUser* or *LoginProfile or CreateAccessKey or SetDefaultPolicyVersion or CreatePolicy* or HIDDEN_DUE_TO_SECURITY_REASONS or ConsoleLogin or UpdateAssumeRolePolicy)
| json "eventSource", "eventName", "errorCode","userIdentity.userName", "responseElements.ConsoleLogin" as eventSource, eventName, errorCode,userName, loginStatus nodrop 
| where (eventName in ("AttachUserPolicy", "PutUserPolicy","AttachRolePolicy", "PutRolePolicy","AttachGroupPolicy", "PutGroupPolicy","AddUserToGroup", "AddUsersToGroup","CreateAccessKey", "CreateLoginProfile", "UpdateLoginProfile","SetDefaultPolicyVersion" , "CreatePolicy", "CreatePolicyVersion", "UpdateAssumeRolePolicy") and isBlank(errorCode) and eventSource= "iam.amazonaws.com" ) or (userName = "HIDDEN_DUE_TO_SECURITY_REASONS") or (eventName = "ConsoleLogin" and isBlank(errorCode))
| "" as classification
| if(eventName in ("AttachUserPolicy", "PutUserPolicy"),concat("IAM_AttachPutUserPolicy,",classification),classification) as classification
| if(eventName in ("AttachRolePolicy", "PutRolePolicy"),concat("IAM_AttachPutRolePolicy,",classification),classification) as classification
| if(eventName in ("AttachGroupPolicy", "PutGroupPolicy"),concat("IAM_AttachPutGroupPolicy,",classification),classification) as classification
| if(eventName in ("AddUserToGroup", "AddUsersToGroup"),concat("IAM_AddUserToGroup,",classification),classification) as classification
| if(eventName in ("CreateAccessKey", "CreateLoginProfile", "UpdateLoginProfile"),concat("IAM_CompromisedUserOrKeys,",classification),classification) as classification
| if(eventName in ("SetDefaultPolicyVersion" , "CreatePolicy", "CreatePolicyVersion"),concat("IAM_CreateUpdatePolicy,",classification),classification) as classification
| if(userName="HIDDEN_DUE_TO_SECURITY_REASONS" and loginStatus="Failure",concat("IAM_ConsoleLoginFailureWithHiddenResponse,",classification),classification) as classification
| if(eventName="ConsoleLogin",concat("IAM_TotalConsoleLogins,",classification),classification) as classification
| if(eventName="UpdateAssumeRolePolicy",concat("IAM_UpdateAssumeRolePolicy,",classification),classification) as classification
| parse regex field=classification "(?<benchmarkname>[^,]+)," multi 
```

**Global Intelligence for AWS CloudTrail/IAM_TooManyAccessDenied_CountEventResources/IAM_TooManyAccessDenied_CountEventResources**
```
_sourceCategory = Labs/AWS/CloudTrail AccessDenied 
| json "eventName", "eventSource", "errorCode", "sourceIPAddress", "userIdentity.type", "userIdentity.userName" as eventName, eventSource, errorCode, sourceIPAddress, userType, userName 
```

**Global Intelligence for AWS CloudTrail/IAM_TooManyAccessDenied/IAM_TooManyAccessDenied**
```
_sourceCategory = Labs/AWS/CloudTrail AccessDenied 
| json "eventName", "eventSource", "errorCode", "sourceIPAddress", "userIdentity.type", "userIdentity.userName" as eventName, eventSource, errorCode, sourceIPAddress, userType, userName 
```

**Global Intelligence for AWS CloudTrail/IAM_UpdateAssumeRolePolicy_CountEventResources/IAM_UpdateAssumeRolePolicy_CountEventResources**
```
_sourceCategory = Labs/AWS/CloudTrail UpdateAssumeRolePolicy 
| json "eventSource", "eventName", "errorCode" nodrop 
| where eventName="UpdateAssumeRolePolicy" and isBlank(errorCode) and eventSource="iam.amazonaws.com" 
| json "requestParameters.roleName" as roleName 
```

**Global Intelligence for AWS CloudTrail/Lambda_ExcessPermissions_CountEventResources/Lambda_ExcessPermissions_CountEventResources**
```
_sourceCategory = Labs/AWS/CloudTrail lambda.amazonaws.com 
| json "eventSource", "eventName", "errorCode", "userIdentity.type" as eventSource, eventName, errorCode, userType nodrop 
| where userType="IAMUser" and isBlank(errorCode) and eventSource="lambda.amazonaws.com" and (eventName matches "CreateFunction*" or eventName matches "Invoke*" or eventName matches "CreateEventSourceMapping*" or eventName matches "UpdateFunctionCode*" or eventName matches "UpdateFunctionConfiguration*") 
| json "requestParameters.functionName" as functionName 
| parse regex field=functionName "(?<prefix>.*?:.*?:.*?:.*?:.*?:)?(?<resource>[^:]+$)" 
```

**Global Intelligence for AWS CloudTrail/Lambda_ExcessPermissionsOrInteractWithIam/Lambda_ExcessPermissionsOrInteractWithIam**
```
_sourceCategory = Labs/AWS/CloudTrail lambda.amazonaws.com 
| json "eventSource", "eventName", "errorCode", "userIdentity.type", "userIdentity.invokedBy" as eventSource, eventName, errorCode, userType, service nodrop 
| where isBlank(errorCode) and (userType="IAMUser" and eventSource="lambda.amazonaws.com" and (eventName matches "CreateFunction*" or eventName matches "Invoke*" or eventName matches "CreateEventSourceMapping*" or eventName matches "UpdateFunctionCode*" or eventName matches "UpdateFunctionConfiguration*") or (service="lambda.amazonaws.com" and userType="IAMUser"))
| "" as classification
| if (service="lambda.amazonaws.com",concat("Lambda_InteractWithIam,",classification),classification) as classification
| if(eventSource="lambda.amazonaws.com",concat("Lambda_ExcessPermissions,",classification),classification) as classification
| parse regex field=classification "(?<benchmarkname>[^,]+)," multi 
```

**Global Intelligence for AWS CloudTrail/Lambda_InteractWithIam_CountEventResources/Lambda_InteractWithIam_CountEventResources**
```
_sourceCategory = Labs/AWS/CloudTrail lambda.amazonaws.com 
| json "userIdentity.type", "userIdentity.invokedBy", "errorCode" as userType, service, errorCode nodrop 
| where service="lambda.amazonaws.com" and isBlank(errorCode) and !isBlank(service) and userType="IAMUser" 
| parse regex "\"(?<arn>arn:[^\"]+)\"" multi 
| parse regex field=arn ".*?:.*?:(?<service>[^:]+):.*?:.*?:(?<resource>[^:]+$)" 
```

**Global Intelligence for AWS CloudTrail/RDS_ModifyingAdminPassword/RDS_ModifyingAdminPassword**
```
_sourceCategory = Labs/AWS/CloudTrail ModifyDBInstance 
| json "eventSource", "eventName", "errorCode", "responseElements.pendingModifiedValues.masterUserPassword" as eventSource, eventName, errorCode, setPassword nodrop 
```

**Global Intelligence for AWS CloudTrail/RDS_ModifyingAdminPwd,RestoreFromBackup_CountEventResources/RDS_ModifyingAdminPwd,RestoreFromBackup_CountEventResources**
```
_sourceCategory = Labs/AWS/CloudTrail (ModifyDBInstance or AuthorizeDBSecurityGroupIngress or Restore*From*Snapshot)
| json "eventName", "errorCode", "eventSource", "responseElements.pendingModifiedValues.masterUserPassword" as eventName, errorCode, eventSource,setPassword nodrop
| where isBlank(errorCode) and ((eventSource="rds.amazonaws.com" and eventName="ModifyDBInstance") or eventName matches "Restore*From*Snapshot" )
| "" as classification
| if (eventSource="rds.amazonaws.com" and eventName="ModifyDBInstance" and !isBlank(setPassword),concat("RDS_ModifyingAdminPassword_CountEventResources,",classification),classification) as classification
| if(eventName matches "Restore*From*Snapshot",concat("RDS_RestoreFromBackup_CountEventResources,",classification),classification) as classification
| parse regex field=classification "(?<benchmarkname>[^,]+)," multi 
| json "requestParameters.dBInstanceIdentifier" as rdsId 
```

**Global Intelligence for AWS CloudTrail/RDS_ModifySecurityGroup_CountEventResources/RDS_ModifySecurityGroup_CountEventResources**
```
_sourceCategory = Labs/AWS/CloudTrail AuthorizeDBSecurityGroupIngress 
| json "eventName", "errorCode" nodrop 
| where isBlank(errorCode) and eventName="AuthorizeDBSecurityGroupIngress" 
| json "requestParameters.dBSecurityGroupName" as groupName 
| parse regex field=groupName "(?<prefix>.*?:.*?:.*?:.*?:.*?:)?(?<resource>[^:]+$)" 
```

**Global Intelligence for AWS CloudTrail/RDS_RestoreFromBackupOrModifySecGroup/RDS_RestoreFromBackupOrModifySecGroup**
```
_sourceCategory = Labs/AWS/CloudTrail (Restore*From*Snapshot or AuthorizeDBSecurityGroupIngress)
| json "eventName", "errorCode" as eventName, errorCode nodrop 
| where isBlank(errorCode) 
| "" as classification
| if(eventName matches "Restore*From*Snapshot",concat("RDS_RestoreFromBackup,",classification),classification) as classification
| if(eventName matches "AuthorizeDBSecurityGroupIngress",concat("RDS_ModifySecurityGroup,",classification),classification) as classification
| if(!isBlank(classification), 1, 0) as indicator
| parse regex field=classification "(?<benchmarkname>[^,]+)," multi
```

**Global Intelligence for AWS CloudTrail/Redshift_DisableEncryption,DisableAccessLogging_CountEventResources/Redshift_DisableEncryption,DisableAccessLogging_CountEventResources**
```
_sourceCategory = Labs/AWS/CloudTrail (DisableLogging or encryptionType)
| json "eventSource", "eventName", "errorCode" ,"responseElements.pendingModifiedValues.encryptionType" as eventSource, eventName, errorCode, encrypted nodrop
| where isBlank(errorCode) and eventSource="redshift.amazonaws.com" and ( eventName="DisableLogging" or (eventName="ModifyCluster" and encrypted="NONE"))
| "" as classification
| if (eventName="DisableLogging" ,concat("Redshift_DisableAccesslogging_CountEventResources,",classification),classification) as classification
| if(eventName ="ModifyCluster" and encrypted="NONE",concat("Redshift_DisableEncryption_CountEventResources,",classification),classification) as classification
| parse regex field=classification "(?<benchmarkname>[^,]+)," multi 
| json "requestParameters.clusterIdentifier" as rdsId 
```

**Global Intelligence for AWS CloudTrail/Redshift_DisableEncryption/Redshift_DisableEncryption**
```
_sourceCategory = Labs/AWS/CloudTrail encryptionType 
| json "eventSource", "eventName", "errorCode" nodrop 
| where isBlank(errorCode) and eventSource="redshift.amazonaws.com" and eventName="ModifyCluster" 
| json "responseElements.pendingModifiedValues.encryptionType" as encrypted 
```

**Global Intelligence for AWS CloudTrail/Redshift_DisableSSL_CountEventResources/Redshift_DisableSSL_CountEventResources**
```
_sourceCategory = Labs/AWS/CloudTrail ModifyClusterParameterGroup 
| json "eventSource", "eventName", "errorCode", "requestParameters.parameters" as eventSource, eventName, errorCode, listParams nodrop 
| where isBlank(errorCode) and eventSource="redshift.amazonaws.com" and eventName="ModifyClusterParameterGroup" 
| parse regex field=listParams "\{(?<param>[^\}]+\})" multi 
| concat("{", param) as param 
| json field=param "parameterName", "parameterValue" 
| where parameterName="require_ssl" and parameterValue="false" 
| json "requestParameters.parameterGroupName" as groupId 
```

**Global Intelligence for AWS CloudTrail/Redshift_DisableSSLOrDisableAccesslogging/Redshift_DisableSSLOrDisableAccesslogging**
```
_sourceCategory = Labs/AWS/CloudTrail (ModifyClusterParameterGroup or DisableLogging)
| json "eventSource", "eventName", "errorCode", "requestParameters.parameters" as eventSource, eventName, errorCode, listParams nodrop 
| where isBlank(errorCode) and eventSource="redshift.amazonaws.com" and (eventName="ModifyClusterParameterGroup" or eventName="DisableLogging")
| parse regex field=listParams "\{(?<param>[^\}]+\})" multi nodrop
| concat("{", param) as param 
| json field=param "parameterName", "parameterValue" nodrop
| "" as classification
| if (parameterName="require_ssl" and parameterValue="false",concat("Redshift_DisableSSL,",classification),classification) as classification
| if(eventName="DisableLogging",concat("Redshift_DisableAccesslogging,",classification),classification) as classification
| parse regex field=classification "(?<benchmarkname>[^,]+)," multi 
```

**Global Intelligence for AWS CloudTrail/S3_AccessDeniedOrBucketConfigChecksFromPublicIp_CountEventResources/S3_AccessDeniedOrBucketConfigChecksFromPublicIp_CountEventResources**
```
_sourceCategory = Labs/AWS/CloudTrail (AccessDenied or GetBucket*)
| json "eventSource", "eventName", "sourceIPAddress", "errorCode" nodrop 
| json "requestParameters.bucketName" as bucketName
| where eventSource="s3.amazonaws.com"  
| "" as classification
| if (errorCode="AccessDenied",concat("S3_AccessDeniedTotal_CountEventResources,",classification),classification) as classification
| if(isPublicIP(sourceIPAddress) and errorCode="AccessDenied",concat("S3_AccessDeniedForPublicIp_CountEventResources,",classification),classification) as classification
| if(isBlank(errorCode) and eventSource="s3.amazonaws.com" and eventName in ("GetBucketAcl", "GetBucketCors", "GetBucketEncryption", "GetBucketLogging", "GetBucketPolicy", "GetBucketPublicAccessBlock", "GetBucketVersioning"),concat("S3_BucketConfigChecksFromPublicIp_CountEventResources,",classification),classification) as classification
| parse regex field=classification "(?<benchmarkname>[^,]+)," multi 
```

**Global Intelligence for AWS CloudTrail/S3_AccessDeniedOrBucketConfigChecksFromPublicIp/S3_AccessDeniedOrBucketConfigChecksFromPublicIp**
```
_sourceCategory = Labs/AWS/CloudTrail (AccessDenied or GetBucket*)
| json "eventSource", "eventName", "sourceIPAddress", "errorCode" nodrop 
| where eventSource="s3.amazonaws.com"  
| "" as classification
| if(errorCode="AccessDenied",concat("S3_AccessDeniedTotal,",classification),classification) as classification
| if(isPublicIP(sourceIPAddress) and errorCode="AccessDenied",concat("S3_AccessDeniedForPublicIp,",classification),classification) as classification
| if(isBlank(errorCode) and eventName in ("GetBucketAcl", "GetBucketCors", "GetBucketEncryption", "GetBucketLogging", "GetBucketPolicy", "GetBucketPublicAccessBlock", "GetBucketVersioning"),concat("S3_BucketConfigChecksFromPublicIp,",classification),classification) as classification
| if(!isBlank(classification), 1, 0) as indicator
| parse regex field=classification "(?<benchmarkname>[^,]+)," multi
```

**Global Intelligence for AWS CloudTrail/S3_CrudBucketsFromPublicIp_CountEventResources/S3_CrudBucketsFromPublicIp_CountEventResources**
```
_sourceCategory = Labs/AWS/CloudTrail s3.amazonaws.com 
| json "eventSource", "eventName", "sourceIPAddress", "errorCode" nodrop 
| json "requestParameters.bucketName" as bucketName
```

**Global Intelligence for AWS CloudTrail/S3_CrudBucketsFromPublicIp/S3_CrudBucketsFromPublicIp**
```
_sourceCategory = Labs/AWS/CloudTrail s3.amazonaws.com 
| json "eventSource", "eventName", "sourceIPAddress", "errorCode" nodrop 
```

**Global Intelligence for AWS CloudTrail/S3_DisableMfaDeleteOrBucketVersionioningOrAccessLogging_CountEventResources/S3_DisableMfaDeleteOrBucketVersionioningOrAccessLogging_CountEventResources**
```
_sourceCategory = Labs/AWS/CloudTrail (PutBucketLogging  or Suspended or MfaDelete)

| json "eventSource", "eventName", "errorCode" nodrop 
| json "requestParameters.bucketName" as bucketName
| where isBlank(errorCode) and eventSource="s3.amazonaws.com" and (eventName="PutBucketLogging"  or eventName="PutBucketVersioning") 
| json "requestParameters.BucketLoggingStatus.LoggingEnabled" ,"requestParameters.VersioningConfiguration.Status",  "requestParameters.VersioningConfiguration.MfaDelete" as loggingEnabled, versioningStatus, mfaDelete nodrop
| where (isNull(loggingEnabled)  or versioningStatus="Suspended" or mfaDelete="Disabled") 
| "" as classification
| if (eventName="PutBucketLogging" and isNull(loggingEnabled),concat("S3_DisableAccessLogging_CountEventResources,",classification),classification) as classification
| if (eventName="PutBucketVersioning" and versioningStatus="Suspended" ,concat("S3_DisableBucketVersioning_CountEventResources,",classification),classification) as classification
| if(eventName="PutBucketVersioning" and mfaDelete="Disabled",concat("S3_DisableMfaDelete_CountEventResources,",classification),classification) as classification 
| parse regex field=classification "(?<benchmarkname>[^,]+)," multi 
```

**Global Intelligence for AWS CloudTrail/S3_DisableMfaDeleteOrBucketVersionioningOrAccessLogging/S3_DisableMfaDeleteOrBucketVersionioningOrAccessLogging**
```
_sourceCategory = Labs/AWS/CloudTrail (PutBucketLogging  or Suspended or MfaDelete)
| json "eventSource", "eventName", "errorCode" nodrop 
| where isBlank(errorCode) and eventSource="s3.amazonaws.com" and (eventName="PutBucketLogging"  or eventName="PutBucketVersioning") 
| json "requestParameters.BucketLoggingStatus.LoggingEnabled" ,"requestParameters.VersioningConfiguration.Status",  "requestParameters.VersioningConfiguration.MfaDelete" as loggingEnabled, versioningStatus, mfaDelete nodrop
| where (isNull(loggingEnabled)  or versioningStatus="Suspended" or mfaDelete="Disabled") 
| "" as classification
| if (eventName="PutBucketLogging" and isNull(loggingEnabled),concat("S3_DisableAccessLogging,",classification),classification) as classification
| if (eventName="PutBucketVersioning" and versioningStatus="Suspended" ,concat("S3_DisableBucketVersioning,",classification),classification) as classification
| if(eventName="PutBucketVersioning" and mfaDelete="Disabled",concat("S3_DisableMfaDelete,",classification),classification) as classification 
| if(!isBlank(classification), 1, 0) as indicator
| parse regex field=classification "(?<benchmarkname>[^,]+)," multi  
```

**Global Intelligence for AWS CloudTrail/S3_EnablePublicAccess_CountEventResources/S3_EnablePublicAccess_CountEventResources**
```
_sourceCategory = Labs/AWS/CloudTrail *Bucket* 
| json "eventName", "requestParameters.bucketName", "requestParameters.x-amz-acl", "requestParameters.x-amz-grant-read", "requestParameters.x-amz-grant-read-acp", "requestParameters.x-amz-grant-write", "requestParameters.x-amz-grant-write-acp","userIdentity.accountId", "userIdentity.arn", "userIdentity.sessionContext.sessionIssuer.userName", "sourceIPAddress", "requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Grantee.URI", "requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission", "eventTime", "errorCode" as event, bucket, acl, grant_read, grant_read_acp, grant_write, grant_write_acp, account, arn, user, src_ip, grant_uri, permission, datetime, errorCode nodrop 
| json "requestParameters.bucketName" as bucketName
```

**Global Intelligence for AWS CloudTrail/S3_EnablePublicAccess/S3_EnablePublicAccess**
```
_sourceCategory = Labs/AWS/CloudTrail *Bucket* 
| json "eventName", "requestParameters.bucketName", "requestParameters.x-amz-acl", "requestParameters.x-amz-grant-read", "requestParameters.x-amz-grant-read-acp", "requestParameters.x-amz-grant-write", "requestParameters.x-amz-grant-write-acp","userIdentity.accountId", "userIdentity.arn", "userIdentity.sessionContext.sessionIssuer.userName", "sourceIPAddress", "requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Grantee.URI", "requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission", "eventTime", "errorCode" as event, bucket, acl, grant_read, grant_read_acp, grant_write, grant_write_acp, account, arn, user, src_ip, grant_uri, permission, datetime, errorCode nodrop 
```

**Global Intelligence for AWS CloudTrail/S3_ListBuckets/S3_ListBuckets**
```
_sourceCategory = Labs/AWS/CloudTrail ListBuckets 
| json "eventSource", "eventName", "errorCode" nodrop 
```


