# conf-backup

Lightweight Bash script to archive user configuration files into dated `.tar.gz` backups with automatic cleanup of old files.

## Features
* Creates compressed `.tar.gz` archives named with the current date (`YYYY-MM-DD`).
* Backs up `.bashrc` and `.profile` directly from `$HOME`.
* Automatically deletes backups older than 7 days.

## Usage
```bash
chmod +x backup.sh
./backup.sh
