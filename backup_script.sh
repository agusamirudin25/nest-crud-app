#!/bin/bash

# Set the source directory (the directory you want to back up)
SOURCE_DIR="/Users/macbookm1/Sites/crud-app/test"

# Set the destination directory (where you want to store the backup)
DEST_DIR="/Users/macbookm1/Sites/crud-app/backup"

# Set the backup filename (you can customize this)
BACKUP_FILENAME="epengembangan_$(date +%Y%m%d_%H%M%S).tar.gz"

# Navigate to the source directory
cd "$SOURCE_DIR" || exit

# Create a compressed backup using tar
tar -czvf "$DEST_DIR/$BACKUP_FILENAME" .

# Print a message indicating the backup is complete
echo "Backup completed: $DEST_DIR/$BACKUP_FILENAME"
