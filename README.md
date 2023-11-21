A simple rofi script to automatically create backups.

# Usage

The script takes 1 argument that being the directory of your rofi config

`backup ~/.config/rofi/config.rasi`

It will then read 2 files from `~/.config/backups`, these being backupSources.txt and backupLocations.txt. BackupSources.txt is all of the files that you would like to be backed up and backupLocations.txt is some preset locations, this is technically optional but recommended.
