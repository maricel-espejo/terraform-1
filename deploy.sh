#!/usr/bin/env bash

#set -e -o pipefail
set -e
cd $(dirname $0)

rm -rf .terraform/environment
terraform init -input=false
terraform workspace select rds-dev || terraform workspace new rds-dev
terraform apply -input=false
