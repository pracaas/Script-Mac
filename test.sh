#! /bin/bash

currnt_file="/Users/prakashpoudel/Repository/PROD/Home-expense/DataFile/HomeExpenseProject.xlsx"
prev_file=`ls -Art  ~/Repository/Data-Backup/PROD/Datafile/*.xlsx | tail -n 1`

#cp -a ~/Repository/PROD/Home-expense/DataFile/HomeExpenseProject.xlsx ~/Repository/Data-Backup/PROD/Datafile/$filename

echo $currnt_file
echo $prev_file

file_size_previous=`du -k $prev_file | cut -f1`
file_size_current=`du -k $currnt_file | cut -f1`

file_size_current=$(wc -c <$currnt_file)
file_size_previous=$(wc -c <$prev_file)

echo $file_size_previous
echo $file_size_current

if [ $file_size_previous -ne $file_size_current ]
then
      echo "Copied"
fi


file_size_current=$(wc -c <$currnt_file)
file_size_previous=$(wc -c <$prev_file)