TOKEN=$(gcloud auth print-access-token)
headers="Authorization: Bearer $access_token"

# gcloud config set project $1

curl -H "Authorization: Bearer $TOKEN" -H "content-type:application/json" "https://apigee.googleapis.com/v1/organizations/$1:setAddons" -XPOST -d "{\"addonsConfig\": {\"monetizationConfig\": {\"enabled\": false}}}"
