# Parsers For Global Intelligence for AWS CloudTrail

## Parser:
```
| json "errorCode" nodrop 
| parse regex "\"(?<arn>arn:[^\"]+)\"" multi 
| parse regex field=arn ".*?:.*?:(?<service>[^:]+):.*?:.*?:(?<resource>[^:]+$)" 
| parse regex field=classification "(?<benchmarkname>[^,]+)," multi 
 
```
### Use Cases:
Attack Surface: Create,Delete,Update, Attack Surface: EC2,Redshift,S3, Attack Surface: IAM,KMS,Lambda,RDS



## Parser:
```
| json "eventName", "errorCode" as eventName, errorCode nodrop 
| parse regex field=classification "(?<benchmarkname>[^,]+)," multi
 
```
### Use Cases:
Attack Surface: Create,Delete,Update, Attack Surface: EC2,Redshift,S3, Attack Surface: IAM,KMS,Lambda,RDS, Attack Surface: Service, CloudTrail_DisableEvents,EncryptWithNewKey_CountEventResources, CloudTrail_DisableGlobalEventsOrDisableLogOrEncryptWithNewKey, CloudTrail_DisableTrails, EC2_AuthorizeSecurityGroupIngressToPublic_CountEventResources, EC2_DescribeInstanceUserData, EC2_DescribeInstanceUserData_CountEventResources, EC2_DisableterminationprotectionOrListInstances_CountEventResources, EC2_Events, EC2_ListSecurityGroupsOrSecurityGroups_CountEventResources, EC2_TrafficMirroringOrDescribeRouteTables_CountEventResources, Event Priority Computation, IAM_AddUserToGroup,CompromisedUserOrKeys_CountEventResources, IAM_AttachPutRoleOrGroupOrUserPolicy_CountEventResources, IAM_ConsoleLoginsNoMfa, IAM_ConsoleLoginsOrNoMfa_CountEventResources, IAM_CreateUpdatePolicy_CountEventResources, IAM_Events, IAM_TooManyAccessDenied, IAM_TooManyAccessDenied_CountEventResources, IAM_UpdateAssumeRolePolicy_CountEventResources, Lambda_ExcessPermissions_CountEventResources, Lambda_ExcessPermissionsOrInteractWithIam, Lambda_InteractWithIam_CountEventResources, RDS_ModifyingAdminPassword, RDS_ModifyingAdminPwd,RestoreFromBackup_CountEventResources, RDS_ModifySecurityGroup_CountEventResources, RDS_RestoreFromBackupOrModifySecGroup, Redshift_DisableEncryption,DisableAccessLogging_CountEventResources, Redshift_DisableSSL_CountEventResources, S3_AccessDeniedOrBucketConfigChecksFromPublicIp_CountEventResources, S3_CrudBucketsFromPublicIp_CountEventResources, S3_DisableMfaDeleteOrBucketVersionioningOrAccessLogging_CountEventResources, S3_EnablePublicAccess_CountEventResources



## Parser:
```
| json "eventName", "errorCode" nodrop 
 
```
### Use Cases:
Attack Surface: Create,Delete,Update, Attack Surface: EC2,Redshift,S3, Attack Surface: IAM,KMS,Lambda,RDS, Attack Surface: Service, CloudTrail_DisableEvents,EncryptWithNewKey_CountEventResources, CloudTrail_DisableGlobalEventsOrDisableLogOrEncryptWithNewKey, CloudTrail_DisableTrails, EC2_AuthorizeSecurityGroupIngressToPublic_CountEventResources, EC2_DescribeInstanceUserData_CountEventResources, EC2_DisableterminationprotectionOrListInstances_CountEventResources, EC2_ListSecurityGroupsOrSecurityGroups_CountEventResources, EC2_TrafficMirroringOrDescribeRouteTables_CountEventResources, Event Priority Computation, IAM_AddUserToGroup,CompromisedUserOrKeys_CountEventResources, IAM_AttachPutRoleOrGroupOrUserPolicy_CountEventResources, IAM_ConsoleLoginsOrNoMfa_CountEventResources, IAM_CreateUpdatePolicy_CountEventResources, IAM_TooManyAccessDenied_CountEventResources, IAM_UpdateAssumeRolePolicy_CountEventResources, Lambda_ExcessPermissions_CountEventResources, Lambda_InteractWithIam_CountEventResources, RDS_ModifyingAdminPwd,RestoreFromBackup_CountEventResources, RDS_ModifySecurityGroup_CountEventResources, Redshift_DisableEncryption,DisableAccessLogging_CountEventResources, Redshift_DisableSSL_CountEventResources, S3_AccessDeniedOrBucketConfigChecksFromPublicIp_CountEventResources, S3_CrudBucketsFromPublicIp_CountEventResources, S3_DisableMfaDeleteOrBucketVersionioningOrAccessLogging_CountEventResources, S3_EnablePublicAccess_CountEventResources



## Parser:
```
| json "eventName", "errorCode" nodrop 
| json "requestParameters.dBSecurityGroupName" as groupName 
| parse regex field=groupName "(?<prefix>.*?:.*?:.*?:.*?:.*?:)?(?<resource>[^:]+$)" 
 
```
### Use Cases:
Attack Surface: Create,Delete,Update, Attack Surface: EC2,Redshift,S3, Attack Surface: IAM,KMS,Lambda,RDS, Attack Surface: Service, CloudTrail_DisableEvents,EncryptWithNewKey_CountEventResources, EC2_AuthorizeSecurityGroupIngressToPublic_CountEventResources, EC2_DescribeInstanceUserData_CountEventResources, EC2_DisableterminationprotectionOrListInstances_CountEventResources, EC2_ListSecurityGroupsOrSecurityGroups_CountEventResources, EC2_TrafficMirroringOrDescribeRouteTables_CountEventResources, Event Priority Computation, IAM_AddUserToGroup,CompromisedUserOrKeys_CountEventResources, IAM_AttachPutRoleOrGroupOrUserPolicy_CountEventResources, IAM_ConsoleLoginsOrNoMfa_CountEventResources, IAM_CreateUpdatePolicy_CountEventResources, IAM_TooManyAccessDenied_CountEventResources, IAM_UpdateAssumeRolePolicy_CountEventResources, Lambda_ExcessPermissions_CountEventResources, Lambda_InteractWithIam_CountEventResources, RDS_ModifyingAdminPwd,RestoreFromBackup_CountEventResources, RDS_ModifySecurityGroup_CountEventResources



## Parser:
```
| json "eventName", "errorCode" nodrop 
| parse regex field=classification "(?<benchmarkname>[^,]+)," multi 
 
```
### Use Cases:
Attack Surface: Create,Delete,Update



## Parser:
```
| json "eventName", "errorCode", "additionalEventData.MFAUsed" as eventName, errorCode, MFAUsed nodrop
| json "userIdentity.arn" as arn 
| parse regex field=classification "(?<benchmarkname>[^,]+)," multi 
 
```
### Use Cases:
Attack Surface: Create,Delete,Update, Attack Surface: EC2,Redshift,S3, Attack Surface: IAM,KMS,Lambda,RDS, Attack Surface: Service, CloudTrail_DisableEvents,EncryptWithNewKey_CountEventResources, EC2_AuthorizeSecurityGroupIngressToPublic_CountEventResources, EC2_DescribeInstanceUserData_CountEventResources, EC2_DisableterminationprotectionOrListInstances_CountEventResources, EC2_ListSecurityGroupsOrSecurityGroups_CountEventResources, EC2_TrafficMirroringOrDescribeRouteTables_CountEventResources, Event Priority Computation, IAM_AddUserToGroup,CompromisedUserOrKeys_CountEventResources, IAM_AttachPutRoleOrGroupOrUserPolicy_CountEventResources, IAM_ConsoleLoginsOrNoMfa_CountEventResources



## Parser:
```
| json "eventName", "errorCode", "additionalEventData.MFAUsed" as eventName, errorCode, MFAUsed nodrop 
 
```
### Use Cases:
Attack Surface: Create,Delete,Update, Attack Surface: EC2,Redshift,S3, Attack Surface: IAM,KMS,Lambda,RDS, Attack Surface: Service, CloudTrail_DisableEvents,EncryptWithNewKey_CountEventResources, CloudTrail_DisableGlobalEventsOrDisableLogOrEncryptWithNewKey, CloudTrail_DisableTrails, EC2_AuthorizeSecurityGroupIngressToPublic_CountEventResources, EC2_DescribeInstanceUserData, EC2_DescribeInstanceUserData_CountEventResources, EC2_DisableterminationprotectionOrListInstances_CountEventResources, EC2_Events, EC2_ListSecurityGroupsOrSecurityGroups_CountEventResources, EC2_TrafficMirroringOrDescribeRouteTables_CountEventResources, Event Priority Computation, IAM_AddUserToGroup,CompromisedUserOrKeys_CountEventResources, IAM_AttachPutRoleOrGroupOrUserPolicy_CountEventResources, IAM_ConsoleLoginsNoMfa, IAM_ConsoleLoginsOrNoMfa_CountEventResources, IAM_CreateUpdatePolicy_CountEventResources, IAM_TooManyAccessDenied_CountEventResources, IAM_UpdateAssumeRolePolicy_CountEventResources, Lambda_ExcessPermissions_CountEventResources, Lambda_InteractWithIam_CountEventResources, RDS_ModifyingAdminPwd,RestoreFromBackup_CountEventResources, RDS_ModifySecurityGroup_CountEventResources, Redshift_DisableEncryption,DisableAccessLogging_CountEventResources, Redshift_DisableSSL_CountEventResources, S3_AccessDeniedOrBucketConfigChecksFromPublicIp_CountEventResources, S3_CrudBucketsFromPublicIp_CountEventResources, S3_DisableMfaDeleteOrBucketVersionioningOrAccessLogging_CountEventResources, S3_EnablePublicAccess_CountEventResources



