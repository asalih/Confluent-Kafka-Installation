export KAFKA_OPTS="-Djava.security.auth.login.config=/etc/kafka/zookeeper-jaas.conf"
./zookeeper-server-start /etc/kafka/zookeeper.properties
