#!/usr/bin/env bash
cd $(dirname $0)

#Date/Time variable
DATE=$(date +%d-%m-%Y.%H:%M:%S)

#Request to generate MSSQL Dynamic Secrets
curl --header "X-Vault-Token: s.bDEAi35dwKADKeyM4qjtQS4Y" \
--insecure \
-v \
"https://vault.lab.alan.local/v1/database/creds/vault" \
| python -mjson.tool \
> /home/vault/vault-http-api/database-secrets/mssql/response-json/database-mssql-getsecret-$DATE.json
