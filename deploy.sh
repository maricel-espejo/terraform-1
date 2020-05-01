#!/usr/bin/env bash

#set -e -o pipefail
set -e
cd $(dirname $0)

terraform init -input=false
terraform plan -input=false
