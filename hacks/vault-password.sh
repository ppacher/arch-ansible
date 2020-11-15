#!/usr/bin/env bash

BW_SESSION=${BW_SESSION:-$(bw unlock --raw)}
VAULT_ID="9bbb4efc-b3d5-4342-a7bc-ac69007d34ab"
echo "$(bw get password ${VAULT_ID} --session ${BW_SESSION} --raw)"