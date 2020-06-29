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

1. Please update credentials and license. ([here](README-credentials.md#usage-instructions))

1. Please review and update the runtime attributes as needed. Update common installation 
attributes like `opdk_version` that is stored in `~/.apigee/custom-properties.yml`.

1. Use playbooks to uninstall in case you need to clean the node (s) of other previous installations. [here](post-installations/README-uninstall-platform.md#usage-instructions)

1. Use playbooks to install infrastructure prerequisites the platform. ([here](installations/README-install-prerequisites-platform.md#usage-instructions))

1. Use playbooks to check the ports of platform. ([here](infrastructure/port-requirements/README-port-requirements-platform.md#usage-instructions))

1. Use playbooks to install the platform. ([here](installations/README-install-platform.md#usage-instructions))

1. Use playbooks to install monit. ([here](installations/README-install-monit.md#usage-instructions))

1. Use playbooks to create new organization on the platform. ([here](post-installations/README-create-org.md#usage-instructions))

1. Use playbooks to create new environment on the platform. ([here](post-installations/README-create-env.md#usage-instructions))

1. Use playbooks to create new virtualhost on the platform. ([here](post-installations/README-create-env.md#usage-instructions))


## Next Steps

Please continue with the [next steps](../README.md#ansible-apigee-private-cloud-features) in the process.