#!/bin/bash

# path to backup dir
BACKUP_DIR="/srv/dev-disk-by-uuid-c47d2d86-3b6a-4dc2-883a-dbb0336b09e2/delivery/Delivery"

# go to desired directory
cd "$BACKUP_DIR" || exit 1

# finding all files, sorting them by creation time, skiping first 3 and deleting others
ls -tp | grep -v '/$' | tail -n +4 | xargs -I {} rm -- {}

