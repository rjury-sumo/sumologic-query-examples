# Parsers For Zoom

**Zoom/Adminstrator Activity - New/Activated**
```
_sourceCategory = Labs/Zoom  ("user.created" or "user.activated")
| json "event", "payload.account_id", "payload.creation_type", "payload.operator","payload.object.email", "payload.object.type" as event, account_id, creation_type, admin, user_email, user_type nodrop
```

**Zoom/Adminstrator Activity - New/Admin Activity Distribution**
```
_sourceCategory = Labs/Zoom  "event" ("account.created" or "account.disassociated" or "account.settings_updated" or "account.updated" or "user.settings_updated" or "user.updated" or "user.created" or "user.activated" or "user.deleted" or "user.deactivated" or "user.disassociated" or "app_deauthorized")
| json "event", "payload.operator", "payload.account_id", "payload.time_stamp" as event, admin, account_id, timestamp nodrop
```

**Zoom/Adminstrator Activity - New/Admin Activity Over Time**
```
_sourceCategory = Labs/Zoom  "event" ("account.created" or "account.disassociated" or "account.settings_updated" or "account.updated" or "user.settings_updated" or "user.updated" or "user.created" or "user.activated" or "user.deleted" or "user.deactivated" or "user.disassociated" or "app_deauthorized")
| json "event", "payload.operator", "payload.account_id", "payload.time_stamp" as event, admin, account_id, timestamp nodrop
```

**Zoom/Adminstrator Activity - New/Disassociated**
```
_sourceCategory = Labs/Zoom  ("user.deleted" or "user.disassociated" or "user.deactivated")
| json "event", "payload.account_id", "payload.operator","payload.object.email", "payload.object.type" as event, account_id, admin, user_email, user_type
```

**Zoom/Adminstrator Activity - New/Recent Accounts Created**
```
_sourceCategory = Labs/Zoom  "account.created"
| json "event", "payload.operator", "payload.account_id", "payload.object.owner_email" as event, admin, account_id, owner_email
```

**Zoom/Adminstrator Activity - New/Recent Accounts Disassociated**
```
_sourceCategory = Labs/Zoom  "account.disassociated"
| json "event", "payload.operator", "payload.account_id", "payload.object.owner_email" as event, admin, account_id, owner_email
```

**Zoom/Adminstrator Activity - New/Recent Accounts Updated**
```
_sourceCategory = Labs/Zoom  ("account.updated" or "account.settings_updated")
| json "event", "payload.operator", "payload.account_id", "payload.object", "payload.old_object", "payload.time_stamp" as event, admin, account_id, new_object, old_object, update_timestamp
```

**Zoom/Adminstrator Activity - New/Recent App Deauthorizations**
```
_sourceCategory = Labs/Zoom  "app_deauthorized"
| json "event", "payload.account_id", "payload.client_id", "payload.deauthorization_time" as event, account_id, app_client_id, deauthorization_time
```

**Zoom/Adminstrator Activity - New/Recent Users Updated**
```
_sourceCategory = Labs/Zoom  "user.updated"
| json "event", "payload.account_id", "payload.operator","payload.object", "payload.old_object", "payload.time_stamp" as event, account_id, admin, new_object, old_object, update_timestamp
```

**Zoom/Adminstrator Activity - New/User Events Distribution**
```
_sourceCategory = Labs/Zoom  ("user.created" or "user.activated" or "user.deleted" or "user.disassociated" or "user.deactivated" or "user.updated")
| json "event", "payload.account_id", "payload.creation_type", "payload.operator","payload.object.email", "payload.object.type" as event, account_id, creation_type, admin, user_email, user_type nodrop
```

**Zoom/Adminstrator Activity/Activated**
```
_sourceCategory={{Logsdatasource}}   ("user.created" or "user.activated")
| json "event", "payload.account_id", "payload.creation_type", "payload.operator","payload.object.email", "payload.object.type" as event, account_id, creation_type, admin, user_email, user_type nodrop
```

**Zoom/Adminstrator Activity/Admin Activity Distribution**
```
_sourceCategory={{Logsdatasource}}   "event" ("account.created" or "account.disassociated" or "account.settings_updated" or "account.updated" or "user.settings_updated" or "user.updated" or "user.created" or "user.activated" or "user.deleted" or "user.deactivated" or "user.disassociated" or "app_deauthorized")
| json "event", "payload.operator", "payload.account_id", "payload.time_stamp" as event, admin, account_id, timestamp nodrop
```

