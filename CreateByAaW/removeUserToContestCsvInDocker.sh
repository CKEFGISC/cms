#!/bin/bash
while IFS="," read -r username team password
do
	cmsRemoveParticipation -c 6 "$username";

done < <(tail -n +2 cms_user_team.csv)

