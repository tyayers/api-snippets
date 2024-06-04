# get rateplan
PROJECT_ID=apigee-test38
PRODUCT=bike_data_v2_4d8e
PLAN=7464841a-9db3-4729-a618-9a651ade31cb

curl "https://apigee.googleapis.com/v1/organizations/$PROJECT_ID/apiproducts/$PRODUCT/rateplans/$PLAN" \
-H "Authorization: Bearer $(gcloud auth print-access-token)"