**Zoom/Adminstrator Activity/Admin Activity Over Time**
```
_sourceCategory={{Logsdatasource}}   "event" ("account.created" or "account.disassociated" or "account.settings_updated" or "account.updated" or "user.settings_updated" or "user.updated" or "user.created" or "user.activated" or "user.deleted" or "user.deactivated" or "user.disassociated" or "app_deauthorized")
| json "event", "payload.operator", "payload.account_id", "payload.time_stamp" as event, admin, account_id, timestamp nodrop
```

**Zoom/Adminstrator Activity/Disassociated**
```
_sourceCategory={{Logsdatasource}}   ("user.deleted" or "user.disassociated" or "user.deactivated")
| json "event", "payload.account_id", "payload.operator","payload.object.email", "payload.object.type" as event, account_id, admin, user_email, user_type
```

**Zoom/Adminstrator Activity/Recent Accounts Created**
```
_sourceCategory={{Logsdatasource}}   "account.created"
| json "event", "payload.operator", "payload.account_id", "payload.object.owner_email" as event, admin, account_id, owner_email
```

**Zoom/Adminstrator Activity/Recent Accounts Disassociated**
```
_sourceCategory={{Logsdatasource}}   "account.disassociated"
| json "event", "payload.operator", "payload.account_id", "payload.object.owner_email" as event, admin, account_id, owner_email
```

**Zoom/Adminstrator Activity/Recent Accounts Updated**
```
_sourceCategory={{Logsdatasource}}   ("account.updated" or "account.settings_updated")
| json "event", "payload.operator", "payload.account_id", "payload.object", "payload.old_object", "payload.time_stamp" as event, admin, account_id, new_object, old_object, update_timestamp
```

**Zoom/Adminstrator Activity/Recent App Deauthorizations**
```
_sourceCategory={{Logsdatasource}}   "app_deauthorized"
| json "event", "payload.account_id", "payload.client_id", "payload.deauthorization_time" as event, account_id, app_client_id, deauthorization_time
```

**Zoom/Adminstrator Activity/Recent Users Updated**
```
_sourceCategory={{Logsdatasource}}   "user.updated"
| json "event", "payload.account_id", "payload.operator","payload.object", "payload.old_object", "payload.time_stamp" as event, account_id, admin, new_object, old_object, update_timestamp
```

**Zoom/Adminstrator Activity/User Events Distribution**
```
_sourceCategory={{Logsdatasource}}   ("user.created" or "user.activated" or "user.deleted" or "user.disassociated" or "user.deactivated" or "user.updated")
| json "event", "payload.account_id", "payload.creation_type", "payload.operator","payload.object.email", "payload.object.type" as event, account_id, creation_type, admin, user_email, user_type nodrop
```

**Zoom/Authentication/25 Most Recent Logins**
```
_sourceCategory={{Logsdatasource}}   "user.signed_in"
| json "event", "payload.object.client_type", "payload.object.date_time", "payload.object.version", "payload.object.email" as event, client_type, login_time, version, email nodrop
```

**Zoom/Authentication/Least Used Zoom Clients by Users**
```
_sourceCategory={{Logsdatasource}}   "user.signed_in"
| json "event", "payload.object.client_type", "payload.object.date_time", "payload.object.version", "payload.object.email" as event, client_type, login_time, version, email nodrop
```

**Zoom/Authentication/Logins**
```
_sourceCategory={{Logsdatasource}}   "user.signed_in"
| json "event", "payload.object.client_type", "payload.object.date_time", "payload.object.version", "payload.object.email" as event, client_type, login_time, version, email nodrop
```

**Zoom/Authentication/Logins by Device Type**
```
_sourceCategory={{Logsdatasource}}   "user.signed_in"
| json "event", "payload.object.client_type", "payload.object.date_time", "payload.object.version", "payload.object.email" as event, client_type, login_time, version, email nodrop
```

**Zoom/Authentication/Logins from Multiple Devices**
```
_sourceCategory={{Logsdatasource}}   "user.signed_in"
| json "event", "payload.object.client_type", "payload.object.date_time", "payload.object.version", "payload.object.email" as event, client_type, login_time, version, email nodrop
```

