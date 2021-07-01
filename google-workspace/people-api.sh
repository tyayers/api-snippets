access_token=$(gcloud auth print-access-token)
echo $access_token

headers="Authorization: Bearer $access_token"
echo $headers

curl "https://people.googleapis.com/v1/people/me?personFields=organizations%2Cskills%2CageRanges%2CcoverPhotos"