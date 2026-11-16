#!/bin/bash

BACKUP_DIR="$HOME/backups"
DATE=$(date +%Y-%m-%d)
ARCHIVE="$BACKUP_DIR/backup-$DATE.tar.gz"

# Create backup directory if it does not exist
mkdir -p "$BACKUP_DIR"

# Archive user configuration files
tar -czf "$ARCHIVE" -C "$HOME" .bashrc .profile

# Output status and archive size
echo "[+] Backup created successfully:"
du -h "$ARCHIVE"

# Remove backups older than 7 days
find "$BACKUP_DIR" -type f -name "*.tar.gz" -mtime +7 -delete
