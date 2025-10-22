# Parsers For Slack

**Slack/Access - New/Access - Total Entries by Workspace**
```
_sourceCategory = Labs/Slack "logType":"AccessLog"
| json "user_id", "username", "teamName", "count", "ip", "user_agent", "country" as ID, Name, Workspace, Logins, IP, UserAgent, Country nodrop
```

**Slack/Access - New/Access - Users by Workspace**
```
_sourceCategory = Labs/Slack "logType":"AccessLog"
| json "user_id", "username", "teamName", "count", "ip", "user_agent", "country" as ID, Name, Workspace, Logins, IP, UserAgent, Country nodrop
```

**Slack/Access - New/Access Information**
```
_sourceCategory = Labs/Slack "logType":"AccessLog"
| json "user_id", "username", "teamName", "count", "ip", "user_agent", "country" as ID, Name, Workspace, Logins, IP, UserAgent, Country nodrop
```

**Slack/Access - New/Countries by Workspace**
```
_sourceCategory = Labs/Slack "logType":"AccessLog"
| json "user_id", "username", "teamName", "count", "ip", "user_agent", "country" as ID, Name, Workspace, Logins, IP, UserAgent, Country nodrop
```

**Slack/Access - New/Desktop OS Version by Workspace**
```
_sourceCategory = Labs/Slack "logType":"AccessLog"
| json "user_id", "username", "teamName", "count", "ip", "user_agent", "country" as ID, Name, Workspace, Logins, IP, UserAgent, Country nodrop
| withtime Logins
|where if ("{{UserAgent}}" = "*", true, UserAgent matches "{{UserAgent}}")
|most_recent(Logins_withtime) as Logins by ID, Name, IP, UserAgent, Workspace
| sum(Logins) as Logins by ID, Name, Workspace, UserAgent
| parse regex field=UserAgent "(?<os>Mac OS) (?<version>[^;\)]+?)(?:;|\))" nodrop 
| parse regex field=UserAgent "(?<os>Windows)(?: NT | )(?<version>[\d.]+)" nodrop 
| parse regex field=UserAgent "(?<os>Linux) (?<version>\S+?)(?:\)|;)" nodrop
```

**Slack/Access - New/Desktop Users**
```
_sourceCategory = Labs/Slack "logType":"AccessLog"
| json "user_id", "username", "teamName", "count", "ip", "user_agent", "country" as ID, Name, Workspace, Logins, IP, UserAgent, Country nodrop
```

**Slack/Access - New/Mobile Users**
```
_sourceCategory = Labs/Slack "logType":"AccessLog"
| json "user_id", "username", "teamName", "count", "ip", "user_agent", "country" as ID, Name, Workspace, Logins, IP, UserAgent, Country nodrop
```

**Slack/Access - New/Threat by Malicious Confidence**
```
_sourceCategory = Labs/Slack "logType":"AccessLog"
| json "user_id", "username", "teamName", "count", "ip", "user_agent", "country" as ID, Name, Workspace, Logins, IP, UserAgent, Country nodrop
| withtime Logins
|where if ("{{UserAgent}}" = "*", true, UserAgent matches "{{UserAgent}}")
|most_recent(Logins_withtime) as Logins by ID, Name, IP, UserAgent, Workspace
| count by IP
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=IP 
| json field=raw "labels[*].name" as label_name
```

**Slack/Access - New/Threat Count**
```
_sourceCategory = Labs/Slack "logType":"AccessLog"
| json "user_id", "username", "teamName", "count", "ip", "user_agent", "country" as ID, Name, Workspace, Logins, IP, UserAgent, Country nodrop
| withtime Logins
|where if ("{{UserAgent}}" = "*", true, UserAgent matches "{{UserAgent}}")
|most_recent(Logins_withtime) as Logins by ID, Name, IP, UserAgent, Workspace
| count by IP
| where !isPrivateIP(IP)
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=IP 
| json field=raw "labels[*].name" as label_name
```

**Slack/Access - New/Threat Location**
```
_sourceCategory = Labs/Slack "logType":"AccessLog"
| json "user_id", "username", "teamName", "count", "ip", "user_agent", "country" as ID, Name, Workspace, Logins, IP, UserAgent, Country nodrop
| withtime Logins
|where if ("{{UserAgent}}" = "*", true, UserAgent matches "{{UserAgent}}")
|most_recent(Logins_withtime) as Logins by ID, Name, IP, UserAgent, Workspace
| count by IP
| where !isPrivateIP(IP)
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=IP 
| json field=raw "labels[*].name" as label_name
```

**Slack/Access - New/Threats by Actor**
```
_sourceCategory = Labs/Slack "logType":"AccessLog"
| json "user_id", "username", "teamName", "count", "ip", "user_agent", "country" as ID, Name, Workspace, Logins, IP, UserAgent, Country nodrop
| withtime Logins
|where if ("{{UserAgent}}" = "*", true, UserAgent matches "{{UserAgent}}")
|most_recent(Logins_withtime) as Logins by ID, Name, IP, UserAgent, Workspace
| count by IP
| where !isPrivateIP(IP)
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=IP 
| json field=raw "labels[*].name" as label_name
```

**Slack/Access - New/Top Browser by Workspace**
```
_sourceCategory = Labs/Slack "logType":"AccessLog"
| json "user_id", "username", "teamName", "count", "ip", "user_agent", "country" as ID, Name, Workspace, Logins, IP, UserAgent, Country nodrop
```

**Slack/Access - New/Top Users**
```
_sourceCategory = Labs/Slack "logType":"AccessLog"
| json "user_id", "username", "teamName", "count", "ip", "user_agent", "country" as ID, Name, Workspace, Logins, IP, UserAgent, Country nodrop
```

**Slack/Access - New/Visitor Platform by Workspace**
```
_sourceCategory = Labs/Slack "logType":"AccessLog"
| json "user_id", "username", "teamName", "count", "ip", "user_agent", "country" as ID, Name, Workspace, Logins, IP, UserAgent, Country nodrop
```

**Slack/Access - New/Visitor Platforms**
```
_sourceCategory = Labs/Slack "logType":"AccessLog"
| json "user_id", "username", "teamName", "count", "ip", "user_agent", "country" as ID, Name, Workspace, Logins, IP, UserAgent, Country nodrop
```

**Slack/Access/Access - Total Entries by Workspace**
```
_sourceCategory={{Logsdatasource}}  "logType":"AccessLog"
| json "user_id", "username", "teamName", "count", "ip", "user_agent", "country" as ID, Name, Workspace, Logins, IP, UserAgent, Country nodrop
```

**Slack/Access/Access - Users by Workspace**
```
_sourceCategory={{Logsdatasource}}  "logType":"AccessLog"
| json "user_id", "username", "teamName", "count", "ip", "user_agent", "country" as ID, Name, Workspace, Logins, IP, UserAgent, Country nodrop
```

**Slack/Access/Access Information**
```
_sourceCategory={{Logsdatasource}}  "logType":"AccessLog"
| json "user_id", "username", "teamName", "count", "ip", "user_agent", "country" as ID, Name, Workspace, Logins, IP, UserAgent, Country nodrop
```

**Slack/Access/Countries by Workspace**
```
_sourceCategory={{Logsdatasource}}  "logType":"AccessLog"
| json "user_id", "username", "teamName", "count", "ip", "user_agent", "country" as ID, Name, Workspace, Logins, IP, UserAgent, Country nodrop
```

**Slack/Access/Desktop OS Version by Workspace**
```
_sourceCategory={{Logsdatasource}}  "logType":"AccessLog"
| json "user_id", "username", "teamName", "count", "ip", "user_agent", "country" as ID, Name, Workspace, Logins, IP, UserAgent, Country nodrop
| withtime Logins
| where Workspace matches "{{Workspace}}" and IP matches "{{IP}}" and UserAgent matches "{{UserAgent}}" and Name matches "{{Name}}" and Country matches "{{Country}}"
|most_recent(Logins_withtime) as Logins by ID, Name, IP, UserAgent, Workspace
| sum(Logins) as Logins by ID, Name, Workspace, UserAgent
| parse regex field=UserAgent "(?<os>Mac OS) (?<version>[^;\)]+?)(?:;|\))" nodrop 
| parse regex field=UserAgent "(?<os>Windows)(?: NT | )(?<version>[\d.]+)" nodrop 
| parse regex field=UserAgent "(?<os>Linux) (?<version>\S+?)(?:\)|;)" nodrop
```