**Zoom/Authentication/Logins this week vs last week**
```
_sourceCategory={{Logsdatasource}}   "user.signed_in"
| json "event", "payload.object.client_type", "payload.object.date_time", "payload.object.version", "payload.object.email" as event, client_type, login_time, version, email nodrop
```

**Zoom/Authentication/Logouts**
```
_sourceCategory={{Logsdatasource}}   "user.signed_out"
| json "event", "payload.object.client_type", "payload.object.date_time", "payload.object.version", "payload.object.email" as event, client_type, login_time, version, email nodrop
```

**Zoom/Authentication/Logouts Over Time**
```
_sourceCategory={{Logsdatasource}}   ("user.signed_in" or "user.signed_out")
| json "event", "payload.object.client_type", "payload.object.date_time", "payload.object.version", "payload.object.email" as event, client_type, login_time, version, email
```

**Zoom/Authentication/Top 10 Zoom Clients by Users**
```
_sourceCategory={{Logsdatasource}}   "user.signed_in"
| json "event", "payload.object.client_type", "payload.object.date_time", "payload.object.version", "payload.object.email" as event, client_type, login_time, version, email nodrop
```

**Zoom/Authentication/Zoom Client Versions**
```
_sourceCategory={{Logsdatasource}}   "user.signed_in"
| json "event", "payload.object.client_type", "payload.object.date_time", "payload.object.version", "payload.object.email" as event, client_type, login_time, version, email nodrop
```

**Zoom/Availability/Top 10 Rooms with Issues**
```
_sourceCategory={{Logsdatasource}}   
| json "event", "payload.object.id", "payload.object.room_name", "payload.object.email", "payload.object.issue", "payload.object.alert_type", "payload.object.component", "payload.object.alert_kind" as event,room_id, room_name, email, issue, alert_type, component, alert_kind nodrop
```

**Zoom/Availability/Webinar Issues**
```
_sourceCategory={{Logsdatasource}}   ("meeting.alert" or "webinar.alert")
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.host_id", "payload.object.type", "payload.object.duration", "payload.object.issues" as event, meeting_start_time, topic, meeting_instance_id, meeting_number, meeting_host_id, meeting_type, meeting_duration, issues nodrop
```

**Zoom/Availability/Zoom Room Alerts**
```
_sourceCategory={{Logsdatasource}}   "zoomroom.alert"
| json "event", "payload.object.id", "payload.object.room_name", "payload.object.email", "payload.object.issue", "payload.object.alert_type", "payload.object.component", "payload.object.alert_kind" as event,room_id, room_name, email, issue, alert_type, component, alert_kind nodrop
```

**Zoom/Availability/Zoom Room Issues**
```
_sourceCategory={{Logsdatasource}}  
| json "event", "payload.object.id", "payload.object.room_name", "payload.object.email", "payload.object.issue", "payload.object.alert_type", "payload.object.component", "payload.object.alert_kind" as event,room_id, room_name, email, issue, alert_type, component, alert_kind nodrop
```

**Zoom/Guest Activity/Guest Participants Over Time**
```
_sourceCategory={{Logsdatasource}}   "meeting.participant_joined"
| json "event", "payload.account_id",  "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.host_id", "payload.object.id", "payload.object.type", "payload.object.duration", "payload.object.participant.id", "payload.object.participant.user_id","payload.object.participant.join_time", "payload.object.participant.user_name" as event, account_id, meeting_start_time, topic, meeting_instance_id, meeting_host_id, meeting_number, meeting_type, meeting_duration, participant_user_id , participant_unique_id, guest_join_time, guest_name nodrop
```

**Zoom/Guest Activity/Guests**
```
_sourceCategory={{Logsdatasource}}   "meeting.participant_joined"
| json "event", "payload.account_id",  "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.host_id", "payload.object.id", "payload.object.type", "payload.object.duration", "payload.object.participant.id", "payload.object.participant.user_id","payload.object.participant.join_time", "payload.object.participant.user_name" as event, account_id, meeting_start_time, topic, meeting_instance_id, meeting_host_id, meeting_number, meeting_type, meeting_duration, participant_user_id , participant_unique_id, guest_join_time, guest_name nodrop
```

