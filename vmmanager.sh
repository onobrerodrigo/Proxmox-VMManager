#!/bin/bash
#External parameter
id_vm=201

#Node list
node=$(egrep -o "\"$id_vm\": { .*" /etc/pve/.vmlist|awk '{print $4}'| egrep -o -i "[a-z|0-9]*")

#Connect to Node PVE
ssh $node qm shutdown $id_vm