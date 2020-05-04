#!/usr/bin/env bash

#set -e -o pipefail
set -e
cd $(dirname $0)

rm -rf .terraform/dev
terraform init -input=false
terraform workspace select rds-dev || terraform workspace new rds-dev
terraform plan -input=false
