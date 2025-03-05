# Parsers For Zoom

## Parser:
```
| json "event", "payload.account_id",  "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.host_id", "payload.object.id", "payload.object.type", "payload.object.duration" as event, account_id, meeting_start_time, topic, meeting_instance_id, meeting_host_id, meeting_number, meeting_type, meeting_duration nodrop
 
```
### Use Cases:
25 Most Recent Logins, Admin Activity Distribution, Admin Activity Over Time, Guest Participants Over Time, Guests, Hosts Using Personal Meeting Rooms Over Time, Hosts Using Same Meeting Number, Least Used Zoom Clients by Users, Logins, Logins by Device Type, Logins from Multiple Devices, Logins this week vs last week, Logins/Logouts Over Time, Logouts, Meetings Consistently Used by Guests, Meetings Create/Update/Delete Distribution, Meetings Where Guests Can Join Before Host, Meetings with Join Before Host Enabled, Meetings With Most Guests, Meetings Without Enforced Login, Meetings Without Passwords, Meetings Without Waiting Rooms, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent App Deauthorizations, Recent Guest Activity, Recent Meeting/Webinar Issues, Recent Security Events, Recent Users Updated, Screen Sharing with Guest Participants, Top 10 Guests by Meetings Joined, Top 10 Hosts with Personal Meeting Rooms, Top 10 Rooms with Issues, Top 10 Zoom Clients by Users, Total Participants, User Created/Activated, User Events Distribution, Users Deleted/Deactivated/Disassociated, Zoom Client Versions, Zoom Room Alerts, Zoom Room Issues



## Parser:
```
| json "event", "payload.account_id",  "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.host_id", "payload.object.id", "payload.object.type", "payload.object.duration", "payload.object.participant.id", "payload.object.participant.user_id","payload.object.participant.join_time", "payload.object.participant.user_name" as event, account_id, meeting_start_time, topic, meeting_instance_id, meeting_host_id, meeting_number, meeting_type, meeting_duration, participant_user_id , participant_unique_id, guest_join_time, guest_name nodrop
 
```
### Use Cases:
25 Most Recent Logins, Admin Activity Distribution, Admin Activity Over Time, Average Meeting Duration Over Time, Guest Participants Over Time, Guests, Hosts, Hosts Over Time, Hosts Using Personal Meeting Rooms Over Time, Hosts Using Same Meeting Number, Least Used Zoom Clients by Users, Logins, Logins by Device Type, Logins from Multiple Devices, Logins this week vs last week, Logins/Logouts Over Time, Logouts, Meeting Types, Meetings Consistently Used by Guests, Meetings Create/Update/Delete Distribution, Meetings in Progress, Meetings on Time vs Over Time, Meetings Over Time, Meetings Where Guests Can Join Before Host, Meetings with Join Before Host Enabled, Meetings With Most Guests, Meetings Without Enforced Login, Meetings Without Passwords, Meetings Without Waiting Rooms, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent Admin Activity, Recent App Deauthorizations, Recent Guest Activity, Recent Meeting/Webinar Issues, Recent Security Events, Recent Users Updated, Screen Sharing with Guest Participants, Top 10 Guests by Meetings Joined, Top 10 Hosts with Personal Meeting Rooms, Top 10 Rooms with Issues, Top 10 Zoom Clients by Users, Total Guests, Total Meetings, Total Participants, User Created/Activated, User Events Distribution, Users Deleted/Deactivated/Disassociated, Zoom Client Versions, Zoom Room Alerts, Zoom Room Issues



## Parser:
```
| json "event", "payload.account_id",  "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.host_id", "payload.object.id", "payload.object.type", "payload.object.duration", "payload.object.participant.id","payload.object.participant.join_time", "payload.object.participant.user_name" as event, account_id, meeting_start_time, topic, meeting_instance_id, meeting_host_id, meeting_number, meeting_type, meeting_duration, participant_user_id , guest_join_time, guest_name nodrop
 
```
### Use Cases:
25 Most Recent Logins, Admin Activity Distribution, Admin Activity Over Time, Guest Participants Over Time, Guests, Least Used Zoom Clients by Users, Logins, Logins by Device Type, Logins from Multiple Devices, Logins this week vs last week, Logins/Logouts Over Time, Logouts, Meetings Consistently Used by Guests, Meetings With Most Guests, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent App Deauthorizations, Recent Guest Activity, Recent Meeting/Webinar Issues, Recent Users Updated, Screen Sharing with Guest Participants, Top 10 Guests by Meetings Joined, Top 10 Rooms with Issues, Top 10 Zoom Clients by Users, User Created/Activated, User Events Distribution, Users Deleted/Deactivated/Disassociated, Zoom Client Versions, Zoom Room Alerts, Zoom Room Issues



## Parser:
```
| json "event", "payload.account_id",  "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.host_id", "payload.object.id", "payload.object.type", "payload.object.duration", "payload.object.participant.user_name" as event, account_id, meeting_start_time, topic, meeting_instance_id, meeting_host_id, meeting_number, meeting_type, meeting_duration, participant_user_name nodrop
 
```
### Use Cases:
25 Most Recent Logins, Admin Activity Distribution, Admin Activity Over Time, Guest Participants Over Time, Guests, Least Used Zoom Clients by Users, Logins, Logins by Device Type, Logins from Multiple Devices, Logins this week vs last week, Logins/Logouts Over Time, Logouts, Meetings Consistently Used by Guests, Meetings Where Guests Can Join Before Host, Meetings with Join Before Host Enabled, Meetings With Most Guests, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent App Deauthorizations, Recent Guest Activity, Recent Meeting/Webinar Issues, Recent Security Events, Recent Users Updated, Screen Sharing with Guest Participants, Top 10 Guests by Meetings Joined, Top 10 Hosts with Personal Meeting Rooms, Top 10 Rooms with Issues, Top 10 Zoom Clients by Users, User Created/Activated, User Events Distribution, Users Deleted/Deactivated/Disassociated, Zoom Client Versions, Zoom Room Alerts, Zoom Room Issues



## Parser:
```
| json "event", "payload.account_id", "payload.client_id", "payload.deauthorization_time" as event, account_id, app_client_id, deauthorization_time
 
```
### Use Cases:
Admin Activity Distribution, Admin Activity Over Time, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent App Deauthorizations, Recent Users Updated, User Created/Activated, User Events Distribution, Users Deleted/Deactivated/Disassociated



## Parser:
```
| json "event", "payload.account_id", "payload.creation_type", "payload.operator","payload.object.email", "payload.object.type" as event, account_id, creation_type, admin, user_email, user_type nodrop
 
```
### Use Cases:
Admin Activity Distribution, Admin Activity Over Time, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent App Deauthorizations, Recent Users Updated, User Created/Activated, User Events Distribution, Users Deleted/Deactivated/Disassociated



## Parser:
```
| json "event", "payload.account_id", "payload.object.email", "payload.object.presence_status" as event, account_id, user_email, presence_status nodrop
 
```
### Use Cases:
25 Most Recent Logins, Admin Activity Distribution, Admin Activity Over Time, Average Meeting Duration Over Time, Guest Participants Over Time, Guests, Hosts, Hosts Over Time, Hosts Using Personal Meeting Rooms Over Time, Hosts Using Same Meeting Number, Least Used Zoom Clients by Users, Logins, Logins by Device Type, Logins from Multiple Devices, Logins this week vs last week, Logins/Logouts Over Time, Logouts, Meeting Types, Meetings by Shared Content Type, Meetings Consistently Used by Guests, Meetings Create/Update/Delete Distribution, Meetings in Progress, Meetings on Time vs Over Time, Meetings Over Time, Meetings Where Guests Can Join Before Host, Meetings with Join Before Host Enabled, Meetings With Most Guests, Meetings Without Enforced Login, Meetings Without Passwords, Meetings Without Waiting Rooms, Meetings/Webinar Alerts, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent Admin Activity, Recent App Deauthorizations, Recent Guest Activity, Recent Meeting/Webinar Issues, Recent Security Events, Recent Users Updated, Recent Zoom Alerts, Screen Sharing with Guest Participants, Top 10 Guests by Meetings Joined, Top 10 Hosts, Top 10 Hosts with Personal Meeting Rooms, Top 10 Meeting ID and Hosts, Top 10 Personal Meeting IDs in Use, Top 10 Rooms with Issues, Top 10 Users by Recording File Size, Top 10 Users Using Screen Sharing, Top 10 Zoom Clients by Users, Total Guests, Total Meetings, Total Participants, User Created/Activated, User Events Distribution, User Presence Status Over Time, Users Deleted/Deactivated/Disassociated, Webinars in Progress, Zoom Client Versions, Zoom Room Alerts, Zoom Room Issues



