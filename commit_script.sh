#!/bin/bash

# Set the start date to one year ago
START_DATE=$(date -d "365 days ago" +"%Y-%m-%dT12:00:00")

for i in {1..20}
do
  echo "More content $i" >> file.txt
  git add file.txt
  DATE=$(date -d "$START_DATE +$((i * 18)) days" +"%Y-%m-%dT%H:%M:%S")
  GIT_AUTHOR_DATE="$DATE" GIT_COMMITTER_DATE="$DATE" git commit -m "Commit $i"
done



