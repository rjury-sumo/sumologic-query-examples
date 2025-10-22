# Parsers For Microsoft Teams

**Microsoft Teams/Teams - Channel Statistics/Channel Setting Changed**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "Name", "NewValue", "OldValue", "TeamName", "ChannelName" as workload, operation, email, setting, new_value, old_value, team_name, channel_name
```

**Microsoft Teams/Teams - Channel Statistics/Channel Tabs Added**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "ChannelName", "TabType", "TeamName" as workload, operation, email, channel_name, tab_type, team_name
```

**Microsoft Teams/Teams - Channel Statistics/Channel Tabs Removed**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "ChannelName", "TabType", "TeamName" as workload, operation, email, channel_name, tab_type, team_name
```

**Microsoft Teams/Teams - Channel Statistics/Channel Tabs Updated**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "ChannelName", "TabType", "TeamName" as workload, operation, email, channel_name, tab_type, team_name
```

**Microsoft Teams/Teams - Channel Statistics/Channels Added**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "ChannelType", "ChannelName", "TeamName" as workload, operation, email, channel_type, channel_name, team_name
```

**Microsoft Teams/Teams - Channel Statistics/Channels Added and Removed Over Time**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "ChannelType", "ChannelName", "TeamName" as workload, operation, email, channel_type, channel_name, team_name
```

**Microsoft Teams/Teams - Channel Statistics/Channels Removed**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "ChannelType", "ChannelName", "TeamName" as workload, operation, email, channel_type, channel_name, team_name
```

**Microsoft Teams/Teams - Channel Statistics/Connector Activity Over Time**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "AddOnName", "ChannelName", "TeamName" as workload, operation, email, addon_name, channel_name, team_name
```

**Microsoft Teams/Teams - Channel Statistics/Connectors Added**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "AddOnName", "ChannelName", "TeamName" as workload, operation, email, addon_name, channel_name, team_name
```

**Microsoft Teams/Teams - Channel Statistics/Connectors Removed**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "AddOnName", "ChannelName", "TeamName" as workload, operation, email, addon_name, channel_name, team_name
```

**Microsoft Teams/Teams - Channel Statistics/Connectors Updated**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "AddOnName", "ChannelName", "TeamName" as workload, operation, email, addon_name, channel_name, team_name
```

**Microsoft Teams/Teams - Channel Statistics/Tab Activity Over Time**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "ChannelName", "TabType", "TeamName" as workload, operation, email, channel_name, tab_type, team_name
```

**Microsoft Teams/Teams - Channel Statistics/Top 5 Channel Setting Changes**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "Name", "NewValue", "OldValue", "TeamName", "ChannelName" as workload, operation, email, setting, new_value, old_value, team_name, channel_name
```

**Microsoft Teams/Teams - Channel Statistics/Top 5 Channel Tab Types Added**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "ChannelName", "TabType", "TeamName" as workload, operation, email, channel_name, tab_type, team_name
```

**Microsoft Teams/Teams - Channel Statistics/Top 5 Channels by Connector Activity**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "AddOnName", "ChannelName", "TeamName" as workload, operation, email, addon_name, channel_name, team_name
```

**Microsoft Teams/Teams - Channel Statistics/Top 5 Channels by Tab Activity**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "ChannelName", "TabType", "TeamName" as workload, operation, email, channel_name, tab_type, team_name
```

**Microsoft Teams/Teams - Channel Statistics/Top 5 Connectors Added**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "AddOnName", "ChannelName", "TeamName" as workload, operation, email, addon_name, channel_name, team_name
```

**Microsoft Teams/Teams - Channel Statistics/Top 5 Teams with New Channels**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "ChannelType", "ChannelName", "TeamName" as workload, operation, email, channel_type, channel_name, team_name
```

**Microsoft Teams/Teams - Channel Statistics/Top 5 Users Adding Channels**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "ChannelType", "ChannelName", "TeamName" as workload, operation, email, channel_type, channel_name, team_name
```

**Microsoft Teams/Teams - Overview/Channels Added**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "ChannelType", "ChannelName", "TeamName" as workload, operation, email, channel_type, channel_name, team_name
```

**Microsoft Teams/Teams - Overview/Logins**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation", "UserId" as workload, operation, email
```

**Microsoft Teams/Teams - Overview/Logins by Location**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation", "UserId", "ClientIP", "ObjectId" as workload, operation, email, client_ip, client_type
```

**Microsoft Teams/Teams - Overview/Teams Created**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "TeamName" as workload, operation, email, team_name
```

**Microsoft Teams/Teams - Overview/Top 5 Bots Added to Teams**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "AddOnName", "TeamName" as workload, operation, email, bot_name, team_name
```

**Microsoft Teams/Teams - Overview/Top 5 Channel Connectors Added**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "AddOnName", "ChannelName", "TeamName" as workload, operation, email, addon_name, channel_name, team_name
```

**Microsoft Teams/Teams - Overview/Top 5 Object Names With Role Changes**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "CommunicationType", "ItemName", "Members[*].UPN", "Members[*].Role" as workload, operation, email, object_type, object_name, members_added_raw, member_role_raw
```

**Microsoft Teams/Teams - Overview/Top 5 Users Adding Channels**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "ChannelType", "ChannelName", "TeamName" as workload, operation, email, channel_type, channel_name, team_name
```

**Microsoft Teams/Teams - Overview/Top 5 Users Creating Teams**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "TeamName" as workload, operation, email, team_name
```