**Slack/Access/Desktop Users**
```
_sourceCategory={{Logsdatasource}}  "logType":"AccessLog"
| json "user_id", "username", "teamName", "count", "ip", "user_agent", "country" as ID, Name, Workspace, Logins, IP, UserAgent, Country nodrop
```

**Slack/Access/Mobile Users**
```
_sourceCategory={{Logsdatasource}}  "logType":"AccessLog"
| json "user_id", "username", "teamName", "count", "ip", "user_agent", "country" as ID, Name, Workspace, Logins, IP, UserAgent, Country nodrop
```

**Slack/Access/Threat by Malicious Confidence**
```
_sourceCategory={{Logsdatasource}}  "logType":"AccessLog"
| json "user_id", "username", "teamName", "count", "ip", "user_agent", "country" as ID, Name, Workspace, Logins, IP, UserAgent, Country nodrop
| withtime Logins
| where Workspace matches "{{Workspace}}" and IP matches "{{IP}}" and UserAgent matches "{{UserAgent}}" and Name matches "{{Name}}" and Country matches "{{Country}}"
|most_recent(Logins_withtime) as Logins by ID, Name, IP, UserAgent, Workspace
| count by IP
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=IP 
| json field=raw "labels[*].name" as label_name
```

**Slack/Access/Threat Count**
```
_sourceCategory={{Logsdatasource}}  "logType":"AccessLog"
| json "user_id", "username", "teamName", "count", "ip", "user_agent", "country" as ID, Name, Workspace, Logins, IP, UserAgent, Country nodrop
| withtime Logins
| where Workspace matches "{{Workspace}}" and IP matches "{{IP}}" and UserAgent matches "{{UserAgent}}" and Name matches "{{Name}}" and Country matches "{{Country}}"
|most_recent(Logins_withtime) as Logins by ID, Name, IP, UserAgent, Workspace
| count by IP
| where !isPrivateIP(IP)
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=IP 
| json field=raw "labels[*].name" as label_name
```

**Slack/Access/Threat Location**
```
_sourceCategory={{Logsdatasource}}  "logType":"AccessLog"
| json "user_id", "username", "teamName", "count", "ip", "user_agent", "country" as ID, Name, Workspace, Logins, IP, UserAgent, Country nodrop
| withtime Logins
| where Workspace matches "{{Workspace}}" and IP matches "{{IP}}" and UserAgent matches "{{UserAgent}}" and Name matches "{{Name}}" and Country matches "{{Country}}"
|most_recent(Logins_withtime) as Logins by ID, Name, IP, UserAgent, Workspace
| count by IP
| where !isPrivateIP(IP)
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=IP 
| json field=raw "labels[*].name" as label_name
```

**Slack/Access/Threats by Actor**
```
_sourceCategory={{Logsdatasource}}  "logType":"AccessLog"
| json "user_id", "username", "teamName", "count", "ip", "user_agent", "country" as ID, Name, Workspace, Logins, IP, UserAgent, Country nodrop
| withtime Logins
| where Workspace matches "{{Workspace}}" and IP matches "{{IP}}" and UserAgent matches "{{UserAgent}}" and Name matches "{{Name}}" and Country matches "{{Country}}"
|most_recent(Logins_withtime) as Logins by ID, Name, IP, UserAgent, Workspace
| count by IP
| where !isPrivateIP(IP)
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=IP 
| json field=raw "labels[*].name" as label_name
```

**Slack/Access/Top Browser by Workspace**
```
_sourceCategory={{Logsdatasource}}  "logType":"AccessLog"
| json "user_id", "username", "teamName", "count", "ip", "user_agent", "country" as ID, Name, Workspace, Logins, IP, UserAgent, Country nodrop
```

**Slack/Access/Top Users**
```
_sourceCategory={{Logsdatasource}}  "logType":"AccessLog"
| json "user_id", "username", "teamName", "count", "ip", "user_agent", "country" as ID, Name, Workspace, Logins, IP, UserAgent, Country nodrop
```

**Slack/Access/Visitor Platform by Workspace**
```
_sourceCategory={{Logsdatasource}}  "logType":"AccessLog"
| json "user_id", "username", "teamName", "count", "ip", "user_agent", "country" as ID, Name, Workspace, Logins, IP, UserAgent, Country nodrop
```

**Slack/Access/Visitor Platforms**
```
_sourceCategory={{Logsdatasource}}  "logType":"AccessLog"
| json "user_id", "username", "teamName", "count", "ip", "user_agent", "country" as ID, Name, Workspace, Logins, IP, UserAgent, Country nodrop
```

**Slack/Audit Overview/Audit Action Trend**
```
_sourceCategory={{Logsdatasource}}  (WorkspaceAuditLog OR UserAuditLog OR ChannelAuditLog OR FileAuditLog OR AppAuditLog)
| json "logType", "action", "context.ip_address", "context.ua", "context.location.name", "context.location.type", "actor.user.name", "actor.user.email", "actor.user.id" as LogType, Action, IP, UserAgent, Workspace, Type, User, Email, UserId nodrop
```

**Slack/Audit Overview/Audit Events Locations**
```
_sourceCategory={{Logsdatasource}}  (WorkspaceAuditLog OR UserAuditLog OR ChannelAuditLog OR FileAuditLog OR AppAuditLog)
| json "logType", "action", "context.ip_address", "context.ua", "context.location.name", "context.location.type", "actor.user.name", "actor.user.email", "actor.user.id" as LogType, Action, IP, UserAgent, Workspace, Type, User, Email, UserId nodrop
```

**Slack/Audit Overview/Browsers by Workspace**
```
_sourceCategory={{Logsdatasource}}  (WorkspaceAuditLog OR UserAuditLog OR ChannelAuditLog OR FileAuditLog OR AppAuditLog)
| json "logType", "action", "context.ip_address", "context.ua", "context.location.name", "context.location.type", "actor.user.name", "actor.user.email", "actor.user.id" as LogType, Action, IP, UserAgent, Workspace, Type, User, Email, UserId nodrop
```

**Slack/Audit Overview/OS and Version by Workspace**
```
_sourceCategory={{Logsdatasource}}  (WorkspaceAuditLog OR UserAuditLog OR ChannelAuditLog OR FileAuditLog OR AppAuditLog)
| json "logType", "action", "context.ip_address", "context.ua", "context.location.name", "context.location.type", "actor.user.name", "actor.user.email", "actor.user.id" as LogType, Action, IP, UserAgent, Workspace, Type, User, Email, UserId nodrop
| where !isEmpty(Workspace) and !isEmpty(UserId)
| parse regex field=UserAgent "(?<OS>Mac OS) (?<version>[^;\)]+?)(?:;|\))" nodrop 
| parse regex field=UserAgent "(?<OS>Windows)(?: NT | )(?<version>[\d.]+)" nodrop 
| parse regex field=UserAgent "(?<OS>Linux) (?<version>\S+?)(?:\)|;)" nodrop
```

**Slack/Audit Overview/Top 10 Audit Actions**
```
_sourceCategory={{Logsdatasource}}  (WorkspaceAuditLog OR UserAuditLog OR ChannelAuditLog OR FileAuditLog OR AppAuditLog)
| json "logType", "action", "context.ip_address", "context.ua", "context.location.name", "context.location.type", "actor.user.name", "actor.user.email", "actor.user.id" as LogType, Action, IP, UserAgent, Workspace, Type, User, Email, UserId nodrop
```

**Slack/Audit Overview/Top 5 Users**
```
_sourceCategory={{Logsdatasource}}  (WorkspaceAuditLog OR UserAuditLog OR ChannelAuditLog OR FileAuditLog OR AppAuditLog)
| json "logType", "action", "context.ip_address", "context.ua", "context.location.name", "context.location.type", "actor.user.name", "actor.user.email", "actor.user.id" as LogType, Action, IP, UserAgent, Workspace, Type, User, Email, UserId nodrop
```

