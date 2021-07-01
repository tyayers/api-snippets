access_token=$(gcloud auth print-access-token)
echo $access_token

headers="Authorization: Bearer $access_token"
echo $headers

curl -i -X DELETE -H "Authorization: Bearer $access_token" "https://apigee.googleapis.com/v1/organizations/bruno-1407a"