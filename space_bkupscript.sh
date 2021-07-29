DST=$1

cd ~/dbbackup/db_backups
latest=`ls -t1 |  head -n 1`
echo $latest
movetoSpace(){

echo "\n##### MOVING TO SPACE #####\n"
    if s3cmd put $latest s3://$DST/artwork-dbBackup/; then
        echo "\n##### Done moving files to s3://"$DST" #####\n"
        return 0
    else
        echo "\n##### Failed to move files to the Space #####\n"
        return 1
    fi
}
movetoSpace
