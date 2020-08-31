#!/bin/bash

# Assuming you deployed with a 'serverless deploy | tee deploy.out' this script
# will auto fill in the TODOS_ENDPOINT environment variable
echo "ENDPOINT.sh - Getting endpoint from logs"
node helpers/getEndpoint.js > .build/endpoint.out
export TODOS_ENDPOINT=`cat .build/endpoint.out`
echo "exprted: TODOS_ENDPOINT=${TODOS_ENDPOINT}"

echo $TODOS_ENDPOINT
