# Usage Instructions

## Terminal Window
These scripts can be run from a terminal window. Please open your terminal and navigate to the folder
containing the Ansible OPDK Playbooks. This can be accomplished as follows: 

    cd ~/apigee-opdk-ansible

## Refresh Local Repository
It may be necessary to update the local repository if it has been some time since the last update.
This can be accomplished as follows: 

    cd ~/apigee-opdk-ansible
    git pull origin master

## Change Directory to the Installations Folder
Change directory to the installations folder:

    cd ~/apigee-opdk-ansible/installations
	
## Ansible Apigee Private Cloud Installations
The Ansible playbooks in this repository support a wide range of the installation
We describe the uses cases that are supported as follows: 

| Feature Name | Feature Description |
| --- | --- |
| [Multi Node](installations/README.md#usage-instructions) | A Private Cloud installation of a Planet containing any number of nodes that follow our recommended HA topologies. |
| [Multi Region](installations/README.md#usage-instructions) | A Private Cloud Planet can be expanded to either increase the size of the Cassandra Ring, increase transaction capacity with additional Routers and Message Processors. |
| [Component](installations/README.md#usage-instructions) | These playbooks enable automated disaster recovery scenarios. These playbooks currently operate on Apigee components to remove, re-install, re-configured, scale up or scale down a Planet thereby providing the necessary functionality to drastically reduce the time to recover from a disaster. |
| [Monit](installations/README.md#usage-instructions) | These playbooks are constructed by composing functionality into Ansible modules called roles to achieve specific use cases. This approach has enabled this framework to re-use the roles that are combined in new ways to provide automation support to the maintenance activities that the Apigee platform requires.  |
| [Devportal](installations/README.md#usage-instructions) | These playbooks are constructed by composing functionality into Ansible modules called roles to achieve specific use cases. This approach has enabled this framework to re-use the roles that are combined in new ways to provide automation support to the maintenance activities that the Apigee platform requires.  |
| [Edge Microgateway](installations/README.md#usage-instructions) | These playbooks are constructed by composing functionality into Ansible modules called roles to achieve specific use cases. This approach has enabled this framework to re-use the roles that are combined in new ways to provide automation support to the maintenance activities that the Apigee platform requires.  |

## Quick Start: Usage Overview

1. Please update credentials and license. ([here](README-credentials.md#usage-instructions))

1. Please review and update the runtime attributes as needed. Update common installation 
attributes like `opdk_version` that is stored in `~/.apigee/custom-properties.yml`.

1. Use playbooks to uninstall in case you need to clean the node (s) of other previous installations. [here](post-installations/README-uninstall-platform.md#usage-instructions)

1. Use playbooks to install infrastructure prerequisites the platform. ([here](installations/README-install-prerequisites-platform.md#usage-instructions))

1. Use playbooks to check the ports of platform. ([here](infrastructure/port-requirements/README-port-requirements-platform.md#usage-instructions))

1. Use playbooks to install the platform. ([here](installations/README-install-platform.md#usage-instructions))

1. Use playbooks to install monit. ([here](installations/README-install-monit.md#usage-instructions))

1. Use playbooks to create new organization on the platform. ([here](post-installations/README-create-org.md#usage-instructions))

1. Use playbooks to create new environment on the organization. ([here](post-installations/README-create-env.md#usage-instructions))

1. Use playbooks to create new virtualhost on the organization/enviroment. ([here](post-installations/README-create-env.md#usage-instructions))


## Next Steps

Please continue with the [next steps](../README.md#ansible-apigee-private-cloud-features) in the process.