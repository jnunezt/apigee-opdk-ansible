# Apigee Edge Installations

The folders in this section perform primary installations of the Apigee platform. These folders except mirror contain 
the playbook `install.yml` that will perform the installation of Apigee Edge component as indicated by the folder name 
and the contained README. This folder contains Ansible playbooks that will install the following Apigee components:

| Component Name | Description | 
|--- | --- |
| [Apigee Edge](multi-node) | Installs a multi-node and multi-region Apigee Edge planet |
| [Apigee Developer Portal](devportal) | Installs Apigee Developer Portal |
| [Apigee Microgateway](edge-microgateway) | Installs Apigee Microgateway |

## Assumptions

1. [Configuration](../README.md#usage-overview ) steps have been completed. 
1. [Activate an Ansible Configuration](../README-configure-ansible.md) has been completed.

## Basic Usage
Open the terminal and change directory to the installations folder:

    cd ~/apigee-opdk-accelerator/installations/{{ type infrastructure }}/install/{{ type installation }}
    
Once the roles are installed you can invoke the install process as follows:

    ansible-playbook install.yml

### Executing Portions of the Installation
It is necessary to many times only execute a portion of the overall installation script. This has been enabled by the 
use of [Ansible tags](http://docs.ansible.com/ansible/latest/cli/ansible-playbook.html#cmdoption-ansible-playbook-tags). 
Ansible tags are used extensively to execute functionally significant portions of the installation. These tags have been 
used consistently across all the installation playbooks. In some cases, the tags perform slightly different tasks but 
achieve the semantic functionality ascribed by the name. A sample tag usage that invokes the `ds` tag is as follows: 

    ansible-playbook install.yml --tags=ds
    
### Tags Listing
You can discover the names of tags using the Ansible flag --list-tags as follows: 

    ansible-playbook install.yml --list-tags
    
The following table lists the main tag names and a description of the functionality that can be invoked. Additional, tags
are available and sometimes added organically. It is expected that you will read the roles to understand how tags that are
not listed here will function. 

| Tag Name | Description |
| --- | --- |
| ds | Install the [ds](https://docs.apigee.com/private-cloud/latest/install-edge-components-node#specifyingthecomponentstoinstall) profile | 
| ms | Install the [ms](https://docs.apigee.com/private-cloud/latest/install-edge-components-node#specifyingthecomponentstoinstall) profile | 
| rmp | Install the [rmp](https://docs.apigee.com/private-cloud/latest/install-edge-components-node#specifyingthecomponentstoinstall) profile | 
| r | Install the [r](https://docs.apigee.com/private-cloud/latest/install-edge-components-node#specifyingthecomponentstoinstall) profile | 
| mp | Install the [mp](https://docs.apigee.com/private-cloud/latest/install-edge-components-node#specifyingthecomponentstoinstall) profile | 
| qpid | Install the [qs](https://docs.apigee.com/private-cloud/latest/install-edge-components-node#specifyingthecomponentstoinstall) profile | 
| pg | Install the [ps](https://docs.apigee.com/private-cloud/latest/install-edge-components-node#specifyingthecomponentstoinstall) profile |

## Next Steps

Please continue with the [next steps](../README.md#usage-overview) in the process.
