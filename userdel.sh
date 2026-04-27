#!/bin/bash

IPS=(
  "192.168.1.10"
)

USER_TO_DELETE="sofa"

for ip in "${IPS[@]}"; do
  echo "Processing $ip..."
  ssh root@"$ip" "userdel -r $USER_TO_DELETE"
done