**Zoom/Guest Activity/Meetings Consistently Used by Guests**
```
_sourceCategory={{Logsdatasource}}   "meeting.participant_joined"
| json "event", "payload.account_id",  "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.host_id", "payload.object.id", "payload.object.type", "payload.object.duration", "payload.object.participant.id", "payload.object.participant.user_id","payload.object.participant.join_time", "payload.object.participant.user_name" as event, account_id, meeting_start_time, topic, meeting_instance_id, meeting_host_id, meeting_number, meeting_type, meeting_duration, participant_user_id , participant_unique_id, guest_join_time, guest_name nodrop
```

**Zoom/Guest Activity/Meetings With Most Guests**
```
_sourceCategory={{Logsdatasource}}   "meeting.participant_joined"
| json "event", "payload.account_id",  "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.host_id", "payload.object.id", "payload.object.type", "payload.object.duration", "payload.object.participant.id", "payload.object.participant.user_id","payload.object.participant.join_time", "payload.object.participant.user_name" as event, account_id, meeting_start_time, topic, meeting_instance_id, meeting_host_id, meeting_number, meeting_type, meeting_duration, participant_user_id , participant_unique_id, guest_join_time, guest_name nodrop
```

**Zoom/Guest Activity/Recent Guest Activity**
```
_sourceCategory={{Logsdatasource}}   "meeting.participant_joined"
| json "event", "payload.account_id",  "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.host_id", "payload.object.id", "payload.object.type", "payload.object.duration", "payload.object.participant.id","payload.object.participant.join_time", "payload.object.participant.user_name" as event, account_id, meeting_start_time, topic, meeting_instance_id, meeting_host_id, meeting_number, meeting_type, meeting_duration, participant_user_id , guest_join_time, guest_name nodrop
```

**Zoom/Guest Activity/Screen Sharing with Guest Participants**
```
_sourceCategory={{Logsdatasource}}   "meeting.sharing_started"
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.host_id", "payload.object.type", "payload.object.duration", "payload.object.participant.id", "payload.object.participant.user_name", "payload.object.participant.sharing_details.content", "payload.object.participant.sharing_details.date_time" as event, meeting_start_time, topic, meeting_instance_id, meeting_number, meeting_host_id, meeting_type, meeting_duration, participant_user_id, participant_user_name, content_type, sharing_start_time  nodrop
| where event = "meeting.sharing_started" and !isBlank(participant_user_name) and [subquery:_sourceCategory={{Logsdatasource}}   "meeting.participant_joined"
 | json "event", "payload.account_id",  "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.host_id", "payload.object.id", "payload.object.type", "payload.object.duration", "payload.object.participant.id", "payload.object.participant.user_id","payload.object.participant.join_time", "payload.object.participant.user_name" as event, account_id, meeting_start_time, topic, meeting_instance_id, meeting_host_id, meeting_number, meeting_type, meeting_duration, participant_user_id , participant_unique_id, guest_join_time, guest_name nodrop
```

**Zoom/Guest Activity/Top 10 Guests by Meetings Joined**
```
_sourceCategory={{Logsdatasource}}   "meeting.participant_joined"
| json "event", "payload.account_id",  "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.host_id", "payload.object.id", "payload.object.type", "payload.object.duration", "payload.object.participant.id", "payload.object.participant.user_id","payload.object.participant.join_time", "payload.object.participant.user_name" as event, account_id, meeting_start_time, topic, meeting_instance_id, meeting_host_id, meeting_number, meeting_type, meeting_duration, participant_user_id , participant_unique_id, guest_join_time, guest_name nodrop
```

**Zoom/Meeting Security/Hosts Using Personal Meeting Rooms Over Time**
```
_sourceCategory={{Logsdatasource}}   "meeting.started"
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.host_id", "payload.object.id", "payload.object.type", "payload.object.duration" as event, meeting_start_time, topic, meeting_instance_id, meeting_host_id, meeting_number, meeting_type, meeting_duration nodrop
```

**Zoom/Meeting Security/Hosts Using Same Meeting Number**
```
_sourceCategory={{Logsdatasource}}   "meeting.started"
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.host_id", "payload.object.type", "payload.object.duration" as event, meeting_start_time, topic, meeting_instance_id, meeting_number, meeting_host_id, meeting_type, meeting_duration
```

**Zoom/Meeting Security/Meetings Where Guests Can Join Before Host**
```
_sourceCategory={{Logsdatasource}}   "meeting.updated"
| json "event", "payload.object", "payload.operator", "payload.time_stamp", "payload.object.id" as event, object, user_email, update_time, meeting_number
```

