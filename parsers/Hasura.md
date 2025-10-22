# Parsers For Hasura

**Hasura/Overview/Deleted Operations**
```
_sourceCategory={{Logsdatasource}}  
| json "id", "created_at", "event.op","table.name","table.schema","trigger.name" as id, created_at, operation, tableName, tableSchema, triggerName nodrop
```

**Hasura/Overview/Events by Operation**
```
_sourceCategory={{Logsdatasource}}  
| json "id", "created_at", "event.op","table.name","table.schema","trigger.name" as id, created_at, operation, tableName, tableSchema, triggerName nodrop
```

**Hasura/Overview/Events by Schema**
```
_sourceCategory={{Logsdatasource}}  
| json "id", "created_at", "event.op","table.name","table.schema","trigger.name" as id, created_at, operation, tableName, tableSchema, triggerName nodrop
```

**Hasura/Overview/Events by Schema - Trend**
```
_sourceCategory={{Logsdatasource}}  
| json "id", "created_at", "event.op","table.name","table.schema","trigger.name" as id, created_at, operation, tableName, tableSchema, triggerName nodrop
```

**Hasura/Overview/Events by Tables - Trend**
```
_sourceCategory={{Logsdatasource}}  
| json "id", "created_at", "event.op","table.name","table.schema","trigger.name" as id, created_at, operation, tableName, tableSchema, triggerName nodrop
```

**Hasura/Overview/Events by Trigger**
```
_sourceCategory={{Logsdatasource}}  
| json "id", "created_at", "event.op","table.name","table.schema","trigger.name" as id, created_at, operation, tableName, tableSchema, triggerName nodrop
```

**Hasura/Overview/Events by Trigger - Trend**
```
_sourceCategory={{Logsdatasource}}  
| json "id", "created_at", "event.op","table.name","table.schema","trigger.name" as id, created_at, operation, tableName, tableSchema, triggerName nodrop
```

**Hasura/Overview/Events Generated**
```
_sourceCategory={{Logsdatasource}}  
| json "id", "created_at", "event.op","table.name","table.schema","trigger.name" as id, created_at, operation, tableName, tableSchema, triggerName nodrop
```

**Hasura/Overview/Operations - Trend**
```
_sourceCategory={{Logsdatasource}}  
| json "id", "created_at", "event.op","table.name","table.schema","trigger.name" as id, created_at, operation, tableName, tableSchema, triggerName nodrop
```

**Hasura/Overview/Recent Delete Events Details**
```
_sourceCategory={{Logsdatasource}}  "DELETE"
| json "id", "created_at", "event.op","table.name","table.schema","trigger.name", "event.data.old" as id, created_at, operation, tableName, tableSchema, triggerName, oldData nodrop
```

**Hasura/Overview/Recent Insert Events Details**
```
_sourceCategory={{Logsdatasource}}  "INSERT"
| json "id", "created_at", "event.op","table.name","table.schema","trigger.name", "event.data.new" as id, created_at, operation, tableName, tableSchema, triggerName, newData nodrop
```

**Hasura/Overview/Recent Update Events Details**
```
_sourceCategory={{Logsdatasource}}  "UPDATE"
| json "id", "created_at", "event.op","table.name","table.schema","trigger.name", "event.data.new", "event.data.old" as id, created_at, operation, tableName, tableSchema, triggerName, newData, oldData nodrop
```

**Hasura/Overview/Tables by Schema**
```
_sourceCategory={{Logsdatasource}}  
| json "id", "created_at", "event.op","table.name","table.schema","trigger.name" as id, created_at, operation, tableName, tableSchema, triggerName nodrop
```

**Hasura/Overview/Target Schema**
```
_sourceCategory={{Logsdatasource}}  
| json "id", "created_at", "event.op","table.name","table.schema","trigger.name" as id, created_at, operation, tableName, tableSchema, triggerName nodrop
```

**Hasura/Overview/Target Tables**
```
_sourceCategory={{Logsdatasource}}  
| json "id", "created_at", "event.op","table.name","table.schema","trigger.name" as id, created_at, operation, tableName, tableSchema, triggerName nodrop
```

**Hasura/Overview/Top Active Tables**
```
_sourceCategory={{Logsdatasource}}  
| json "id", "created_at", "event.op","table.name","table.schema","trigger.name" as id, created_at, operation, tableName, tableSchema, triggerName nodrop
```