**Slack/Audit Overview/Types**
```
_sourceCategory={{Logsdatasource}}  (WorkspaceAuditLog OR UserAuditLog OR ChannelAuditLog OR FileAuditLog OR AppAuditLog)
| json "logType", "action", "context.ip_address", "context.ua", "context.location.name", "context.location.type", "actor.user.name", "actor.user.email", "actor.user.id" as LogType, Action, IP, UserAgent, Workspace, Type, User, Email, UserId nodrop
```

**Slack/Audit Overview/Visitors Platform by Workspace**
```
_sourceCategory={{Logsdatasource}}  (WorkspaceAuditLog OR UserAuditLog OR ChannelAuditLog OR FileAuditLog OR AppAuditLog)
| json "logType", "action", "context.ip_address", "context.ua", "context.location.name", "context.location.type", "actor.user.name", "actor.user.email", "actor.user.id" as LogType, Action, IP, UserAgent, Workspace, Type, User, Email, UserId nodrop
```

**Slack/Audit Overview/Workspace**
```
_sourceCategory={{Logsdatasource}}  (WorkspaceAuditLog OR UserAuditLog OR ChannelAuditLog OR FileAuditLog OR AppAuditLog)
| json "logType", "action", "context.ip_address", "context.ua", "context.location.name", "context.location.type", "actor.user.name", "actor.user.email", "actor.user.id" as LogType, Action, IP, UserAgent, Workspace, Type, User, Email, UserId nodrop
```

**Slack/Bots/Bot Summary**
```
_sourceCategory={{Logsdatasource}} 
| join ("logType":"ConversationLog" | json "user", "userName", "type", "subtype", "ts", "text", "channelId", "channelName", "teamName" as ID, User, Type, SubType, Time, Text, ChannelId, Channel, Workspace nodrop
| count_distinct(Time) as Messages by ID, User, Channel, Workspace) as T1,
("logType":"ConversationLog"
| json "user", "teamName", "files", "channelId" as ID, Workspace, Files, channelID nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi nodrop
| json field=File "name" as FileName nodrop
| count_distinct(FileName) as TotalFiles by Workspace, ID, channelID
| sum(TotalFiles) as TotalFiles by Workspace, ID) as T2 , ("logType":"ConversationLog"
| json "user", "teamName", "attachments", "channelId" as ID, Workspace, Attachments, ChannelID nodrop
| parse regex field=Attachments "(?<Attachment>\{[^\}]+(?:\}\}|\}))" multi nodrop
| json field=Attachment "fallback" as fallback nodrop
| count_distinct(fallback) as TotalAttachments by Workspace, ID, ChannelID
| sum(TotalAttachments) as TotalAttachments by Workspace, ID) as T3 on T1.ID = T2.ID and T2.ID = T3.ID and T1.Workspace=T2.Workspace and T2.Workspace=T3.Workspace
| T1_Workspace as Workspace | T1_ID as ID| T1_User as BotName | T1_Channel as Channel
| where Workspace matches "{{Workspace}}" and BotName matches "{{BotName}}"
| T2_TotalFiles as %"Total Files"| T3_TotalAttachments as %"Total Attachments"
| where [subquery:"logType":"UserLog"
| json "id", "name", "deleted", "is_bot", "teamName" as ID, Name, Deleted, Bot, Workspace nodrop
```

**Slack/Bots/Bots by Workspace**
```
_sourceCategory={{Logsdatasource}}  "logType":"UserLog"
| json "id", "name", "deleted", "real_name", "tz", "tz_label", "is_admin", "is_owner", "is_primary_owner", "is_restricted", "is_ultra_restricted", "is_bot", "is_app_user", "teamName", "billable", "email", "has_2fa" as ID, BotName, Deleted, FullName, TimeZone, TimeZoneLabel, Admin, Owner, PrimaryOwner, Restricted, UltraRestricted, Bot, AppUser, Workspace, Billable, Email, AuthenticationEnabled nodrop
```

**Slack/Bots/Bots Information**
```
_sourceCategory={{Logsdatasource}}  "logType":"UserLog"
| json "id" as ID
| first(_raw) as FullMessage by id
| json field=FullMessage "name", "deleted", "real_name", "tz", "tz_label", "is_admin", "is_owner", "is_primary_owner", "is_restricted", "is_ultra_restricted", "is_bot", "is_app_user", "teamName", "billable", "email", "has_2fa", "updated" as BotName, Deleted, FullName, TimeZone, TimeZoneLabel, Admin, Owner, PrimaryOwner, Restricted, UltraRestricted, Bot, AppUser, Workspace, Billable, Email, AuthenticationEnabled, Updated nodrop
```

**Slack/Bots/Trend - Active Bots by Workspace**
```
_sourceCategory={{Logsdatasource}}  "logType":"ConversationLog"
| json "user", "userName", "type", "subType", "ts", "text", "channelId", "channelName", "teamName" as ID, BotName, Type, SubType, MessageTime, Text, ChannelId, Channel, Workspace nodrop
| where [subquery:"logType":"UserLog"
| json "id", "name", "deleted", "is_bot", "teamName" as ID, Name, Deleted, Bot, Workspace nodrop
```

**Slack/Bots/Trend - Bots by Workspace**
```
_sourceCategory={{Logsdatasource}}  "logType":"UserLog"
| json "id", "name", "deleted", "real_name", "tz", "tz_label", "is_admin", "is_owner", "is_primary_owner", "is_restricted", "is_ultra_restricted", "is_bot", "is_app_user", "teamName", "billable", "email", "has_2fa" as ID, BotName, Deleted, FullName, TimeZone, TimeZoneLabel, Admin, Owner, PrimaryOwner, Restricted, UltraRestricted, Bot, AppUser, Workspace, Billable, Email, AuthenticationEnabled nodrop
```

**Slack/Bots/Trend - Messages by Workspace**
```
_sourceCategory={{Logsdatasource}}  "logType":"ConversationLog"
| json "user", "userName", "type", "subType", "ts", "text", "channelId", "channelName", "teamName" as ID, BotName, Type, SubType, MessageTime, Text, ChannelId, Channel, Workspace nodrop
| where [subquery:"logType":"UserLog"
| json "id", "name", "deleted", "is_bot", "teamName" as ID, Name, Deleted, Bot, Workspace nodrop
```

**Slack/Channel Audit/Guest Activity**
```
_sourceCategory={{Logsdatasource}}  (ChannelAuditLog) ({{Email}})
| json "logType", "action", "context.ip_address", "context.ua", "context.location.name", "context.location.type", "actor.user.name", "actor.user.email", "actor.user.id", "entity.privacy", "entity.name", "entity.id", "entity.is_shared", "entity.is_org_shared", "date_create", "details" as LogType, Action, IP, UserAgent, Workspace, Type, User, Email, UserId, ChannelType, Channel, ChannelId, SharedChannel, OrgSharedChannel, Time, Details nodrop
| where Action in ("public_channel_created", "private_channel_created", "public_channel_archive", "private_channel_archive", "public_channel_unarchive", "private_channel_unarchive", "public_channel_deleted", "private_channel_deleted", "guest_channel_join", "guest_channel_leave")
| where !isEmpty(Workspace) and !isEmpty(UserId)
| where [subquery:"logType":"UserLog"
| json "id", "name", "deleted", "is_bot", "teamName", "is_restricted", "is_ultra_restricted" as UserId, Name, Deleted, Bot, Workspace, is_restricted, is_ultra_restricted nodrop
```

**Slack/Channel Audit/Members Activity**
```
_sourceCategory={{Logsdatasource}}  (ChannelAuditLog) ({{Email}})
| json "logType", "action", "context.ip_address", "context.ua", "context.location.name", "context.location.type", "actor.user.name", "actor.user.email", "actor.user.id", "entity.privacy", "entity.name", "entity.id", "entity.is_shared", "entity.is_org_shared", "date_create", "details" as LogType, Action, IP, UserAgent, Workspace, Type, User, Email, UserId, ChannelType, Channel, ChannelId, SharedChannel, OrgSharedChannel, Time, Details nodrop
| where Action in ("public_channel_created", "private_channel_created", "public_channel_archive", "private_channel_archive", "public_channel_unarchive", "private_channel_unarchive", "public_channel_deleted", "private_channel_deleted", "user_channel_join", "user_channel_leave")
| where !isEmpty(Workspace) and !isEmpty(UserId)
| where [subquery:"logType":"UserLog"
| json "id", "name", "deleted", "is_bot", "teamName", "is_restricted", "is_ultra_restricted" as UserId, Name, Deleted, Bot, Workspace, is_restricted, is_ultra_restricted nodrop
```