## Parser:
```
| json "eventName", "errorCode", "eventSource", "responseElements.pendingModifiedValues.masterUserPassword" as eventName, errorCode, eventSource,setPassword nodrop
| parse regex field=classification "(?<benchmarkname>[^,]+)," multi 
| json "requestParameters.dBInstanceIdentifier" as rdsId 
 
```
### Use Cases:
Attack Surface: Create,Delete,Update, Attack Surface: EC2,Redshift,S3, Attack Surface: IAM,KMS,Lambda,RDS, Attack Surface: Service, CloudTrail_DisableEvents,EncryptWithNewKey_CountEventResources, EC2_AuthorizeSecurityGroupIngressToPublic_CountEventResources, EC2_DescribeInstanceUserData_CountEventResources, EC2_DisableterminationprotectionOrListInstances_CountEventResources, EC2_ListSecurityGroupsOrSecurityGroups_CountEventResources, EC2_TrafficMirroringOrDescribeRouteTables_CountEventResources, Event Priority Computation, IAM_AddUserToGroup,CompromisedUserOrKeys_CountEventResources, IAM_AttachPutRoleOrGroupOrUserPolicy_CountEventResources, IAM_ConsoleLoginsOrNoMfa_CountEventResources, IAM_CreateUpdatePolicy_CountEventResources, IAM_TooManyAccessDenied_CountEventResources, IAM_UpdateAssumeRolePolicy_CountEventResources, Lambda_ExcessPermissions_CountEventResources, Lambda_InteractWithIam_CountEventResources, RDS_ModifyingAdminPwd,RestoreFromBackup_CountEventResources



## Parser:
```
| json "eventName", "eventSource", "errorCode", "sourceIPAddress", "userIdentity.type", "userIdentity.userName" as eventName, eventSource, errorCode, sourceIPAddress, userType, userName 
 
```
### Use Cases:
Attack Surface: Create,Delete,Update, Attack Surface: EC2,Redshift,S3, Attack Surface: IAM,KMS,Lambda,RDS, Attack Surface: Service, CloudTrail_DisableEvents,EncryptWithNewKey_CountEventResources, CloudTrail_DisableGlobalEventsOrDisableLogOrEncryptWithNewKey, CloudTrail_DisableTrails, EC2_AuthorizeSecurityGroupIngressToPublic_CountEventResources, EC2_DescribeInstanceUserData, EC2_DescribeInstanceUserData_CountEventResources, EC2_DisableterminationprotectionOrListInstances_CountEventResources, EC2_Events, EC2_ListSecurityGroupsOrSecurityGroups_CountEventResources, EC2_TrafficMirroringOrDescribeRouteTables_CountEventResources, Event Priority Computation, IAM_AddUserToGroup,CompromisedUserOrKeys_CountEventResources, IAM_AttachPutRoleOrGroupOrUserPolicy_CountEventResources, IAM_ConsoleLoginsNoMfa, IAM_ConsoleLoginsOrNoMfa_CountEventResources, IAM_CreateUpdatePolicy_CountEventResources, IAM_Events, IAM_TooManyAccessDenied, IAM_TooManyAccessDenied_CountEventResources, IAM_UpdateAssumeRolePolicy_CountEventResources, Lambda_ExcessPermissions_CountEventResources, Lambda_InteractWithIam_CountEventResources, RDS_ModifyingAdminPwd,RestoreFromBackup_CountEventResources, RDS_ModifySecurityGroup_CountEventResources, Redshift_DisableEncryption,DisableAccessLogging_CountEventResources, Redshift_DisableSSL_CountEventResources, S3_AccessDeniedOrBucketConfigChecksFromPublicIp_CountEventResources, S3_CrudBucketsFromPublicIp_CountEventResources, S3_DisableMfaDeleteOrBucketVersionioningOrAccessLogging_CountEventResources, S3_EnablePublicAccess_CountEventResources



## Parser:
```
| json "eventName", "requestParameters.bucketName", "requestParameters.x-amz-acl", "requestParameters.x-amz-grant-read", "requestParameters.x-amz-grant-read-acp", "requestParameters.x-amz-grant-write", "requestParameters.x-amz-grant-write-acp","userIdentity.accountId", "userIdentity.arn", "userIdentity.sessionContext.sessionIssuer.userName", "sourceIPAddress", "requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Grantee.URI", "requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission", "eventTime", "errorCode" as event, bucket, acl, grant_read, grant_read_acp, grant_write, grant_write_acp, account, arn, user, src_ip, grant_uri, permission, datetime, errorCode nodrop 
 
```
### Use Cases:
Attack Surface: Create,Delete,Update, Attack Surface: EC2,Redshift,S3, Attack Surface: IAM,KMS,Lambda,RDS, Attack Surface: Service, CloudTrail_DisableEvents,EncryptWithNewKey_CountEventResources, CloudTrail_DisableGlobalEventsOrDisableLogOrEncryptWithNewKey, CloudTrail_DisableTrails, EC2_AuthorizeSecurityGroupIngressToPublic_CountEventResources, EC2_DescribeInstanceUserData, EC2_DescribeInstanceUserData_CountEventResources, EC2_DisableterminationprotectionOrListInstances_CountEventResources, EC2_Events, EC2_ListSecurityGroupsOrSecurityGroups_CountEventResources, EC2_TrafficMirroringOrDescribeRouteTables_CountEventResources, Event Priority Computation, IAM_AddUserToGroup,CompromisedUserOrKeys_CountEventResources, IAM_AttachPutRoleOrGroupOrUserPolicy_CountEventResources, IAM_ConsoleLoginsNoMfa, IAM_ConsoleLoginsOrNoMfa_CountEventResources, IAM_CreateUpdatePolicy_CountEventResources, IAM_Events, IAM_TooManyAccessDenied, IAM_TooManyAccessDenied_CountEventResources, IAM_UpdateAssumeRolePolicy_CountEventResources, Lambda_ExcessPermissions_CountEventResources, Lambda_ExcessPermissionsOrInteractWithIam, Lambda_InteractWithIam_CountEventResources, RDS_ModifyingAdminPassword, RDS_ModifyingAdminPwd,RestoreFromBackup_CountEventResources, RDS_ModifySecurityGroup_CountEventResources, RDS_RestoreFromBackupOrModifySecGroup, Redshift_DisableEncryption, Redshift_DisableEncryption,DisableAccessLogging_CountEventResources, Redshift_DisableSSL_CountEventResources, Redshift_DisableSSLOrDisableAccesslogging, S3_AccessDeniedOrBucketConfigChecksFromPublicIp, S3_AccessDeniedOrBucketConfigChecksFromPublicIp_CountEventResources, S3_CrudBucketsFromPublicIp, S3_CrudBucketsFromPublicIp_CountEventResources, S3_DisableMfaDeleteOrBucketVersionioningOrAccessLogging, S3_DisableMfaDeleteOrBucketVersionioningOrAccessLogging_CountEventResources, S3_EnablePublicAccess, S3_EnablePublicAccess_CountEventResources



