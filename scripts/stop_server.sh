#!/bin/bash
isExistApp=`pgrep httpd`
if [[ -n  $isExistApp ]]; then
    service httpd stop        
fi

# for File already exists at location /var/www/html/index.html
#  https://forums.aws.amazon.com/thread.jspa?threadID=169277
rm -rf /var/www/*
