#!/usr/bin/env bash
cd $(dirname $0)

#Client Token variable
TOKEN=$(grep 'client_token' /home/vault/vault-http-api/kv-secrets/unix-kv/create-token/createtokenresponse.json | cut -d':' -f2 | sed 's/,.*//' | sed 's/"//g')

#Date/Time variable
DATE=$(date +%d-%m-%Y.%H:%M:%S)

#Request to renew-self token
curl --header "X-Vault-Token: $TOKEN" \
--request POST \
--insecure \
-v \
https://vault.lab.alan.local/v1/auth/token/renew-self \
| python -mjson.tool \
> /home/vault/vault-http-api/kv-secrets/unix-kv/response-json/unix-renewtoken-response-$DATE.json




















