#! /bin/bash
#! /bin/sh

## This is my script

echo "This script is written by Indra updated latest"
ssh -o StrictHostKeyChecking=no -i ~/.ssh/id_rsa ec2-user@54.147.46.229 "sh /home/ec2-user/Monitoring/Healthcheck_Monitoring.sh"
scp -i ~/.ssh/id_rsa ec2-user@54.147.46.229:/home/ec2-user/Monitoring/Healthcheck_Report*.html .
ssh -o StrictHostKeyChecking=no -i ~/.ssh/id_rsa ec2-user@54.147.46.229 "rm -rf /home/ec2-user/Monitoring/Healthcheck_Report*.html"

