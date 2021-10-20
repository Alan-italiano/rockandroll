#!/usr/bin/env bash
cd $(dirname $0)

#Client Token variable
TOKEN=$(grep 'client_token' /home/vault/vault-http-api/kv-secrets/unix-kv/create-token/createtokenresponse.json | cut -d':' -f2 | sed 's/,.*//' | sed 's/"//g')

#Request to POST/DELETE into UNIX KV
curl --header "X-Vault-Token: $TOKEN" \
--request DELETE \
--data @newsecretpayload.json \
--insecure \
-v \
https://vault.lab.alan.local/v1/unix/onprem/192.168.1.143/root \
&& \
curl --header "X-Vault-Token: $TOKEN" \
--request DELETE \
--data @newsecretpayload.json \
--insecure \
-v \
https://vault.lab.alan.local/v1/unix/onprem/192.168.1.144/root \
&& \
curl --header "X-Vault-Token: $TOKEN" \
--request DELETE \
--data @newsecretpayload.json \
--insecure \
-v \
https://vault.lab.alan.local/v1/unix/onprem/192.168.1.145/root \
&& \
curl --header "X-Vault-Token: $TOKEN" \
--request DELETE \
--data @newsecretpayload.json \
--insecure \
-v \
https://vault.lab.alan.local/v1/unix/onprem/192.168.1.146/root
