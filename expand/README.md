# Ansible Apigee Private Cloud Installations Expansion
The Ansible playbooks in this repository support a range of the installation expansion
We describe the uses cases that are supported as follows: 

| Feature Name | Feature Description |
| --- | --- |
| [Scale Up Cassandra](cassandra/installation/README.md#usage-instructions) | A private cloud installation on a planet scale up any number of cassandra nodes. |
| [Scale Down Cassandra](cassandra/uninstallation/README.md#usage-instructions) | A private cloud uninstallation on a planet scale down any number of cassandra nodes. |
| [Scale Up Router & Message Processor](rmp/installation/README.md#usage-instructions) | A private cloud installation on a planet that scale up transaction capacity with additional Routers and Message Processors on any number of nodes. |
| [Scale Down Router & Message Processor](rmp/uninstallation/README.md#usage-instructions) | A private cloud uninstallation on a planet that scale down transaction capacity with additional Routers and Message Processors on any number of nodes. |

## Quick Start: Usage Overview

1. Assuming that we configured the inventory to use `~/.ansible/inventory/prod`

	### Edit inventory files for all data centers for new cassandra nodes

	1. Add new nodes on inventory

		[all]
		#Listing of all nodes in data center
		apigee_101 ansible_host=xx.xx.xx.xx
		apigee_102 ansible_host=xx.xx.xx.xx
		
	1. Add new nodes cassandra in group

		[dc_1_ds]
		#Listing of all old nodes cassandra
		apigee_101
		apigee_102

	1.Add new group & Identify nodes zookeeper in group

		[dc_1_zk]
		#Listing of all old nodes cassandra 
		
	1. Add new group & Identify nodes new cassandra in group

		[dc_1_c]
		apigee_101
		apigee_102
		
	1. We can add the dc_1_c group to the larger group

		[expand_c:children]
		dc_1_c

	1. We can add the expand_c group to the larger group

		[expand:children]
		expand_c
	

## Next Steps

Please continue with the [next steps](../README.md#ansible-apigee-private-cloud-features) in the process.