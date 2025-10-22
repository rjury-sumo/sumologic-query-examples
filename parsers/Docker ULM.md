# Parsers For Docker ULM

**Docker ULM/Docker - Overview/Container Events - One Day Time Comparison**
```
_sourceCategory={{Logsdatasource}} 
| json field=_raw "status" as state
| json field=_raw "Type" as type
| json field=_raw "Actor.Attributes.image" as image
| json field=_raw "Actor.Attributes.name" as name
```

**Docker ULM/Docker - Overview/Containers by State**
```
_sourceCategory={{Logsdatasource}} 
| json field=_raw "status" as state
| json field=_raw "Type" as type
| json field=_raw "Actor.Attributes.image" as image
| json field=_raw "Actor.Attributes.name" as name
| json field=_raw "time" as event_time
```

**Docker ULM/Docker - Overview/Docker Events Over Time**
```
_sourceCategory={{Logsdatasource}} 
| json field=_raw "status" as state
| json field=_raw "Type" as type
| json field=_raw "Actor.Attributes.image" as image
| json field=_raw "Actor.Attributes.name" as name
```

**Docker ULM/Docker - Overview/Number of Containers Killed**
```
_sourceCategory={{Logsdatasource}} 
| json field=_raw "status" as state
| where state in ( "kill")
| json field=_raw "Type" as type
| json field=_raw "Actor.Attributes.image" as image
| json field=_raw "Actor.Attributes.name" as name
```

**Docker ULM/Docker - Overview/Number of Containers Paused**
```
_sourceCategory={{Logsdatasource}} 
| json field=_raw "status" as state
| where state in ( "pause")
| json field=_raw "Type" as type
| json field=_raw "Actor.Attributes.image" as image
| json field=_raw "Actor.Attributes.name" as name
```

**Docker ULM/Docker - Overview/Number of Containers Started**
```
_sourceCategory={{Logsdatasource}} 
| json field=_raw "status" as state
// we are looking in to start as re starting container generate two events - 1 start, 2 re start. So count only start is good 
| where state in ( "start")
| json field=_raw "Type" as type
| json field=_raw "Actor.Attributes.image" as image
| json field=_raw "Actor.Attributes.name" as name
```

**Docker ULM/Docker - Overview/Number of Containers Stopped**
```
_sourceCategory={{Logsdatasource}} 
| json field=_raw "status" as state
| where state in ( "stop")
| json field=_raw "Type" as type
| json field=_raw "Actor.Attributes.image" as image
| json field=_raw "Actor.Attributes.name" as name
```

**Docker ULM/Docker - Overview/Number of Docker Hosts**
```
_sourceCategory={{Logsdatasource}} 
| json field=_raw "status" as state
| json field=_raw "Type" as type
| json field=_raw "Actor.Attributes.image" as image
| json field=_raw "Actor.Attributes.name" as name
```


