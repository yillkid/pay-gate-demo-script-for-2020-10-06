HOST_URL="http://pay-gate-demo.biilabs.io/signin"
# HOST_URL="http://127.0.0.1:5000/signin"

curl $HOST_URL \
    -X POST \
    -H 'Content-Type: application/json' \
    -d '{"username": "john", "password": "1234"}'
