curl --include --request POST "http://localhost:3000/links" \
  --header "Authorization: Token token=BAhJIiU5NTIwYTVkNGUzZDc0MjNjNGI4ODU2ZGRjOGFlZjVkNAY6BkVG--92e3b7df85a7f55d9d7944750acf58ccf35fc930" \
  --header "Content-Type: application/json" \
  --data '{
    "link": {
      "name": "Another Test Collection",
      "description": "This is another test collection"
    }
  }'