**Zoom/Meeting Security/Meetings with Join Before Host Enabled**
```
_sourceCategory={{Logsdatasource}}   "meeting.participant_jbh_joined"
| json "event", "payload.account_id",  "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.host_id", "payload.object.id", "payload.object.type", "payload.object.duration", "payload.object.participant.user_name" as event, account_id, meeting_start_time, topic, meeting_instance_id, meeting_host_id, meeting_number, meeting_type, meeting_duration, participant_user_name nodrop
```

**Zoom/Meeting Security/Meetings Without Enforced Login**
```
_sourceCategory={{Logsdatasource}}   "meeting.updated"
| json "event", "payload.object", "payload.operator", "payload.time_stamp", "payload.object.id" as event, object, user_email, update_time, meeting_number
```

**Zoom/Meeting Security/Meetings Without Passwords**
```
_sourceCategory={{Logsdatasource}}   "meeting.updated"
| json "event", "payload.object", "payload.operator", "payload.time_stamp", "payload.object.id" as event, object, user_email, update_time, meeting_number 
| parse regex field=object "password\":\"(?<password>[^\"]+)\"" nodrop
```

**Zoom/Meeting Security/Meetings Without Waiting Rooms**
```
_sourceCategory={{Logsdatasource}}   "meeting.updated"
| json "event", "payload.object", "payload.operator", "payload.time_stamp", "payload.object.id" as event, object, user_email, update_time, meeting_number 
| parse regex field=object "password\":\"(?<password>[^\"]+)\"" nodrop
```

**Zoom/Meeting Security/Recent Security Events**
```
_sourceCategory={{Logsdatasource}}   "meeting.updated"
| json "event", "payload.object", "payload.operator", "payload.time_stamp", "payload.object.id" as event, object, user_email, update_time, meeting_number
| where event = "meeting.updated"
| formatDate(fromMillis(update_time),"MM-dd-yyyy HH:mm:ss:SSS") as update_time
| parse regex field=object "password\":\"(?<password>[^\"]+)\"" nodrop
```

**Zoom/Meeting Security/Top 10 Hosts with Personal Meeting Rooms**
```
_sourceCategory={{Logsdatasource}}   "meeting.started"
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.host_id", "payload.object.id", "payload.object.type", "payload.object.duration" as event, meeting_start_time, topic, meeting_instance_id, meeting_host_id, meeting_number, meeting_type, meeting_duration nodrop
```

**Zoom/Meeting Usage/Average Meeting Duration Over Time**
```
_sourceCategory={{Logsdatasource}}   "meeting.ended"
| json "event", "payload.object.start_time", "payload.object.end_time",  "payload.object.host_id", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.type", "payload.object.duration" as event, meeting_start_time, meeting_end_time, meeting_host_id, topic, meeting_instance_id, meeting_number, meeting_type, meeting_duration
```

**Zoom/Meeting Usage/Delete Distribution**
```
_sourceCategory={{Logsdatasource}}   ("meeting.created" or "meeting.deleted" or "meeting.updated")
| json "event", "payload.account_id",  "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.host_id", "payload.object.id", "payload.object.type", "payload.object.duration" as event, account_id, meeting_start_time, topic, meeting_instance_id, meeting_host_id, meeting_number, meeting_type, meeting_duration nodrop
```

**Zoom/Meeting Usage/Hosts**
```
_sourceCategory={{Logsdatasource}}   "meeting.started"
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.host_id", "payload.object.type", "payload.object.duration" as event, meeting_start_time, topic, meeting_instance_id, meeting_number, host_id, meeting_type, meeting_duration nodrop
```

**Zoom/Meeting Usage/Meeting Types**
```
_sourceCategory={{Logsdatasource}}   "meeting.started"
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.type", "payload.object.duration" as event, meeting_start_time, topic, meeting_instance_id, meeting_number, meeting_type, meeting_duration nodrop
```

**Zoom/Meeting Usage/Meetings in Progress**
```
_sourceCategory={{Logsdatasource}}   "meeting.started"
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.type", "payload.object.duration" as event, meeting_start_time, topic, meeting_instance_id, meeting_number, meeting_type, meeting_duration nodrop
| where event = "meeting.started" and ![subquery: _sourceCategory={{Logsdatasource}}   "meeting.ended"| json "event", "payload.object.uuid" as event, meeting_instance_id| where event="meeting.ended"| count by meeting_instance_id| compose meeting_instance_id]
```

