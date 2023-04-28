#!/bin/bash

echo "## Create Beharbor-Server Container"

read i

while read line || [ -n "$line" ] ; do
    echo "create $line 's Ubuntu Container"
    ((k=$i+1))
    ((j=$i+49))
    docker run -it -d -h=$line --name $line -p $i:22 -p $k-$j:$k-$j beharbor_ubuntu:1.0
    ufw allow $i:$j/tcp
    ufw allow $i:$j/udp
    ((i+=50))
done < id