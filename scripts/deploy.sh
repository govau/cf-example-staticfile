#!/usr/bin/env bash

# Exit immediately if there is an error
set -e

# Print shell input lines as they are read.
set -v

: "${CF_API?Need to set CF_API}"
: "${CF_USERNAME?Need to set CF_USERNAME}"
: "${CF_PASSWORD?Need to set CF_PASSWORD}"
: "${CF_ORG?Need to set CF_ORG}"
: "${CF_SPACE?Need to set CF_SPACE}"

# login to cloud foundry
cf api $CF_API
cf auth "$CF_USERNAME" "$CF_PASSWORD"
cf target -o $CF_ORG
cf target -s $CF_SPACE

#push our code to cloud foundry
cf zero-downtime-push $CF_APP
