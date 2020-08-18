#!/bin/bash

SES_STACK_NAME='ses-bootstrap'

# Make sure account suppression list is enabled
aws sesv2 put-account-suppression-attributes \
  --suppressed-reasons BOUNCE COMPLAINT

aws cloudformation deploy \
  --template-file ses-bootstrap.yml
  --stack-name "${SES_STACK_NAME}"
