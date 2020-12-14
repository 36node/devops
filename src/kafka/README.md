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

open kafka-manager in your browser

http://localhost:49092

Add new cluster, and use the following data for Cluster Zookeeper Hosts:

```sh
zoo:2181
```

然后在这个界面可以观察 kafka 消息队列的各种参数

## Test with Kafka-cat

[read this guide](https://brysonwx.wordpress.com/2018/11/05/kafkacatkafkacat%E4%BD%BF%E7%94%A8%E5%B0%8F%E7%BB%93/)

使用 kafkacat 去监听最新消息

```sh
kafkacat -b kafka-1 -C -t haha -o end
```

新开一个命令行窗口用 kafkacat 去生产消息

```sh
kafkacat -b kafka-1 -t haha  -P
```

## Production Deployment

https://github.com/Yolean/kubernetes-kafka
