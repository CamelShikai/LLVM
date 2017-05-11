#!/bin/bash
HOST='130.203.157.241'
USER='anonymous'
PASSWD='nopasswd'
FILE=''

cd /tmp
ftp -n -v $HOST << EOT
ascii
prompt
user $USER $PASSWD
ls -la
mget *K *M
bye
EOT

