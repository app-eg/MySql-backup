#!/bin/bash


DB_NAME="wp_cart"
DB_USER="root"
DB_HOST="localhost"
DB_PORT="3306"
DB_PASS="password"
BACKUP_DIR="/var/www/html/backup"

FileName=$(date +"%Y%m%d%H%M%S")

BACKUP_FILE="$BACKUP_DIR/${DB_NAME}_backup_$FileName.sql"


mkdir -p "$BACKUP_DIR"

mysqldump --user=$DB_USER --password=$DB_PASS --host=$DB_HOST --port=$DB_PORT $DB_NAME > $BACKUP_FILE

 
if [ $? -eq 0 ]; then
  echo "Backup successful: $BACKUP_FILE"
else
  echo "Backup failed!"
fi
