#!/bin/bash

#Parametros iniciais

$VM=101
PVE_HOST= egrep -o "\"$VM\": { .*" /etc/pve/.vmlist|awk '{print $4}'|egrep -o -i "[a-z|0-9]*"
#Conecta ao node para desligar a VM definida o parametro
ssh $PVE_HOST qm shutdown $ID --timeout 1