## Parser:
```
| json "eventName", "requestParameters.bucketName", "requestParameters.x-amz-acl", "requestParameters.x-amz-grant-read", "requestParameters.x-amz-grant-read-acp", "requestParameters.x-amz-grant-write", "requestParameters.x-amz-grant-write-acp","userIdentity.accountId", "userIdentity.arn", "userIdentity.sessionContext.sessionIssuer.userName", "sourceIPAddress", "requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Grantee.URI", "requestParameters.AccessControlPolicy.AccessControlList.Grant[*].Permission", "eventTime", "errorCode" as event, bucket, acl, grant_read, grant_read_acp, grant_write, grant_write_acp, account, arn, user, src_ip, grant_uri, permission, datetime, errorCode nodrop 
| json "requestParameters.bucketName" as bucketName
 
```
### Use Cases:
Attack Surface: Create,Delete,Update, Attack Surface: EC2,Redshift,S3, Attack Surface: IAM,KMS,Lambda,RDS, Attack Surface: Service, CloudTrail_DisableEvents,EncryptWithNewKey_CountEventResources, EC2_AuthorizeSecurityGroupIngressToPublic_CountEventResources, EC2_DescribeInstanceUserData_CountEventResources, EC2_DisableterminationprotectionOrListInstances_CountEventResources, EC2_ListSecurityGroupsOrSecurityGroups_CountEventResources, EC2_TrafficMirroringOrDescribeRouteTables_CountEventResources, Event Priority Computation, IAM_AddUserToGroup,CompromisedUserOrKeys_CountEventResources, IAM_AttachPutRoleOrGroupOrUserPolicy_CountEventResources, IAM_ConsoleLoginsOrNoMfa_CountEventResources, IAM_CreateUpdatePolicy_CountEventResources, IAM_TooManyAccessDenied_CountEventResources, IAM_UpdateAssumeRolePolicy_CountEventResources, Lambda_ExcessPermissions_CountEventResources, Lambda_InteractWithIam_CountEventResources, RDS_ModifyingAdminPwd,RestoreFromBackup_CountEventResources, RDS_ModifySecurityGroup_CountEventResources, Redshift_DisableEncryption,DisableAccessLogging_CountEventResources, Redshift_DisableSSL_CountEventResources, S3_AccessDeniedOrBucketConfigChecksFromPublicIp_CountEventResources, S3_CrudBucketsFromPublicIp_CountEventResources, S3_DisableMfaDeleteOrBucketVersionioningOrAccessLogging_CountEventResources, S3_EnablePublicAccess_CountEventResources



## Parser:
```
| json "eventSource", "errorCode" nodrop 
 
```
### Use Cases:
Attack Surface: Create,Delete,Update, Attack Surface: EC2,Redshift,S3, Attack Surface: IAM,KMS,Lambda,RDS, Attack Surface: Service



## Parser:
```
| json "eventSource", "errorCode" nodrop 
| parse regex "\"(?<objectType>instanceId|clusterIdentifier|bucketName)\".*?:.*?(?<objectId>[^\"]+)\"" multi 
| parse regex field=classification "(?<benchmarkname>[^,]+)," multi 
 
```
### Use Cases:
Attack Surface: Create,Delete,Update, Attack Surface: EC2,Redshift,S3



## Parser:
```
| json "eventSource", "eventName", "errorCode" ,"responseElements.pendingModifiedValues.encryptionType" as eventSource, eventName, errorCode, encrypted nodrop
| parse regex field=classification "(?<benchmarkname>[^,]+)," multi 
| json "requestParameters.clusterIdentifier" as rdsId 
 
```
### Use Cases:
Attack Surface: Create,Delete,Update, Attack Surface: EC2,Redshift,S3, Attack Surface: IAM,KMS,Lambda,RDS, Attack Surface: Service, CloudTrail_DisableEvents,EncryptWithNewKey_CountEventResources, EC2_AuthorizeSecurityGroupIngressToPublic_CountEventResources, EC2_DescribeInstanceUserData_CountEventResources, EC2_DisableterminationprotectionOrListInstances_CountEventResources, EC2_ListSecurityGroupsOrSecurityGroups_CountEventResources, EC2_TrafficMirroringOrDescribeRouteTables_CountEventResources, Event Priority Computation, IAM_AddUserToGroup,CompromisedUserOrKeys_CountEventResources, IAM_AttachPutRoleOrGroupOrUserPolicy_CountEventResources, IAM_ConsoleLoginsOrNoMfa_CountEventResources, IAM_CreateUpdatePolicy_CountEventResources, IAM_TooManyAccessDenied_CountEventResources, IAM_UpdateAssumeRolePolicy_CountEventResources, Lambda_ExcessPermissions_CountEventResources, Lambda_InteractWithIam_CountEventResources, RDS_ModifyingAdminPwd,RestoreFromBackup_CountEventResources, RDS_ModifySecurityGroup_CountEventResources, Redshift_DisableEncryption,DisableAccessLogging_CountEventResources



## Parser:
```
| json "eventSource", "eventName", "errorCode" nodrop 
 
```
### Use Cases:
Attack Surface: Create,Delete,Update, Attack Surface: EC2,Redshift,S3, Attack Surface: IAM,KMS,Lambda,RDS, Attack Surface: Service, CloudTrail_DisableEvents,EncryptWithNewKey_CountEventResources, CloudTrail_DisableGlobalEventsOrDisableLogOrEncryptWithNewKey, CloudTrail_DisableTrails, EC2_AuthorizeSecurityGroupIngressToPublic_CountEventResources, EC2_DescribeInstanceUserData, EC2_DescribeInstanceUserData_CountEventResources, EC2_DisableterminationprotectionOrListInstances_CountEventResources, EC2_Events, EC2_ListSecurityGroupsOrSecurityGroups_CountEventResources, EC2_TrafficMirroringOrDescribeRouteTables_CountEventResources, Event Priority Computation, IAM_AddUserToGroup,CompromisedUserOrKeys_CountEventResources, IAM_AttachPutRoleOrGroupOrUserPolicy_CountEventResources, IAM_ConsoleLoginsNoMfa, IAM_ConsoleLoginsOrNoMfa_CountEventResources, IAM_CreateUpdatePolicy_CountEventResources, IAM_Events, IAM_TooManyAccessDenied, IAM_TooManyAccessDenied_CountEventResources, IAM_UpdateAssumeRolePolicy_CountEventResources, Lambda_ExcessPermissions_CountEventResources, Lambda_ExcessPermissionsOrInteractWithIam, Lambda_InteractWithIam_CountEventResources, RDS_ModifyingAdminPassword, RDS_ModifyingAdminPwd,RestoreFromBackup_CountEventResources, RDS_ModifySecurityGroup_CountEventResources, RDS_RestoreFromBackupOrModifySecGroup, Redshift_DisableEncryption, Redshift_DisableEncryption,DisableAccessLogging_CountEventResources, Redshift_DisableSSL_CountEventResources, Redshift_DisableSSLOrDisableAccesslogging, S3_AccessDeniedOrBucketConfigChecksFromPublicIp, S3_AccessDeniedOrBucketConfigChecksFromPublicIp_CountEventResources, S3_CrudBucketsFromPublicIp, S3_CrudBucketsFromPublicIp_CountEventResources, S3_DisableMfaDeleteOrBucketVersionioningOrAccessLogging, S3_DisableMfaDeleteOrBucketVersionioningOrAccessLogging_CountEventResources, S3_EnablePublicAccess, S3_EnablePublicAccess_CountEventResources, S3_ListBuckets



## Parser:
```
| json "eventSource", "eventName", "errorCode" nodrop 
| json "requestParameters.attribute", "requestParameters.value" as attribute, val nodrop
| parse regex field=classification "(?<benchmarkname>[^,]+)," multi 
| parse regex "\"instanceId\"\s*:\s*\"(?<instanceId>[^\"]+)\"" multi 
 
```
### Use Cases:
Attack Surface: Create,Delete,Update, Attack Surface: EC2,Redshift,S3, Attack Surface: IAM,KMS,Lambda,RDS, Attack Surface: Service, CloudTrail_DisableEvents,EncryptWithNewKey_CountEventResources, EC2_AuthorizeSecurityGroupIngressToPublic_CountEventResources, EC2_DescribeInstanceUserData_CountEventResources, EC2_DisableterminationprotectionOrListInstances_CountEventResources, Event Priority Computation



## Parser:
```
| json "eventSource", "eventName", "errorCode" nodrop 
| json "requestParameters.BucketLoggingStatus.LoggingEnabled" ,"requestParameters.VersioningConfiguration.Status",  "requestParameters.VersioningConfiguration.MfaDelete" as loggingEnabled, versioningStatus, mfaDelete nodrop
| parse regex field=classification "(?<benchmarkname>[^,]+)," multi  
 
```
### Use Cases:
Attack Surface: Create,Delete,Update, Attack Surface: EC2,Redshift,S3, Attack Surface: IAM,KMS,Lambda,RDS, Attack Surface: Service, CloudTrail_DisableEvents,EncryptWithNewKey_CountEventResources, CloudTrail_DisableGlobalEventsOrDisableLogOrEncryptWithNewKey, CloudTrail_DisableTrails, EC2_AuthorizeSecurityGroupIngressToPublic_CountEventResources, EC2_DescribeInstanceUserData, EC2_DescribeInstanceUserData_CountEventResources, EC2_DisableterminationprotectionOrListInstances_CountEventResources, EC2_Events, EC2_ListSecurityGroupsOrSecurityGroups_CountEventResources, EC2_TrafficMirroringOrDescribeRouteTables_CountEventResources, Event Priority Computation, IAM_AddUserToGroup,CompromisedUserOrKeys_CountEventResources, IAM_AttachPutRoleOrGroupOrUserPolicy_CountEventResources, IAM_ConsoleLoginsNoMfa, IAM_ConsoleLoginsOrNoMfa_CountEventResources, IAM_CreateUpdatePolicy_CountEventResources, IAM_Events, IAM_TooManyAccessDenied, IAM_TooManyAccessDenied_CountEventResources, IAM_UpdateAssumeRolePolicy_CountEventResources, Lambda_ExcessPermissions_CountEventResources, Lambda_ExcessPermissionsOrInteractWithIam, Lambda_InteractWithIam_CountEventResources, RDS_ModifyingAdminPassword, RDS_ModifyingAdminPwd,RestoreFromBackup_CountEventResources, RDS_ModifySecurityGroup_CountEventResources, RDS_RestoreFromBackupOrModifySecGroup, Redshift_DisableEncryption, Redshift_DisableEncryption,DisableAccessLogging_CountEventResources, Redshift_DisableSSL_CountEventResources, Redshift_DisableSSLOrDisableAccesslogging, S3_AccessDeniedOrBucketConfigChecksFromPublicIp, S3_AccessDeniedOrBucketConfigChecksFromPublicIp_CountEventResources, S3_CrudBucketsFromPublicIp, S3_CrudBucketsFromPublicIp_CountEventResources, S3_DisableMfaDeleteOrBucketVersionioningOrAccessLogging, S3_DisableMfaDeleteOrBucketVersionioningOrAccessLogging_CountEventResources, S3_EnablePublicAccess_CountEventResources



