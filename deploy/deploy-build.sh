#!/bin/bash

USER_NAME="root"
IP="127.0.0.1"
PORT="5022"

HOST_PATH="$PWD"
SEVER_TEMP="/temp_target"

echo "파일 전송"
echo scp -P $PORT -r $HOST_PATH $USER_NAME@$IP:$SEVER_TEMP
scp -P $PORT -r $HOST_PATH $USER_NAME@$IP:$SEVER_TEMP

echo "스크립트 실행"
echo ssh $USER_NAME@$IP -p $PORT sh < deploy-script.sh
ssh $USER_NAME@$IP -p $PORT sh < deploy-script.sh