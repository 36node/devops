#! /bin/sh

###############################################################################
# 通过 curl 向 echo-logger server 发送创建日志的 request
###############################################################################

N=${1:-1}

post() {
  BODY=$1 
  curl --location --request POST 'http://localhost:49527/echo/v0/logs' \
  --header 'Content-Type: application/json' \
  --data-raw '{
      "title": "标题",
      "body": "'${BODY}'",
      "tags": "hello"
  }'
  echo "\r"
}

for ((i=1;i<=$N;i++));
do 
post $i
done