## Parser:
```
| json "eventSource", "eventName", "errorCode" nodrop 
| json "requestParameters.bucketName" as bucketName
| json "requestParameters.BucketLoggingStatus.LoggingEnabled" ,"requestParameters.VersioningConfiguration.Status",  "requestParameters.VersioningConfiguration.MfaDelete" as loggingEnabled, versioningStatus, mfaDelete nodrop
| parse regex field=classification "(?<benchmarkname>[^,]+)," multi 
 
```
### Use Cases:
Attack Surface: Create,Delete,Update, Attack Surface: EC2,Redshift,S3, Attack Surface: IAM,KMS,Lambda,RDS, Attack Surface: Service, CloudTrail_DisableEvents,EncryptWithNewKey_CountEventResources, EC2_AuthorizeSecurityGroupIngressToPublic_CountEventResources, EC2_DescribeInstanceUserData_CountEventResources, EC2_DisableterminationprotectionOrListInstances_CountEventResources, EC2_ListSecurityGroupsOrSecurityGroups_CountEventResources, EC2_TrafficMirroringOrDescribeRouteTables_CountEventResources, Event Priority Computation, IAM_AddUserToGroup,CompromisedUserOrKeys_CountEventResources, IAM_AttachPutRoleOrGroupOrUserPolicy_CountEventResources, IAM_ConsoleLoginsOrNoMfa_CountEventResources, IAM_CreateUpdatePolicy_CountEventResources, IAM_TooManyAccessDenied_CountEventResources, IAM_UpdateAssumeRolePolicy_CountEventResources, Lambda_ExcessPermissions_CountEventResources, Lambda_InteractWithIam_CountEventResources, RDS_ModifyingAdminPwd,RestoreFromBackup_CountEventResources, RDS_ModifySecurityGroup_CountEventResources, Redshift_DisableEncryption,DisableAccessLogging_CountEventResources, Redshift_DisableSSL_CountEventResources, S3_AccessDeniedOrBucketConfigChecksFromPublicIp_CountEventResources, S3_CrudBucketsFromPublicIp_CountEventResources, S3_DisableMfaDeleteOrBucketVersionioningOrAccessLogging_CountEventResources



## Parser:
```
| json "eventSource", "eventName", "errorCode" nodrop 
| json "requestParameters.includeGlobalServiceEvents" ,"requestParameters.enableLogFileValidation",  "requestParameters.name", "requestParameters.kmsKeyId" as inclGlobalServiceEvents, disableLogFileValidation, arn, kmsKeyId nodrop
| json "requestParameters.name" as name 
| parse regex field=classification "(?<benchmarkname>[^,]+)," multi 
| parse regex field=name "(?<prefix>.*?:.*?:.*?:.*?:.*?:)?(?<resource>[^:]+$)" 
 
```
### Use Cases:
Attack Surface: Create,Delete,Update, Attack Surface: EC2,Redshift,S3, Attack Surface: IAM,KMS,Lambda,RDS, Attack Surface: Service, CloudTrail_DisableEvents,EncryptWithNewKey_CountEventResources, Event Priority Computation



## Parser:
```
| json "eventSource", "eventName", "errorCode" nodrop 
| json "requestParameters.includeGlobalServiceEvents", "requestParameters.enableLogFileValidation", "requestParameters.kmsKeyId" as inclGlobalServiceEvents, disableLogFileValidation, kmsKeyId nodrop
| parse regex field=classification "(?<benchmarkname>[^,]+)," multi
 
```
### Use Cases:
Attack Surface: Create,Delete,Update, Attack Surface: EC2,Redshift,S3, Attack Surface: IAM,KMS,Lambda,RDS, Attack Surface: Service, CloudTrail_DisableEvents,EncryptWithNewKey_CountEventResources, CloudTrail_DisableGlobalEventsOrDisableLogOrEncryptWithNewKey, EC2_AuthorizeSecurityGroupIngressToPublic_CountEventResources, EC2_DescribeInstanceUserData_CountEventResources, EC2_DisableterminationprotectionOrListInstances_CountEventResources, EC2_ListSecurityGroupsOrSecurityGroups_CountEventResources, EC2_TrafficMirroringOrDescribeRouteTables_CountEventResources, Event Priority Computation, IAM_AddUserToGroup,CompromisedUserOrKeys_CountEventResources, IAM_AttachPutRoleOrGroupOrUserPolicy_CountEventResources, IAM_ConsoleLoginsOrNoMfa_CountEventResources, IAM_CreateUpdatePolicy_CountEventResources, IAM_TooManyAccessDenied_CountEventResources, IAM_UpdateAssumeRolePolicy_CountEventResources, Lambda_ExcessPermissions_CountEventResources, Lambda_InteractWithIam_CountEventResources, RDS_ModifyingAdminPwd,RestoreFromBackup_CountEventResources, RDS_ModifySecurityGroup_CountEventResources, Redshift_DisableEncryption,DisableAccessLogging_CountEventResources, Redshift_DisableSSL_CountEventResources, S3_AccessDeniedOrBucketConfigChecksFromPublicIp_CountEventResources, S3_CrudBucketsFromPublicIp_CountEventResources, S3_DisableMfaDeleteOrBucketVersionioningOrAccessLogging_CountEventResources, S3_EnablePublicAccess_CountEventResources



## Parser:
```
| json "eventSource", "eventName", "errorCode" nodrop 
| json "requestParameters.ipPermissions.items[*]" as listIpPermissions 
| parse regex field=listIpPermissions "\"cidrIp\"\s*:\s*\"(?<cirdrIp>[^\"]+)\"" multi 
| parse regex field=listIpPermissions "\"ipProtocol\"\s*:\s*\"(?<ipProtocol>[^\"]+)\"" multi 
| json "requestParameters.groupId" as groupId 
 
```
### Use Cases:
Attack Surface: Create,Delete,Update, Attack Surface: EC2,Redshift,S3, Attack Surface: IAM,KMS,Lambda,RDS, Attack Surface: Service, CloudTrail_DisableEvents,EncryptWithNewKey_CountEventResources, EC2_AuthorizeSecurityGroupIngressToPublic_CountEventResources, Event Priority Computation



## Parser:
```
| json "eventSource", "eventName", "errorCode" nodrop 
| json "requestParameters.policyArn", "requestParameters.policyName" as policyArn, policyName nodrop 
| parse regex field=policyArn ".*?:.*?:.*?:.*?:.*?:policy/(?<resourceName>.*)" nodrop 
| parse regex field=classification "(?<benchmarkname>[^,]+)," multi 
 
```
### Use Cases:
Attack Surface: Create,Delete,Update, Attack Surface: EC2,Redshift,S3, Attack Surface: IAM,KMS,Lambda,RDS, Attack Surface: Service, CloudTrail_DisableEvents,EncryptWithNewKey_CountEventResources, EC2_AuthorizeSecurityGroupIngressToPublic_CountEventResources, EC2_DescribeInstanceUserData_CountEventResources, EC2_DisableterminationprotectionOrListInstances_CountEventResources, EC2_ListSecurityGroupsOrSecurityGroups_CountEventResources, EC2_TrafficMirroringOrDescribeRouteTables_CountEventResources, Event Priority Computation, IAM_AddUserToGroup,CompromisedUserOrKeys_CountEventResources, IAM_AttachPutRoleOrGroupOrUserPolicy_CountEventResources