## Parser:
```
| json "event", "payload.account_id", "payload.operator" as event, account_id, admin
 
```
### Use Cases:
25 Most Recent Logins, Admin Activity Distribution, Admin Activity Over Time, Average Meeting Duration Over Time, Guest Participants Over Time, Guests, Hosts, Hosts Over Time, Hosts Using Personal Meeting Rooms Over Time, Hosts Using Same Meeting Number, Least Used Zoom Clients by Users, Logins, Logins by Device Type, Logins from Multiple Devices, Logins this week vs last week, Logins/Logouts Over Time, Logouts, Meeting Types, Meetings Consistently Used by Guests, Meetings Create/Update/Delete Distribution, Meetings in Progress, Meetings on Time vs Over Time, Meetings Over Time, Meetings Where Guests Can Join Before Host, Meetings with Join Before Host Enabled, Meetings With Most Guests, Meetings Without Enforced Login, Meetings Without Passwords, Meetings Without Waiting Rooms, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent Admin Activity, Recent App Deauthorizations, Recent Guest Activity, Recent Meeting/Webinar Issues, Recent Security Events, Recent Users Updated, Screen Sharing with Guest Participants, Top 10 Guests by Meetings Joined, Top 10 Hosts with Personal Meeting Rooms, Top 10 Rooms with Issues, Top 10 Zoom Clients by Users, Total Meetings, Total Participants, User Created/Activated, User Events Distribution, Users Deleted/Deactivated/Disassociated, Zoom Client Versions, Zoom Room Alerts, Zoom Room Issues



## Parser:
```
| json "event", "payload.account_id", "payload.operator","payload.object.email", "payload.object.type" as event, account_id, admin, user_email, user_type
 
```
### Use Cases:
Admin Activity Distribution, Admin Activity Over Time, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent App Deauthorizations, Recent Users Updated, User Created/Activated, User Events Distribution, Users Deleted/Deactivated/Disassociated



## Parser:
```
| json "event", "payload.account_id", "payload.operator","payload.object.settings", "payload.old_object.settings", "payload.time_stamp" as event, account_id, user_email, new_settings, old_settings, update_timestamp
 
```
### Use Cases:
25 Most Recent Logins, Admin Activity Distribution, Admin Activity Over Time, Average Meeting Duration Over Time, Guest Participants Over Time, Guests, Hosts, Hosts Over Time, Hosts Using Personal Meeting Rooms Over Time, Hosts Using Same Meeting Number, Inactive Hosts Over Last 30 days, Least Used Zoom Clients by Users, Logins, Logins by Device Type, Logins from Multiple Devices, Logins this week vs last week, Logins/Logouts Over Time, Logouts, Meeting Types, Meetings by Shared Content Type, Meetings Consistently Used by Guests, Meetings Create/Update/Delete Distribution, Meetings in Progress, Meetings on Time vs Over Time, Meetings Over Time, Meetings Where Guests Can Join Before Host, Meetings with Join Before Host Enabled, Meetings With Most Guests, Meetings Without Enforced Login, Meetings Without Passwords, Meetings Without Waiting Rooms, Meetings/Webinar Alerts, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent Admin Activity, Recent App Deauthorizations, Recent Guest Activity, Recent Meeting/Webinar Issues, Recent Security Events, Recent Users Updated, Recent Zoom Alerts, Recording Type Distribution, Screen Sharing with Guest Participants, Top 10 Guests by Meetings Joined, Top 10 Hosts, Top 10 Hosts with Personal Meeting Rooms, Top 10 Meeting ID and Hosts, Top 10 Personal Meeting IDs in Use, Top 10 Rooms with Issues, Top 10 Users by Recording File Size, Top 10 Users Using Screen Sharing, Top 10 Zoom Clients by Users, Total Guests, Total Meetings, Total Participants, User Created/Activated, User Events Distribution, User Presence Status Over Time, User Settings Changed, Users Deleted/Deactivated/Disassociated, Webinars in Progress, Zoom Client Versions, Zoom Room Alerts, Zoom Room Issues



## Parser:
```
| json "event", "payload.account_id", "payload.operator","payload.object", "payload.old_object", "payload.time_stamp" as event, account_id, admin, new_object, old_object, update_timestamp
 
```
### Use Cases:
Admin Activity Distribution, Admin Activity Over Time, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent App Deauthorizations, Recent Users Updated, User Created/Activated, User Events Distribution, Users Deleted/Deactivated/Disassociated



## Parser:
```
| json "event", "payload.object.account_id", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.type", "payload.object.host_email", "payload.object_total_size", "payload.object.duration", "payload.object.recording_count", "payload.object.recording_files[*].file_size", "payload.object.recording_files[*].recording_type", "payload.object.share_url" as event,account_id, meeting_start_time, topic, meeting_instance_id, meeting_number, meeting_type, user_email, total_size,  meeting_duration, recording_count, file_sizes, recording_types, share_url nodrop
| parse regex field=recording_types "\"(?<recording_type>[^\"]+)\"" multi
| parse regex field=file_sizes "(?<file_size>\d+)" multi
 
```
### Use Cases:
25 Most Recent Logins, Admin Activity Distribution, Admin Activity Over Time, Average Meeting Duration Over Time, Guest Participants Over Time, Guests, Hosts, Hosts Over Time, Hosts Using Personal Meeting Rooms Over Time, Hosts Using Same Meeting Number, Inactive Hosts Over Last 30 days, Least Used Zoom Clients by Users, Logins, Logins by Device Type, Logins from Multiple Devices, Logins this week vs last week, Logins/Logouts Over Time, Logouts, Meeting Types, Meetings by Shared Content Type, Meetings Consistently Used by Guests, Meetings Create/Update/Delete Distribution, Meetings in Progress, Meetings on Time vs Over Time, Meetings Over Time, Meetings Where Guests Can Join Before Host, Meetings with Join Before Host Enabled, Meetings With Most Guests, Meetings Without Enforced Login, Meetings Without Passwords, Meetings Without Waiting Rooms, Meetings/Webinar Alerts, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent Admin Activity, Recent App Deauthorizations, Recent Guest Activity, Recent Meeting/Webinar Issues, Recent Security Events, Recent Users Updated, Recent Zoom Alerts, Recording Type Distribution, Screen Sharing with Guest Participants, Top 10 Guests by Meetings Joined, Top 10 Hosts, Top 10 Hosts with Personal Meeting Rooms, Top 10 Meeting ID and Hosts, Top 10 Personal Meeting IDs in Use, Top 10 Rooms with Issues, Top 10 Users by Recording File Size, Top 10 Users Using Screen Sharing, Top 10 Zoom Clients by Users, Total Guests, Total Meetings, Total Participants, User Created/Activated, User Events Distribution, User Presence Status Over Time, Users Deleted/Deactivated/Disassociated, Webinars in Progress, Zoom Client Versions, Zoom Room Alerts, Zoom Room Issues



## Parser:
```
| json "event", "payload.object.account_id", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.type", "payload.object.host_email", "payload.object_total_size", "payload.object.duration", "payload.object.recording_count", "payload.object.recording_files[*].file_size", "payload.object.share_url" as event,account_id, meeting_start_time, topic, meeting_instance_id, meeting_number, meeting_type, user_email, total_size,  meeting_duration, recording_count, file_sizes, share_url nodrop
| parse regex field=file_sizes "(?<file_size>\d+)" multi
 
```
### Use Cases:
25 Most Recent Logins, Admin Activity Distribution, Admin Activity Over Time, Average Meeting Duration Over Time, Guest Participants Over Time, Guests, Hosts, Hosts Over Time, Hosts Using Personal Meeting Rooms Over Time, Hosts Using Same Meeting Number, Least Used Zoom Clients by Users, Logins, Logins by Device Type, Logins from Multiple Devices, Logins this week vs last week, Logins/Logouts Over Time, Logouts, Meeting Types, Meetings by Shared Content Type, Meetings Consistently Used by Guests, Meetings Create/Update/Delete Distribution, Meetings in Progress, Meetings on Time vs Over Time, Meetings Over Time, Meetings Where Guests Can Join Before Host, Meetings with Join Before Host Enabled, Meetings With Most Guests, Meetings Without Enforced Login, Meetings Without Passwords, Meetings Without Waiting Rooms, Meetings/Webinar Alerts, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent Admin Activity, Recent App Deauthorizations, Recent Guest Activity, Recent Meeting/Webinar Issues, Recent Security Events, Recent Users Updated, Recent Zoom Alerts, Screen Sharing with Guest Participants, Top 10 Guests by Meetings Joined, Top 10 Hosts, Top 10 Hosts with Personal Meeting Rooms, Top 10 Meeting ID and Hosts, Top 10 Personal Meeting IDs in Use, Top 10 Rooms with Issues, Top 10 Users by Recording File Size, Top 10 Zoom Clients by Users, Total Guests, Total Meetings, Total Participants, User Created/Activated, User Events Distribution, Users Deleted/Deactivated/Disassociated, Webinars in Progress, Zoom Client Versions, Zoom Room Alerts, Zoom Room Issues



