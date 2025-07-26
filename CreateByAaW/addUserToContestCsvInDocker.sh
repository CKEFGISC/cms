#!/bin/bash
while IFS="," read -r username team password
do
  echo "$username"
  echo $team
  if [[ "$team" == "DNC" ]]
  then
  	cmsAddParticipation -c 6 "$username" -t "$team" --hidden -p "$password";
  else
 
  	cmsAddParticipation -c 6 "$username" -t "$team" -p "$password";
  fi
done < <(tail -n +2 cms_user_team.csv)

