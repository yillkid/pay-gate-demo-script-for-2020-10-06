#!/bin/bash
HOST_URL="http://pay-gate-demo.biilabs.io/create_blapay_account"
# HOST_URL="http://127.0.0.1:5000/create_blapay_account"

curl $HOST_URL \
    -X POST \
    -H 'Content-Type: application/json' \
    -d '{"username":"vm", "blapay_account":"main"}'
