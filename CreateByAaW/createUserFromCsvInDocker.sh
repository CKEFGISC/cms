#!/bin/bash
while IFS="," read -r name nickname username password
do
  echo "$name"
  echo "$nickname"
  echo "$username"
  echo "$password"
  echo ""
  cmsAddUser $name $nickname "$username" -p "$password";
done < <(tail -n +2 cms_user.csv)
