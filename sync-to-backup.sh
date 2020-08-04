#!/bin/bash

# Crontab 0 * * * * $HOME/.dotfiles/sync-to-backup.sh
RSYNC_OPTIONS="-a --delete --exclude=node_modules/ --exclude=.git/ --exclude=.DS_Store --exclude=.localized"

# Sync all folders
rsync $RSYNC_OPTIONS $HOME/Desktop/ $HOME/WorkDocs/Backup/rsync/Desktop
rsync $RSYNC_OPTIONS $HOME/Documents/ $HOME/WorkDocs/Backup/rsync/Documents
rsync $RSYNC_OPTIONS $HOME/Downloads/ $HOME/WorkDocs/Backup/rsync/Downloads
rsync $RSYNC_OPTIONS $HOME/workspace/ $HOME/WorkDocs/Backup/rsync/workspace
rsync $RSYNC_OPTIONS $HOME/Library/Application\ Support/Firefox/Profiles/838y6sha.default-esr/bookmarkbackups/ $HOME/WorkDocs/Backup/rsync/Application/Firefox
rsync $RSYNC_OPTIONS $HOME/.gitconfig $HOME/WorkDocs/Backup/rsync/_gitconfig
rsync $RSYNC_OPTIONS $HOME/.dotfiles/ $HOME/WorkDocs/Backup/rsync/_dotfiles

# Rename dotfiles to _files
find $HOME/WorkDocs/Backup/rsync -iname ".*" -exec realpath {} \; | rename 's/\.(.*)/_$1/' >> $HOME/WorkDocs/Backup/rsync/replace.log 2>> $HOME/WorkDocs/Backup/rsync/replace.log.txt
