HOST_URL="http://pay-gate-demo.biilabs.io/get_balance"
# HOST_URL="http://127.0.0.1:5000/get_balance"

curl $HOST_URL \
    -X POST \
    -H 'Content-Type: application/json' \
    -d '{"username":"john", "blapay_account":"station"}'
