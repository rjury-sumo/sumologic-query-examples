# Parsers For Kafka

| use_case | parser |
|--- | --- |
| Kafka/Logs/Broker Shutdown Events | _sourceCategory = Labs/Kafka* messaging_cluster={{messaging_cluster}} messaging_system="kafka" "Shutdown completed" "SocketServer brokerId"<br>\| json auto maxdepth 1 nodrop<br>\| if (isEmpty(log), _raw, log) as kafka_log_message<br>\| parse field=kafka_log_message "[*] * *" as date_time,severity,msg |
| Kafka/Logs/Error Over Time | _sourceCategory = Labs/Kafka* messaging_cluster={{messaging_cluster}} messaging_system="kafka"<br>\| json auto maxdepth 1 nodrop<br>\| if (isEmpty(log), _raw, log) as kafka_log_message<br>\| parse field=kafka_log_message "[*] * *" as date_time,severity,msg |
| Kafka/Logs/Events by  Severity | _sourceCategory = Labs/Kafka* messaging_cluster={{messaging_cluster}} messaging_system="kafka"<br>\| json auto maxdepth 1 nodrop<br>\| if (isEmpty(log), _raw, log) as kafka_log_message<br>\| parse field=kafka_log_message "[*] * *" as date_time,severity,msg |
| Kafka/Logs/Last 10 Errors | _sourceCategory = Labs/Kafka* messaging_cluster={{messaging_cluster}} messaging_system="kafka"<br>\| json auto maxdepth 1 nodrop<br>\| if (isEmpty(log), _raw, log) as kafka_log_message<br>\| parse field=kafka_log_message "[*] * *" as date_time,severity,msg |
| Kafka/Logs/Log Reduce | _sourceCategory = Labs/Kafka* messaging_cluster={{messaging_cluster}} messaging_system="kafka"<br>\| json auto maxdepth 1 nodrop<br>\| if (isEmpty(log), _raw, log) as kafka_log_message<br>\| parse field=kafka_log_message "[*] * *" as date_time,severity,msg |
| Kafka/Logs/Started Events | _sourceCategory = Labs/Kafka* messaging_cluster={{messaging_cluster}} messaging_system="kafka" started "KafkaServer id" <br>\| json auto maxdepth 1 nodrop<br>\| if (isEmpty(log), _raw, log) as kafka_log_message<br>\| parse field=kafka_log_message "[*] * *" as date_time,severity,msg |
| Kafka/Logs/Top 10 Errors | _sourceCategory = Labs/Kafka* messaging_cluster={{messaging_cluster}} (FATAL or ERROR)<br>\| json auto maxdepth 1 nodrop<br>\| if (isEmpty(log), _raw, log) as kafka_log_message<br>\| parse field=kafka_log_message "[*] * *" as date_time,severity,msg |