## Parser:
```
| json "eventSource", "eventName", "errorCode" nodrop 
| json "requestParameters.roleName" as roleName 
 
```
### Use Cases:
Attack Surface: Create,Delete,Update, Attack Surface: EC2,Redshift,S3, Attack Surface: IAM,KMS,Lambda,RDS, Attack Surface: Service, CloudTrail_DisableEvents,EncryptWithNewKey_CountEventResources, EC2_AuthorizeSecurityGroupIngressToPublic_CountEventResources, EC2_DescribeInstanceUserData_CountEventResources, EC2_DisableterminationprotectionOrListInstances_CountEventResources, EC2_ListSecurityGroupsOrSecurityGroups_CountEventResources, EC2_TrafficMirroringOrDescribeRouteTables_CountEventResources, Event Priority Computation, IAM_AddUserToGroup,CompromisedUserOrKeys_CountEventResources, IAM_AttachPutRoleOrGroupOrUserPolicy_CountEventResources, IAM_ConsoleLoginsOrNoMfa_CountEventResources, IAM_CreateUpdatePolicy_CountEventResources, IAM_TooManyAccessDenied_CountEventResources, IAM_UpdateAssumeRolePolicy_CountEventResources



## Parser:
```
| json "eventSource", "eventName", "errorCode" nodrop 
| json "responseElements.pendingModifiedValues.encryptionType" as encrypted 
 
```
### Use Cases:
Attack Surface: Create,Delete,Update, Attack Surface: EC2,Redshift,S3, Attack Surface: IAM,KMS,Lambda,RDS, Attack Surface: Service, CloudTrail_DisableEvents,EncryptWithNewKey_CountEventResources, CloudTrail_DisableGlobalEventsOrDisableLogOrEncryptWithNewKey, CloudTrail_DisableTrails, EC2_AuthorizeSecurityGroupIngressToPublic_CountEventResources, EC2_DescribeInstanceUserData, EC2_DescribeInstanceUserData_CountEventResources, EC2_DisableterminationprotectionOrListInstances_CountEventResources, EC2_Events, EC2_ListSecurityGroupsOrSecurityGroups_CountEventResources, EC2_TrafficMirroringOrDescribeRouteTables_CountEventResources, Event Priority Computation, IAM_AddUserToGroup,CompromisedUserOrKeys_CountEventResources, IAM_AttachPutRoleOrGroupOrUserPolicy_CountEventResources, IAM_ConsoleLoginsNoMfa, IAM_ConsoleLoginsOrNoMfa_CountEventResources, IAM_CreateUpdatePolicy_CountEventResources, IAM_Events, IAM_TooManyAccessDenied, IAM_TooManyAccessDenied_CountEventResources, IAM_UpdateAssumeRolePolicy_CountEventResources, Lambda_ExcessPermissions_CountEventResources, Lambda_ExcessPermissionsOrInteractWithIam, Lambda_InteractWithIam_CountEventResources, RDS_ModifyingAdminPassword, RDS_ModifyingAdminPwd,RestoreFromBackup_CountEventResources, RDS_ModifySecurityGroup_CountEventResources, RDS_RestoreFromBackupOrModifySecGroup, Redshift_DisableEncryption, Redshift_DisableEncryption,DisableAccessLogging_CountEventResources, Redshift_DisableSSL_CountEventResources, S3_AccessDeniedOrBucketConfigChecksFromPublicIp_CountEventResources, S3_CrudBucketsFromPublicIp_CountEventResources, S3_DisableMfaDeleteOrBucketVersionioningOrAccessLogging_CountEventResources, S3_EnablePublicAccess_CountEventResources



## Parser:
```
| json "eventSource", "eventName", "errorCode" nodrop 
| parse regex "[vV]ersionId\"\s*:\s*\"(?<version>[^\"]+)\"" 
| parse regex "\"(?<arn>arn:[^\"]+)\"" multi 
| parse regex field=arn ".*?:.*?:.*?:.*?:.*?:(?<resource>[^:]+$)" multi 
 
```
### Use Cases:
Attack Surface: Create,Delete,Update, Attack Surface: EC2,Redshift,S3, Attack Surface: IAM,KMS,Lambda,RDS, Attack Surface: Service, CloudTrail_DisableEvents,EncryptWithNewKey_CountEventResources, EC2_AuthorizeSecurityGroupIngressToPublic_CountEventResources, EC2_DescribeInstanceUserData_CountEventResources, EC2_DisableterminationprotectionOrListInstances_CountEventResources, EC2_ListSecurityGroupsOrSecurityGroups_CountEventResources, EC2_TrafficMirroringOrDescribeRouteTables_CountEventResources, Event Priority Computation, IAM_AddUserToGroup,CompromisedUserOrKeys_CountEventResources, IAM_AttachPutRoleOrGroupOrUserPolicy_CountEventResources, IAM_ConsoleLoginsOrNoMfa_CountEventResources, IAM_CreateUpdatePolicy_CountEventResources



## Parser:
```
| json "eventSource", "eventName", "errorCode" nodrop 
| parse regex field=classification "(?<benchmarkname>[^,]+)," multi 
| parse regex "\"groupId\"\s*:\s*\"(?<objectId>[^\"]+)\"" multi nodrop
| parse regex "\"imageId\"\s*:\s*\"(?<objectId>[^\"]+)\"" multi nodrop
 
```
### Use Cases:
Attack Surface: Create,Delete,Update, Attack Surface: EC2,Redshift,S3, Attack Surface: IAM,KMS,Lambda,RDS, Attack Surface: Service, CloudTrail_DisableEvents,EncryptWithNewKey_CountEventResources, EC2_AuthorizeSecurityGroupIngressToPublic_CountEventResources, EC2_DescribeInstanceUserData_CountEventResources, EC2_DisableterminationprotectionOrListInstances_CountEventResources, EC2_ListSecurityGroupsOrSecurityGroups_CountEventResources, Event Priority Computation



## Parser:
```
| json "eventSource", "eventName", "errorCode" nodrop 
| parse regex field=classification "(?<benchmarkname>[^,]+)," multi 
| parse regex "\"NetworkInterfaceId\"\s*:\s*\"(?<resource>[^\"]+)\"" multi nodrop 
| parse regex "\"hasTrafficMirrorFilterId\"\s*:\s*\"(?<resource>[^\"]+)\"" multi nodrop 
| parse regex "\"routeTableId\"\s*:\s*\"(?<resource>[^\"]+)\"" multi nodrop
 
```
### Use Cases:
Attack Surface: Create,Delete,Update, Attack Surface: EC2,Redshift,S3, Attack Surface: IAM,KMS,Lambda,RDS, Attack Surface: Service, CloudTrail_DisableEvents,EncryptWithNewKey_CountEventResources, EC2_AuthorizeSecurityGroupIngressToPublic_CountEventResources, EC2_DescribeInstanceUserData_CountEventResources, EC2_DisableterminationprotectionOrListInstances_CountEventResources, EC2_ListSecurityGroupsOrSecurityGroups_CountEventResources, EC2_TrafficMirroringOrDescribeRouteTables_CountEventResources, Event Priority Computation



## Parser:
```
| json "eventSource", "eventName", "errorCode", "requestParameters.attribute" as eventSource, eventName, errorCode, requestedAttribute nodrop 
 
```
### Use Cases:
Attack Surface: Create,Delete,Update, Attack Surface: EC2,Redshift,S3, Attack Surface: IAM,KMS,Lambda,RDS, Attack Surface: Service, CloudTrail_DisableEvents,EncryptWithNewKey_CountEventResources, CloudTrail_DisableGlobalEventsOrDisableLogOrEncryptWithNewKey, CloudTrail_DisableTrails, EC2_AuthorizeSecurityGroupIngressToPublic_CountEventResources, EC2_DescribeInstanceUserData, EC2_DescribeInstanceUserData_CountEventResources, EC2_DisableterminationprotectionOrListInstances_CountEventResources, EC2_ListSecurityGroupsOrSecurityGroups_CountEventResources, EC2_TrafficMirroringOrDescribeRouteTables_CountEventResources, Event Priority Computation, IAM_AddUserToGroup,CompromisedUserOrKeys_CountEventResources, IAM_AttachPutRoleOrGroupOrUserPolicy_CountEventResources, IAM_ConsoleLoginsOrNoMfa_CountEventResources, IAM_CreateUpdatePolicy_CountEventResources, IAM_TooManyAccessDenied_CountEventResources, IAM_UpdateAssumeRolePolicy_CountEventResources, Lambda_ExcessPermissions_CountEventResources, Lambda_InteractWithIam_CountEventResources, RDS_ModifyingAdminPwd,RestoreFromBackup_CountEventResources, RDS_ModifySecurityGroup_CountEventResources, Redshift_DisableEncryption,DisableAccessLogging_CountEventResources, Redshift_DisableSSL_CountEventResources, S3_AccessDeniedOrBucketConfigChecksFromPublicIp_CountEventResources, S3_CrudBucketsFromPublicIp_CountEventResources, S3_DisableMfaDeleteOrBucketVersionioningOrAccessLogging_CountEventResources, S3_EnablePublicAccess_CountEventResources



