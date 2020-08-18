# AWS SES Bootstrap

## Deploy
run `./deploy.sh`

## Using
Notable resources created with this stack:
- IAM group with permission to send SES mail
- SES Configuration Set that pushes metrics to CloudWatch
- Custom Message Tag "ID" that can be set when sending mail. (Suggested use: set this to the name of the application sending mail)
