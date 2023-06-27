#!/bin/bash

# Crontab 0 17,18 * * * $HOME/.dotfiles/sync-to-backup.sh >> $HOME/Amazon\ WorkDocs\ Drive/My\ Documents/Backup/rsync-MacBookPro2019-16inch/replace.log.txt 2>> $HOME/Amazon\ WorkDocs\ Drive/My\ Documents/Backup/rsync-MacBookPro2019-16inch/replace.log.error.txt
RSYNC_OPTIONS='--archive --stats --no-links --exclude={".git",".DS_Store",".localized","node_modules","target","cdk.out"}'

dt=$(date '+%d/%m/%Y %H:%M:%S');
echo "=========================================="
echo "=========================================="
echo "Starting sync at $dt"
echo "Using rsync options: $RSYNC_OPTIONS"
echo "=========================================="

# Sync all folders
echo "--> Sync Desktop files"
rsync --archive --stats --no-links --exclude={".git",".DS_Store",".localized","node_modules","target","cdk.out"} $HOME/Desktop/ $HOME/Amazon\ WorkDocs\ Drive/My\ Documents/Backup/rsync-MacBookPro2019-16inch/Desktop
echo "--> Sync Document files"
rsync --archive --stats --no-links --exclude={".git",".DS_Store",".localized","node_modules","target","cdk.out"} $HOME/Documents/ $HOME/Amazon\ WorkDocs\ Drive/My\ Documents/Backup/rsync-MacBookPro2019-16inch/Documents
echo "--> Sync Download files"
rsync --archive --stats --no-links --exclude={".git",".DS_Store",".localized","node_modules","target","cdk.out"} $HOME/Downloads/ $HOME/Amazon\ WorkDocs\ Drive/My\ Documents/Backup/rsync-MacBookPro2019-16inch/Downloads
echo "--> Sync workspace files"
rsync --archive --stats --no-links --exclude={".git",".DS_Store",".localized","node_modules","target","build","cdk.out","python*","venv",".aws-sam","bin","vendor"} $HOME/workspace/ $HOME/Amazon\ WorkDocs\ Drive/My\ Documents/Backup/rsync-MacBookPro2019-16inch/workspace
echo "--> Sync Firefox files"
rsync --archive --stats --no-links --exclude={".git",".DS_Store",".localized","node_modules","target","cdk.out"} $HOME/Library/Application\ Support/Firefox/Profiles/dqqk24qv.default-release/bookmarkbackups/ $HOME/Amazon\ WorkDocs\ Drive/My\ Documents/Backup/rsync-MacBookPro2019-16inch/Application/Firefox
echo "--> Sync gitconfig"
rsync --archive --stats --no-links --exclude={".git",".DS_Store",".localized","node_modules","target","cdk.out"} $HOME/.gitconfig $HOME/Amazon\ WorkDocs\ Drive/My\ Documents/Backup/rsync-MacBookPro2019-16inch
echo "--> Sync dotfiles"
rsync --archive --stats --no-links --exclude={".git",".DS_Store",".localized","node_modules","target","cdk.out"} $HOME/.dotfiles/ $HOME/Amazon\ WorkDocs\ Drive/My\ Documents/Backup/rsync-MacBookPro2019-16inch/.dotfiles

# Rename dotfiles to _files
#echo "--> Rename dotfiles"
#find $HOME/Amazon\ WorkDocs\ Drive/My\ Documents/Backup/rsync-MacBookPro2019-16inch -iname ".*" -exec realpath {} \; | rename -f 's/\.(.*)/_$1/'


echo "=========================================="
dt=$(date '+%d/%m/%Y %H:%M:%S');
echo "Finished sync at $dt"
echo "=========================================="
echo "=========================================="
