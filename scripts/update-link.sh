curl --include --request PATCH "http://localhost:3000/links/11" \
  --header "Authorization: Token token=BAhJIiUyOGRjNDQ4ODJjZmNhNDNmZTU1MjYxMDk3NDkxNDlmOQY6BkVG--4453b09cc867075ff044d3dbf8d71e8bdae265e5" \
  --header "Content-Type: application/json" \
  --data '{
    "link": {
      "name": "Rename Link"
    }
  }'