## Parser:
```
| json "event", "payload.object.client_type", "payload.object.date_time", "payload.object.version", "payload.object.email" as event, client_type, login_time, version, email
 
```
### Use Cases:
Admin Activity Distribution, Admin Activity Over Time, Logins, Logins by Device Type, Logins this week vs last week, Logins/Logouts Over Time, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent App Deauthorizations, Recent Users Updated, Top 10 Zoom Clients by Users, User Created/Activated, User Events Distribution, Users Deleted/Deactivated/Disassociated, Zoom Client Versions



## Parser:
```
| json "event", "payload.object.client_type", "payload.object.date_time", "payload.object.version", "payload.object.email" as event, client_type, login_time, version, email nodrop
 
```
### Use Cases:
25 Most Recent Logins, Admin Activity Distribution, Admin Activity Over Time, Least Used Zoom Clients by Users, Logins, Logins by Device Type, Logins from Multiple Devices, Logins this week vs last week, Logins/Logouts Over Time, Logouts, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent App Deauthorizations, Recent Users Updated, Top 10 Zoom Clients by Users, User Created/Activated, User Events Distribution, Users Deleted/Deactivated/Disassociated, Zoom Client Versions



## Parser:
```
| json "event", "payload.object.host_id", "payload.object.uuid" as event, meeting_host_id, meeting_instance_id
| json "event", "payload.object.host_id" as event, meeting_host_id
 
```
### Use Cases:
25 Most Recent Logins, Admin Activity Distribution, Admin Activity Over Time, Average Meeting Duration Over Time, Guest Participants Over Time, Guests, Hosts, Hosts Over Time, Hosts Using Personal Meeting Rooms Over Time, Hosts Using Same Meeting Number, Inactive Hosts Over Last 30 days, Least Used Zoom Clients by Users, Logins, Logins by Device Type, Logins from Multiple Devices, Logins this week vs last week, Logins/Logouts Over Time, Logouts, Meeting Types, Meetings by Shared Content Type, Meetings Consistently Used by Guests, Meetings Create/Update/Delete Distribution, Meetings in Progress, Meetings on Time vs Over Time, Meetings Over Time, Meetings Where Guests Can Join Before Host, Meetings with Join Before Host Enabled, Meetings With Most Guests, Meetings Without Enforced Login, Meetings Without Passwords, Meetings Without Waiting Rooms, Meetings/Webinar Alerts, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent Admin Activity, Recent App Deauthorizations, Recent Guest Activity, Recent Meeting/Webinar Issues, Recent Security Events, Recent Users Updated, Recent Zoom Alerts, Screen Sharing with Guest Participants, Top 10 Guests by Meetings Joined, Top 10 Hosts, Top 10 Hosts with Personal Meeting Rooms, Top 10 Meeting ID and Hosts, Top 10 Personal Meeting IDs in Use, Top 10 Rooms with Issues, Top 10 Users by Recording File Size, Top 10 Users Using Screen Sharing, Top 10 Zoom Clients by Users, Total Guests, Total Meetings, Total Participants, User Created/Activated, User Events Distribution, User Presence Status Over Time, Users Deleted/Deactivated/Disassociated, Webinars in Progress, Zoom Client Versions, Zoom Room Alerts, Zoom Room Issues



## Parser:
```
| json "event", "payload.object.id", "payload.object.room_name", "payload.object.email", "payload.object.issue", "payload.object.alert_type", "payload.object.component", "payload.object.alert_kind" as event,room_id, room_name, email, issue, alert_type, component, alert_kind nodrop
 
```
### Use Cases:
25 Most Recent Logins, Admin Activity Distribution, Admin Activity Over Time, Average Meeting Duration Over Time, Guest Participants Over Time, Guests, Hosts, Hosts Over Time, Hosts Using Personal Meeting Rooms Over Time, Hosts Using Same Meeting Number, Least Used Zoom Clients by Users, Logins, Logins by Device Type, Logins from Multiple Devices, Logins this week vs last week, Logins/Logouts Over Time, Logouts, Meeting Types, Meetings Consistently Used by Guests, Meetings Create/Update/Delete Distribution, Meetings in Progress, Meetings on Time vs Over Time, Meetings Over Time, Meetings Where Guests Can Join Before Host, Meetings with Join Before Host Enabled, Meetings With Most Guests, Meetings Without Enforced Login, Meetings Without Passwords, Meetings Without Waiting Rooms, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent Admin Activity, Recent App Deauthorizations, Recent Guest Activity, Recent Meeting/Webinar Issues, Recent Security Events, Recent Users Updated, Screen Sharing with Guest Participants, Top 10 Guests by Meetings Joined, Top 10 Hosts with Personal Meeting Rooms, Top 10 Rooms with Issues, Top 10 Zoom Clients by Users, Total Meetings, Total Participants, User Created/Activated, User Events Distribution, Users Deleted/Deactivated/Disassociated, Zoom Client Versions, Zoom Room Alerts, Zoom Room Issues



## Parser:
```
| json "event", "payload.object.id", "payload.object.room_name", "payload.object.issue", "payload.object.issues" as event, %"room_name/meeting_number/webinar_id", room_name, room_issue, meeting_issue nodrop
 
```
### Use Cases:
25 Most Recent Logins, Admin Activity Distribution, Admin Activity Over Time, Average Meeting Duration Over Time, Guest Participants Over Time, Guests, Hosts, Hosts Over Time, Hosts Using Personal Meeting Rooms Over Time, Hosts Using Same Meeting Number, Least Used Zoom Clients by Users, Logins, Logins by Device Type, Logins from Multiple Devices, Logins this week vs last week, Logins/Logouts Over Time, Logouts, Meeting Types, Meetings Consistently Used by Guests, Meetings Create/Update/Delete Distribution, Meetings in Progress, Meetings on Time vs Over Time, Meetings Over Time, Meetings Where Guests Can Join Before Host, Meetings with Join Before Host Enabled, Meetings With Most Guests, Meetings Without Enforced Login, Meetings Without Passwords, Meetings Without Waiting Rooms, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent Admin Activity, Recent App Deauthorizations, Recent Guest Activity, Recent Meeting/Webinar Issues, Recent Security Events, Recent Users Updated, Recent Zoom Alerts, Screen Sharing with Guest Participants, Top 10 Guests by Meetings Joined, Top 10 Hosts with Personal Meeting Rooms, Top 10 Rooms with Issues, Top 10 Zoom Clients by Users, Total Guests, Total Meetings, Total Participants, User Created/Activated, User Events Distribution, Users Deleted/Deactivated/Disassociated, Zoom Client Versions, Zoom Room Alerts, Zoom Room Issues



## Parser:
```
| json "event", "payload.object.id", "payload.object.type", "payload.object.host_id" as event, meeting_number, meeting_type, meeting_host_id
 
```
### Use Cases:
25 Most Recent Logins, Admin Activity Distribution, Admin Activity Over Time, Average Meeting Duration Over Time, Guest Participants Over Time, Guests, Hosts, Hosts Over Time, Hosts Using Personal Meeting Rooms Over Time, Hosts Using Same Meeting Number, Least Used Zoom Clients by Users, Logins, Logins by Device Type, Logins from Multiple Devices, Logins this week vs last week, Logins/Logouts Over Time, Logouts, Meeting Types, Meetings Consistently Used by Guests, Meetings Create/Update/Delete Distribution, Meetings in Progress, Meetings on Time vs Over Time, Meetings Over Time, Meetings Where Guests Can Join Before Host, Meetings with Join Before Host Enabled, Meetings With Most Guests, Meetings Without Enforced Login, Meetings Without Passwords, Meetings Without Waiting Rooms, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent Admin Activity, Recent App Deauthorizations, Recent Guest Activity, Recent Meeting/Webinar Issues, Recent Security Events, Recent Users Updated, Recent Zoom Alerts, Screen Sharing with Guest Participants, Top 10 Guests by Meetings Joined, Top 10 Hosts with Personal Meeting Rooms, Top 10 Meeting ID and Hosts, Top 10 Rooms with Issues, Top 10 Zoom Clients by Users, Total Guests, Total Meetings, Total Participants, User Created/Activated, User Events Distribution, Users Deleted/Deactivated/Disassociated, Webinars in Progress, Zoom Client Versions, Zoom Room Alerts, Zoom Room Issues



