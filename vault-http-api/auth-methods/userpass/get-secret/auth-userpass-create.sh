#!/usr/bin/env bash
cd $(dirname $0)

#Request to create new auth userpass 
curl --header "X-Vault-Token: s.bDEAi35dwKADKeyM4qjtQS4Y" \
--request POST \
--insecure \
--data @auth-userpass-payload.json \
-v \
"https://vault.lab.alan.local/v1/auth/userpass/users/api-test" 