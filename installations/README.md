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

## Quick Start: Usage Overview

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

1. Use playbooks to [create new virtualhost](post-installations/README-create-env.md#usage-instructions) on the platform.


## Next Steps

Please continue with the [next steps](../README.md#ansible-apigee-private-cloud-features) in the process.