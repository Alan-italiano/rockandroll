#!/usr/bin/env bash
cd $(dirname $0)

#Client TOKEN variable
TOKEN=$(grep 'client_token' /home/vault/vault-http-api/kv-secrets/unix-kv/create-token/createtokenresponse.json | cut -d':' -f2 | sed 's/,.*//' | sed 's/"//g')

#Date/Time variable
DATE=$(date +%d-%m-%Y.%H:%M:%S)

#Request to GET secrets from Windows KV
curl --header "X-Vault-Token: $TOKEN" \
--request GET \
--insecure \
-v \
"https://vault.lab.alan.local/v1/unix/onprem/192.168.1.121/root?version=1" \
| python -mjson.tool \
> /home/vault/vault-http-api/kv-secrets/unix-kv/response-json/unix-getsecret-$DATE.json