## Parser:
```
| json "event", "payload.object.id", "payload.object.uuid","payload.object.type" as event, meeting_number,meeting_instance_id, meeting_type 
 
```
### Use Cases:
25 Most Recent Logins, Admin Activity Distribution, Admin Activity Over Time, Average Meeting Duration Over Time, Guest Participants Over Time, Guests, Hosts, Hosts Over Time, Hosts Using Personal Meeting Rooms Over Time, Hosts Using Same Meeting Number, Least Used Zoom Clients by Users, Logins, Logins by Device Type, Logins from Multiple Devices, Logins this week vs last week, Logins/Logouts Over Time, Logouts, Meeting Types, Meetings Consistently Used by Guests, Meetings Create/Update/Delete Distribution, Meetings in Progress, Meetings on Time vs Over Time, Meetings Over Time, Meetings Where Guests Can Join Before Host, Meetings with Join Before Host Enabled, Meetings With Most Guests, Meetings Without Enforced Login, Meetings Without Passwords, Meetings Without Waiting Rooms, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent Admin Activity, Recent App Deauthorizations, Recent Guest Activity, Recent Meeting/Webinar Issues, Recent Security Events, Recent Users Updated, Recent Zoom Alerts, Screen Sharing with Guest Participants, Top 10 Guests by Meetings Joined, Top 10 Hosts, Top 10 Hosts with Personal Meeting Rooms, Top 10 Meeting ID and Hosts, Top 10 Personal Meeting IDs in Use, Top 10 Rooms with Issues, Top 10 Zoom Clients by Users, Total Guests, Total Meetings, Total Participants, User Created/Activated, User Events Distribution, Users Deleted/Deactivated/Disassociated, Webinars in Progress, Zoom Client Versions, Zoom Room Alerts, Zoom Room Issues



## Parser:
```
| json "event", "payload.object.start_time", "payload.object.end_time",  "payload.object.host_id", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.type", "payload.object.duration" as event, meeting_start_time, meeting_end_time, meeting_host_id, topic, meeting_instance_id, meeting_number, meeting_type, meeting_duration
 
```
### Use Cases:
25 Most Recent Logins, Admin Activity Distribution, Admin Activity Over Time, Average Meeting Duration Over Time, Guest Participants Over Time, Guests, Hosts Using Personal Meeting Rooms Over Time, Hosts Using Same Meeting Number, Least Used Zoom Clients by Users, Logins, Logins by Device Type, Logins from Multiple Devices, Logins this week vs last week, Logins/Logouts Over Time, Logouts, Meeting Types, Meetings Consistently Used by Guests, Meetings Create/Update/Delete Distribution, Meetings Where Guests Can Join Before Host, Meetings with Join Before Host Enabled, Meetings With Most Guests, Meetings Without Enforced Login, Meetings Without Passwords, Meetings Without Waiting Rooms, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent App Deauthorizations, Recent Guest Activity, Recent Meeting/Webinar Issues, Recent Security Events, Recent Users Updated, Screen Sharing with Guest Participants, Top 10 Guests by Meetings Joined, Top 10 Hosts with Personal Meeting Rooms, Top 10 Rooms with Issues, Top 10 Zoom Clients by Users, Total Meetings, Total Participants, User Created/Activated, User Events Distribution, Users Deleted/Deactivated/Disassociated, Zoom Client Versions, Zoom Room Alerts, Zoom Room Issues



## Parser:
```
| json "event", "payload.object.start_time", "payload.object.end_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.host_id", "payload.object.type", "payload.object.duration" as event, meeting_start_time, meeting_end_time, topic, meeting_instance_id, meeting_number, meeting_host_id, meeting_type, meeting_duration
 
```
### Use Cases:
25 Most Recent Logins, Admin Activity Distribution, Admin Activity Over Time, Average Meeting Duration Over Time, Guest Participants Over Time, Guests, Hosts, Hosts Over Time, Hosts Using Personal Meeting Rooms Over Time, Hosts Using Same Meeting Number, Least Used Zoom Clients by Users, Logins, Logins by Device Type, Logins from Multiple Devices, Logins this week vs last week, Logins/Logouts Over Time, Logouts, Meeting Types, Meetings Consistently Used by Guests, Meetings Create/Update/Delete Distribution, Meetings in Progress, Meetings on Time vs Over Time, Meetings Over Time, Meetings Where Guests Can Join Before Host, Meetings with Join Before Host Enabled, Meetings With Most Guests, Meetings Without Enforced Login, Meetings Without Passwords, Meetings Without Waiting Rooms, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent Admin Activity, Recent App Deauthorizations, Recent Guest Activity, Recent Meeting/Webinar Issues, Recent Security Events, Recent Users Updated, Screen Sharing with Guest Participants, Top 10 Guests by Meetings Joined, Top 10 Hosts with Personal Meeting Rooms, Top 10 Rooms with Issues, Top 10 Zoom Clients by Users, Total Guests, Total Meetings, Total Participants, User Created/Activated, User Events Distribution, Users Deleted/Deactivated/Disassociated, Zoom Client Versions, Zoom Room Alerts, Zoom Room Issues



## Parser:
```
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.host_id", "payload.object.id", "payload.object.type", "payload.object.duration" as event, meeting_start_time, topic, meeting_instance_id, meeting_host_id, meeting_number, meeting_type, meeting_duration nodrop
 
```
### Use Cases:
25 Most Recent Logins, Admin Activity Distribution, Admin Activity Over Time, Average Meeting Duration Over Time, Guest Participants Over Time, Guests, Hosts, Hosts Over Time, Hosts Using Personal Meeting Rooms Over Time, Hosts Using Same Meeting Number, Least Used Zoom Clients by Users, Logins, Logins by Device Type, Logins from Multiple Devices, Logins this week vs last week, Logins/Logouts Over Time, Logouts, Meeting Types, Meetings Consistently Used by Guests, Meetings Create/Update/Delete Distribution, Meetings in Progress, Meetings on Time vs Over Time, Meetings Over Time, Meetings Where Guests Can Join Before Host, Meetings with Join Before Host Enabled, Meetings With Most Guests, Meetings Without Enforced Login, Meetings Without Passwords, Meetings Without Waiting Rooms, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent Admin Activity, Recent App Deauthorizations, Recent Guest Activity, Recent Meeting/Webinar Issues, Recent Security Events, Recent Users Updated, Recent Zoom Alerts, Screen Sharing with Guest Participants, Top 10 Guests by Meetings Joined, Top 10 Hosts, Top 10 Hosts with Personal Meeting Rooms, Top 10 Meeting ID and Hosts, Top 10 Rooms with Issues, Top 10 Zoom Clients by Users, Total Guests, Total Meetings, Total Participants, User Created/Activated, User Events Distribution, Users Deleted/Deactivated/Disassociated, Webinars in Progress, Zoom Client Versions, Zoom Room Alerts, Zoom Room Issues



## Parser:
```
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.host_id", "payload.object.type", "payload.object.duration" as event, meeting_start_time, topic, meeting_instance_id, meeting_number, host_id, meeting_type, meeting_duration nodrop
 
```
### Use Cases:
25 Most Recent Logins, Admin Activity Distribution, Admin Activity Over Time, Average Meeting Duration Over Time, Guest Participants Over Time, Guests, Hosts, Hosts Using Personal Meeting Rooms Over Time, Hosts Using Same Meeting Number, Least Used Zoom Clients by Users, Logins, Logins by Device Type, Logins from Multiple Devices, Logins this week vs last week, Logins/Logouts Over Time, Logouts, Meeting Types, Meetings Consistently Used by Guests, Meetings Create/Update/Delete Distribution, Meetings on Time vs Over Time, Meetings Over Time, Meetings Where Guests Can Join Before Host, Meetings with Join Before Host Enabled, Meetings With Most Guests, Meetings Without Enforced Login, Meetings Without Passwords, Meetings Without Waiting Rooms, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent App Deauthorizations, Recent Guest Activity, Recent Meeting/Webinar Issues, Recent Security Events, Recent Users Updated, Screen Sharing with Guest Participants, Top 10 Guests by Meetings Joined, Top 10 Hosts with Personal Meeting Rooms, Top 10 Rooms with Issues, Top 10 Zoom Clients by Users, Total Meetings, Total Participants, User Created/Activated, User Events Distribution, Users Deleted/Deactivated/Disassociated, Zoom Client Versions, Zoom Room Alerts, Zoom Room Issues