**Zoom/Meeting Usage/Meetings on Time vs Over Time**
```
_sourceCategory={{Logsdatasource}}   "meeting.ended"
| json "event", "payload.object.start_time", "payload.object.end_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.host_id", "payload.object.type", "payload.object.duration" as event, meeting_start_time, meeting_end_time, topic, meeting_instance_id, meeting_number, meeting_host_id, meeting_type, meeting_duration
```

**Zoom/Meeting Usage/Meetings Over Time**
```
_sourceCategory={{Logsdatasource}}   "meeting.started"
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.type", "payload.object.duration" as event, meeting_start_time, topic, meeting_instance_id, meeting_number, meeting_type, meeting_duration nodrop
```

**Zoom/Meeting Usage/Total Meetings**
```
_sourceCategory={{Logsdatasource}}   "meeting.started"
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.type", "payload.object.duration" as event, meeting_start_time, topic, meeting_instance_id, meeting_number, meeting_type, meeting_duration nodrop
```

**Zoom/Meeting Usage/Total Participants**
```
_sourceCategory={{Logsdatasource}}   "meeting.participant_joined"
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.type", "payload.object.duration", "payload.object.participant.user_id", "payload.object.participant.user_name", "payload.object.participant.join_time" as event, meeting_start_time, topic, meeting_instance_id, meeting_number, meeting_type, meeting_duration, participant_id, participant_name, join_time nodrop
```

**Zoom/Overview/Hosts**
```
_sourceCategory={{Logsdatasource}}   "meeting.started"
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.host_id", "payload.object.type", "payload.object.duration" as event, meeting_start_time, topic, meeting_instance_id, meeting_number, meeting_host_id, meeting_type, meeting_duration nodrop
```

**Zoom/Overview/Hosts Over Time**
```
_sourceCategory={{Logsdatasource}}   "meeting.started"
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.host_id", "payload.object.type", "payload.object.duration" as event, meeting_start_time, topic, meeting_instance_id, meeting_number, meeting_host_id, meeting_type, meeting_duration nodrop
```

**Zoom/Overview/Meetings in Progress**
```
_sourceCategory={{Logsdatasource}}   "meeting.started"
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.host_id", "payload.object.type", "payload.object.duration" as event, meeting_start_time, topic, meeting_instance_id, meeting_number, meeting_host_id, meeting_type, meeting_duration nodrop
| where event = "meeting.started" and ![subquery: _sourceCategory={{Logsdatasource}}   "meeting.ended"| json "event", "payload.object.uuid" as event, meeting_instance_id| where event="meeting.ended"| count by meeting_instance_id| compose meeting_instance_id]
```

**Zoom/Overview/Meetings Over Time**
```
_sourceCategory={{Logsdatasource}}   "meeting.ended"
| json "event", "payload.object.start_time", "payload.object.end_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.host_id", "payload.object.type", "payload.object.duration" as event, meeting_start_time, meeting_end_time, topic, meeting_instance_id, meeting_number, meeting_host_id, meeting_type, meeting_duration
```

**Zoom/Overview/Recent Admin Activity**
```
_sourceCategory={{Logsdatasource}}   ("user.deleted" or "user.disassociated" or "user.deactivated" or "user.created" or "user.activated" or "user.updated" or "account.settings_updated" or "account.created" or "account.disassociated" or "account.updated" or "app.deauthorized")
| json "event", "payload.account_id", "payload.operator" as event, account_id, admin
```

**Zoom/Overview/Recent Zoom Alerts**
```
_sourceCategory={{Logsdatasource}}   ("meeting.alert" or "webinar.alert" or "zoomroom.alert")
| json "event", "payload.object.id", "payload.object.room_name", "payload.object.issue", "payload.object.issues" as event, %"room_name/meeting_number/webinar_id", room_name, room_issue, meeting_issue nodrop
```

**Zoom/Overview/Top 10 Hosts**
```
_sourceCategory={{Logsdatasource}}   "meeting.started"
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.host_id", "payload.object.id", "payload.object.type", "payload.object.duration" as event, meeting_start_time, topic, meeting_instance_id, meeting_host_id, meeting_number, meeting_type, meeting_duration nodrop
```

