#!/bin/sh

# create an array with files in folder
arr=($pwd*)
counter=0

# iterate through array using a counter
for ((i=0; i<${#arr[@]}; i++)); do
    ((counter++))
    #do something to each element of array
    echo $counter. "${arr[$i]}"
done

echo ""
echo ""
echo ""

read -p "Which?    " fajl

fajl=$fajl-1

echo "${arr[$fajl]}"

masik="${arr[$fajl]}"



### FTP

HOST='domain.tld'
USER='username'
PASSWD='pass'


ftp -n $HOST <<END_SCRIPT
quote USER $USER
quote PASS $PASSWD
binary
cd /var/www/
put $masik
quit
END_SCRIPT
#exit 0 


xdg-open http://domain.tld/$masik
