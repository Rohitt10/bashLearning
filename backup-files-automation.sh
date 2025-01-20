#!/bin/bash

# Configuration variables
SOURCE_DIR="/path/to/source/directory"
BACKUP_DIR="/path/to/backup/directory"
LOG_FILE="/path/to/backup/logs/backup.log"
DATE=$(date +"%Y-%m-%d_%H-%M-%S")
BACKUP_NAME="backup_$DATE.tar.gz"

# Function to perform backup
perform_backup() {
    echo "Starting backup process..." | tee -a "$LOG_FILE"
    tar -czf "$BACKUP_DIR/$BACKUP_NAME" -C "$SOURCE_DIR" . 2>> "$LOG_FILE"
    
    if [ $? -eq 0 ]; then
        echo "Backup completed successfully!" | tee -a "$LOG_FILE"
        send_notification "Backup Completed" "The backup was successful: $BACKUP_NAME"
    else
        echo "Backup failed!" | tee -a "$LOG_FILE"
        send_notification "Backup Failed" "There was an error during the backup process."
    fi
}

# Function to send a simple notification (e.g., for desktop or email)
send_notification() {
    TITLE=$1
    MESSAGE=$2
    # For Linux with notify-send (desktop notifications)
    if command -v notify-send &> /dev/null; then
        notify-send "$TITLE" "$MESSAGE"
    else
        # Fallback: echo to terminal (could be extended for email notifications, etc.)
        echo "$TITLE: $MESSAGE"
    fi
}

# Main execution starts here
if [ ! -d "$SOURCE_DIR" ]; then
    echo "Source directory does not exist!" | tee -a "$LOG_FILE"
    send_notification "Backup Failed" "The source directory does not exist."
    exit 1
fi

if [ ! -d "$BACKUP_DIR" ]; then
    echo "Backup directory does not exist. Creating it..." | tee -a "$LOG_FILE"
    mkdir -p "$BACKUP_DIR"
fi

perform_backup

