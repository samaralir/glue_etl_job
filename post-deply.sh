#!/bin/bash

# Variables
S3_BUCKET="aws-dataengineer"
SCRIPT_PATH="project2/script"

# Create folders in the S3 bucket
aws s3api put-object --bucket $S3_BUCKET --key $SCRIPT_PATH/


# Upload files to the S3 bucket
aws s3 cp redditdata.py s3://$S3_BUCKET/$SCRIPT_PATH/redditdata.py


# Verification
echo "Files uploaded to S3:"
aws s3 ls s3://$S3_BUCKET/$SCRIPT_PATH/
