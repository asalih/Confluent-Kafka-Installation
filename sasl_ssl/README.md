#sasl_ssl

Very good example is in here:
https://github.com/mhowlett/confluent-kafka-dotnet/tree/security/examples/Security

Short hand config

##server config
keytool -keystore server.keystore.jks -alias {server_hostname} -validity 365 -genkey -keyalg RSA
openssl req -nodes -new -x509 -keyout ca-root.key -out ca-root.crt -days 365
keytool -keystore server.keystore.jks -alias {server_hostname} -certreq -file {server_hostname}_server.csr
openssl x509 -req -CA ca-root.crt -CAkey ca-root.key -in {server_hostname}_server.csr -out {server_hostname}_server.crt -days 365 -CAcreateserial
keytool -keystore server.keystore.jks -alias CARoot -import -noprompt -file ca-root.crt
keytool -keystore server.keystore.jks -alias {server_hostname} -import -file {server_hostname}_server.crt

##client config
openssl req -newkey rsa:2048 -nodes -keyout {client_hostname}_client.key -out {client_hostname}_client.csr
openssl x509 -req -CA ca-root.crt -CAkey ca-root.key -in {client_hostname}_client.csr -out {client_hostname}_client.crt -days 365 -CAcreateserial
keytool -keystore server.truststore.jks -alias CARoot -import -file ca-root.crt
