TOKEN=$(gcloud auth print-access-token)

curl -H "Authorization: Bearer $TOKEN" -H "content-type:application/json" "https://apigee.googleapis.com/v1/organizations/$1/instances/eval-instance/attachments" -X POST -d '{"environment": "prod"}'