**Slack/Channel Audit/Top 10 Audit Actions**
```
_sourceCategory={{Logsdatasource}}  (ChannelAuditLog)
| json "logType", "action", "context.ip_address", "context.ua", "context.location.name", "context.location.type", "actor.user.name", "actor.user.email", "actor.user.id", "entity.privacy", "entity.name", "entity.id", "entity.is_shared", "entity.is_org_shared", "date_create", "details" as LogType, Action, IP, UserAgent, Workspace, Type, User, Email, UserId, ChannelType, Channel, ChannelId, SharedChannel, OrgSharedChannel, Time, Details nodrop
```

**Slack/Channel Audit/Top 5 Guest Members**
```
_sourceCategory={{Logsdatasource}}  (ChannelAuditLog)
| json "logType", "action", "context.ip_address", "context.ua", "context.location.name", "context.location.type", "actor.user.name", "actor.user.email", "actor.user.id", "entity.privacy", "entity.name", "entity.id", "entity.is_shared", "entity.is_org_shared", "date_create", "details" as LogType, Action, IP, UserAgent, Workspace, Type, User, Email, UserId, ChannelType, Channel, ChannelId, SharedChannel, OrgSharedChannel, Time, Details nodrop
| where !isEmpty(Workspace) and !isEmpty(UserId)
| where [subquery:"logType":"UserLog"
| json "id", "name", "deleted", "is_bot", "teamName", "is_restricted", "is_ultra_restricted" as UserId, Name, Deleted, Bot, Workspace, is_restricted, is_ultra_restricted nodrop
```

**Slack/Channel Audit/Top 5 Members**
```
_sourceCategory={{Logsdatasource}}  (ChannelAuditLog)
| json "logType", "action", "context.ip_address", "context.ua", "context.location.name", "context.location.type", "actor.user.name", "actor.user.email", "actor.user.id", "entity.privacy", "entity.name", "entity.id", "entity.is_shared", "entity.is_org_shared", "date_create", "details" as LogType, Action, IP, UserAgent, Workspace, Type, User, Email, UserId, ChannelType, Channel, ChannelId, SharedChannel, OrgSharedChannel, Time, Details nodrop
| where !isEmpty(Workspace) and !isEmpty(UserId)
| where [subquery:"logType":"UserLog"
| json "id", "name", "deleted", "is_bot", "teamName", "is_restricted", "is_ultra_restricted" as UserId, Name, Deleted, Bot, Workspace, is_restricted, is_ultra_restricted nodrop
```

**Slack/Channel Audit/Trend - Audit Actions**
```
_sourceCategory={{Logsdatasource}}  (ChannelAuditLog)
| json "logType", "action", "context.ip_address", "context.ua", "context.location.name", "context.location.type", "actor.user.name", "actor.user.email", "actor.user.id", "entity.privacy", "entity.name", "entity.id", "entity.is_shared", "entity.is_org_shared", "date_create", "details" as LogType, Action, IP, UserAgent, Workspace, Type, User, Email, UserId, ChannelType, Channel, ChannelId, SharedChannel, OrgSharedChannel, Time, Details nodrop
```

**Slack/File and App Audit/App - Audit Actions**
```
_sourceCategory={{Logsdatasource}}  (AppAuditLog)
| json "logType", "action", "context.ip_address", "context.ua", "context.location.name", "context.location.type", "actor.user.name", "actor.user.email", "actor.user.id", "entity.id", "entity.name", "entity.filetype", "entity.title", "date_create", "details" as LogType, Action, IP, UserAgent, Workspace, Type, User, Email, UserId, FileId, File, FileType, Title, Time, Details nodrop
```

**Slack/File and App Audit/App - Top 10 Actions**
```
_sourceCategory={{Logsdatasource}}  (AppAuditLog)
| json "logType", "action", "context.ip_address", "context.ua", "context.location.name", "context.location.type", "actor.user.name", "actor.user.email", "actor.user.id", "entity.id", "entity.name", "entity.filetype", "entity.title", "date_create", "details" as LogType, Action, IP, UserAgent, Workspace, Type, User, Email, UserId, FileId, File, FileType, Title, Time, Details nodrop
```

**Slack/File and App Audit/App - Top 5 Users**
```
_sourceCategory={{Logsdatasource}}  (AppAuditLog)
| json "logType", "action", "context.ip_address", "context.ua", "context.location.name", "context.location.type", "actor.user.name", "actor.user.email", "actor.user.id", "entity.id", "entity.name", "entity.is_distributed", "entity.is_directory_approved", "entity.scopes", "date_create", "details" as LogType, Action, IP, UserAgent, Workspace, Type, User, Email, UserId, AppId, App, Distributed, Approved, Scopes, Time, Details nodrop
```

**Slack/File and App Audit/File - Audit Actions**
```
_sourceCategory={{Logsdatasource}}  (FileAuditLog)
| json "logType", "action", "context.ip_address", "context.ua", "context.location.name", "context.location.type", "actor.user.name", "actor.user.email", "actor.user.id", "entity.id", "entity.name", "entity.filetype", "entity.title", "date_create", "details" as LogType, Action, IP, UserAgent, Workspace, Type, User, Email, UserId, FileId, File, FileType, Title, Time, Details nodrop
```

**Slack/File and App Audit/File - Top 10 Actions**
```
_sourceCategory={{Logsdatasource}}  (FileAuditLog)
| json "logType", "action", "context.ip_address", "context.ua", "context.location.name", "context.location.type", "actor.user.name", "actor.user.email", "actor.user.id", "entity.id", "entity.name", "entity.filetype", "entity.title", "date_create", "details" as LogType, Action, IP, UserAgent, Workspace, Type, User, Email, UserId, FileId, File, FileType, Title, Time, Details nodrop
```

**Slack/File and App Audit/File - Top 5 Users**
```
_sourceCategory={{Logsdatasource}}  (FileAuditLog)
| json "logType", "action", "context.ip_address", "context.ua", "context.location.name", "context.location.type", "actor.user.name", "actor.user.email", "actor.user.id", "entity.id", "entity.name", "entity.filetype", "entity.title", "date_create", "details" as LogType, Action, IP, UserAgent, Workspace, Type, User, Email, UserId, FileId, File, FileType, Title, Time, Details nodrop
```

**Slack/File and App Audit/Guests App Activity**
```
_sourceCategory={{Logsdatasource}}  (AppAuditLog)
| json "logType", "action", "context.ip_address", "context.ua", "context.location.name", "context.location.type", "actor.user.name", "actor.user.email", "actor.user.id", "entity.id", "entity.name", "entity.is_distributed", "entity.is_directory_approved", "entity.scopes", "date_create", "details" as LogType, Action, IP, UserAgent, Workspace, Type, User, Email, UserId, AppId, App, Distributed, Approved, Scopes, Time, Details nodrop
| where !isEmpty(Workspace) and !isEmpty(UserId)
| where [subquery:"logType":"UserLog"
| json "id", "name", "deleted", "is_bot", "teamName", "is_restricted", "is_ultra_restricted" as UserId, Name, Deleted, Bot, Workspace, is_restricted, is_ultra_restricted nodrop
```

**Slack/File and App Audit/Guests File Activity**
```
_sourceCategory={{Logsdatasource}}  (FileAuditLog)
| json "logType", "action", "context.ip_address", "context.ua", "context.location.name", "context.location.type", "actor.user.name", "actor.user.email", "actor.user.id", "entity.id", "entity.name", "entity.filetype", "entity.title", "date_create", "details" as LogType, Action, IP, UserAgent, Workspace, Type, User, Email, UserId, FileId, File, FileType, Title, Time, Details nodrop
| where !isEmpty(Workspace) and !isEmpty(UserId)
| where [subquery:"logType":"UserLog"
| json "id", "name", "deleted", "is_bot", "teamName", "is_restricted", "is_ultra_restricted" as UserId, Name, Deleted, Bot, Workspace, is_restricted, is_ultra_restricted nodrop
```

