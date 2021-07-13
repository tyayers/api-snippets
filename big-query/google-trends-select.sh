TOKEN=$(gcloud auth print-access-token)

# gcloud config set project $1

curl -0 -v -X POST https://bigquery.googleapis.com/bigquery/v2/projects/$1/queries \
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
