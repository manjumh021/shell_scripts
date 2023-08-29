#!/bin/bash

# Remove backup files older than seven days
find /var/database_backup/mongo_db -name "mongo_backup*" -type f -mtime +7 -exec rm {} \;
find /var/database_backup/my_sql -name "mysql_backup*" -type f -mtime +7 -exec rm {} \;
