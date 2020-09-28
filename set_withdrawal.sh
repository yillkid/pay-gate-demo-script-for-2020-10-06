HOST_URL="http://pay-gate-demo.biilabs.io/set_withdrawal"
# HOST_URL="http://127.0.0.1:5000/set_withdrawal"

curl $HOST_URL \
    -X POST \
    -H 'Content-Type: application/json' \
    -d '{"id":"i13", "start": "2020-12-30 09:00", "end": "2020-12-30 10:00"}'
