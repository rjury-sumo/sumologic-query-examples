# Parsers For Dropbox

## Parser:
```
| json "$['actor']['.tag']","$['actor']*['.tag']","$['actor']*['account_id']","$['actor']*['display_name']","$['actor']*['email']","$['actor']*['team_member_id']","$['event_type']['.tag']","$['event_type']['description']","details.app_info.display_name", "origin.geo_location.ip_address", "origin.geo_location.country","$['event_category']['.tag']","involve_non_team_member" as actor,actor_is_team_member,actor_account_id, actor_display_name, actor_email,actor_team_member_id, event_type, event_type_description, app_name,location,country, event_category,involve_non_team_member nodrop
| json field=actor_email "[0]" as email nodrop
| json field=actor_display_name "[0]" as name nodrop
 `n```
### Use Cases:
Active Team Members, Actors Performing Actions, Admin Actions by Location, Distribution of Team Linked Apps, Distribution of User Linked Apps, Events Category Distribution, Failed Login Attempts, Geo Locations of Events, Geo Locations of File Operations, Linked Apps, List of Assets Shared with External Members, List of Assets Shared with Non Members, Login Activity By Time, Login Events by Location, Recent Admin Actions, Recent File Operations, Recently Added Members, Share Events with Member, Share Events with Non Members, Sign-in From a High Risk Country, Successful Device Links, Top 10 Active Admins, Top 10 Admin Actions, Top 10 Applications, Top 10 File Operations, Top 10 Login & Session Event Types, Top 10 Users Performing File Operations, Top 10 Users with Device IP Changes, User Activity for File Addition and Deletion



## Parser:
```
| json "$['actor']['.tag']","$['actor']*['.tag']","$['actor']*['account_id']","$['actor']*['display_name']","$['actor']*['email']","$['actor']*['team_member_id']","$['event_type']['.tag']","$['event_type']['description']","details.app_info.display_name", "origin.geo_location.ip_address", "origin.geo_location.country","$['event_category']['.tag']","involve_non_team_member" as actor,actor_is_team_member,actor_account_id, actor_display_name, actor_email,actor_team_member_id, event_type, event_type_description, app_name,location,country, event_category,involve_non_team_member nodrop
| json field=actor_email "[0]" as email nodrop
| json field=actor_display_name "[0]" as name nodrop
| json "$['assets'][*]['.tag']", "assets[*].path.contextual", "participants[*].user.email" as asset_tags, asset_path, external_email
 `n```
### Use Cases:
Active Team Members, Actors Performing Actions, Distribution of Team Linked Apps, Distribution of User Linked Apps, Events Category Distribution, Failed Login Attempts, Geo Locations of Events, Geo Locations of File Operations, Linked Apps, List of Assets Shared with External Members, Login Activity By Time, Login Events by Location, Recent File Operations, Recently Added Members, Share Events with Non Members, Sign-in From a High Risk Country, Successful Device Links, Top 10 Applications, Top 10 File Operations, Top 10 Users Performing File Operations, Top 10 Users with Device IP Changes, User Activity for File Addition and Deletion



## Parser:
```
| json "$['actor']['.tag']","$['actor']*['.tag']","$['actor']*['account_id']","$['actor']*['display_name']","$['actor']*['email']","$['actor']*['team_member_id']","$['event_type']['.tag']","$['event_type']['description']","details.app_info.display_name", "origin.geo_location.ip_address", "origin.geo_location.country","$['event_category']['.tag']","involve_non_team_member" as actor,actor_is_team_member,actor_account_id, actor_display_name, actor_email,actor_team_member_id, event_type, event_type_description, app_name,location,country, event_category,involve_non_team_member nodrop
| json field=actor_email "[0]" as email nodrop
| json field=actor_display_name "[0]" as name nodrop
| json "$['assets'][*]['.tag']", "assets[*].path.contextual"as asset_tags, asset_path
 `n```
### Use Cases:
Active Team Members, Actors Performing Actions, Distribution of Team Linked Apps, Distribution of User Linked Apps, Events Category Distribution, Failed Login Attempts, Geo Locations of Events, Geo Locations of File Operations, Linked Apps, List of Assets Shared with External Members, List of Assets Shared with Non Members, Login Activity By Time, Login Events by Location, Recent File Operations, Recently Added Members, Share Events with Non Members, Sign-in From a High Risk Country, Successful Device Links, Top 10 Applications, Top 10 File Operations, Top 10 Users Performing File Operations, Top 10 Users with Device IP Changes, User Activity for File Addition and Deletion



## Parser:
```
| json "$['actor']['.tag']","$['actor']*['.tag']","$['actor']*['account_id']","$['actor']*['display_name']","$['actor']*['email']","$['actor']*['team_member_id']","$['event_type']['.tag']","$['event_type']['description']","details.app_info.display_name", "origin.geo_location.ip_address", "origin.geo_location.country","$['event_category']['.tag']","involve_non_team_member" as actor,actor_is_team_member,actor_account_id, actor_display_name, actor_email,actor_team_member_id, event_type, event_type_description, app_name,location,country, event_category,involve_non_team_member nodrop
| json field=actor_email "[0]" as email nodrop
| json field=actor_display_name "[0]" as name nodrop
| json field=_raw "$['details']['new_value']['.tag']" as new_value | where %"new_value" = "active"
 `n```
### Use Cases:
Active Team Members, Actors Performing Actions, Distribution of Team Linked Apps, Distribution of User Linked Apps, Events Category Distribution, Failed Login Attempts, Geo Locations of Events, Geo Locations of File Operations, Login Events by Location, Recent File Operations, Recently Added Members, Sign-in From a High Risk Country, Successful Device Links, Top 10 Applications, Top 10 File Operations, Top 10 Users Performing File Operations, Top 10 Users with Device IP Changes, User Activity for File Addition and Deletion



## Parser:
```
| json "$['actor']['.tag']","$['actor']*['.tag']","$['actor']*['account_id']","$['actor']*['display_name']","$['actor']*['email']","$['actor']*['team_member_id']","$['event_type']['.tag']","$['event_type']['description']","details.app_info.display_name", "origin.geo_location.ip_address", "origin.geo_location.country","$['event_category']['.tag']","involve_non_team_member" as actor,actor_is_team_member,actor_account_id, actor_display_name, actor_email,actor_team_member_id, event_type, event_type_description, app_name,location,country, event_category,involve_non_team_member nodrop
| json field=actor_email "[0]" as email nodrop
| json field=actor_display_name "[0]" as name nodrop
| json field=actor_is_team_member "[0]" as true_value_actor_is_team_member | where %"true_value_actor_is_team_member" = "team_member"
 `n```
### Use Cases:
Active Team Members, Actors Performing Actions, Distribution of Team Linked Apps, Distribution of User Linked Apps, Events Category Distribution, Failed Login Attempts, Geo Locations of Events, Geo Locations of File Operations, Login Events by Location, Recent File Operations, Sign-in From a High Risk Country, Successful Device Links, Top 10 Applications, Top 10 File Operations, Top 10 Users Performing File Operations, Top 10 Users with Device IP Changes, User Activity for File Addition and Deletion


