#!/bin/bash

curl -X 'POST' \
  'http://172.16.21.211:8080/api/v2/engagements/' \
  -H 'accept: application/json' \
  -H 'Content-Type: multipart/form-data' \
  -H 'Authorization: Token $TOKEN' \
  -F 'name=secrets-gitleaks' \
  -F 'description= Scan Gitleaks' \
  -F 'engagement_type=CI/CD' \
  -F 'product=1' \
  -F 'target_end=2024-12-02' \
  -F 'target_start=2024-12-02' \
  -F 'status=In Progress'