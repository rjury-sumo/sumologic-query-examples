# Parsers For Docker - OpenTelemetry

**Docker - OpenTelemetry/Docker - Overview/Container Events - One Day Time Comparison**
```
sumo.datasource=docker
| json field=_raw "status" as state
| json field=_raw "Type" as type
| json field=_raw "Actor.Attributes.image" as image
| json field=_raw "Actor.Attributes.name" as name
```

**Docker - OpenTelemetry/Docker - Overview/Containers by State**
```
sumo.datasource=docker
| json field=_raw "status" as state
| json field=_raw "Type" as type
| json field=_raw "Actor.Attributes.image" as image
| json field=_raw "Actor.Attributes.name" as name
| json field=_raw "time" as event_time
```

**Docker - OpenTelemetry/Docker - Overview/Docker Events Over Time**
```
sumo.datasource=docker
| json field=_raw "status" as state
| json field=_raw "Type" as type
| json field=_raw "Actor.Attributes.image" as image
| json field=_raw "Actor.Attributes.name" as name
```

**Docker - OpenTelemetry/Docker - Overview/Number of Containers Killed**
```
sumo.datasource=docker
| json field=_raw "status" as state
| where state in ( "kill")
| json field=_raw "Type" as type
| json field=_raw "Actor.Attributes.image" as image
| json field=_raw "Actor.Attributes.name" as name
```

**Docker - OpenTelemetry/Docker - Overview/Number of Containers Paused**
```
sumo.datasource=docker
| json field=_raw "status" as state
| where state in ( "pause")
| json field=_raw "Type" as type
| json field=_raw "Actor.Attributes.image" as image
| json field=_raw "Actor.Attributes.name" as name
```

**Docker - OpenTelemetry/Docker - Overview/Number of Containers Started**
```
sumo.datasource=docker
| json field=_raw "status" as state
// we are looking in to start as re starting container generate two events - 1 start, 2 re start. So count only start is good 
| where state in ( "start")
| json field=_raw "Type" as type
| json field=_raw "Actor.Attributes.image" as image
| json field=_raw "Actor.Attributes.name" as name
```

**Docker - OpenTelemetry/Docker - Overview/Number of Containers Stopped**
```
sumo.datasource=docker
| json field=_raw "status" as state
| where state in ( "stop")
| json field=_raw "Type" as type
| json field=_raw "Actor.Attributes.image" as image
| json field=_raw "Actor.Attributes.name" as name
```

**Docker - OpenTelemetry/Docker - Overview/Number of Docker Hosts**
```
sumo.datasource=docker
| json field=_raw "status" as state
| json field=_raw "Type" as type
| json field=_raw "Actor.Attributes.image" as image
| json field=_raw "Actor.Attributes.name" as name
```


