
#!/bin/bash

PROJECT_NAME="artwork"

DIR=`date +%d-%m-%y-%H-%M`

DEST=~/dbbackup/db_backups

#mkdir $DEST

echo $DEST

mysqldump --defaults-file=~/.my.cnf -u newuser --column-statistics=0 --no-tablespaces magento > $DEST/$PROJECT_NAME-$DIR.sql
