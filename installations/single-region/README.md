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

    cd ~/apigee-opdk-ansible/installations/single-region
	
## Pre-Install Single Region
The Ansible playbooks in this repository support a wide range of the installation prerequisites
We describe the uses cases that are supported as follows: 

| Feature Name | Feature Description |
| --- | --- |
| [Full](pre-install/full/README.md#usage-instructions) | A private cloud installation on a planet that contains complete steps. |
| [Segmented](pre-install/segmented/README.md#usage-instructions) | A private cloud installation on a planet that contains small steps (use it for many nodes). |

## Quick Start: Usage Overview

1. Use playbooks to install infrastructure prerequisites the platform (table pre-install).

1. Use playbooks to check the ports of platform. ([here](../../infrastructure/port-requirements/README.md#usage-instructions))

1. Use playbooks to install the platform. ([here](installations/README-install-platform.md#usage-instructions))

1. Use playbooks to install monit. ([here](installations/README-install-monit.md#usage-instructions))

1. Use playbooks to create new organization on the platform. ([here](post-installations/README-create-org.md#usage-instructions))

1. Use playbooks to create new environment on the organization. ([here](post-installations/README-create-env.md#usage-instructions))

1. Use playbooks to create new virtualhost on the organization/enviroment. ([here](post-installations/README-create-env.md#usage-instructions))


## Next Steps

Please continue with the [next steps](../README.md#ansible-apigee-private-cloud-features) in the process.