## Parser:
```
| json "eventSource", "eventName", "errorCode", "requestParameters.attribute", "requestParameters.instanceId" as eventSource, eventName, errorCode, requestedAttribute, requestedInstance nodrop 
 
```
### Use Cases:
Attack Surface: Create,Delete,Update, Attack Surface: EC2,Redshift,S3, Attack Surface: IAM,KMS,Lambda,RDS, Attack Surface: Service, CloudTrail_DisableEvents,EncryptWithNewKey_CountEventResources, EC2_AuthorizeSecurityGroupIngressToPublic_CountEventResources, EC2_DescribeInstanceUserData_CountEventResources, Event Priority Computation



## Parser:
```
| json "eventSource", "eventName", "errorCode", "requestParameters.ipPermissions.items[*]","requestParameters.attribute", "requestParameters.value" as eventSource, eventName, errorCode, listIpPermissions, attribute, val nodrop 
| parse regex field=listIpPermissions "\"cidrIp\".*?:.*?(?<cirdrIp>[^\"]+)\"" multi nodrop
| parse regex field=listIpPermissions "\"ipProtocol\".*?:.*?(?<ipProtocol>[^\"]+)\"" multi nodrop
| parse regex field=classification "(?<benchmarkname>[^,]+)," multi 
 
```
### Use Cases:
Attack Surface: Create,Delete,Update, Attack Surface: EC2,Redshift,S3, Attack Surface: IAM,KMS,Lambda,RDS, Attack Surface: Service, CloudTrail_DisableEvents,EncryptWithNewKey_CountEventResources, CloudTrail_DisableGlobalEventsOrDisableLogOrEncryptWithNewKey, CloudTrail_DisableTrails, EC2_AuthorizeSecurityGroupIngressToPublic_CountEventResources, EC2_DescribeInstanceUserData, EC2_DescribeInstanceUserData_CountEventResources, EC2_DisableterminationprotectionOrListInstances_CountEventResources, EC2_Events, EC2_ListSecurityGroupsOrSecurityGroups_CountEventResources, EC2_TrafficMirroringOrDescribeRouteTables_CountEventResources, Event Priority Computation, IAM_AddUserToGroup,CompromisedUserOrKeys_CountEventResources, IAM_AttachPutRoleOrGroupOrUserPolicy_CountEventResources, IAM_ConsoleLoginsOrNoMfa_CountEventResources, IAM_CreateUpdatePolicy_CountEventResources, IAM_TooManyAccessDenied_CountEventResources, IAM_UpdateAssumeRolePolicy_CountEventResources, Lambda_ExcessPermissions_CountEventResources, Lambda_InteractWithIam_CountEventResources, RDS_ModifyingAdminPwd,RestoreFromBackup_CountEventResources, RDS_ModifySecurityGroup_CountEventResources, Redshift_DisableEncryption,DisableAccessLogging_CountEventResources, Redshift_DisableSSL_CountEventResources, S3_AccessDeniedOrBucketConfigChecksFromPublicIp_CountEventResources, S3_CrudBucketsFromPublicIp_CountEventResources, S3_DisableMfaDeleteOrBucketVersionioningOrAccessLogging_CountEventResources, S3_EnablePublicAccess_CountEventResources



## Parser:
```
| json "eventSource", "eventName", "errorCode", "requestParameters.parameters" as eventSource, eventName, errorCode, listParams nodrop 
| parse regex field=listParams "\{(?<param>[^\}]+\})" multi 
| json field=param "parameterName", "parameterValue" 
| json "requestParameters.parameterGroupName" as groupId 
 
```
### Use Cases:
Attack Surface: Create,Delete,Update, Attack Surface: EC2,Redshift,S3, Attack Surface: IAM,KMS,Lambda,RDS, Attack Surface: Service, CloudTrail_DisableEvents,EncryptWithNewKey_CountEventResources, EC2_AuthorizeSecurityGroupIngressToPublic_CountEventResources, EC2_DescribeInstanceUserData_CountEventResources, EC2_DisableterminationprotectionOrListInstances_CountEventResources, EC2_ListSecurityGroupsOrSecurityGroups_CountEventResources, EC2_TrafficMirroringOrDescribeRouteTables_CountEventResources, Event Priority Computation, IAM_AddUserToGroup,CompromisedUserOrKeys_CountEventResources, IAM_AttachPutRoleOrGroupOrUserPolicy_CountEventResources, IAM_ConsoleLoginsOrNoMfa_CountEventResources, IAM_CreateUpdatePolicy_CountEventResources, IAM_TooManyAccessDenied_CountEventResources, IAM_UpdateAssumeRolePolicy_CountEventResources, Lambda_ExcessPermissions_CountEventResources, Lambda_InteractWithIam_CountEventResources, RDS_ModifyingAdminPwd,RestoreFromBackup_CountEventResources, RDS_ModifySecurityGroup_CountEventResources, Redshift_DisableEncryption,DisableAccessLogging_CountEventResources, Redshift_DisableSSL_CountEventResources



## Parser:
```
| json "eventSource", "eventName", "errorCode", "requestParameters.parameters" as eventSource, eventName, errorCode, listParams nodrop 
| parse regex field=listParams "\{(?<param>[^\}]+\})" multi nodrop
| json field=param "parameterName", "parameterValue" nodrop
| parse regex field=classification "(?<benchmarkname>[^,]+)," multi 
 
```
### Use Cases:
Attack Surface: Create,Delete,Update, Attack Surface: EC2,Redshift,S3, Attack Surface: IAM,KMS,Lambda,RDS, Attack Surface: Service, CloudTrail_DisableEvents,EncryptWithNewKey_CountEventResources, CloudTrail_DisableGlobalEventsOrDisableLogOrEncryptWithNewKey, CloudTrail_DisableTrails, EC2_AuthorizeSecurityGroupIngressToPublic_CountEventResources, EC2_DescribeInstanceUserData, EC2_DescribeInstanceUserData_CountEventResources, EC2_DisableterminationprotectionOrListInstances_CountEventResources, EC2_Events, EC2_ListSecurityGroupsOrSecurityGroups_CountEventResources, EC2_TrafficMirroringOrDescribeRouteTables_CountEventResources, Event Priority Computation, IAM_AddUserToGroup,CompromisedUserOrKeys_CountEventResources, IAM_AttachPutRoleOrGroupOrUserPolicy_CountEventResources, IAM_ConsoleLoginsNoMfa, IAM_ConsoleLoginsOrNoMfa_CountEventResources, IAM_CreateUpdatePolicy_CountEventResources, IAM_Events, IAM_TooManyAccessDenied, IAM_TooManyAccessDenied_CountEventResources, IAM_UpdateAssumeRolePolicy_CountEventResources, Lambda_ExcessPermissions_CountEventResources, Lambda_ExcessPermissionsOrInteractWithIam, Lambda_InteractWithIam_CountEventResources, RDS_ModifyingAdminPassword, RDS_ModifyingAdminPwd,RestoreFromBackup_CountEventResources, RDS_ModifySecurityGroup_CountEventResources, RDS_RestoreFromBackupOrModifySecGroup, Redshift_DisableEncryption, Redshift_DisableEncryption,DisableAccessLogging_CountEventResources, Redshift_DisableSSL_CountEventResources, Redshift_DisableSSLOrDisableAccesslogging, S3_AccessDeniedOrBucketConfigChecksFromPublicIp_CountEventResources, S3_CrudBucketsFromPublicIp_CountEventResources, S3_DisableMfaDeleteOrBucketVersionioningOrAccessLogging_CountEventResources, S3_EnablePublicAccess_CountEventResources



## Parser:
```
| json "eventSource", "eventName", "errorCode", "requestParameters" nodrop 
| parse regex field=classification "(?<benchmarkname>[^,]+)," multi 
| parse regex field=requestparameters "\"userName\"\s*:\s*\"(?<userName>[^\"]+)\"" multi 
 
```
### Use Cases:
Attack Surface: Create,Delete,Update, Attack Surface: EC2,Redshift,S3, Attack Surface: IAM,KMS,Lambda,RDS, Attack Surface: Service, CloudTrail_DisableEvents,EncryptWithNewKey_CountEventResources, EC2_AuthorizeSecurityGroupIngressToPublic_CountEventResources, EC2_DescribeInstanceUserData_CountEventResources, EC2_DisableterminationprotectionOrListInstances_CountEventResources, EC2_ListSecurityGroupsOrSecurityGroups_CountEventResources, EC2_TrafficMirroringOrDescribeRouteTables_CountEventResources, Event Priority Computation, IAM_AddUserToGroup,CompromisedUserOrKeys_CountEventResources



