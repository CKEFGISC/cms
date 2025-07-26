#!/bin/bash
while IFS="," read -r name team
do
  echo "$name"
  echo "$team"
  echo ""
  cmsAddTeam $name $team;
done < <(tail -n +2 cms_user_team.csv)
