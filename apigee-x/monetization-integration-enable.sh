TOKEN=$(gcloud auth print-access-token)

curl -H "Authorization: Bearer $TOKEN" -H "content-type:application/json" "https://apigee.googleapis.com/v1/organizations/$1:setAddons" -XPOST -d '{"addonsConfig": {"integrationConfig": {"enabled": true}, "monetizationConfig": {"enabled": true}}}'
