#! /bin/bash

timestamp=`date +%s`
dates=`date ''+%Y-%m-%d''`

filename="HomeExpenseProject-${dates}_${timestamp}.xlsx"
echo "`date` Copying to ${filename}"
cp -a ~/Repository/PROD/Home-expense/DataFile/HomeExpenseProject.xlsx ~/Repository/Data-Backup/PROD/Datafile/$filename
