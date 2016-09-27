curl --include --request POST "http://localhost:3000/links" \
  --header "Authorization: Token token=BAhJIiU5Y2VlMzRhNzhmYzUyM2RkMDVmNWI0MmZmYmJkNDgzZQY6BkVG--6afef6eac82c3b911712c617c3d2ca268729299d" \
  --header "Content-Type: application/json" \
  --data '{
    "link": {
      "name": "Test Link",
      "url": "www.google.com",
      "description": "This is a test link",
      "collection_id": "1"
    }
  }'
