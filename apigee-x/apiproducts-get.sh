access_token=$(gcloud auth print-access-token)

curl -i -X GET -H "Authorization: Bearer $access_token" "https://apigee.googleapis.com/v1/organizations/$1/apiproducts?expand=true"