**Slack/File and App Audit/Members App Activity**
```
_sourceCategory={{Logsdatasource}}  (AppAuditLog)
| json "logType", "action", "context.ip_address", "context.ua", "context.location.name", "context.location.type", "actor.user.name", "actor.user.email", "actor.user.id", "entity.id", "entity.name", "entity.is_distributed", "entity.is_directory_approved", "entity.scopes", "date_create", "details" as LogType, Action, IP, UserAgent, Workspace, Type, User, Email, UserId, AppId, App, Distributed, Approved, Scopes, Time, Details nodrop
| where !isEmpty(Workspace) and !isEmpty(UserId)
| where [subquery:"logType":"UserLog"
| json "id", "name", "deleted", "is_bot", "teamName", "is_restricted", "is_ultra_restricted" as UserId, Name, Deleted, Bot, Workspace, is_restricted, is_ultra_restricted nodrop
```

**Slack/File and App Audit/Members File Activity**
```
_sourceCategory={{Logsdatasource}}  (FileAuditLog)
| json "logType", "action", "context.ip_address", "context.ua", "context.location.name", "context.location.type", "actor.user.name", "actor.user.email", "actor.user.id", "entity.id", "entity.name", "entity.filetype", "entity.title", "date_create", "details" as LogType, Action, IP, UserAgent, Workspace, Type, User, Email, UserId, FileId, File, FileType, Title, Time, Details nodrop
| where !isEmpty(Workspace) and !isEmpty(UserId)
| where [subquery:"logType":"UserLog"
| json "id", "name", "deleted", "is_bot", "teamName", "is_restricted", "is_ultra_restricted" as UserId, Name, Deleted, Bot, Workspace, is_restricted, is_ultra_restricted nodrop
```

**Slack/File and App Audit/Top 10 File Types**
```
_sourceCategory={{Logsdatasource}}  (FileAuditLog)
| json "logType", "action", "context.ip_address", "context.ua", "context.location.name", "context.location.type", "actor.user.name", "actor.user.email", "actor.user.id", "entity.id", "entity.name", "entity.filetype", "entity.title", "date_create", "details" as LogType, Action, IP, UserAgent, Workspace, Type, User, Email, UserId, FileId, File, FileType, Title, Time, Details nodrop
```

**Slack/File and App Audit/Top 10 Scopes**
```
_sourceCategory={{Logsdatasource}}  (AppAuditLog)
| json "logType", "action", "context.ip_address", "context.ua", "context.location.name", "context.location.type", "actor.user.name", "actor.user.email", "actor.user.id", "entity.id", "entity.name", "entity.is_distributed", "entity.is_directory_approved", "entity.scopes", "date_create", "details" as LogType, Action, IP, UserAgent, Workspace, Type, User, Email, UserId, AppId, App, Distributed, Approved, Scopes, Time, Details nodrop
| where !isEmpty(Workspace) and !isEmpty(UserId) and !isEmpty(Scopes)
| replace(Scopes, "[", "") as Scopes
| replace(Scopes, "\"", "") as Scopes
| parse regex field=Scopes "(?<Scope>.*?)[,\]]" multi
```

**Slack/Members/2FA by Workspace**
```
_sourceCategory={{Logsdatasource}}  "logType":"UserLog"
| json "id", "name", "deleted", "real_name", "tz", "tz_label", "is_admin", "is_owner", "is_primary_owner", "is_restricted", "is_ultra_restricted", "is_bot", "is_app_user", "teamName", "billable", "email", "has_2fa" as ID, User, Deleted, FullName, TimeZone, TimeZoneLabel, Admin, Owner, PrimaryOwner, Restricted, UltraRestricted, Bot, AppUser, Workspace, Billable, Email, AuthenticationEnabled nodrop
```

**Slack/Members/Billable Members by Workspace**
```
_sourceCategory={{Logsdatasource}}  "logType":"UserLog"
| json "id", "name", "deleted", "real_name", "tz", "tz_label", "is_admin", "is_owner", "is_primary_owner", "is_restricted", "is_ultra_restricted", "is_bot", "is_app_user", "teamName", "billable", "email", "has_2fa" as ID, User, Deleted, FullName, TimeZone, TimeZoneLabel, Admin, Owner, PrimaryOwner, Restricted, UltraRestricted, Bot, AppUser, Workspace, Billable, Email, AuthenticationEnabled nodrop
```

**Slack/Members/In-Active Members**
```
_sourceCategory={{Logsdatasource}}  "logType":"UserLog"
| json "id", "name", "deleted", "real_name", "tz", "tz_label", "is_admin", "is_owner", "is_primary_owner", "is_restricted", "is_ultra_restricted", "is_bot", "is_app_user", "teamName", "billable", "email", "has_2fa" as ID, User, Deleted, FullName, TimeZone, TimeZoneLabel, Admin, Owner, PrimaryOwner, Restricted, UltraRestricted, Bot, AppUser, Workspace, Billable, Email, AuthenticationEnabled nodrop
```

**Slack/Members/Member Information**
```
_sourceCategory={{Logsdatasource}}  "logType":"UserLog"
| json "id" as ID
| first(_raw) as FullMessage by id
| json field=FullMessage "name", "deleted", "real_name", "tz", "tz_label", "is_admin", "is_owner", "is_primary_owner", "is_restricted", "is_ultra_restricted", "is_bot", "is_app_user", "teamName", "billable", "email", "has_2fa", "updated" as User, Deleted, FullName, TimeZone, TimeZoneLabel, Admin, Owner, PrimaryOwner, Restricted, UltraRestricted, Bot, AppUser, Workspace, Billable, Email, AuthenticationEnabled, Updated nodrop
```

**Slack/Members/Members by Workspace**
```
 _sourceCategory={{Logsdatasource}}  "logType":"UserLog"
| json "id", "name", "deleted", "real_name", "tz", "tz_label", "is_admin", "is_owner", "is_primary_owner", "is_restricted", "is_ultra_restricted", "is_bot", "is_app_user", "teamName", "billable", "email", "has_2fa" as ID, User, Deleted, FullName, TimeZone, TimeZoneLabel, Admin, Owner, PrimaryOwner, Restricted, UltraRestricted, Bot, AppUser, Workspace, Billable, Email, AuthenticationEnabled nodrop
```

**Slack/Members/Roles by Workspace**
```
_sourceCategory={{Logsdatasource}}  "logType":"UserLog"
| json "id", "name", "deleted", "real_name", "tz", "tz_label", "is_admin", "is_owner", "is_primary_owner", "is_restricted", "is_ultra_restricted", "is_bot", "is_app_user", "teamName", "billable", "email", "has_2fa" as ID, User, Deleted, FullName, TimeZone, TimeZoneLabel, Admin, Owner, PrimaryOwner, Restricted, UltraRestricted, Bot, AppUser, Workspace, Billable, Email, AuthenticationEnabled nodrop
```

**Slack/Members/TimeZone by Workspace**
```
_sourceCategory={{Logsdatasource}}  "logType":"UserLog"
| json "id", "name", "deleted", "real_name", "tz", "tz_label", "is_admin", "is_owner", "is_primary_owner", "is_restricted", "is_ultra_restricted", "is_bot", "is_app_user", "teamName", "billable", "email", "has_2fa" as ID, User, Deleted, FullName, TimeZone, TimeZoneLabel, Admin, Owner, PrimaryOwner, Restricted, UltraRestricted, Bot, AppUser, Workspace, Billable, Email, AuthenticationEnabled nodrop
```

