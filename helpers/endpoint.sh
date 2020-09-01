#!/bin/bash
# This file executes in the CodePipeline.CodeBuild.Post_Build phase

# Assuming you deployed with a 'serverless deploy | tee deploy.out' this script
# will auto fill in the TODOS_ENDPOINT environment variable
echo "ENDPOINT.sh - Getting endpoint from logs"
node helpers/getEndpoint.js > .build/endpoint.out
export TODOS_ENDPOINT=`cat .build/endpoint.out`
echo "exported: TODOS_ENDPOINT=${TODOS_ENDPOINT}"

