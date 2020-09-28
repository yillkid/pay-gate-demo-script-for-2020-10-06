HOST_URL="http://pay-gate-demo.biilabs.io/deposit"
# HOST_URL="http://127.0.0.1:5000/deposit"

curl $HOST_URL \
    -X POST \
    -H 'Content-Type: application/json' \
    -d '{"username":"john", "blapay_account":"station", "value":"1000"}'