**Slack/Members/Top Members Activity**
```
_sourceCategory={{Logsdatasource}} 
| join ("logType":"ConversationLog" | json "user", "userName", "type", "subtype", "ts", "text", "channelId", "channelName", "teamName" as ID, User, Type, SubType, Time, Text, ChannelId, Channel, Workspace nodrop
| count_distinct(Time) as Messages by ID, User, Channel, Workspace) as T1,
("logType":"ConversationLog"
| json "user", "teamName", "files", "channelId" as ID, Workspace, Files, channelID nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi nodrop
| json field=File "name" as FileName nodrop
| count_distinct(FileName) as TotalFiles by Workspace, ID, channelID
| sum(TotalFiles) as TotalFiles by Workspace, ID) as T2 , ("logType":"ConversationLog"
| json "user", "teamName", "attachments", "channelId" as ID, Workspace, Attachments, ChannelID nodrop
| parse regex field=Attachments "(?<Attachment>\{[^\}]+(?:\}\}|\}))" multi nodrop
| json field=Attachment "fallback" as fallback nodrop
| count_distinct(fallback) as TotalAttachments by Workspace, ID, ChannelID
| sum(TotalAttachments) as TotalAttachments by Workspace, ID) as T3 on T1.ID = T2.ID and T2.ID = T3.ID and T1.Workspace=T2.Workspace and T2.Workspace=T3.Workspace
| T1_Workspace as Workspace | T1_ID as ID | T1_User as User | T1_Channel as Channel
| where Workspace matches "{{Workspace}}" and User matches "{{User}}"
| T2_TotalFiles as %"Total Files"| T3_TotalAttachments as %"Total Attachments"
| where [subquery:"logType":"UserLog"
| json "id", "name", "deleted", "is_bot", "teamName", "is_restricted", "is_ultra_restricted" as ID, Name, Deleted, Bot, Workspace, is_restricted, is_ultra_restricted nodrop
```

**Slack/Members/Trend - Active Members by Workspace**
```
_sourceCategory={{Logsdatasource}}  "logType":"ConversationLog"
| json "user", "userName","type", "subType", "ts", "text", "channelId", "channelName", "teamName" as ID, User, Type, SubType, MessageTime, Text, ChannelId, Channel, Workspace nodrop
| where [subquery:"logType":"UserLog"
| json "id", "name", "deleted", "is_bot", "teamName", "is_restricted", "is_ultra_restricted" as ID, Name, Deleted, Bot, Workspace, is_restricted, is_ultra_restricted nodrop
```

**Slack/Members/Trend - Messages by Workspace**
```
_sourceCategory={{Logsdatasource}}  "logType":"ConversationLog"
| json "user", "userName", "type", "subType", "ts", "text", "channelId", "channelName", "teamName" as ID, User, Type, SubType, MessageTime, Text, ChannelId, Channel, Workspace nodrop
| where [subquery:"logType":"UserLog"
| json "id", "name", "deleted", "is_bot", "teamName", "is_restricted", "is_ultra_restricted" as ID, Name, Deleted, Bot, Workspace, is_restricted, is_ultra_restricted nodrop
```

**Slack/Members/Trend - Total Members by Workspace**
```
_sourceCategory={{Logsdatasource}}  "logType":"UserLog"
| json "id", "name", "deleted", "real_name", "tz", "tz_label", "is_admin", "is_owner", "is_primary_owner", "is_restricted", "is_ultra_restricted", "is_bot", "is_app_user", "teamName", "billable", "email", "has_2fa" as ID, User, Deleted, FullName, TimeZone, TimeZoneLabel, Admin, Owner, PrimaryOwner, Restricted, UltraRestricted, Bot, AppUser, Workspace, Billable, Email, AuthenticationEnabled nodrop
```

**Slack/Overview/Access Locations**
```
_sourceCategory={{Logsdatasource}}  "logType":"AccessLog"
| json "user_id", "username", "teamName", "count", "ip", "user_agent", "country" as ID, Name, Workspace, Logins, IP, UserAgent, Country nodrop
```

**Slack/Overview/Admins**
```
_sourceCategory={{Logsdatasource}}  "logType":"UserLog"
| json "id", "name", "deleted", "real_name", "tz", "tz_label", "is_admin", "is_owner", "is_primary_owner", "is_restricted", "is_ultra_restricted", "is_bot", "is_app_user", "teamName", "billable", "email", "has_2fa" as ID, Name, Deleted, FullName, TimeZone, TimeZoneLabel, Admin, Owner, PrimaryOwner, Restricted, UltraRestricted, Bot, AppUser, Workspace, Billable, Email, AuthenticationEnabled nodrop
```

**Slack/Overview/Bots**
```
_sourceCategory={{Logsdatasource}}  "logType":"UserLog"
| json "id", "name", "deleted", "real_name", "tz", "tz_label", "is_admin", "is_owner", "is_primary_owner", "is_restricted", "is_ultra_restricted", "is_bot", "is_app_user", "teamName", "billable", "email", "has_2fa" as ID, Name, Deleted, FullName, TimeZone, TimeZoneLabel, Admin, Owner, PrimaryOwner, Restricted, UltraRestricted, Bot, AppUser, Workspace, Billable, Email, AuthenticationEnabled nodrop
```

**Slack/Overview/Files Shared by Workspace**
```
_sourceCategory={{Logsdatasource}}  "logType":"ConversationLog"
| json "ts", "channelId", "teamName", "files", "channelName", "userName" as MessageTime, ChannelId, Workspace, files, Channel, Name
```

**Slack/Overview/Member Roles**
```
_sourceCategory={{Logsdatasource}}  "logType":"UserLog"
| json "id", "name", "deleted", "real_name", "tz", "tz_label", "is_admin", "is_owner", "is_primary_owner", "is_restricted", "is_ultra_restricted", "is_bot", "is_app_user", "teamName", "billable", "email", "has_2fa" as ID, Name, Deleted, FullName, TimeZone, TimeZoneLabel, Admin, Owner, PrimaryOwner, Restricted, UltraRestricted, Bot, AppUser, Workspace, Billable, Email, AuthenticationEnabled nodrop
```

**Slack/Overview/Members**
```
_sourceCategory={{Logsdatasource}}  "logType":"UserLog"
| json "id", "name", "deleted", "real_name", "tz", "tz_label", "is_admin", "is_owner", "is_primary_owner", "is_restricted", "is_ultra_restricted", "is_bot", "is_app_user", "teamName", "billable", "email", "has_2fa" as ID, Name, Deleted, FullName, TimeZone, TimeZoneLabel, Admin, Owner, PrimaryOwner, Restricted, UltraRestricted, Bot, AppUser, Workspace, Billable, Email, AuthenticationEnabled nodrop
```

**Slack/Overview/Public Messages**
```
_sourceCategory={{Logsdatasource}}  "logType":"ConversationLog"
| json "teamName", "ts", "channelId", "channelName", "userName" as Workspace, Timestamp, ChannelId, Channel, Name
```

**Slack/Overview/Public Messages by Workspace**
```
_sourceCategory={{Logsdatasource}}  "logType":"ConversationLog"
| json "ts", "channelId", "teamName", "channelName", "userName" as MessageTime, ChannelId, Workspace, Channel, Name nodrop
```

**Slack/Overview/Top 5 Channels by Files**
```
_sourceCategory={{Logsdatasource}}  "logType":"ConversationLog"
| json "user", "userName", "ts", "channelId", "teamName", "channelName", "files" as ID, Name, Timestamp, ChannelId, Workspace, Channel, files
```

**Slack/Overview/Top 5 Channels by Messages**
```
_sourceCategory={{Logsdatasource}}  "logType":"ConversationLog"
| json "user", "userName", "ts", "channelId", "teamName", "channelName" as ID, Name, Timestamp, ChannelId, Workspace, Channel nodrop
```

**Slack/Overview/Top 5 Members by Messages**
```
_sourceCategory={{Logsdatasource}}  "logType":"ConversationLog"
| json "user", "userName", "ts", "channelId", "teamName", "channelName" as ID, Name, Timestamp, ChannelId, Workspace, Channel nodrop
| where Workspace matches "{{Workspace}}" 
|count_distinct(Timestamp) as Messages by ID, Name, ChannelId, Workspace
| where [subquery: "logType":"UserLog"
| json "id", "name", "deleted", "is_bot", "teamName" as ID, Name, Deleted, Bot, workspace nodrop
```

**Slack/Overview/Total Public Channels**
```
_sourceCategory={{Logsdatasource}}  "logType":"channelDetail"
| json "channel_id", "teamName", "channel_name" as ChannelId, Workspace, Channel
```

**Slack/Overview/Workspaces**
```
_sourceCategory={{Logsdatasource}}  "logType":"ConversationLog"
| json "ts", "channelId", "teamName", "files", "channelName", "userName" as MessageTime, ChannelId, Workspace, files, Channel, Name
```

**Slack/Public Channels/Active Channels**
```
_sourceCategory={{Logsdatasource}}  "logType":"ConversationLog"
| json "channelId", "teamName" as ChannelId, Workspace
```

