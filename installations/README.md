# Ansible Apigee Private Cloud Installations
The Ansible playbooks in this repository support a wide range of the installation
We describe the uses cases that are supported as follows: 

| Feature Name | Feature Description |
| --- | --- |
| [Single Region](single-region/README.md#usage-instructions) | A private cloud installation on a planet containing any number of nodes in a single region. |
| [Multi Region](multi-region/README.md#usage-instructions) | A private cloud installation on a planet containing any number of nodes that follow our recommended HA topologies in more than one region. |
| [Component](component/README.md#usage-instructions) | A component installation on a planet. |
| [Monit](monit/README.md#usage-instructions) | A monit installation on a planet or on any component.  |
| [Devportal](devportal/README.md#usage-instructions) | A developer portal installation for organization/environment.  |

## Quick Start: Usage Overview

1. Please update credentials and license. ([here](README-credentials.md#usage-instructions))

1. Please review and update the runtime attributes as needed. Update common installation 
attributes like `opdk_version` that is stored in `~/.apigee/custom-properties.yml`.

1. Use playbooks to uninstall in case you need to clean the node (s) of other previous installations. [here](../post-installations/uninstall/README.md#usage-instructions)

1. Use a playbooks [Installations](README.md#ansible-apigee-private-cloud-installations) of the table.


## Next Steps

Please continue with the [next steps](../README.md#ansible-apigee-private-cloud-features) in the process.