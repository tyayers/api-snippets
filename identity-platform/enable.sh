gcloud services enable identitytoolkit.googleapis.com

# enable on a project
curl -X POST "https://identitytoolkit.googleapis.com/v2/projects/$PROJECT_ID/identityPlatform:initializeAuth" \
	-H "Authorization: Bearer $(gcloud auth print-access-token)" \
	-H "x-goog-user-project: $PROJECT_ID"

# get config
curl "https://identitytoolkit.googleapis.com/v2/projects/$PROJECT_ID/config" \
	-H "Authorization: Bearer $(gcloud auth print-access-token)" \
	-H "x-goog-user-project: $PROJECT_ID"

# update config and enable email
curl -X PATCH "https://identitytoolkit.googleapis.com/v2/projects/$PROJECT_ID/config?updateMask=signIn.email" \
	-H "Authorization: Bearer $(gcloud auth print-access-token)" \
  -H "Content-Type: application/json" \
	-H "x-goog-user-project: $PROJECT_ID" \
  --data-binary @- << EOF
	
{
  "name": "projects/937046317798/config",
  "signIn": {
    "email": {
      "enabled": true,
      "passwordRequired": true
    },
    "hashConfig": {
      "algorithm": "SCRYPT",
      "signerKey": "UR7cDda9h0UoH82KHu0Frglb11vEFmMgzGI4uIgLvDMANTrMAQrQ/z34SkAcz6k0K6heLjizyQlHlU7iSidBvw==",
      "saltSeparator": "Bw==",
      "rounds": 8,
      "memoryCost": 14
    }
  }
}
EOF
