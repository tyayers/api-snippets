TOKEN=$(gcloud auth print-access-token)

curl -H "Authorization: Bearer $TOKEN" -H "content-type:application/json" "https://apigee.googleapis.com/v1/organizations/$1/instances/europe-west1/attachments/39309b04-e21e-4200-bada-b41d0e467b3f" -X DELETE
