# Parsers For Split

| use_case | parser |
|--- | --- |
| Split/Overview/Admin Audit Log Type | _sourceCategory={{_sourceCategory}} type auditLogType<br>\| json "type", "auditLogType" as type, auditLogType nodrop |
| Split/Overview/API Keys Created | _sourceCategory={{_sourceCategory}} "api_key.create"<br>\| json "type", "auditLogType" as type, auditLogType nodrop |
| Split/Overview/API Keys Deleted | _sourceCategory={{_sourceCategory}} "api_key.delete"<br>\| json "type", "auditLogType" as type, auditLogType nodrop |
| Split/Overview/Audit Log Event Type Trend | _sourceCategory={{_sourceCategory}} type auditLogType<br>\| json "type", "auditLogType" as type, auditLogType nodrop |
| Split/Overview/Log Type | _sourceCategory={{_sourceCategory}} type auditLogType<br>\| json "type", "auditLogType" as type, auditLogType nodrop |
| Split/Overview/Recent Audit Events | _sourceCategory={{_sourceCategory}}<br>\| json "type", "auditLogType", "editor.name", "changes" as type, auditLogType, editorName, changes nodrop |
| Split/Overview/Recent Integration Related Events | _sourceCategory={{_sourceCategory}} integration<br>\| json "auditLogType", "type", "editor.name" as auditLogType, type, editorName nodrop |
| Split/Overview/Recent Workspace Events | _sourceCategory={{_sourceCategory}} auditLogType<br>\| json "auditLogType", "currentObject.name" as logType, workspaceName nodrop |
| Split/Overview/Split Event Type | _sourceCategory={{_sourceCategory}} Split type environmentName<br>\| json "type", "editor.type", "editor.name", "environmentName" as type, editorType, editorName, environment nodrop |
| Split/Overview/Split Event Type Trend | _sourceCategory={{_sourceCategory}}  Split type environmentName<br>\| json "type", "environmentName" as type, environment nodrop |
| Split/Overview/Top Editor Names | _sourceCategory={{_sourceCategory}} editor name<br>\| json "auditLogType", "editor.type", "editor.name" as auditLogType, editorType, editorName nodrop |
| Split/Overview/Traffic Type Created | _sourceCategory={{_sourceCategory}} "traffic_type.create"<br>\| json "type", "auditLogType" as type, auditLogType nodrop |
| Split/Overview/Traffic Type Deleted | _sourceCategory={{_sourceCategory}} "traffic_type.delete"<br>\| json "type", "auditLogType" as type, auditLogType nodrop |
| Split/Overview/Workspace Event Trend | _sourceCategory={{_sourceCategory}} auditLogType<br>\| json "auditLogType", "currentObject.name" as auditLogType, workspaceName nodrop |
| Split/Overview/Workspace Events | _sourceCategory={{_sourceCategory}} auditLogType<br>\| json "auditLogType", "currentObject.name" as auditLogType, workspaceName nodrop |
| Split/Users and Groups/Actived Users | _sourceCategory={{_sourceCategory}} "user.update" ACTIVE<br>\| json "type", "auditLogType", "currentObject.status", "editor.name" as type, auditLogType, status, editorName nodrop |
| Split/Users and Groups/Deactivated Users | _sourceCategory={{_sourceCategory}} "user.update" DEACTIVATED<br>\| json "type", "auditLogType", "currentObject.status", "editor.name" as type, auditLogType, status, editorName nodrop |
| Split/Users and Groups/Forcefully Logged out Users | _sourceCategory={{_sourceCategory}} "user.force_logout" <br>\| json "type", "auditLogType", "editor.name" as type, auditLogType, editorName nodrop |
| Split/Users and Groups/Groups Created | _sourceCategory={{_sourceCategory}} "group.create" <br>\| json "type", "auditLogType", "editor.name" as type, auditLogType, editorName nodrop |
| Split/Users and Groups/Groups Deleted | _sourceCategory={{_sourceCategory}} "group.delete" <br>\| json "type", "auditLogType", "editor.name" as type, auditLogType, editorName nodrop |
| Split/Users and Groups/Groups Event Trend | _sourceCategory={{_sourceCategory}} auditLogType<br>\| json "type", "auditLogType", "editor.name" as type, auditLogType, editorName nodrop |
| Split/Users and Groups/Groups Updated | _sourceCategory={{_sourceCategory}} "group.update" <br>\| json "type", "auditLogType", "editor.name" as type, auditLogType, editorName nodrop |
| Split/Users and Groups/Invited Users | _sourceCategory={{_sourceCategory}} "user.create"<br>\| json "type", "auditLogType", "changes.status.to", "editor.name" as type, auditLogType, status, editorName nodrop |
| Split/Users and Groups/Newly Added Users | _sourceCategory={{_sourceCategory}} "user.update"<br>\| json "type", "auditLogType", "changes.status.from", "changes.status.to", "editor.name" as type, auditLogType, oldStatus, newStatus, editorName nodrop |
| Split/Users and Groups/Recent Group Activities | _sourceCategory={{_sourceCategory}} ("group.delete" or "group.create" or "group.update")<br>\| json "auditLogType", "currentObject.name", "changes", "editor.name" as logType, workspaceName, changes, editorName nodrop |
| Split/Users and Groups/Recent Suspicious Users | _sourceCategory={{_sourceCategory}} "user.update"<br>\| json "type", "auditLogType", "changes.status.from", "changes.status.to", "currentObject.email", "currentObject.name", "editor.name" as type, auditLogType, oldStatus, newStatus, userEmail, userName, editorName nodrop |
| Split/Users and Groups/Recent User Events | _sourceCategory={{_sourceCategory}} Split<br>\| json "type", "editor", "description", "link", "time" as type, editorName, description, link, time nodrop |
| Split/Users and Groups/Users Event Trend | _sourceCategory={{_sourceCategory}} auditLogType <br>\| json "type", "auditLogType", "editor.name" as type, auditLogType, editorName nodrop |