## Parser:
```
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.host_id", "payload.object.type", "payload.object.duration" as event, meeting_start_time, topic, meeting_instance_id, meeting_number, meeting_host_id, meeting_type, meeting_duration
 
```
### Use Cases:
25 Most Recent Logins, Admin Activity Distribution, Admin Activity Over Time, Guest Participants Over Time, Guests, Hosts Using Same Meeting Number, Least Used Zoom Clients by Users, Logins, Logins by Device Type, Logins from Multiple Devices, Logins this week vs last week, Logins/Logouts Over Time, Logouts, Meetings Consistently Used by Guests, Meetings Where Guests Can Join Before Host, Meetings with Join Before Host Enabled, Meetings With Most Guests, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent App Deauthorizations, Recent Guest Activity, Recent Meeting/Webinar Issues, Recent Security Events, Recent Users Updated, Screen Sharing with Guest Participants, Top 10 Guests by Meetings Joined, Top 10 Hosts with Personal Meeting Rooms, Top 10 Rooms with Issues, Top 10 Zoom Clients by Users, User Created/Activated, User Events Distribution, Users Deleted/Deactivated/Disassociated, Zoom Client Versions, Zoom Room Alerts, Zoom Room Issues



## Parser:
```
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.host_id", "payload.object.type", "payload.object.duration" as event, meeting_start_time, topic, meeting_instance_id, meeting_number, meeting_host_id, meeting_type, meeting_duration nodrop
 
```
### Use Cases:
25 Most Recent Logins, Admin Activity Distribution, Admin Activity Over Time, Average Meeting Duration Over Time, Guest Participants Over Time, Guests, Hosts, Hosts Over Time, Hosts Using Personal Meeting Rooms Over Time, Hosts Using Same Meeting Number, Least Used Zoom Clients by Users, Logins, Logins by Device Type, Logins from Multiple Devices, Logins this week vs last week, Logins/Logouts Over Time, Logouts, Meeting Types, Meetings Consistently Used by Guests, Meetings Create/Update/Delete Distribution, Meetings in Progress, Meetings on Time vs Over Time, Meetings Over Time, Meetings Where Guests Can Join Before Host, Meetings with Join Before Host Enabled, Meetings With Most Guests, Meetings Without Enforced Login, Meetings Without Passwords, Meetings Without Waiting Rooms, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent Admin Activity, Recent App Deauthorizations, Recent Guest Activity, Recent Meeting/Webinar Issues, Recent Security Events, Recent Users Updated, Screen Sharing with Guest Participants, Top 10 Guests by Meetings Joined, Top 10 Hosts with Personal Meeting Rooms, Top 10 Rooms with Issues, Top 10 Zoom Clients by Users, Total Meetings, Total Participants, User Created/Activated, User Events Distribution, Users Deleted/Deactivated/Disassociated, Zoom Client Versions, Zoom Room Alerts, Zoom Room Issues



## Parser:
```
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.host_id", "payload.object.type", "payload.object.duration" as event, meeting_start_time, topic, meeting_instance_id, meeting_number, meeting_host_id, meeting_type, meeting_duration nodrop
| json "event", "payload.object.uuid" as event, meeting_instance_id| where event="meeting.ended"| count by meeting_instance_id| compose meeting_instance_id]
 
```
### Use Cases:
25 Most Recent Logins, Admin Activity Distribution, Admin Activity Over Time, Average Meeting Duration Over Time, Guest Participants Over Time, Guests, Hosts, Hosts Over Time, Hosts Using Personal Meeting Rooms Over Time, Hosts Using Same Meeting Number, Least Used Zoom Clients by Users, Logins, Logins by Device Type, Logins from Multiple Devices, Logins this week vs last week, Logins/Logouts Over Time, Logouts, Meeting Types, Meetings Consistently Used by Guests, Meetings Create/Update/Delete Distribution, Meetings in Progress, Meetings on Time vs Over Time, Meetings Over Time, Meetings Where Guests Can Join Before Host, Meetings with Join Before Host Enabled, Meetings With Most Guests, Meetings Without Enforced Login, Meetings Without Passwords, Meetings Without Waiting Rooms, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent Admin Activity, Recent App Deauthorizations, Recent Guest Activity, Recent Meeting/Webinar Issues, Recent Security Events, Recent Users Updated, Recent Zoom Alerts, Screen Sharing with Guest Participants, Top 10 Guests by Meetings Joined, Top 10 Hosts with Personal Meeting Rooms, Top 10 Rooms with Issues, Top 10 Zoom Clients by Users, Total Guests, Total Meetings, Total Participants, User Created/Activated, User Events Distribution, Users Deleted/Deactivated/Disassociated, Webinars in Progress, Zoom Client Versions, Zoom Room Alerts, Zoom Room Issues



## Parser:
```
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.host_id", "payload.object.type", "payload.object.duration" as event, webinar_start_time, topic, webinar_instance_id, webinar_id, webinar_host_id, webinar_type,webinar_duration nodrop
 
```
### Use Cases:
25 Most Recent Logins, Admin Activity Distribution, Admin Activity Over Time, Average Meeting Duration Over Time, Guest Participants Over Time, Guests, Hosts, Hosts Over Time, Hosts Using Personal Meeting Rooms Over Time, Hosts Using Same Meeting Number, Inactive Hosts Over Last 30 days, Least Used Zoom Clients by Users, Logins, Logins by Device Type, Logins from Multiple Devices, Logins this week vs last week, Logins/Logouts Over Time, Logouts, Meeting Types, Meetings by Shared Content Type, Meetings Consistently Used by Guests, Meetings Create/Update/Delete Distribution, Meetings in Progress, Meetings on Time vs Over Time, Meetings Over Time, Meetings Where Guests Can Join Before Host, Meetings with Join Before Host Enabled, Meetings With Most Guests, Meetings Without Enforced Login, Meetings Without Passwords, Meetings Without Waiting Rooms, Meetings/Webinar Alerts, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent Admin Activity, Recent App Deauthorizations, Recent Guest Activity, Recent Meeting/Webinar Issues, Recent Security Events, Recent Users Updated, Recent Zoom Alerts, Recording Type Distribution, Registrations Approved/Denied/Cancelled Distribution, Screen Sharing with Guest Participants, Top 10 Guests by Meetings Joined, Top 10 Hosts, Top 10 Hosts with Personal Meeting Rooms, Top 10 Meeting ID and Hosts, Top 10 Personal Meeting IDs in Use, Top 10 Rooms with Issues, Top 10 Users by Recording File Size, Top 10 Users Using Screen Sharing, Top 10 Zoom Clients by Users, Total Guests, Total Meetings, Total Participants, User Created/Activated, User Events Distribution, User Presence Status Over Time, User Settings Changed, Users Deleted/Deactivated/Disassociated, Webinar Duration (Median) in Minutes Over Time, Webinar Types, Webinars By Type Over Time, Webinars in Progress, Webinars Started, Zoom Client Versions, Zoom Room Alerts, Zoom Room Issues



## Parser:
```
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.host_id", "payload.object.type", "payload.object.duration", "payload.object.issues" as event, meeting_start_time, topic, meeting_instance_id, meeting_number, meeting_host_id, meeting_type, meeting_duration, issues nodrop
 
```
### Use Cases:
25 Most Recent Logins, Admin Activity Distribution, Admin Activity Over Time, Average Meeting Duration Over Time, Guest Participants Over Time, Guests, Hosts, Hosts Over Time, Hosts Using Personal Meeting Rooms Over Time, Hosts Using Same Meeting Number, Least Used Zoom Clients by Users, Logins, Logins by Device Type, Logins from Multiple Devices, Logins this week vs last week, Logins/Logouts Over Time, Logouts, Meeting Types, Meetings Consistently Used by Guests, Meetings Create/Update/Delete Distribution, Meetings in Progress, Meetings on Time vs Over Time, Meetings Over Time, Meetings Where Guests Can Join Before Host, Meetings with Join Before Host Enabled, Meetings With Most Guests, Meetings Without Enforced Login, Meetings Without Passwords, Meetings Without Waiting Rooms, Meetings/Webinar Alerts, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent Admin Activity, Recent App Deauthorizations, Recent Guest Activity, Recent Meeting/Webinar Issues, Recent Security Events, Recent Users Updated, Recent Zoom Alerts, Screen Sharing with Guest Participants, Top 10 Guests by Meetings Joined, Top 10 Hosts, Top 10 Hosts with Personal Meeting Rooms, Top 10 Meeting ID and Hosts, Top 10 Personal Meeting IDs in Use, Top 10 Rooms with Issues, Top 10 Zoom Clients by Users, Total Guests, Total Meetings, Total Participants, User Created/Activated, User Events Distribution, Users Deleted/Deactivated/Disassociated, Webinars in Progress, Zoom Client Versions, Zoom Room Alerts, Zoom Room Issues



