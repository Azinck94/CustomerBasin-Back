NAME="Andrew Zinck"
EMAIL="Bzinck79@gmail.com"
PHONE="9788072960"
TOKEN="BAhJIiU0MDA5YTY4OWVjYjJjNDU0MmQxZjA5MzU5NTI0OTg3OQY6BkVG--a129df62bcdc89e3ae8fd13c9002ba4699f9070a"


API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/customers"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "customer": {
     "name": "'"${NAME}"'",
     "email": "'"${EMAIL}"'",
     "phone": "'"${PHONE}"'"
   }
 }'
echo
