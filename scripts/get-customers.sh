TOKEN="BAhJIiU0MDA5YTY4OWVjYjJjNDU0MmQxZjA5MzU5NTI0OTg3OQY6BkVG--a129df62bcdc89e3ae8fd13c9002ba4699f9070a"
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/customers"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