**Zoom/Overview/Top 10 Meeting ID and Hosts**
```
_sourceCategory={{Logsdatasource}}   "meeting.started"
| json "event", "payload.object.id", "payload.object.type", "payload.object.host_id" as event, meeting_number, meeting_type, meeting_host_id
```

**Zoom/Overview/Top 10 Personal Meeting IDs in Use**
```
_sourceCategory={{Logsdatasource}}   "meeting.started"
| json "event", "payload.object.id", "payload.object.uuid","payload.object.type" as event, meeting_number,meeting_instance_id, meeting_type 
```

**Zoom/Overview/Total Guests**
```
_sourceCategory={{Logsdatasource}}   "meeting.participant_joined"
| json "event", "payload.account_id",  "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.host_id", "payload.object.id", "payload.object.type", "payload.object.duration", "payload.object.participant.id", "payload.object.participant.user_id","payload.object.participant.join_time", "payload.object.participant.user_name" as event, account_id, meeting_start_time, topic, meeting_instance_id, meeting_host_id, meeting_number, meeting_type, meeting_duration, participant_user_id , participant_unique_id, guest_join_time, guest_name nodrop
```

**Zoom/Overview/Webinar Alerts**
```
_sourceCategory={{Logsdatasource}}   ("meeting.alert" or "webinar.alert")
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.host_id", "payload.object.type", "payload.object.duration", "payload.object.issues" as event, meeting_start_time, topic, meeting_instance_id, meeting_number, meeting_host_id, meeting_type, meeting_duration, issues nodrop
```

**Zoom/Overview/Webinars in Progress**
```
_sourceCategory={{Logsdatasource}}   "webinar.started" 
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.type", "payload.object.duration" as event, webinar_start_time, topic, webinar_instance_id, webinar_number, webinar_type, webinar_duration nodrop
| where event = "webinar.started" and ![subquery: _sourceCategory={{Logsdatasource}}   "webinar.ended"| json "event", "payload.object.uuid" as event, webinar_instance_id| where event="webinar.ended"| count by webinar_instance_id| compose webinar_instance_id]
```

**Zoom/Overview/Zoom Room Alerts**
```
_sourceCategory={{Logsdatasource}}  
| json "event", "payload.object.id", "payload.object.room_name", "payload.object.email", "payload.object.issue", "payload.object.alert_type", "payload.object.component", "payload.object.alert_kind" as event,room_id, room_name, email, issue, alert_type, component, alert_kind nodrop
```

**Zoom/User Activity/Inactive Hosts Over Last 30 days**
```
_sourceCategory={{Logsdatasource}}   "meeting.started"
| json "event", "payload.object.host_id", "payload.object.uuid" as event, meeting_host_id, meeting_instance_id
| where event = "meeting.started" and ![subquery from=(-30d): _sourceCategory={{Logsdatasource}}   "meeting.started"
 | json "event", "payload.object.host_id" as event, meeting_host_id
```

**Zoom/User Activity/Meetings by Shared Content Type**
```
_sourceCategory={{Logsdatasource}}   ("meeting.sharing_started" or "webinar.sharing_started")
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.type", "payload.object.duration", "payload.object.participant.id", "payload.object.participant.user_name", "payload.object.participant.sharing_details.content", "payload.object.participant.sharing_details.date_time" as event, meeting_start_time, topic, meeting_instance_id, meeting_number, meeting_type, meeting_duration, participant_user_id, participant_user_name, content_type, sharing_start_time  nodrop
```

**Zoom/User Activity/Recording Type Distribution**
```
_sourceCategory={{Logsdatasource}}   "recording.completed" 
| json "event", "payload.object.account_id", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.type", "payload.object.host_email", "payload.object_total_size", "payload.object.duration", "payload.object.recording_count", "payload.object.recording_files[*].file_size", "payload.object.recording_files[*].recording_type", "payload.object.share_url" as event,account_id, meeting_start_time, topic, meeting_instance_id, meeting_number, meeting_type, user_email, total_size,  meeting_duration, recording_count, file_sizes, recording_types, share_url nodrop
| where event = "recording.completed"
| parse regex field=recording_types "\"(?<recording_type>[^\"]+)\"" multi
| parse regex field=file_sizes "(?<file_size>\d+)" multi
```