**Slack/Public Channels/Channel Summary**
```
_sourceCategory={{Logsdatasource}} 
| join ("logType":"channelDetail"
| json "channel_name", "channel_id", "teamName", "members" as Channel, ChannelId, Workspace, Members
| withtime Members
| most_recent(Members_withtime) as Members by Channel, ChannelId, Workspace) as T1,("logType":"ConversationLog" | json "user", "userName", "type", "subtype", "ts", "text", "channelId", "channelName", "teamName" as ID, User, Type, SubType, Time, Text, ChannelId, Channel, Workspace nodrop
| count_distinct(Time) as Messages by ID, ChannelId, Workspace) as T2 on T1.ChannelId = T2.ChannelId and T1.Workspace=T2.Workspace
| T2_Workspace as Workspace | T2_ID as User| T1_Channel as Channel
| where Workspace matches "{{Workspace}}"
| T1_Members as %"Team Members"
| fields Workspace, Channel, User, %"Team Members" ,T2_Messages
| where [subquery:"logType":"UserLog"
| json "id", "name", "deleted", "is_bot", "teamName" as User, Name, Deleted, Bot, Workspace nodrop
```

**Slack/Public Channels/Channels**
```
_sourceCategory={{Logsdatasource}}  "logType":"channelDetail"
| json "channel_id", "teamName" as ChannelId, Workspace
```

**Slack/Public Channels/In-Active Channels**
```
_sourceCategory={{Logsdatasource}}  "logType":"channelDetail"
| json "channel_name", "channel_id", "teamName", "members" as Channel, ChannelId, Workspace, Members
| withtime ChannelId
| most_recent(ChannelId_withtime) as ChannelId by Channel, ChannelId, Workspace, Members
| where ![subquery: "logType":"ConversationLog"
| json "channelId", "teamName" as ChannelId, Workspace  
```

**Slack/Public Channels/Top 10 Channels by Attachments**
```
_sourceCategory={{Logsdatasource}}  "logType":"ConversationLog"
| json "channelId", "teamName", "attachments", "channelName" as ChannelId, Workspace, Attachments, Channel nodrop
| parse regex field=Attachments "(?<Attachment>\{[^\}]+(?:\}\}|\}))" multi nodrop
| json field=Attachment "fallback" as AttachmentName nodrop
```

**Slack/Public Channels/Top 10 Channels by Files**
```
_sourceCategory={{Logsdatasource}}  "logType":"ConversationLog"
| json "channelId", "teamName", "files", "channelName" as ChannelId, Workspace, Files, Channel nodrop
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi nodrop
| json field=File "name" as FileName nodrop
```

**Slack/Public Messages - New/File Types**
```
_sourceCategory = Labs/Slack "logType":"ConversationLog"
| json "userName", "type", "subtype", "ts", "text", "channelId", "channelName", "teamName", "files" as User, Type, SubType, MessageTime, Text, ChannelId, Channel, Workspace, Files nodrop
| where !isEmpty(Files)
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "name", "fileSize", "fileType" as FileName, FileSize, FileType
```

**Slack/Public Messages - New/Message Types**
```
_sourceCategory = Labs/Slack "logType":"ConversationLog"
| json "userName", "type", "subtype", "ts", "text", "channelId", "channelName", "teamName" as User, Type, SubType, MessageTime, Text, ChannelId, Channel, Workspace nodrop
```

**Slack/Public Messages - New/Recent Attachments**
```
_sourceCategory = Labs/Slack "logType":"ConversationLog"
| json "userName", "type", "subtype", "ts", "text", "channelId", "channelName", "teamName", "attachments" as User, Type, SubType, MessageTime, Text, ChannelId, Channel, Workspace, Attachments nodrop
| where !isEmpty(Attachments)
| parse regex field=Attachments "(?<Attachment>\{[^\}]+(?:\}\}|\}))" multi
| json field=Attachment "id", "text", "author_name", "author_link", "pretext", "fallback" as AttachmentId, AttachementText, AuthorName, AuthorLink, PreText, Fallback nodrop
```

**Slack/Public Messages - New/Recent File Shared**
```
_sourceCategory = Labs/Slack "logType":"ConversationLog"
| json "userName", "type", "subtype", "ts", "text", "channelId", "channelName", "teamName", "files" as User, Type, SubType, MessageTime, Text, ChannelId, Channel, Workspace, Files nodrop
| where !isEmpty(Files)
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "name", "fileSize", "fileType", "urlPrivate", "permalink", "urlPrivateDownload" as FileName, FileSize, FileType, PrivateURL, PermanentLink, URLDownload nodrop
```

**Slack/Public Messages - New/Recent Messages**
```
_sourceCategory = Labs/Slack "logType":"ConversationLog"
| json "userName", "type", "subtype", "ts", "text", "channelId", "channelName", "teamName" as User, Type, SubType, Time, Text, ChannelId, Channel, Workspace nodrop
```

**Slack/Public Messages - New/Total File Size**
```
_sourceCategory = Labs/Slack "logType":"ConversationLog"
| json "userName", "type", "subtype", "ts", "text", "channelId", "channelName", "teamName", "files" as User, Type, SubType, MessageTime, Text, ChannelId, Channel, Workspace, Files nodrop
| where !isEmpty(Files)
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "name", "fileSize", "fileType" as FileName, FileSize, FileType
```

**Slack/Public Messages/File Types**
```
_sourceCategory={{Logsdatasource}}  "logType":"ConversationLog"
| json "userName", "type", "subtype", "ts", "text", "channelId", "channelName", "teamName", "files" as User, Type, SubType, MessageTime, Text, ChannelId, Channel, Workspace, Files nodrop
| where !isEmpty(Files)
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "name", "fileSize", "fileType" as FileName, FileSize, FileType
```

**Slack/Public Messages/Message Types**
```
_sourceCategory={{Logsdatasource}}  "logType":"ConversationLog"
| json "userName", "type", "subtype", "ts", "text", "channelId", "channelName", "teamName" as User, Type, SubType, MessageTime, Text, ChannelId, Channel, Workspace nodrop
```

**Slack/Public Messages/Recent Attachments**
```
_sourceCategory={{Logsdatasource}}  "logType":"ConversationLog"
| json "userName", "type", "subtype", "ts", "text", "channelId", "channelName", "teamName", "attachments", "user" as User, Type, SubType, MessageTime, Text, ChannelId, Channel, Workspace, Attachments, ID nodrop
| where !isEmpty(Attachments)
| if (isEmpty(User), ID, User) as User
| parse regex field=Attachments "(?<Attachment>\{[^\}]+(?:\}\}|\}))" multi
| json field=Attachment "id", "text", "author_name", "author_link", "pretext", "fallback" as AttachmentId, AttachementText, AuthorName, AuthorLink, PreText, Fallback nodrop
| if (isEmpty(AuthorName), "-", AuthorName) as AuthorName
| where [subquery from=(-24h):"logType":"UserLog"
| json "id", "name", "deleted", "is_bot", "teamName", "is_restricted", "is_ultra_restricted" as ID, Name, Deleted, Bot, Workspace, is_restricted, is_ultra_restricted nodrop
```

**Slack/Public Messages/Recent File Shared**
```
_sourceCategory={{Logsdatasource}}  "logType":"ConversationLog"
| json "userName", "type", "subtype", "ts", "text", "channelId", "channelName", "teamName", "files", "user" as User, Type, SubType, MessageTime, Text, ChannelId, Channel, Workspace, Files, ID nodrop
| where !isEmpty(Files)
| if (isEmpty(User), ID, User) as User
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "name", "fileSize", "fileType", "urlPrivate", "permalink", "urlPrivateDownload" as FileName, FileSize, FileType, PrivateURL, PermanentLink, URLDownload nodrop
| where [subquery from=(-24h):"logType":"UserLog"
| json "id", "name", "deleted", "is_bot", "teamName", "is_restricted", "is_ultra_restricted" as ID, Name, Deleted, Bot, Workspace, is_restricted, is_ultra_restricted nodrop
```

