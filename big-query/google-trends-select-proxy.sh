TOKEN=$(gcloud auth print-access-token)

curl -0 -v -X GET https://api-dev.apigee-x.theapishop.com/data-products/trends \
-H "Authorization: Bearer $TOKEN" \
-H "content-type:application/json" \
-d \
'
{
    "query": "SELECT * 
      FROM `bigquery-public-data.google_trends.top_rising_terms` 
      ORDER BY week DESC 
      LIMIT 1000", 
    "useLegacySql": false,
    "maxResults": 100
}'