## Parser:
```
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.host_id", "payload.object.type", "payload.object.duration", "payload.object.participant.id", "payload.object.participant.user_name", "payload.object.participant.sharing_details.content", "payload.object.participant.sharing_details.date_time" as event, meeting_start_time, topic, meeting_instance_id, meeting_number, meeting_host_id, meeting_type, meeting_duration, participant_user_id, participant_user_name, content_type, sharing_start_time  nodrop
| json "event", "payload.account_id",  "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.host_id", "payload.object.id", "payload.object.type", "payload.object.duration", "payload.object.participant.id", "payload.object.participant.user_id","payload.object.participant.join_time", "payload.object.participant.user_name" as event, account_id, meeting_start_time, topic, meeting_instance_id, meeting_host_id, meeting_number, meeting_type, meeting_duration, participant_user_id , participant_unique_id, guest_join_time, guest_name nodrop
 
```
### Use Cases:
25 Most Recent Logins, Admin Activity Distribution, Admin Activity Over Time, Guest Participants Over Time, Guests, Least Used Zoom Clients by Users, Logins, Logins by Device Type, Logins from Multiple Devices, Logins this week vs last week, Logins/Logouts Over Time, Logouts, Meetings Consistently Used by Guests, Meetings With Most Guests, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent App Deauthorizations, Recent Meeting/Webinar Issues, Recent Users Updated, Screen Sharing with Guest Participants, Top 10 Guests by Meetings Joined, Top 10 Rooms with Issues, Top 10 Zoom Clients by Users, User Created/Activated, User Events Distribution, Users Deleted/Deactivated/Disassociated, Zoom Client Versions, Zoom Room Alerts, Zoom Room Issues



## Parser:
```
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.host_id", "payload.object.type", "payload.object.duration", "payload.object.participant.user_id", "payload.object.participant.user_name", "payload.object.participant.join_time" as event, webinar_start_time, topic, webinar_instance_id, webinar_id, webinar_host_id, webinar_type,webinar_duration, participant_id, participant_name, join_time nodrop
 
```
### Use Cases:
25 Most Recent Logins, Admin Activity Distribution, Admin Activity Over Time, Average Meeting Duration Over Time, Guest Participants Over Time, Guests, Hosts, Hosts Over Time, Hosts Using Personal Meeting Rooms Over Time, Hosts Using Same Meeting Number, Inactive Hosts Over Last 30 days, Least Used Zoom Clients by Users, Logins, Logins by Device Type, Logins from Multiple Devices, Logins this week vs last week, Logins/Logouts Over Time, Logouts, Meeting Types, Meetings by Shared Content Type, Meetings Consistently Used by Guests, Meetings Create/Update/Delete Distribution, Meetings in Progress, Meetings on Time vs Over Time, Meetings Over Time, Meetings Where Guests Can Join Before Host, Meetings with Join Before Host Enabled, Meetings With Most Guests, Meetings Without Enforced Login, Meetings Without Passwords, Meetings Without Waiting Rooms, Meetings/Webinar Alerts, Participants Joined, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent Admin Activity, Recent App Deauthorizations, Recent Guest Activity, Recent Meeting/Webinar Issues, Recent Security Events, Recent Users Updated, Recent Zoom Alerts, Recording Type Distribution, Registrations Approved/Denied/Cancelled Distribution, Screen Sharing with Guest Participants, Top 10 Guests by Meetings Joined, Top 10 Hosts, Top 10 Hosts with Personal Meeting Rooms, Top 10 Meeting ID and Hosts, Top 10 Personal Meeting IDs in Use, Top 10 Rooms with Issues, Top 10 Users by Recording File Size, Top 10 Users Using Screen Sharing, Top 10 Zoom Clients by Users, Total Guests, Total Meetings, Total Participants, User Created/Activated, User Events Distribution, User Presence Status Over Time, User Settings Changed, Users Deleted/Deactivated/Disassociated, Webinar Duration (Median) in Minutes Over Time, Webinar Types, Webinars By Type Over Time, Webinars in Progress, Webinars Started, Zoom Client Versions, Zoom Room Alerts, Zoom Room Issues



## Parser:
```
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.host_id", "payload.object.type", "payload.object.duration", "payload.object.participant.user_id", "payload.object.participant.user_name", "payload.object.participant.join_time", "payload.object.registrant.id" as event, webinar_start_time, topic, webinar_instance_id, webinar_id, webinar_host_id, webinar_type,webinar_duration, participant_id, participant_name, join_time, registrant_id nodrop
 
```
### Use Cases:
25 Most Recent Logins, Admin Activity Distribution, Admin Activity Over Time, Average Meeting Duration Over Time, Guest Participants Over Time, Guests, Hosts, Hosts Over Time, Hosts Using Personal Meeting Rooms Over Time, Hosts Using Same Meeting Number, Inactive Hosts Over Last 30 days, Least Used Zoom Clients by Users, Logins, Logins by Device Type, Logins from Multiple Devices, Logins this week vs last week, Logins/Logouts Over Time, Logouts, Meeting Types, Meetings by Shared Content Type, Meetings Consistently Used by Guests, Meetings Create/Update/Delete Distribution, Meetings in Progress, Meetings on Time vs Over Time, Meetings Over Time, Meetings Where Guests Can Join Before Host, Meetings with Join Before Host Enabled, Meetings With Most Guests, Meetings Without Enforced Login, Meetings Without Passwords, Meetings Without Waiting Rooms, Meetings/Webinar Alerts, Participants Joined, Participants vs Registrations, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent Admin Activity, Recent App Deauthorizations, Recent Guest Activity, Recent Meeting/Webinar Issues, Recent Security Events, Recent Users Updated, Recent Zoom Alerts, Recording Type Distribution, Registrations Approved/Denied/Cancelled Distribution, Screen Sharing with Guest Participants, Top 10 Guests by Meetings Joined, Top 10 Hosts, Top 10 Hosts with Personal Meeting Rooms, Top 10 Meeting ID and Hosts, Top 10 Personal Meeting IDs in Use, Top 10 Rooms with Issues, Top 10 Users by Recording File Size, Top 10 Users Using Screen Sharing, Top 10 Zoom Clients by Users, Total Guests, Total Meetings, Total Participants, User Created/Activated, User Events Distribution, User Presence Status Over Time, User Settings Changed, Users Deleted/Deactivated/Disassociated, Webinar Duration (Median) in Minutes Over Time, Webinar Types, Webinars By Type Over Time, Webinars in Progress, Webinars Started, Zoom Client Versions, Zoom Room Alerts, Zoom Room Issues



