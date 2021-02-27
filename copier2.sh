#! /bin/bash
# Initialize file name
timestamp=`date +%s`
dates=`date ''+%Y-%m-%d''`
filename="Home-Expense-${dates}_${timestamp}.xlsx"

# Initialize path for the source and destination files
dest_path="/Users/prakashpoudel/OneDrive/My-Personal-Files/Home-Projects/Home-Documents/Backup/"
currnt_file="/Users/prakashpoudel/OneDrive/My-Personal-Files/Home-Projects/Home-Documents/Home-Expense.xlsx"

prev_file=`ls -Art ${dest_path}*.xlsx | tail -n 1`

file_size_current=$(wc -c <$currnt_file)
file_size_previous=$(wc -c <$prev_file)

if [ $file_size_previous -ne $file_size_current ]
then
      echo "`date` Copying to ${filename}"
      cp -a $currnt_file $dest_path$filename
fi



