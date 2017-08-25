TEXT="brad"
TOKEN="BAhJIiU1ZjdkNDgzNTk0NmU0ZTg0NzhhZDI4NDQzYzQ3OTFhYQY6BkVG--1c2527e8b643b425d1cabed1e59af4467a2a5c8c"


API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/customers"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
     "first name": "'"${FIRST_NAME}"'",
     "last_name": "'"${LAST_NAME}"'",
     "team": "'"${TEAM}"'",
     "position": "'"${POSITION}"'",
     "buckets": "'"${BUCKETS}"'",
     "rpg": "'"${RPG}"'",
     "apg": "'"${APG}"'",
     "sponsors": "'"${SPONSORS}"'",
     "shoes": "'"${SHOES}"'",
     "catchphrase": "'"${CATCHPHRASE}"'"
   }
 }'
echo
