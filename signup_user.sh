HOST_URL="http://pay-gate-demo.biilabs.io/signup"
# HOST_URL="http://127.0.0.1:5000/signup"

curl $HOST_URL \
    -X POST \
    -H 'Content-Type: application/json' \
    -d '{"username": "john", "password": "1234", "credit_card":{"card_no":"5241084512419088", "expiry_date":"Tue Jun 01 00:00:00 GMT+08:00 2027","type":"Mastercard"}}'
