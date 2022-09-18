#! /bin/bash
#! /bin/sh

ssh -i ~/.ssh/id_rsa ec2-user@54.147.46.229 "sh /home/ec2-user/Monitoring/Healthcheck_Monitoring.sh"

