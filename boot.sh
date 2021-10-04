#!/usr/bin/env bash

export HOSTNAME=$(hostname)
export DRONE_VERSION=1.10.1
export DRONE_RUNNER_VERSION=1.6.3
export GITEA_VERSION=1.15
export IP_ADDRESS=192.168.178.29
export MINIO_ACCESS_KEY="EXAMPLEKEY"
export MINIO_SECRET_KEY="EXAMPLESECRET"
export GITEA_ADMIN_USER="s-weigand"
export DRONE_RPC_SECRET="$(echo ${HOSTNAME} | openssl dgst -md5 -hex)"
export DRONE_USER_CREATE="username:${GITEA_ADMIN_USER},machine:false,admin:true,token:${DRONE_RPC_SECRET}"
export DRONE_GITEA_CLIENT_ID="0c7af441-2512-4445-8687-b625f3560bf5"
export DRONE_GITEA_CLIENT_SECRET="nQSAwMCLhTTjxEpq1cenDE4s76WXHn5ccJu0Gp0l8iOK"
docker-compose up -d

echo ""
echo "Gitea: http://${IP_ADDRESS}:3000/"
echo "Drone: http://${IP_ADDRESS}:3001/"