**Slack/Public Messages/Recent Messages**
```
_sourceCategory={{Logsdatasource}}  "logType":"ConversationLog"
| json "userName", "type", "subtype", "ts", "text", "channelId", "channelName", "teamName", "user" as User, Type, SubType, Time, Text, ChannelId, Channel, Workspace, ID nodrop
| if (isEmpty(User), ID, User) as User
| where [subquery from=(-24h):"logType":"UserLog"
| json "id", "name", "deleted", "is_bot", "teamName", "is_restricted", "is_ultra_restricted" as ID, Name, Deleted, Bot, Workspace, is_restricted, is_ultra_restricted nodrop
```

**Slack/Public Messages/Total File Size**
```
_sourceCategory={{Logsdatasource}}  "logType":"ConversationLog"
| json "userName", "type", "subtype", "ts", "text", "channelId", "channelName", "teamName", "files" as User, Type, SubType, MessageTime, Text, ChannelId, Channel, Workspace, Files nodrop
| where !isEmpty(Files)
| parse regex field=Files "(?<File>\{[^\}]+(?:\}\}|\}))" multi
| json field=File "name", "fileSize", "fileType" as FileName, FileSize, FileType
```

**Slack/User Audit/Guest Activity**
```
_sourceCategory={{Logsdatasource}}  (UserAuditLog) ({{AdminEmail}})
| json "logType", "action", "context.ip_address", "context.ua", "context.location.name", "context.location.type", "actor.user.name", "actor.user.email", "actor.user.id", "entity.email", "entity.name", "entity.id", "date_create", "details" as LogType, Action, IP, UserAgent, Workspace, Type, Admin, AdminEmail, AdminID, Email, User, UserId, Time, Details nodrop
```

**Slack/User Audit/Members Activity**
```
_sourceCategory={{Logsdatasource}}  (UserAuditLog) ({{AdminEmail}})
| json "logType", "action", "context.ip_address", "context.ua", "context.location.name", "context.location.type", "actor.user.name", "actor.user.email", "actor.user.id", "entity.email", "entity.name", "entity.id", "date_create", "details" as LogType, Action, IP, UserAgent, Workspace, Type, Admin, AdminEmail, AdminID, Email, User, UserId, Time, Details nodrop
```

**Slack/User Audit/Role Changed**
```
_sourceCategory={{Logsdatasource}}  (UserAuditLog) ({{AdminEmail}})
| json "logType", "action", "context.ip_address", "context.ua", "context.location.name", "context.location.type", "actor.user.name", "actor.user.email", "actor.user.id", "entity.email", "entity.name", "entity.id", "date_create", "details" as LogType, Action, IP, UserAgent, Workspace, Type, Admin, AdminEmail, AdminID, Email, User, UserId, Time, Details nodrop
```

**Slack/User Audit/Top 10 Audit Actions**
```
_sourceCategory={{Logsdatasource}}  (UserAuditLog)
| json "logType", "action", "context.ip_address", "context.ua", "context.location.name", "context.location.type", "actor.user.name", "actor.user.email", "actor.user.id", "entity.email", "entity.name", "entity.id", "date_create", "details" as LogType, Action, IP, UserAgent, Workspace, Type, Admin, AdminEmail, AdminID, Email, User, UserId, Time, Details nodrop
```

**Slack/User Audit/Top 5 Admins**
```
_sourceCategory={{Logsdatasource}}  (UserAuditLog)
| json "logType", "action", "context.ip_address", "context.ua", "context.location.name", "context.location.type", "actor.user.name", "actor.user.email", "actor.user.id", "entity.email", "entity.name", "entity.id", "date_create", "details" as LogType, Action, IP, UserAgent, Workspace, Type, Admin, AdminEmail, AdminID, Email, User, UserId, Time, Details nodrop
```

**Slack/User Audit/Trend - Audit Actions**
```
_sourceCategory={{Logsdatasource}}  (UserAuditLog)
| json "logType", "action", "context.ip_address", "context.ua", "context.location.name", "context.location.type", "actor.user.name", "actor.user.email", "actor.user.id", "entity.email", "entity.name", "entity.id", "date_create", "details" as LogType, Action, IP, UserAgent, Workspace, Type, Admin, AdminEmail, AdminID, Email, User, UserId, Time, Details nodrop
```

**Slack/Workspace Audit/Top 10 Audit Actions**
```
_sourceCategory={{Logsdatasource}}  (WorkspaceAuditLog)
| json "logType", "action", "context.ip_address", "context.ua", "context.location.name", "context.location.type", "actor.user.name", "actor.user.email", "actor.user.id", "entity.id", "entity.name", "date_create", "details" as LogType, Action, IP, UserAgent, Workspace, Type, User, Email, UserId, WorkspaceID, WorkspaceName, Time, Details nodrop
```

**Slack/Workspace Audit/Top 5 Users**
```
_sourceCategory={{Logsdatasource}}  (WorkspaceAuditLog)
| json "logType", "action", "context.ip_address", "context.ua", "context.location.name", "context.location.type", "actor.user.name", "actor.user.email", "actor.user.id", "entity.id", "entity.name", "date_create", "details" as LogType, Action, IP, UserAgent, Workspace, Type, User, Email, UserId, WorkspaceID, WorkspaceName, Time, Details nodrop
```

**Slack/Workspace Audit/Trend - Audit Actions**
```
_sourceCategory={{Logsdatasource}}  (WorkspaceAuditLog)
| json "logType", "action", "context.ip_address", "context.ua", "context.location.name", "context.location.type", "actor.user.name", "actor.user.email", "actor.user.id", "entity.id", "entity.name", "date_create", "details" as LogType, Action, IP, UserAgent, Workspace, Type, User, Email, UserId, WorkspaceID, WorkspaceName, Time, Details nodrop
```

**Slack/Workspace Audit/Workspace - Added, Removed, Aliased, Renamed Emoji**
```
_sourceCategory={{Logsdatasource}}  (WorkspaceAuditLog) ({{Email}})
| json "logType", "action", "context.ip_address", "context.ua", "context.location.name", "context.location.type", "actor.user.name", "actor.user.email", "actor.user.id", "entity.id", "entity.name", "date_create", "details" as LogType, Action, IP, UserAgent, Workspace, Type, User, Email, UserId, WorkspaceID, WorkspaceName, Time, Details nodrop
```

**Slack/Workspace Audit/Workspace - Created, Deleted, Migrated**
```
_sourceCategory={{Logsdatasource}}  (WorkspaceAuditLog) ({{Email}})
| json "logType", "action", "context.ip_address", "context.ua", "context.location.name", "context.location.type", "actor.user.name", "actor.user.email", "actor.user.id", "entity.id", "entity.name", "date_create", "details" as LogType, Action, IP, UserAgent, Workspace, Type, User, Email, UserId, WorkspaceID, WorkspaceName, Time, Details nodrop
```

**Slack/Workspace Audit/Workspace - Data Retention and Billing**
```
_sourceCategory={{Logsdatasource}}  (WorkspaceAuditLog) ({{Email}})
| json "logType", "action", "context.ip_address", "context.ua", "context.location.name", "context.location.type", "actor.user.name", "actor.user.email", "actor.user.id", "entity.id", "entity.name", "date_create", "details" as LogType, Action, IP, UserAgent, Workspace, Type, User, Email, UserId, WorkspaceID, WorkspaceName, Time, Details nodrop
```

**Slack/Workspace Audit/Workspace - Manual, Corporate, Scheduled Export**
```
_sourceCategory={{Logsdatasource}}  (WorkspaceAuditLog) ({{Email}})
| json "logType", "action", "context.ip_address", "context.ua", "context.location.name", "context.location.type", "actor.user.name", "actor.user.email", "actor.user.id", "entity.id", "entity.name", "date_create", "details" as LogType, Action, IP, UserAgent, Workspace, Type, User, Email, UserId, WorkspaceID, WorkspaceName, Time, Details nodrop
```

**Slack/Workspace Audit/Workspace - SSO and 2FA Setting Changes**
```
_sourceCategory={{Logsdatasource}}  (WorkspaceAuditLog) ({{Email}})
| json "logType", "action", "context.ip_address", "context.ua", "context.location.name", "context.location.type", "actor.user.name", "actor.user.email", "actor.user.id", "entity.id", "entity.name", "date_create", "details" as LogType, Action, IP, UserAgent, Workspace, Type, User, Email, UserId, WorkspaceID, WorkspaceName, Time, Details nodrop
```