## Parser:
```
| json "eventSource", "eventName", "errorCode", "responseElements.pendingModifiedValues.masterUserPassword" as eventSource, eventName, errorCode, setPassword nodrop 
 
```
### Use Cases:
Attack Surface: Create,Delete,Update, Attack Surface: EC2,Redshift,S3, Attack Surface: IAM,KMS,Lambda,RDS, Attack Surface: Service, CloudTrail_DisableEvents,EncryptWithNewKey_CountEventResources, CloudTrail_DisableGlobalEventsOrDisableLogOrEncryptWithNewKey, CloudTrail_DisableTrails, EC2_AuthorizeSecurityGroupIngressToPublic_CountEventResources, EC2_DescribeInstanceUserData, EC2_DescribeInstanceUserData_CountEventResources, EC2_DisableterminationprotectionOrListInstances_CountEventResources, EC2_Events, EC2_ListSecurityGroupsOrSecurityGroups_CountEventResources, EC2_TrafficMirroringOrDescribeRouteTables_CountEventResources, Event Priority Computation, IAM_AddUserToGroup,CompromisedUserOrKeys_CountEventResources, IAM_AttachPutRoleOrGroupOrUserPolicy_CountEventResources, IAM_ConsoleLoginsNoMfa, IAM_ConsoleLoginsOrNoMfa_CountEventResources, IAM_CreateUpdatePolicy_CountEventResources, IAM_Events, IAM_TooManyAccessDenied, IAM_TooManyAccessDenied_CountEventResources, IAM_UpdateAssumeRolePolicy_CountEventResources, Lambda_ExcessPermissions_CountEventResources, Lambda_ExcessPermissionsOrInteractWithIam, Lambda_InteractWithIam_CountEventResources, RDS_ModifyingAdminPassword, RDS_ModifyingAdminPwd,RestoreFromBackup_CountEventResources, RDS_ModifySecurityGroup_CountEventResources, Redshift_DisableEncryption,DisableAccessLogging_CountEventResources, Redshift_DisableSSL_CountEventResources, S3_AccessDeniedOrBucketConfigChecksFromPublicIp_CountEventResources, S3_CrudBucketsFromPublicIp_CountEventResources, S3_DisableMfaDeleteOrBucketVersionioningOrAccessLogging_CountEventResources, S3_EnablePublicAccess_CountEventResources



## Parser:
```
| json "eventSource", "eventName", "errorCode", "userIdentity.type" as eventSource, eventName, errorCode, userType nodrop 
| json "requestParameters.functionName" as functionName 
| parse regex field=functionName "(?<prefix>.*?:.*?:.*?:.*?:.*?:)?(?<resource>[^:]+$)" 
 
```
### Use Cases:
Attack Surface: Create,Delete,Update, Attack Surface: EC2,Redshift,S3, Attack Surface: IAM,KMS,Lambda,RDS, Attack Surface: Service, CloudTrail_DisableEvents,EncryptWithNewKey_CountEventResources, EC2_AuthorizeSecurityGroupIngressToPublic_CountEventResources, EC2_DescribeInstanceUserData_CountEventResources, EC2_DisableterminationprotectionOrListInstances_CountEventResources, EC2_ListSecurityGroupsOrSecurityGroups_CountEventResources, EC2_TrafficMirroringOrDescribeRouteTables_CountEventResources, Event Priority Computation, IAM_AddUserToGroup,CompromisedUserOrKeys_CountEventResources, IAM_AttachPutRoleOrGroupOrUserPolicy_CountEventResources, IAM_ConsoleLoginsOrNoMfa_CountEventResources, IAM_CreateUpdatePolicy_CountEventResources, IAM_TooManyAccessDenied_CountEventResources, IAM_UpdateAssumeRolePolicy_CountEventResources, Lambda_ExcessPermissions_CountEventResources



## Parser:
```
| json "eventSource", "eventName", "errorCode", "userIdentity.type", "userIdentity.invokedBy" as eventSource, eventName, errorCode, userType, service nodrop 
| parse regex field=classification "(?<benchmarkname>[^,]+)," multi 
 
```
### Use Cases:
Attack Surface: Create,Delete,Update, Attack Surface: EC2,Redshift,S3, Attack Surface: IAM,KMS,Lambda,RDS, Attack Surface: Service, CloudTrail_DisableEvents,EncryptWithNewKey_CountEventResources, CloudTrail_DisableGlobalEventsOrDisableLogOrEncryptWithNewKey, CloudTrail_DisableTrails, EC2_AuthorizeSecurityGroupIngressToPublic_CountEventResources, EC2_DescribeInstanceUserData, EC2_DescribeInstanceUserData_CountEventResources, EC2_DisableterminationprotectionOrListInstances_CountEventResources, EC2_Events, EC2_ListSecurityGroupsOrSecurityGroups_CountEventResources, EC2_TrafficMirroringOrDescribeRouteTables_CountEventResources, Event Priority Computation, IAM_AddUserToGroup,CompromisedUserOrKeys_CountEventResources, IAM_AttachPutRoleOrGroupOrUserPolicy_CountEventResources, IAM_ConsoleLoginsNoMfa, IAM_ConsoleLoginsOrNoMfa_CountEventResources, IAM_CreateUpdatePolicy_CountEventResources, IAM_Events, IAM_TooManyAccessDenied, IAM_TooManyAccessDenied_CountEventResources, IAM_UpdateAssumeRolePolicy_CountEventResources, Lambda_ExcessPermissions_CountEventResources, Lambda_ExcessPermissionsOrInteractWithIam, Lambda_InteractWithIam_CountEventResources, RDS_ModifyingAdminPwd,RestoreFromBackup_CountEventResources, RDS_ModifySecurityGroup_CountEventResources, Redshift_DisableEncryption,DisableAccessLogging_CountEventResources, Redshift_DisableSSL_CountEventResources, S3_AccessDeniedOrBucketConfigChecksFromPublicIp_CountEventResources, S3_CrudBucketsFromPublicIp_CountEventResources, S3_DisableMfaDeleteOrBucketVersionioningOrAccessLogging_CountEventResources, S3_EnablePublicAccess_CountEventResources



## Parser:
```
| json "eventSource", "eventName", "errorCode","userIdentity.userName", "responseElements.ConsoleLogin" as eventSource, eventName, errorCode,userName, loginStatus nodrop 
| parse regex field=classification "(?<benchmarkname>[^,]+)," multi 
 
```
### Use Cases:
Attack Surface: Create,Delete,Update, Attack Surface: EC2,Redshift,S3, Attack Surface: IAM,KMS,Lambda,RDS, Attack Surface: Service, CloudTrail_DisableEvents,EncryptWithNewKey_CountEventResources, CloudTrail_DisableGlobalEventsOrDisableLogOrEncryptWithNewKey, CloudTrail_DisableTrails, EC2_AuthorizeSecurityGroupIngressToPublic_CountEventResources, EC2_DescribeInstanceUserData, EC2_DescribeInstanceUserData_CountEventResources, EC2_DisableterminationprotectionOrListInstances_CountEventResources, EC2_Events, EC2_ListSecurityGroupsOrSecurityGroups_CountEventResources, EC2_TrafficMirroringOrDescribeRouteTables_CountEventResources, Event Priority Computation, IAM_AddUserToGroup,CompromisedUserOrKeys_CountEventResources, IAM_AttachPutRoleOrGroupOrUserPolicy_CountEventResources, IAM_ConsoleLoginsNoMfa, IAM_ConsoleLoginsOrNoMfa_CountEventResources, IAM_CreateUpdatePolicy_CountEventResources, IAM_Events, IAM_TooManyAccessDenied_CountEventResources, IAM_UpdateAssumeRolePolicy_CountEventResources, Lambda_ExcessPermissions_CountEventResources, Lambda_InteractWithIam_CountEventResources, RDS_ModifyingAdminPwd,RestoreFromBackup_CountEventResources, RDS_ModifySecurityGroup_CountEventResources, Redshift_DisableEncryption,DisableAccessLogging_CountEventResources, Redshift_DisableSSL_CountEventResources, S3_AccessDeniedOrBucketConfigChecksFromPublicIp_CountEventResources, S3_CrudBucketsFromPublicIp_CountEventResources, S3_DisableMfaDeleteOrBucketVersionioningOrAccessLogging_CountEventResources, S3_EnablePublicAccess_CountEventResources



## Parser:
```
| json "eventSource", "eventName", "sourceIPAddress", "errorCode" nodrop 
 
```
### Use Cases:
Attack Surface: Create,Delete,Update, Attack Surface: EC2,Redshift,S3, Attack Surface: IAM,KMS,Lambda,RDS, Attack Surface: Service, CloudTrail_DisableEvents,EncryptWithNewKey_CountEventResources, CloudTrail_DisableGlobalEventsOrDisableLogOrEncryptWithNewKey, CloudTrail_DisableTrails, EC2_AuthorizeSecurityGroupIngressToPublic_CountEventResources, EC2_DescribeInstanceUserData, EC2_DescribeInstanceUserData_CountEventResources, EC2_DisableterminationprotectionOrListInstances_CountEventResources, EC2_Events, EC2_ListSecurityGroupsOrSecurityGroups_CountEventResources, EC2_TrafficMirroringOrDescribeRouteTables_CountEventResources, Event Priority Computation, IAM_AddUserToGroup,CompromisedUserOrKeys_CountEventResources, IAM_AttachPutRoleOrGroupOrUserPolicy_CountEventResources, IAM_ConsoleLoginsNoMfa, IAM_ConsoleLoginsOrNoMfa_CountEventResources, IAM_CreateUpdatePolicy_CountEventResources, IAM_Events, IAM_TooManyAccessDenied, IAM_TooManyAccessDenied_CountEventResources, IAM_UpdateAssumeRolePolicy_CountEventResources, Lambda_ExcessPermissions_CountEventResources, Lambda_ExcessPermissionsOrInteractWithIam, Lambda_InteractWithIam_CountEventResources, RDS_ModifyingAdminPassword, RDS_ModifyingAdminPwd,RestoreFromBackup_CountEventResources, RDS_ModifySecurityGroup_CountEventResources, RDS_RestoreFromBackupOrModifySecGroup, Redshift_DisableEncryption, Redshift_DisableEncryption,DisableAccessLogging_CountEventResources, Redshift_DisableSSL_CountEventResources, Redshift_DisableSSLOrDisableAccesslogging, S3_AccessDeniedOrBucketConfigChecksFromPublicIp, S3_AccessDeniedOrBucketConfigChecksFromPublicIp_CountEventResources, S3_CrudBucketsFromPublicIp, S3_CrudBucketsFromPublicIp_CountEventResources, S3_DisableMfaDeleteOrBucketVersionioningOrAccessLogging_CountEventResources, S3_EnablePublicAccess_CountEventResources



