# delete rateplan
PROJECT_ID=apigee-test38
PRODUCT=bike_data_v3_5ie5
PLAN=54009b30-bc2a-4ee2-9f00-95ab5b7f0b4c
curl -X DELETE "https://apigee.googleapis.com/v1/organizations/$PROJECT_ID/apiproducts/$PRODUCT/rateplans/$PLAN" \
-H "Authorization: Bearer $(gcloud auth print-access-token)"