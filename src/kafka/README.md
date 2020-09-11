# Kafka

minimal kafka cluster for minicube

## Quick Start

```sh
kubectl apply -f src/kafka

vim /etc/hosts
# 加上 
# 127.0.0.1  kafka-1
```

## Open kafka-manager:

```sh
minikube service kafka-manager
```

Add new cluster, and use the following data for Cluster Zookeeper Hosts:

```
zoo:2181
```

## Test with Kafka-cat



## Production Deployment

https://github.com/Yolean/kubernetes-kafka