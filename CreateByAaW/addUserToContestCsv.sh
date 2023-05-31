#!/bin/bash
while IFS="," read -r name nickname username password
do
  echo "$name"
  echo "$nickname"
  echo "$username"
  echo "$password"
  docker exec cms cmsAddParticipation -c 3 "$username";
  echo ""
done < <(tail -n +2 cms_user.csv)
