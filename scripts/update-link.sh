curl --include --request PATCH "http://localhost:3000/collections/4" \
  --header "Authorization: Token token=BAhJIiU5NTIwYTVkNGUzZDc0MjNjNGI4ODU2ZGRjOGFlZjVkNAY6BkVG--92e3b7df85a7f55d9d7944750acf58ccf35fc930" \
  --header "Content-Type: application/json" \
  --data '{
    "collection": {
      "name": "Rename Collection"
    }
  }'
