#!/usr/bin/env bash
cd $(dirname $0)

curl --header "X-Vault-Token: s.bDEAi35dwKADKeyM4qjtQS4Y" \
--request PUT \
--data @newsecretpayload.json \
--insecure \
-v \
https://vault.lab.alan.local/v1/unix/onprem/192.168.1.143/root \
&& \
curl --header "X-Vault-Token: s.bDEAi35dwKADKeyM4qjtQS4Y" \
--request PUT \
--data @newsecretpayload.json \
--insecure \
-v \
https://vault.lab.alan.local/v1/unix/onprem/192.168.1.144/root \
&& \
curl --header "X-Vault-Token: s.bDEAi35dwKADKeyM4qjtQS4Y" \
--request PUT \
--data @newsecretpayload.json \
--insecure \
-v \
https://vault.lab.alan.local/v1/unix/onprem/192.168.1.145/root \
&& \
curl --header "X-Vault-Token: s.bDEAi35dwKADKeyM4qjtQS4Y" \
--request PUT \
--data @newsecretpayload.json \
--insecure \
-v \
https://vault.lab.alan.local/v1/unix/onprem/192.168.1.146/root
