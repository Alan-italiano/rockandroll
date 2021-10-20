#!/usr/bin/env bash
cd $(dirname $0)

#Date/Time variable
DATE=$(date +%d-%m-%Y.%H:%M:%S)

#Request to CREATE a new Client TOKEN
curl --header "X-Vault-Token: s.bDEAi35dwKADKeyM4qjtQS4Y" \
--request POST \
--data @createtokenpayload.json \
--insecure \
-v \
https://vault.lab.alan.local/v1/auth/token/create-orphan \
| python -mjson.tool \
> createtokenresponse.json

#Copy output to keep history
sudo cp createtokenresponse.json /home/vault/vault-http-api/kv-secrets/unix-kv/response-json/unix-createtoken-response-$DATE.json



















