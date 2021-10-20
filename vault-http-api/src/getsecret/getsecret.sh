#!/usr/bin/env bash
cd $(dirname $0)

curl --header "X-Vault-Token: s.y1G2r8MwfajD5GEIGE99JXNB" \
--request GET \
--insecure \
-v \
"https://vault.lab.alan.local/v1/windows/onprem/192.168.1.10/vault?version=1" \
> getsecret.json
