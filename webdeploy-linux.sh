1 #!/bin/bash
  2
  3 source_url="https://www.tooplate.com/zip-templates/2130_waso_strategy.zip"
  4
  5 yum --help &> /dev/null
  6
  7 if [ $? -eq 0 ]
  8 then
  9 echo "#################################################################"
 10 echo " CENTOS-VM"
 11 echo "#################################################################"
 12
 13 echo "#################################################################"
 14 echo " Installing Services and dependencies"
 15 echo "#################################################################"
 16 sudo yum install wget unzip httpd -y  > /dev/null
 17
 18
 19 echo "#################################################################"
 20 echo " Starting and enabling the Httpd service"
 21 echo "#################################################################"
 22 sudo systemctl enable --now httpd
 23
 24 mkdir -p /tmp/webfile
 25
 26 cd /tmp/webfile
 27
 28 echo "#################################################################"
 29 echo " Fetching the Source code template"
 30 echo "#################################################################"
 31 wget "$source_url" > /dev/null
 32
 33
 34 echo "#################################################################"
 35 echo " Extracting the source code"
 36 echo "#################################################################"
 37 unzip -o 2130_waso_strategy.zip  > /dev/null
 38
 39
 40 echo "#################################################################"
 41 echo " Deploying the artifacts into  var/www/html"
 42 echo "#################################################################"
 43 sudo cp -r 2130_waso_strategy/*  /var/www/html/  >  /dev/null
 44
 45 else
 46 echo "#################################################################"
 47 echo "UBUNTU_VM"
 48 echo "#################################################################"
 49
 50 echo "#################################################################"
 51 echo " Installing Services and dependencies"
 52 echo "#################################################################"
 53 sudo apt update > /dev/null
 54 sudo apt install wget unzip apache2 -y  > /dev/null
 55
 56
 57 echo "#################################################################"
 58 echo " Starting and enabling the Apache service"
 59 echo "#################################################################"
 60 sudo systemctl enable --now apache2
 61
 62 mkdir -p /tmp/webfile
 63
 64 cd /tmp/webfile
 65
 66 echo "#################################################################"
 67 echo " Fetching the Source code template"
 68 echo "#################################################################"
 69 wget "$source_url" > /dev/null
 70
 71
 72 echo "#################################################################"
 73 echo " Extracting the source code"
 74 echo "#################################################################"
 75 sudo unzip 2130_waso_strategy.zip  > /dev/null
 76
 77
 78 echo "#################################################################"
 79 echo " Deploying the artifacts into  var/www/html"
 80 echo "#################################################################"
 81 sudo cp -r 2130_waso_strategy/*  /var/www/html/  >  /dev/null
 82 fi
 83
 84
 85
 86
 87
