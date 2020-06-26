# Ansible Apigee Private Cloud Features
The Ansible playbooks in this repository support a wide range of the installation, configuration
and maintenance use cases that are necessary to successfully manage Apigee Private Cloud Planets.
We describe the uses cases that are supported as follows: 

| Feature Name | Feature Description |
| --- | --- |
| Planet Installation | A Private Cloud installation of a Planet containing any number of nodes that follow our recommended HA topologies. |
| Planet Expansion | A Private Cloud Planet can be expanded to either increase the size of the Cassandra Ring, increase transaction capacity with additional Routers and Message Processors. |
| Disaster Recovery | These playbooks enable automated disaster recovery scenarios. These playbooks currently operate on Apigee components to remove, re-install, re-configured, scale up or scale down a Planet thereby providing the necessary functionality to drastically reduce the time to recover from a disaster. |
| Planet Maintenance | These playbooks are constructed by composing functionality into Ansible modules called roles to achieve specific use cases. This approach has enabled this framework to re-use the roles that are combined in new ways to provide automation support to the maintenance activities that the Apigee platform requires.  |
| Planet Upgrade | The playbooks included in this repository will perform Apigee platform upgrades. |

## Assumptions 
* This repository assumes that no [Apigee Operating System requirements](https://docs.apigee.com/release/supported-software#apigeeedgeforprivatecloudsupportedversions) 
have been fulfilled except to select the basic operating system that is supported. 
* A [control server](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#control-machine-requirements) 
is available from which [Ansible](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html) 
scripts and modules can be downloaded.
* We assume that you have an introductory understanding of [Ansible](https://docs.ansible.com/) and 
[Ansible Galaxy](https://galaxy.ansible.com/docs/).
* Availability of administrative privilege escalation on the control server and the target nodes.
* Ansible version 2.7.7. 

## Install Ansible

The Ansible installation method depends on your distribution.

To install on Debian or Ubuntu from the distributor repository:
`sudo apt install ansible`

To install on Red Hat or CentOS from the distributor repository:
`sudo yum -y install ansible`

To install from pip:
`sudo pip install ansible`

Full installation details including packages for the latest Ansible release
are available at <https://docs.ansible.com/ansible/latest/intro_installation.html>.

## Quick Start: Usage Overview
The use of this framework is composed of the following steps:

1. Install git, rsync, tree and pip.

    `sudo yum install -y git rsync tree python-pip`

1. Clone this repository to `~/apigee-opdk-ansible`.

    git clone https://github.com/chronos085/apigee-opdk-ansible.git ~/apigee-opdk-ansible
    
1. [Setup](README-setup.md#usage-instructions) an Ansible control server and workspace.
1. Configure Ansible and the Ansible inventory:

    1. Update the Ansible configuration as indicated in [Configure Ansible](README-configure-ansible.md#usage-instructions).          
    1. Update the inventory template files as indicated in [Ansible Inventory](README-ansible-inventory.md#usage-instructions).
	
1. Please update [credentials](README-credentials.md#usage-instructions) and license.  
1. Please review and update the runtime attributes as needed. Update common installation 
attributes like `opdk_version` that is stored in `~/.apigee/custom-properties.yml`.
1. Use playbooks to [uninstall](post-installations/README-uninstall-platform.md#usage-instructions) in case you need to clean the node (s) of other previous installations.
1. Use playbooks to [install infrastructure prerequisites](installations/README-install-prerequisites-platform.md#usage-instructions) the platform.
1. Use playbooks to [check](infrastructure/port-requirements/README-port-requirements-platform.md#usage-instructions) the ports of platform.
1. Use playbooks to [install](installations/README-install-platform.md#usage-instructions) the platform.
1. Use playbooks to [install](installations/README-install-monit.md#usage-instructions) monit.
1. Use playbooks to [create new organization](post-installations/README-create-org.md#usage-instructions) on the platform.
1. Use playbooks to [create new environment](post-installations/README-create-env.md#usage-instructions) on the platform.

