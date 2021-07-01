access_token=$(gcloud auth print-access-token)
headers="Authorization: Bearer $access_token"

# gcloud config set project $1

curl -i -X GET -H "Authorization: Bearer $access_token" "https://apigee.googleapis.com/v1/organizations/$1"