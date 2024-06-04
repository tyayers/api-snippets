# Login to glcoud default-application-credentials with scope for sheets like this
# gcloud auth application-default login --scopes=https://www.googleapis.com/auth/spreadsheets,https://www.googleapis.com/auth/cloud-platform
PROJECT_ID=apigee-assets
SHEET_ID=1BDyTZUzoqKCqaTNTXWli7Vzd7UzfOtvBVxnP3HO5KFA
RANGE=A2:E

curl "https://sheets.googleapis.com/v4/spreadsheets/$SHEET_ID/values/$RANGE" \
  -H "Authorization: Bearer $(gcloud auth application-default print-access-token)" \
  -H "x-goog-user-project: $PROJECT_ID"