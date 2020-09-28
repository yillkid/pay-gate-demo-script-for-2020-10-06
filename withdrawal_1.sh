HOST_URL="http://pay-gate-demo.biilabs.io//withdrawal"
# HOST_URL="http://127.0.0.1:5000/withdrawal"

curl $HOST_URL \
    -X POST \
    -H 'Content-Type: application/json' \
    -d '{"sender":"john", "sender_blapay_account":"station", "receiver":"i13", "receiver_blapay_account":"main", "value":"100"}'
