#!/bin/bash
bucket="jjp-2022-02-21-s3site"
#echo $bucket
aws s3 cp /Users/juan.palacio/Documents/modern-python-apps-aws/resources/website/config.js s3://$bucket/config.js