## Parser:
```
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.host_id", "payload.object.type", "payload.object.duration", "payloadb.object.registrant.id" as event, webinar_start_time, topic, webinar_instance_id, webinar_id, webinar_host_id, webinar_type,webinar_duration, registrant_id nodrop
 
```
### Use Cases:
25 Most Recent Logins, Admin Activity Distribution, Admin Activity Over Time, Average Meeting Duration Over Time, Guest Participants Over Time, Guests, Hosts, Hosts Over Time, Hosts Using Personal Meeting Rooms Over Time, Hosts Using Same Meeting Number, Inactive Hosts Over Last 30 days, Least Used Zoom Clients by Users, Logins, Logins by Device Type, Logins from Multiple Devices, Logins this week vs last week, Logins/Logouts Over Time, Logouts, Meeting Types, Meetings by Shared Content Type, Meetings Consistently Used by Guests, Meetings Create/Update/Delete Distribution, Meetings in Progress, Meetings on Time vs Over Time, Meetings Over Time, Meetings Where Guests Can Join Before Host, Meetings with Join Before Host Enabled, Meetings With Most Guests, Meetings Without Enforced Login, Meetings Without Passwords, Meetings Without Waiting Rooms, Meetings/Webinar Alerts, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent Admin Activity, Recent App Deauthorizations, Recent Guest Activity, Recent Meeting/Webinar Issues, Recent Security Events, Recent Users Updated, Recent Zoom Alerts, Recording Type Distribution, Registrations Approved/Denied/Cancelled Distribution, Screen Sharing with Guest Participants, Top 10 Guests by Meetings Joined, Top 10 Hosts, Top 10 Hosts with Personal Meeting Rooms, Top 10 Meeting ID and Hosts, Top 10 Personal Meeting IDs in Use, Top 10 Rooms with Issues, Top 10 Users by Recording File Size, Top 10 Users Using Screen Sharing, Top 10 Zoom Clients by Users, Total Guests, Total Meetings, Total Participants, User Created/Activated, User Events Distribution, User Presence Status Over Time, User Settings Changed, Users Deleted/Deactivated/Disassociated, Webinar Duration (Median) in Minutes Over Time, Webinars By Type Over Time, Webinars in Progress, Webinars Started, Zoom Client Versions, Zoom Room Alerts, Zoom Room Issues



## Parser:
```
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.type", "payload.object.duration" as event, meeting_start_time, topic, meeting_instance_id, meeting_number, meeting_type, meeting_duration nodrop
 
```
### Use Cases:
25 Most Recent Logins, Admin Activity Distribution, Admin Activity Over Time, Average Meeting Duration Over Time, Guest Participants Over Time, Guests, Hosts Using Personal Meeting Rooms Over Time, Hosts Using Same Meeting Number, Least Used Zoom Clients by Users, Logins, Logins by Device Type, Logins from Multiple Devices, Logins this week vs last week, Logins/Logouts Over Time, Logouts, Meeting Types, Meetings Consistently Used by Guests, Meetings Create/Update/Delete Distribution, Meetings Over Time, Meetings Where Guests Can Join Before Host, Meetings with Join Before Host Enabled, Meetings With Most Guests, Meetings Without Enforced Login, Meetings Without Passwords, Meetings Without Waiting Rooms, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent App Deauthorizations, Recent Guest Activity, Recent Meeting/Webinar Issues, Recent Security Events, Recent Users Updated, Screen Sharing with Guest Participants, Top 10 Guests by Meetings Joined, Top 10 Hosts with Personal Meeting Rooms, Top 10 Rooms with Issues, Top 10 Zoom Clients by Users, Total Meetings, Total Participants, User Created/Activated, User Events Distribution, Users Deleted/Deactivated/Disassociated, Zoom Client Versions, Zoom Room Alerts, Zoom Room Issues



## Parser:
```
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.type", "payload.object.duration" as event, meeting_start_time, topic, meeting_instance_id, meeting_number, meeting_type, meeting_duration nodrop
| json "event", "payload.object.uuid" as event, meeting_instance_id| where event="meeting.ended"| count by meeting_instance_id| compose meeting_instance_id]
 
```
### Use Cases:
25 Most Recent Logins, Admin Activity Distribution, Admin Activity Over Time, Average Meeting Duration Over Time, Guest Participants Over Time, Guests, Hosts, Hosts Using Personal Meeting Rooms Over Time, Hosts Using Same Meeting Number, Least Used Zoom Clients by Users, Logins, Logins by Device Type, Logins from Multiple Devices, Logins this week vs last week, Logins/Logouts Over Time, Logouts, Meeting Types, Meetings Consistently Used by Guests, Meetings Create/Update/Delete Distribution, Meetings in Progress, Meetings on Time vs Over Time, Meetings Over Time, Meetings Where Guests Can Join Before Host, Meetings with Join Before Host Enabled, Meetings With Most Guests, Meetings Without Enforced Login, Meetings Without Passwords, Meetings Without Waiting Rooms, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent App Deauthorizations, Recent Guest Activity, Recent Meeting/Webinar Issues, Recent Security Events, Recent Users Updated, Screen Sharing with Guest Participants, Top 10 Guests by Meetings Joined, Top 10 Hosts with Personal Meeting Rooms, Top 10 Rooms with Issues, Top 10 Zoom Clients by Users, Total Meetings, Total Participants, User Created/Activated, User Events Distribution, Users Deleted/Deactivated/Disassociated, Zoom Client Versions, Zoom Room Alerts, Zoom Room Issues



## Parser:
```
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.type", "payload.object.duration" as event, webinar_start_time, topic, webinar_instance_id, webinar_number, webinar_type, webinar_duration nodrop
| json "event", "payload.object.uuid" as event, webinar_instance_id| where event="webinar.ended"| count by webinar_instance_id| compose webinar_instance_id]
 
```
### Use Cases:
25 Most Recent Logins, Admin Activity Distribution, Admin Activity Over Time, Average Meeting Duration Over Time, Guest Participants Over Time, Guests, Hosts, Hosts Over Time, Hosts Using Personal Meeting Rooms Over Time, Hosts Using Same Meeting Number, Least Used Zoom Clients by Users, Logins, Logins by Device Type, Logins from Multiple Devices, Logins this week vs last week, Logins/Logouts Over Time, Logouts, Meeting Types, Meetings Consistently Used by Guests, Meetings Create/Update/Delete Distribution, Meetings in Progress, Meetings on Time vs Over Time, Meetings Over Time, Meetings Where Guests Can Join Before Host, Meetings with Join Before Host Enabled, Meetings With Most Guests, Meetings Without Enforced Login, Meetings Without Passwords, Meetings Without Waiting Rooms, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent Admin Activity, Recent App Deauthorizations, Recent Guest Activity, Recent Meeting/Webinar Issues, Recent Security Events, Recent Users Updated, Recent Zoom Alerts, Screen Sharing with Guest Participants, Top 10 Guests by Meetings Joined, Top 10 Hosts with Personal Meeting Rooms, Top 10 Rooms with Issues, Top 10 Zoom Clients by Users, Total Guests, Total Meetings, Total Participants, User Created/Activated, User Events Distribution, Users Deleted/Deactivated/Disassociated, Webinars in Progress, Zoom Client Versions, Zoom Room Alerts, Zoom Room Issues



## Parser:
```
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.type", "payload.object.duration", "payload.object.participant.id", "payload.object.participant.user_name", "payload.object.participant.sharing_details.content", "payload.object.participant.sharing_details.date_time" as event, meeting_start_time, topic, meeting_instance_id, meeting_number, meeting_type, meeting_duration, participant_user_id, participant_user_name, content_type, sharing_start_time  nodrop
 
```
### Use Cases:
25 Most Recent Logins, Admin Activity Distribution, Admin Activity Over Time, Average Meeting Duration Over Time, Guest Participants Over Time, Guests, Hosts, Hosts Over Time, Hosts Using Personal Meeting Rooms Over Time, Hosts Using Same Meeting Number, Least Used Zoom Clients by Users, Logins, Logins by Device Type, Logins from Multiple Devices, Logins this week vs last week, Logins/Logouts Over Time, Logouts, Meeting Types, Meetings by Shared Content Type, Meetings Consistently Used by Guests, Meetings Create/Update/Delete Distribution, Meetings in Progress, Meetings on Time vs Over Time, Meetings Over Time, Meetings Where Guests Can Join Before Host, Meetings with Join Before Host Enabled, Meetings With Most Guests, Meetings Without Enforced Login, Meetings Without Passwords, Meetings Without Waiting Rooms, Meetings/Webinar Alerts, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent Admin Activity, Recent App Deauthorizations, Recent Guest Activity, Recent Meeting/Webinar Issues, Recent Security Events, Recent Users Updated, Recent Zoom Alerts, Screen Sharing with Guest Participants, Top 10 Guests by Meetings Joined, Top 10 Hosts, Top 10 Hosts with Personal Meeting Rooms, Top 10 Meeting ID and Hosts, Top 10 Personal Meeting IDs in Use, Top 10 Rooms with Issues, Top 10 Zoom Clients by Users, Total Guests, Total Meetings, Total Participants, User Created/Activated, User Events Distribution, Users Deleted/Deactivated/Disassociated, Webinars in Progress, Zoom Client Versions, Zoom Room Alerts, Zoom Room Issues



