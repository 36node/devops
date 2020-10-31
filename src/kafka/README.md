# Kafka

minimal kafka cluster for minicube

## Quick Start

```sh
kubectl apply -f src/kafka

vim /etc/hosts
# 加上
# 127.0.0.1  kafka-1 kafka-2 kafka-3 zoo
```

## Open kafka-manager:

浏览器中打开 kafka-manager 界面

```
localhost:49092
```

Add new cluster, and use the following data for Cluster Zookeeper Hosts:

```
zoo:2181
```

然后在这个界面可以观察 kafka 消息队列的各种参数

## Test with Kafka-cat

## Production Deployment

https://github.com/Yolean/kubernetes-kafka
