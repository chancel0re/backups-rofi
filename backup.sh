#!/usr/bin/env bash

theme=$1

location=$(cat ~/.config/backups/backupLocations.txt | rofi -dmenu -matching fuzzy -theme $theme -p "Backup Location")

dir="$location/$(date +%m.%d.%Y)"

mkdir $dir

while read -r line
do
  echo "Copying $line"
  cp -r $line $dir
done < ~/.config/backups/backupSources.txt

echo "Compressing $dir"
tar czvf "$dir-archive.tar" $dir
rm -rf $dir
