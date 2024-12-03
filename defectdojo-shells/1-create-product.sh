#!/bin/bash

curl -X 'POST' \
  'http://localhost:8080/api/v2/products/' \
  -H 'accept: application/json' \
  -H 'Content-Type: multipart/form-data' \
  -H 'Authorization: Token $TOKEN' \
  -F 'name=vampi-analyzer' \
  -F 'description=VAmPI Scanners' \
  -F 'prod_type=1' \
  -F 'tags=vampi-analyzer'