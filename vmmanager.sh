#!/bin/bash
#
#Initial Param
#
vm=201
node= egrep -o "\"$vm\": { .*" /etc/pve/.vmlist|awk '{print $4}'| egrep -o -i "[a-z|0-9]*"
#Connect to node...
for vm in node; do 
    ssh $node ls /etc/pve/
done