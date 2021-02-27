#! /bin/bash
# Initialize file name
timestamp=`date +%s`
dates=`date ''+%Y-%m-%d''`
filename="HomeExpenseProject-${dates}_${timestamp}.xlsx"

# Initialize path for the source and destination files
currnt_file="/Users/prakashpoudel/Repository/PROD/Home-expense/DataFile/HomeExpenseProject.xlsx"
prev_file=`ls -Art  ~/Repository/Data-Backup/PROD/Datafile/*.xlsx | tail -n 1`

file_size_current=$(wc -c <$currnt_file)
file_size_previous=$(wc -c <$prev_file)

if [ $file_size_previous -ne $file_size_current ]
then
      echo "`date` Copying to ${filename}"
      cp -a ~/Repository/PROD/Home-expense/DataFile/HomeExpenseProject.xlsx ~/Repository/Data-Backup/PROD/Datafile/$filename
fi