## Parser:
```
| json "eventSource", "eventName", "sourceIPAddress", "errorCode" nodrop 
| json "requestParameters.bucketName" as bucketName
 
```
### Use Cases:
Attack Surface: Create,Delete,Update, Attack Surface: EC2,Redshift,S3, Attack Surface: IAM,KMS,Lambda,RDS, Attack Surface: Service, CloudTrail_DisableEvents,EncryptWithNewKey_CountEventResources, EC2_AuthorizeSecurityGroupIngressToPublic_CountEventResources, EC2_DescribeInstanceUserData_CountEventResources, EC2_DisableterminationprotectionOrListInstances_CountEventResources, EC2_ListSecurityGroupsOrSecurityGroups_CountEventResources, EC2_TrafficMirroringOrDescribeRouteTables_CountEventResources, Event Priority Computation, IAM_AddUserToGroup,CompromisedUserOrKeys_CountEventResources, IAM_AttachPutRoleOrGroupOrUserPolicy_CountEventResources, IAM_ConsoleLoginsOrNoMfa_CountEventResources, IAM_CreateUpdatePolicy_CountEventResources, IAM_TooManyAccessDenied_CountEventResources, IAM_UpdateAssumeRolePolicy_CountEventResources, Lambda_ExcessPermissions_CountEventResources, Lambda_InteractWithIam_CountEventResources, RDS_ModifyingAdminPwd,RestoreFromBackup_CountEventResources, RDS_ModifySecurityGroup_CountEventResources, Redshift_DisableEncryption,DisableAccessLogging_CountEventResources, Redshift_DisableSSL_CountEventResources, S3_AccessDeniedOrBucketConfigChecksFromPublicIp_CountEventResources, S3_CrudBucketsFromPublicIp_CountEventResources



## Parser:
```
| json "eventSource", "eventName", "sourceIPAddress", "errorCode" nodrop 
| json "requestParameters.bucketName" as bucketName
| parse regex field=classification "(?<benchmarkname>[^,]+)," multi 
 
```
### Use Cases:
Attack Surface: Create,Delete,Update, Attack Surface: EC2,Redshift,S3, Attack Surface: IAM,KMS,Lambda,RDS, Attack Surface: Service, CloudTrail_DisableEvents,EncryptWithNewKey_CountEventResources, EC2_AuthorizeSecurityGroupIngressToPublic_CountEventResources, EC2_DescribeInstanceUserData_CountEventResources, EC2_DisableterminationprotectionOrListInstances_CountEventResources, EC2_ListSecurityGroupsOrSecurityGroups_CountEventResources, EC2_TrafficMirroringOrDescribeRouteTables_CountEventResources, Event Priority Computation, IAM_AddUserToGroup,CompromisedUserOrKeys_CountEventResources, IAM_AttachPutRoleOrGroupOrUserPolicy_CountEventResources, IAM_ConsoleLoginsOrNoMfa_CountEventResources, IAM_CreateUpdatePolicy_CountEventResources, IAM_TooManyAccessDenied_CountEventResources, IAM_UpdateAssumeRolePolicy_CountEventResources, Lambda_ExcessPermissions_CountEventResources, Lambda_InteractWithIam_CountEventResources, RDS_ModifyingAdminPwd,RestoreFromBackup_CountEventResources, RDS_ModifySecurityGroup_CountEventResources, Redshift_DisableEncryption,DisableAccessLogging_CountEventResources, Redshift_DisableSSL_CountEventResources, S3_AccessDeniedOrBucketConfigChecksFromPublicIp_CountEventResources



## Parser:
```
| json "eventSource", "eventName", "sourceIPAddress", "errorCode" nodrop 
| parse regex field=classification "(?<benchmarkname>[^,]+)," multi
 
```
### Use Cases:
Attack Surface: Create,Delete,Update, Attack Surface: EC2,Redshift,S3, Attack Surface: IAM,KMS,Lambda,RDS, Attack Surface: Service, CloudTrail_DisableEvents,EncryptWithNewKey_CountEventResources, CloudTrail_DisableGlobalEventsOrDisableLogOrEncryptWithNewKey, CloudTrail_DisableTrails, EC2_AuthorizeSecurityGroupIngressToPublic_CountEventResources, EC2_DescribeInstanceUserData, EC2_DescribeInstanceUserData_CountEventResources, EC2_DisableterminationprotectionOrListInstances_CountEventResources, EC2_Events, EC2_ListSecurityGroupsOrSecurityGroups_CountEventResources, EC2_TrafficMirroringOrDescribeRouteTables_CountEventResources, Event Priority Computation, IAM_AddUserToGroup,CompromisedUserOrKeys_CountEventResources, IAM_AttachPutRoleOrGroupOrUserPolicy_CountEventResources, IAM_ConsoleLoginsNoMfa, IAM_ConsoleLoginsOrNoMfa_CountEventResources, IAM_CreateUpdatePolicy_CountEventResources, IAM_Events, IAM_TooManyAccessDenied, IAM_TooManyAccessDenied_CountEventResources, IAM_UpdateAssumeRolePolicy_CountEventResources, Lambda_ExcessPermissions_CountEventResources, Lambda_ExcessPermissionsOrInteractWithIam, Lambda_InteractWithIam_CountEventResources, RDS_ModifyingAdminPassword, RDS_ModifyingAdminPwd,RestoreFromBackup_CountEventResources, RDS_ModifySecurityGroup_CountEventResources, RDS_RestoreFromBackupOrModifySecGroup, Redshift_DisableEncryption, Redshift_DisableEncryption,DisableAccessLogging_CountEventResources, Redshift_DisableSSL_CountEventResources, Redshift_DisableSSLOrDisableAccesslogging, S3_AccessDeniedOrBucketConfigChecksFromPublicIp, S3_AccessDeniedOrBucketConfigChecksFromPublicIp_CountEventResources, S3_CrudBucketsFromPublicIp_CountEventResources, S3_DisableMfaDeleteOrBucketVersionioningOrAccessLogging_CountEventResources, S3_EnablePublicAccess_CountEventResources



## Parser:
```
| json "userIdentity.type", "userIdentity.invokedBy", "errorCode" as userType, service, errorCode nodrop 
| parse regex "\"(?<arn>arn:[^\"]+)\"" multi 
| parse regex field=arn ".*?:.*?:(?<service>[^:]+):.*?:.*?:(?<resource>[^:]+$)" 
 
```
### Use Cases:
Attack Surface: Create,Delete,Update, Attack Surface: EC2,Redshift,S3, Attack Surface: IAM,KMS,Lambda,RDS, Attack Surface: Service, CloudTrail_DisableEvents,EncryptWithNewKey_CountEventResources, EC2_AuthorizeSecurityGroupIngressToPublic_CountEventResources, EC2_DescribeInstanceUserData_CountEventResources, EC2_DisableterminationprotectionOrListInstances_CountEventResources, EC2_ListSecurityGroupsOrSecurityGroups_CountEventResources, EC2_TrafficMirroringOrDescribeRouteTables_CountEventResources, Event Priority Computation, IAM_AddUserToGroup,CompromisedUserOrKeys_CountEventResources, IAM_AttachPutRoleOrGroupOrUserPolicy_CountEventResources, IAM_ConsoleLoginsOrNoMfa_CountEventResources, IAM_CreateUpdatePolicy_CountEventResources, IAM_TooManyAccessDenied_CountEventResources, IAM_UpdateAssumeRolePolicy_CountEventResources, Lambda_ExcessPermissions_CountEventResources, Lambda_InteractWithIam_CountEventResources



## Parser:
```
| parse field=benchmarkname "*_*" as resourceType, eventName
 
```
### Use Cases:
Attack Surface: Create,Delete,Update, Attack Surface: EC2,Redshift,S3, Attack Surface: IAM,KMS,Lambda,RDS, Attack Surface: Service, Event Priority Computation


