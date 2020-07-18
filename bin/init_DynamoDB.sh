#!/bin/bash

set -x
if [ ! -f ~/dynamodb_local_latest/DynamoDBLocal.jar ]; then
    mkdir -p ~/dynamodb_local_latest
    curl -sSL https://s3.ap-northeast-1.amazonaws.com/dynamodb-local-tokyo/dynamodb_local_latest.tar.gz --output ~/dynamodb_local_latest.tar.gz
    tar xzvf ~/dynamodb_local_latest.tar.gz -C ~/dynamodb_local_latest
fi
cd  ~/dynamodb_local_latest
pwd ~/dynamodb_local_latest
/usr/bin/java -Djava.library.path=./DynamoDBLocal_lib -jar DynamoDBLocal.jar -inMemory&
