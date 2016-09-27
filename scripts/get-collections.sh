# GET all collections
curl --include --request GET http://localhost:3000/collections


# GET current_user collections
curl --include --request GET "http://localhost:3000/collections?current_user=true" \
--header "Authorization: Token token=BAhJIiVjYzRlZmM2YTE3YzA3NmY2NDNmZGE4M2QxM2YzZDIwNgY6BkVG--f3ae667a3488de72a843ac48d3aac9dbbb154be3" \


# GET specific user collections
curl --include --request GET http://localhost:3000/collections?user_id=3
