#!/bin/bash

docker run --rm \
  -v "$(pwd)/gcp-json.json:/workspace/gcp-json.json:ro" \
  -e GOOGLE_APPLICATION_CREDENTIALS=/workspace/gcp-json.json \
  -v $(pwd)/tf-plan.txt:/workspace/tf-plan.txt \
  $1
