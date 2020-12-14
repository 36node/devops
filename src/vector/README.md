# vector

日志采集工具 [vector](https://vector.dev/)

## Setup

本机安装 kafkacat，如果已经安装则跳过

```sh
brew install kafkacat
```

## 自动环境

```sh
kubectl apply -f src/kafka
kubectl apply -f src/tools
kubectl apply -f src/vector/agent.yaml
```

## 开始调试

使用 kafkacat 去监听最新消息

```sh
kafkacat -b kafka-1 -C -t dev.echo -o end
```

打开另一个命令行窗口，开始制造 10 条消息

```
bin/post.sh 10
```

在 kafkacat 的命令行窗口，可以看到开始接收消息了

## 如何用于开发

- 按照上述流程，已经足够应付开发，对于输出日志的服务，只要检查服务的日志是不是按照格式输出即可，甚至都不用启动消息队列。
- 对于接收消息的 daemon 服务，可以通过 kafkacat 或者 echo-logger 等方式，去制造可被消费的消息。也可以通过 mock 客户端，具体可以参考 bus-messenger。这部分会进一步提供样例。

## vector-docker.yaml

vector docker 版本，可以工作。但是是基于 docker 的环境，labels 不好抓取，比较难配置哪些容器的日志需要采集

