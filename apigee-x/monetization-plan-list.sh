# list rateplans for a product
PROJECT_ID=apigee-test38
PRODUCT=bike_data_v3_5ie5

curl "https://apigee.googleapis.com/v1/organizations/$PROJECT_ID/apiproducts/$PRODUCT/rateplans" \
-H "Authorization: Bearer $(gcloud auth print-access-token)"