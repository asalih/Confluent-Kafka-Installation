# Confluent - Kafka

## Default Installation
Install JRE/JDK
```sh
sudo apt install openjdk-8-jre-headless
```

Install Confluent via DEB pkg  
https://docs.confluent.io/3.1.1/installation.html#deb-packages-via-apt

After the installation, you can start the confluent with default settings.  
```sh
cd /usr/bin  
./confluent start
```

## SASL Settings
The '.properties' files of the kafka's and zookeeper's are under the '/etc/kafka'.  
Backup default settings and put the .properties and .jaas files to the '/etc/kafka'.  
Put the zookeeper-starter.sh and kafka-starter.sh to the '/usr/bin'. You may need to edit for properties and jaas files path.  
To start zookeeper; 
```sh
cd /usr/bin
./zookeeper-starter.sh
```
To start kafka;
```sh
cd /usr/bin
./kafka-starter.sh
```

