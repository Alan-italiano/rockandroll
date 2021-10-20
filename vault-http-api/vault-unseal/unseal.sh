#!/usr/bin/env bash
cd $(dirname $0)

#Export environment variable
export VAULT_ADDR="http://192.168.1.121:8200"

#Unseal with First Key
vault operator unseal 99116088296263a810fe15fe322b4918fe4146c8ff18d040ae669c918b1f4bfa75

#Unseal with Second Key
vault operator unseal b5bfc97c7ad5cee3a8ce4bd11214fd8319a24443e7290d4eaf10b54944f1bc438c
