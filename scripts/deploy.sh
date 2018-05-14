#!/usr/bin/env bash

# Exit immediately if there is an error
set -e

# Print shell input lines as they are read.
set -v

: "${CF_PASSWORD?Need to set CF_PASSWORD}"

# login to cloud foundry
cf api https://api.system.y.cld.gov.au
cf auth ci-demo-cf-example-staticfile "$CF_PASSWORD"
cf target -o demo
cf target -s cf-example-staticfile

# push our code to cloud foundry

# with downtime
cf push

# using zero-downtime-push https://github.com/contraband/autopilot
#cf zero-downtime-push cf-example-staticfile -f manifest.yml
