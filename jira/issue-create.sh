# set variables
EMAIL=
USER=
TOKEN=

# get user info
curl -X GET \
  --url "https://geeinnovate.atlassian.net/rest/api/3//user/search?query=$EMAIL" \
  --user "$USER"

# get issue metadata
curl --request GET \
  --url 'https://geeinnovate.atlassian.net/rest/api/3/issue/createmeta' \
  --user "$USER" \
  --header 'Accept: application/json'

# create issue
# set USER to email:apitoken
curl -v --request POST \
  --url 'https://geeinnovate.atlassian.net/rest/api/3/issue' \
  --user "$USER" \
  --header 'Accept: application/json' \
  --header 'Content-Type: application/json' \
  --data '{
  "fields": {
    "assignee": {
      "id": "557058:bcdda756-124b-44ab-9f2c-1286b10e1d24"
    },
    "description": {
      "content": [
        {
          "content": [
            {
              "text": "Order entry fails when selecting supplier.",
              "type": "text"
            }
          ],
          "type": "paragraph"
        }
      ],
      "type": "doc",
      "version": 1
    },
    "duedate": "2019-05-11",
    "issuetype": {
      "id": "10007"
    },
    "reporter": {
      "id": "557058:bcdda756-124b-44ab-9f2c-1286b10e1d24"
    },
    "summary": "Main order flow broken",
    "timetracking": {
      "originalEstimate": "10",
      "remainingEstimate": "5"
    },
    "project": {
      "id": "10000"
    }
  },
  "update": {}
}'

# create issue with basic auth
# set USER to email:apitoken
curl --request POST \
  --url 'https://geeinnovate.atlassian.net/rest/api/3/issue' \
  --header "Authorization: Basic $TOKEN" \
  --header 'Accept: application/json' \
  --header 'Content-Type: application/json' \
  --data '{
  "fields": {
    "assignee": {
      "id": "557058:bcdda756-124b-44ab-9f2c-1286b10e1d24"
    },
    "description": {
      "content": [
        {
          "content": [
            {
              "text": "Order entry fails when selecting supplier.",
              "type": "text"
            }
          ],
          "type": "paragraph"
        }
      ],
      "type": "doc",
      "version": 1
    },
    "duedate": "2019-05-11",
    "issuetype": {
      "id": "10007"
    },
    "reporter": {
      "id": "557058:bcdda756-124b-44ab-9f2c-1286b10e1d24"
    },
    "summary": "Main order flow broken",
    "timetracking": {
      "originalEstimate": "10",
      "remainingEstimate": "5"
    },
    "project": {
      "id": "10000"
    }
  },
  "update": {}
}'