#!/bin/bash

gcloud compute firewall-rules create default-allow-uptimecheck \
    --allow=tcp \
    --description="Allow stackdriver uptime check" \
    --network=default \
    --source-ranges="$(cat source-ips)"
