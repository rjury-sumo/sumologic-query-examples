# Parsers For Hasura

## Parser:
```
| json "id", "created_at", "event.op","table.name","table.schema","trigger.name" as id, created_at, operation, tableName, tableSchema, triggerName nodrop
 `n```
### Use Cases:
Deleted Operations, Events by Operation, Events by Schema, Events by Schema - Trend, Events by Tables - Trend, Events by Trigger, Events by Trigger - Trend, Events Generated, Operations - Trend, Recent Delete Events Details, Recent Insert Events Details, Recent Update Events Details, Tables by Schema, Target Schema, Target Tables, Top Active Tables



## Parser:
```
| json "id", "created_at", "event.op","table.name","table.schema","trigger.name", "event.data.new" as id, created_at, operation, tableName, tableSchema, triggerName, newData nodrop
 `n```
### Use Cases:
Events by Trigger - Trend, Recent Delete Events Details, Recent Insert Events Details



## Parser:
```
| json "id", "created_at", "event.op","table.name","table.schema","trigger.name", "event.data.new", "event.data.old" as id, created_at, operation, tableName, tableSchema, triggerName, newData, oldData nodrop
 `n```
### Use Cases:
Deleted Operations, Events by Operation, Events by Schema, Events by Tables - Trend, Events by Trigger - Trend, Operations - Trend, Recent Delete Events Details, Recent Insert Events Details, Recent Update Events Details, Target Tables, Top Active Tables



## Parser:
```
| json "id", "created_at", "event.op","table.name","table.schema","trigger.name", "event.data.old" as id, created_at, operation, tableName, tableSchema, triggerName, oldData nodrop
 `n```
### Use Cases:
Recent Delete Events Details