**Zoom/User Activity/Top 10 Users by Recording File Size**
```
_sourceCategory={{Logsdatasource}}   "recording.completed"
| json "event", "payload.object.account_id", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.type", "payload.object.host_email", "payload.object_total_size", "payload.object.duration", "payload.object.recording_count", "payload.object.recording_files[*].file_size", "payload.object.share_url" as event,account_id, meeting_start_time, topic, meeting_instance_id, meeting_number, meeting_type, user_email, total_size,  meeting_duration, recording_count, file_sizes, share_url nodrop
| where event = "recording.completed"
| parse regex field=file_sizes "(?<file_size>\d+)" multi
```

**Zoom/User Activity/Top 10 Users Using Screen Sharing**
```
_sourceCategory={{Logsdatasource}}   "meeting.sharing_started"
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.type", "payload.object.duration", "payload.object.participant.id", "payload.object.participant.user_name", "payload.object.participant.sharing_details", "payload.object.participant.sharing_details.date_time" as event, meeting_start_time, topic, meeting_instance_id, meeting_number, meeting_type, meeting_duration, participant_user_id, participant_user_name, sharing_details, sharing_start_time  nodrop
```

**Zoom/User Activity/User Presence Status Over Time**
```
_sourceCategory={{Logsdatasource}}   "user.presence_status_updated"
| json "event", "payload.account_id", "payload.object.email", "payload.object.presence_status" as event, account_id, user_email, presence_status nodrop
```

**Zoom/User Activity/User Settings Changed**
```
_sourceCategory={{Logsdatasource}}   "user.settings_updated"
| json "event", "payload.account_id", "payload.operator","payload.object.settings", "payload.old_object.settings", "payload.time_stamp" as event, account_id, user_email, new_settings, old_settings, update_timestamp
```

**Zoom/Webinars/Cancelled Distribution**
```
_sourceCategory={{Logsdatasource}}   ("webinar.registration_approved" or "webinar.registration_denied" or "webinar.registration_cancelled")
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.host_id", "payload.object.type", "payload.object.duration", "payloadb.object.registrant.id" as event, webinar_start_time, topic, webinar_instance_id, webinar_id, webinar_host_id, webinar_type,webinar_duration, registrant_id nodrop
```

**Zoom/Webinars/Participants Joined**
```
_sourceCategory={{Logsdatasource}}   "webinar.participant_joined"
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.host_id", "payload.object.type", "payload.object.duration", "payload.object.participant.user_id", "payload.object.participant.user_name", "payload.object.participant.join_time" as event, webinar_start_time, topic, webinar_instance_id, webinar_id, webinar_host_id, webinar_type,webinar_duration, participant_id, participant_name, join_time nodrop
```

**Zoom/Webinars/Participants vs Registrations**
```
_sourceCategory={{Logsdatasource}}   ("webinar.participant_joined" or "webinar.registration_approved")
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.host_id", "payload.object.type", "payload.object.duration", "payload.object.participant.user_id", "payload.object.participant.user_name", "payload.object.participant.join_time", "payload.object.registrant.id" as event, webinar_start_time, topic, webinar_instance_id, webinar_id, webinar_host_id, webinar_type,webinar_duration, participant_id, participant_name, join_time, registrant_id nodrop
```

**Zoom/Webinars/Webinar Duration (Median) in Minutes Over Time**
```
_sourceCategory={{Logsdatasource}}   "webinar.started"
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.host_id", "payload.object.type", "payload.object.duration" as event, webinar_start_time, topic, webinar_instance_id, webinar_id, webinar_host_id, webinar_type,webinar_duration nodrop
```

**Zoom/Webinars/Webinar Types**
```
_sourceCategory={{Logsdatasource}}   "webinar.started"
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.host_id", "payload.object.type", "payload.object.duration" as event, webinar_start_time, topic, webinar_instance_id, webinar_id, webinar_host_id, webinar_type,webinar_duration nodrop
```

**Zoom/Webinars/Webinars By Type Over Time**
```
_sourceCategory={{Logsdatasource}}   "webinar.started"
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.host_id", "payload.object.type", "payload.object.duration" as event, webinar_start_time, topic, webinar_instance_id, webinar_id, webinar_host_id, webinar_type,webinar_duration nodrop
```

**Zoom/Webinars/Webinars Started**
```
_sourceCategory={{Logsdatasource}}   "webinar.started"
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.host_id", "payload.object.type", "payload.object.duration" as event, webinar_start_time, topic, webinar_instance_id, webinar_id, webinar_host_id, webinar_type,webinar_duration nodrop
```


