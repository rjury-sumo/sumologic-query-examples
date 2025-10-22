# Parsers For Kafka - OpenTelemetry

**Kafka - OpenTelemetry/Kafka - Logs/Broker Shutdown Events**
```
sumo.datasource=kafka deployment.environment={{deployment.environment}} messaging.cluster.name={{messaging.cluster.name}} messaging.node.name={{messaging.node.name}} "Shutdown completed" "SocketServer brokerId"
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as kafka_log_message
| parse field=kafka_log_message "[*] * *" as date_time,severity,msg
```

**Kafka - OpenTelemetry/Kafka - Logs/Error Over Time**
```
sumo.datasource=kafka deployment.environment={{deployment.environment}} messaging.cluster.name={{messaging.cluster.name}} messaging.node.name={{messaging.node.name}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as kafka_log_message
| parse field=kafka_log_message "[*] * *" as date_time,severity,msg
```

**Kafka - OpenTelemetry/Kafka - Logs/Events by  Severity**
```
sumo.datasource=kafka deployment.environment={{deployment.environment}} messaging.cluster.name={{messaging.cluster.name}} messaging.node.name={{messaging.node.name}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as kafka_log_message
| parse field=kafka_log_message "[*] * *" as date_time,severity,msg
```

**Kafka - OpenTelemetry/Kafka - Logs/Last 10 Errors**
```
sumo.datasource=kafka deployment.environment={{deployment.environment}} messaging.cluster.name={{messaging.cluster.name}} messaging.node.name={{messaging.node.name}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as kafka_log_message
| parse field=kafka_log_message "[*] * *" as date_time,severity,msg
```

**Kafka - OpenTelemetry/Kafka - Logs/Log Reduce**
```
sumo.datasource=kafka deployment.environment={{deployment.environment}} messaging.cluster.name={{messaging.cluster.name}} messaging.node.name={{messaging.node.name}}
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as kafka_log_message
| parse field=kafka_log_message "[*] * *" as date_time,severity,msg
```

**Kafka - OpenTelemetry/Kafka - Logs/Started Events**
```
sumo.datasource=kafka deployment.environment={{deployment.environment}} messaging.cluster.name={{messaging.cluster.name}} messaging.node.name={{messaging.node.name}} started "KafkaServer id" 
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as kafka_log_message
| parse field=kafka_log_message "[*] * *" as date_time,severity,msg
```

**Kafka - OpenTelemetry/Kafka - Logs/Top 10 Errors**
```
sumo.datasource=kafka deployment.environment={{deployment.environment}} messaging.cluster.name={{messaging.cluster.name}} messaging.node.name={{messaging.node.name}} (FATAL or ERROR)
| json auto maxdepth 1 nodrop
| if (isEmpty(log), _raw, log) as kafka_log_message
| parse field=kafka_log_message "[*] * *" as date_time,severity,msg
```


