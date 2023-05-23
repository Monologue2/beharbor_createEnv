#!/bin/bash

echo "## control Beharbor-Server Container"

echo "start / stop"
read type

while read line || [ -n "$line" ] ; do
    echo "$type $line 's Ubuntu Container"
    docker $type $line
done < ps