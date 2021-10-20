#!/usr/bin/env bash
cd $(dirname $0)

#Client Token variable
TOKEN=$(grep 'client_token' /home/vault/vault-http-api/kv-secrets/windows-kv/create-token/createtokenresponse.json | cut -d':' -f2 | sed 's/,.*//' | sed 's/"//g')

#Request to DELETE/DELETE into Windows KV
curl --header "X-Vault-Token: $TOKEN" \
--request DELETE \
--data @newsecretpayload.json \
--insecure \
-v \
https://vault.lab.alan.local/v1/windows/onprem/192.168.1.143/vault-admin \
&& \
curl --header "X-Vault-Token: $TOKEN" \
--request DELETE \
--data @newsecretpayload.json \
--insecure \
-v \
https://vault.lab.alan.local/v1/windows/onprem/192.168.1.144/vault-admin \
&& \
curl --header "X-Vault-Token: $TOKEN" \
--request DELETE \
--data @newsecretpayload.json \
--insecure \
-v \
https://vault.lab.alan.local/v1/windows/onprem/192.168.1.145/vault-admin \
&& \
curl --header "X-Vault-Token: $TOKEN" \
--request DELETE \
--data @newsecretpayload.json \
--insecure \
-v \
https://vault.lab.alan.local/v1/windows/onprem/192.168.1.146/vault-admin