**Microsoft Teams/Teams - Overview/Top 5 Users Making Role Changes**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "CommunicationType", "ItemName", "Members[*].UPN", "Members[*].Role" as workload, operation, email, object_type, object_name, members_added_raw, member_role_raw
```

**Microsoft Teams/Teams - Team Statistics/Bots Added and Removed Over Time**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "AddOnName", "TeamName" as workload, operation, email, bot_name, team_name
```

**Microsoft Teams/Teams - Team Statistics/Bots Added to Teams**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "AddOnName", "TeamName" as workload, operation, email, bot_name, team_name
```

**Microsoft Teams/Teams - Team Statistics/Bots Removed From Teams**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "AddOnName", "TeamName" as workload, operation, email, bot_name, team_name
```

**Microsoft Teams/Teams - Team Statistics/Team Setting Changed**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "Name", "NewValue", "OldValue", "TeamName" as workload, operation, email, setting, new_value, old_value, team_name
```

**Microsoft Teams/Teams - Team Statistics/Teams Created**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "TeamName" as workload, operation, email, team_name
```

**Microsoft Teams/Teams - Team Statistics/Teams Created and Removed Over Time**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "TeamName" as workload, operation, email, team_name
```

**Microsoft Teams/Teams - Team Statistics/Teams Removed**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "TeamName" as workload, operation, email, team_name
```

**Microsoft Teams/Teams - Team Statistics/Top 5 Bots Added to Teams**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "AddOnName", "TeamName" as workload, operation, email, bot_name, team_name
```

**Microsoft Teams/Teams - Team Statistics/Top 5 Team Setting Changes**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "Name", "NewValue", "OldValue", "TeamName" as workload, operation, email, setting, new_value, old_value, team_name
```

**Microsoft Teams/Teams - Team Statistics/Top 5 Users Creating Teams**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "TeamName" as workload, operation, email, team_name
```

**Microsoft Teams/Teams - User and Role Changes/Member Role Changes Over Time**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "CommunicationType", "ItemName", "Members[*].UPN", "Members[*].Role" as workload, operation, email, object_type, object_name, members_added_raw, member_role_raw
```

**Microsoft Teams/Teams - User and Role Changes/Members Added**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "CommunicationType", "ItemName", "Members[*].UPN", "Members[*].Role" as workload, operation, email, object_type, object_name, members_added_raw, member_role_raw
```

**Microsoft Teams/Teams - User and Role Changes/Members Removed**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "CommunicationType", "ItemName", "Members[*].UPN" as workload, operation, email, object_type, object_name, members_removed_raw
```

**Microsoft Teams/Teams - User and Role Changes/Team Member Role Change**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "Members[*].UPN", "Members[*].Role", "TeamName" as workload, operation, email, members_changed_raw, member_role_raw, team_name
```

**Microsoft Teams/Teams - User and Role Changes/Top 5 Object Names**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "CommunicationType", "ItemName", "Members[*].UPN", "Members[*].Role" as workload, operation, email, object_type, object_name, members_added_raw, member_role_raw
```

**Microsoft Teams/Teams - User and Role Changes/Top 5 Object Types**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "CommunicationType", "ItemName", "Members[*].UPN", "Members[*].Role" as workload, operation, email, object_type, object_name, members_added_raw, member_role_raw
```

**Microsoft Teams/Teams - User and Role Changes/Top 5 Users Making Role Changes**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation" , "UserId", "CommunicationType", "ItemName", "Members[*].UPN", "Members[*].Role" as workload, operation, email, object_type, object_name, members_added_raw, member_role_raw
```

**Microsoft Teams/Teams - User Sessions/25 Most Recent Logins**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation", "UserId", "ObjectId" as workload, operation, email, client_type
```

**Microsoft Teams/Teams - User Sessions/Logins**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation", "UserId" as workload, operation, email
```

**Microsoft Teams/Teams - User Sessions/Logins by Client Version**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation", "UserId", "ObjectId" as workload, operation, email, client_type
| where workload = "MicrosoftTeams" and operation = "TeamsSessionStarted"
| parse field=client_type "*(*)" as platform, version
```

**Microsoft Teams/Teams - User Sessions/Logins by Location**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation", "UserId", "ClientIP", "ObjectId" as workload, operation, email, client_ip, client_type
```

**Microsoft Teams/Teams - User Sessions/Logins by Platform**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation", "UserId", "ObjectId" as workload, operation, email, client_type
| where workload = "MicrosoftTeams" and operation = "TeamsSessionStarted"
| parse field=client_type "*(*)" as platform, version
```

**Microsoft Teams/Teams - User Sessions/Logins this week vs. last week**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation", "UserId" as workload, operation, email
```

**Microsoft Teams/Teams - User Sessions/Malicious IP Addresses**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation", "UserId", "ClientIP", "ObjectId" as workload, operation, email, client_ip, client_type
| where workload = "MicrosoftTeams" and operation = "TeamsSessionStarted"
| lookup type, actor, raw, threatlevel as malicious_confidence from sumo://threat/cs on threat=client_ip
| where  type="ip_address" and !isNull(malicious_confidence)
| json field=raw "labels[*].name" as label_name 
```

**Microsoft Teams/Teams - User Sessions/Top 10 IP Addresses**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation", "UserId", "ClientIP", "ObjectId" as workload, operation, email, client_ip, client_type
```

**Microsoft Teams/Teams - User Sessions/Top 10 Users by Region**
```
_sourceCategory = Labs/Microsoft/Team* 
| json "Workload", "Operation", "UserId", "ClientIP", "ObjectId" as workload, operation, email, client_ip, client_type
```


