#!/bin/bash
date

service="httpd"

svfile="/var/run/$service/$service.pid"



if [ -f $svfile ]
then
  echo "$service is running"
else
  echo " starting the $service , please wait a min :) "
sudo systemctl start $service  &> /dev/null
fi
  if [ -f $svfile ]
  then
    echo " The process is running successfully"

  else
    echo " There is a trouble in starting, try other way :) "

fi
