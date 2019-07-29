export KAFKA_OPTS="-Djava.security.auth.login.config=/etc/kafka/server-jaas.conf"
./kafka-server-start /etc/kafka/server_ssl.properties
