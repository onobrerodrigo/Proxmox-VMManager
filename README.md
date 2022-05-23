# Manager VMS in Proxmox 
How to manager any VMs in Cluster Proxmox 

## Depends on

- This script is intended to manage any VM that is on any node of the proxmox cluster.
- This script depends on the file in "/etc/pve/.vmlist" that is generated when there is a cluster.

## What does this script do?

Only the VM ID will be inserted, the script will find the node that is running the VM, it will make an SSH connection to the node and execute the predefined commands, and then send an email with the log of what was executed.
