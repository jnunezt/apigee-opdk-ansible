# Apigee Edge Installations

The folders in this section perform primary installations of the Apigee platform. These folders except mirror contain 
the playbook `install.yml` that will perform the installation of Apigee Edge component as indicated by the folder name 
and the contained README. This folder contains Ansible playbooks that will install the following Apigee components:

| Component Name | Description | 
|--- | --- |
| [Apigee Edge](multi-node) | Installs a multi-node and multi-region Apigee Edge planet |
| [Apigee Developer Portal](devportal) | Installs Apigee Developer Portal |
| [Apigee Microgateway](edge-microgateway) | Installs Apigee Microgateway |
| [Apigee Monit](monit) | Installs Apigee Monit |

## Assumptions

1. [Configuration](../README.md#usage-overview ) steps have been completed. 
1. [Activate an Ansible Configuration](../README-configure-ansible.md) has been completed.

## Basic Usage
We have created an `ansible-galaxy` requirements file `requirements.yml` that will download and install the roles 
used by this playbook. You can use `ansible-galaxy` in the following way:


    cd installations/{{ multi-node }}
    ansible-galaxy install -r requirements.yml -f
    
Once the roles are installed you can invoke the install process as follows:

    ansible-playbook install.yml

### Executing Portions of the Installation
It is necessary to many times only execute a portion of the overall installation script. This has been enabled by the 
use of [Ansible tags](http://docs.ansible.com/ansible/latest/cli/ansible-playbook.html#cmdoption-ansible-playbook-tags). 
Ansible tags are used extensively to execute functionally significant portions of the installation. These tags have been 
used consistently across all the installation playbooks. In some cases, the tags perform slightly different tasks but 
achieve the semantic functionality ascribed by the name. A sample tag usage that invokes the `os` tag is as follows: 

    ansible-playbook install.yml --tags=os
    
### Tags Listing
You can discover the names of tags using the Ansible flag --list-tags as follows: 

    ansible-playbook install.yml --list-tags
    
The following table lists the main tag names and a description of the functionality that can be invoked. Additional, tags
are available and sometimes added organically. It is expected that you will read the roles to understand how tags that are
not listed here will function. 

| Tag Name | Description |
| --- | --- |
| minimum | Installs without performing any validation on the operating system and minimally verifying that components actually installed. This is the fastest installation available with this framework. |
| cache | Updates the local Ansible cache with OPDK variables that are used for the generation of configuration files. |
| os | Prepares the operating system for the installation of OPDK as covered in the [Edge Installation Overview](https://docs.apigee.com/private-cloud/latest/installation-overview) and [Install the Edge Apigee Setup Utility](https://docs.apigee.com/private-cloud/latest/install-edge-apigee-setup-utility). This covers operating system packages, updates to system configuration files and adapts to operating systems. |
| bootstrap | Install the Apigee bootstrap. This adapts to either [online](https://docs.apigee.com/private-cloud/latest/install-edge-apigee-setup-utility#installedgeapigeesetuputilityonanodewithanexternalinternetconnection) or [offline](https://docs.apigee.com/private-cloud/latest/install-edge-apigee-setup-utility#installedgeapigeesetuputilityonanodewithnoexternalinternetconnection) |
| common | Install [common](https://docs.apigee.com/private-cloud/latest/install-edge-apigee-setup-utility) Apigee components used on all nodes. This does not include operating system packages |
| config | Generate the [Edge Configuration File](https://docs.apigee.com/private-cloud/latest/edge-configuration-file-reference) |
| ds | Install the [ds](https://docs.apigee.com/private-cloud/latest/install-edge-components-node#specifyingthecomponentstoinstall) profile | 
| ms | Install the [ms](https://docs.apigee.com/private-cloud/latest/install-edge-components-node#specifyingthecomponentstoinstall) profile | 
| rmp | Install the [rmp](https://docs.apigee.com/private-cloud/latest/install-edge-components-node#specifyingthecomponentstoinstall) profile | 
| r | Install the [r](https://docs.apigee.com/private-cloud/latest/install-edge-components-node#specifyingthecomponentstoinstall) profile | 
| mp | Install the [mp](https://docs.apigee.com/private-cloud/latest/install-edge-components-node#specifyingthecomponentstoinstall) profile | 
| qpid | Install the [qs](https://docs.apigee.com/private-cloud/latest/install-edge-components-node#specifyingthecomponentstoinstall) profile | 
| pg | Install the [ps](https://docs.apigee.com/private-cloud/latest/install-edge-components-node#specifyingthecomponentstoinstall) profile |
| org | [Onboard an organization](https://docs.apigee.com/private-cloud/latest/onboard-organization) |