## Parser:
```
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.type", "payload.object.duration", "payload.object.participant.id", "payload.object.participant.user_name", "payload.object.participant.sharing_details", "payload.object.participant.sharing_details.date_time" as event, meeting_start_time, topic, meeting_instance_id, meeting_number, meeting_type, meeting_duration, participant_user_id, participant_user_name, sharing_details, sharing_start_time  nodrop
 
```
### Use Cases:
25 Most Recent Logins, Admin Activity Distribution, Admin Activity Over Time, Average Meeting Duration Over Time, Guest Participants Over Time, Guests, Hosts, Hosts Over Time, Hosts Using Personal Meeting Rooms Over Time, Hosts Using Same Meeting Number, Least Used Zoom Clients by Users, Logins, Logins by Device Type, Logins from Multiple Devices, Logins this week vs last week, Logins/Logouts Over Time, Logouts, Meeting Types, Meetings by Shared Content Type, Meetings Consistently Used by Guests, Meetings Create/Update/Delete Distribution, Meetings in Progress, Meetings on Time vs Over Time, Meetings Over Time, Meetings Where Guests Can Join Before Host, Meetings with Join Before Host Enabled, Meetings With Most Guests, Meetings Without Enforced Login, Meetings Without Passwords, Meetings Without Waiting Rooms, Meetings/Webinar Alerts, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent Admin Activity, Recent App Deauthorizations, Recent Guest Activity, Recent Meeting/Webinar Issues, Recent Security Events, Recent Users Updated, Recent Zoom Alerts, Screen Sharing with Guest Participants, Top 10 Guests by Meetings Joined, Top 10 Hosts, Top 10 Hosts with Personal Meeting Rooms, Top 10 Meeting ID and Hosts, Top 10 Personal Meeting IDs in Use, Top 10 Rooms with Issues, Top 10 Users by Recording File Size, Top 10 Users Using Screen Sharing, Top 10 Zoom Clients by Users, Total Guests, Total Meetings, Total Participants, User Created/Activated, User Events Distribution, Users Deleted/Deactivated/Disassociated, Webinars in Progress, Zoom Client Versions, Zoom Room Alerts, Zoom Room Issues



## Parser:
```
| json "event", "payload.object.start_time", "payload.object.topic", "payload.object.uuid", "payload.object.id", "payload.object.type", "payload.object.duration", "payload.object.participant.user_id", "payload.object.participant.user_name", "payload.object.participant.join_time" as event, meeting_start_time, topic, meeting_instance_id, meeting_number, meeting_type, meeting_duration, participant_id, participant_name, join_time nodrop
 
```
### Use Cases:
25 Most Recent Logins, Admin Activity Distribution, Admin Activity Over Time, Guest Participants Over Time, Guests, Hosts Using Personal Meeting Rooms Over Time, Hosts Using Same Meeting Number, Least Used Zoom Clients by Users, Logins, Logins by Device Type, Logins from Multiple Devices, Logins this week vs last week, Logins/Logouts Over Time, Logouts, Meetings Consistently Used by Guests, Meetings Where Guests Can Join Before Host, Meetings with Join Before Host Enabled, Meetings With Most Guests, Meetings Without Enforced Login, Meetings Without Passwords, Meetings Without Waiting Rooms, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent App Deauthorizations, Recent Guest Activity, Recent Meeting/Webinar Issues, Recent Security Events, Recent Users Updated, Screen Sharing with Guest Participants, Top 10 Guests by Meetings Joined, Top 10 Hosts with Personal Meeting Rooms, Top 10 Rooms with Issues, Top 10 Zoom Clients by Users, Total Participants, User Created/Activated, User Events Distribution, Users Deleted/Deactivated/Disassociated, Zoom Client Versions, Zoom Room Alerts, Zoom Room Issues



## Parser:
```
| json "event", "payload.object", "payload.operator", "payload.time_stamp", "payload.object.id" as event, object, user_email, update_time, meeting_number
 
```
### Use Cases:
25 Most Recent Logins, Admin Activity Distribution, Admin Activity Over Time, Guest Participants Over Time, Guests, Hosts Using Same Meeting Number, Least Used Zoom Clients by Users, Logins, Logins by Device Type, Logins from Multiple Devices, Logins this week vs last week, Logins/Logouts Over Time, Logouts, Meetings Consistently Used by Guests, Meetings Where Guests Can Join Before Host, Meetings with Join Before Host Enabled, Meetings With Most Guests, Meetings Without Enforced Login, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent App Deauthorizations, Recent Guest Activity, Recent Meeting/Webinar Issues, Recent Security Events, Recent Users Updated, Screen Sharing with Guest Participants, Top 10 Guests by Meetings Joined, Top 10 Hosts with Personal Meeting Rooms, Top 10 Rooms with Issues, Top 10 Zoom Clients by Users, User Created/Activated, User Events Distribution, Users Deleted/Deactivated/Disassociated, Zoom Client Versions, Zoom Room Alerts, Zoom Room Issues



## Parser:
```
| json "event", "payload.object", "payload.operator", "payload.time_stamp", "payload.object.id" as event, object, user_email, update_time, meeting_number
| parse regex field=object "password\":\"(?<password>[^\"]+)\"" nodrop
 
```
### Use Cases:
25 Most Recent Logins, Admin Activity Distribution, Admin Activity Over Time, Guest Participants Over Time, Guests, Least Used Zoom Clients by Users, Logins, Logins by Device Type, Logins from Multiple Devices, Logins this week vs last week, Logins/Logouts Over Time, Logouts, Meetings Consistently Used by Guests, Meetings Where Guests Can Join Before Host, Meetings With Most Guests, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent App Deauthorizations, Recent Guest Activity, Recent Meeting/Webinar Issues, Recent Security Events, Recent Users Updated, Screen Sharing with Guest Participants, Top 10 Guests by Meetings Joined, Top 10 Hosts with Personal Meeting Rooms, Top 10 Rooms with Issues, Top 10 Zoom Clients by Users, User Created/Activated, User Events Distribution, Users Deleted/Deactivated/Disassociated, Zoom Client Versions, Zoom Room Alerts, Zoom Room Issues



## Parser:
```
| json "event", "payload.object", "payload.operator", "payload.time_stamp", "payload.object.id" as event, object, user_email, update_time, meeting_number 
| parse regex field=object "password\":\"(?<password>[^\"]+)\"" nodrop
 
```
### Use Cases:
25 Most Recent Logins, Admin Activity Distribution, Admin Activity Over Time, Guest Participants Over Time, Guests, Hosts Using Same Meeting Number, Least Used Zoom Clients by Users, Logins, Logins by Device Type, Logins from Multiple Devices, Logins this week vs last week, Logins/Logouts Over Time, Logouts, Meetings Consistently Used by Guests, Meetings Where Guests Can Join Before Host, Meetings with Join Before Host Enabled, Meetings With Most Guests, Meetings Without Enforced Login, Meetings Without Passwords, Meetings Without Waiting Rooms, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent App Deauthorizations, Recent Guest Activity, Recent Meeting/Webinar Issues, Recent Security Events, Recent Users Updated, Screen Sharing with Guest Participants, Top 10 Guests by Meetings Joined, Top 10 Hosts with Personal Meeting Rooms, Top 10 Rooms with Issues, Top 10 Zoom Clients by Users, User Created/Activated, User Events Distribution, Users Deleted/Deactivated/Disassociated, Zoom Client Versions, Zoom Room Alerts, Zoom Room Issues



## Parser:
```
| json "event", "payload.operator", "payload.account_id", "payload.object.owner_email" as event, admin, account_id, owner_email
 
```
### Use Cases:
Admin Activity Distribution, Admin Activity Over Time, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent App Deauthorizations, Recent Users Updated, User Created/Activated, User Events Distribution, Users Deleted/Deactivated/Disassociated



## Parser:
```
| json "event", "payload.operator", "payload.account_id", "payload.object", "payload.old_object", "payload.time_stamp" as event, admin, account_id, new_object, old_object, update_timestamp
 
```
### Use Cases:
Admin Activity Distribution, Admin Activity Over Time, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent App Deauthorizations, Recent Users Updated, User Created/Activated, User Events Distribution, Users Deleted/Deactivated/Disassociated



## Parser:
```
| json "event", "payload.operator", "payload.account_id", "payload.time_stamp" as event, admin, account_id, timestamp nodrop
 
```
### Use Cases:
Admin Activity Distribution, Admin Activity Over Time, Recent Accounts Created, Recent Accounts Disassociated, Recent Accounts Updated, Recent App Deauthorizations, Recent Users Updated, User Created/Activated, User Events Distribution, Users Deleted/Deactivated/Disassociated


