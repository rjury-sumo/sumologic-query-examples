# Parsers For Docker ULM

## Parser:
```
| json field=_raw "status" as state
| json field=_raw "Type" as type
| json field=_raw "Actor.Attributes.image" as image
| json field=_raw "Actor.Attributes.name" as name
```
### Use Cases:
Container Events - One Day Time Comparison, Containers by State, Docker Events Over Time, Number of Containers Killed, Number of Containers Paused, Number of Containers Started, Number of Containers Stopped, Number of Docker Hosts



## Parser:
```
| json field=_raw "status" as state
| json field=_raw "Type" as type
| json field=_raw "Actor.Attributes.image" as image
| json field=_raw "Actor.Attributes.name" as name
| json field=_raw "time" as event_time
```
### Use Cases:
Containers by State, Number of Containers Started, Number of Containers Stopped


