#!/bin/bash

curl -q -X "POST" \
  "http://localhost:8080/api/v2/engagements/" \
  -H "accept: application/json" \
  -H "Content-Type: multipart/form-data" \
  -H "Authorization: Token $DEFECTDOJO_TOKEN" \
  -F "id=2" \
  -F "name=sca-trivy" \
  -F "description=Trivy Scan" \
  -F "engagement_type=CI/CD" \
  -F "product=1" \
  -F "target_end=2024-12-02" \
  -F "target_start=2024-12-02" \
  -F "status=In Progress"