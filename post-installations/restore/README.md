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

## Change Directory to the Restore Folder
Change directory to the Restore folder:

    cd ~/apigee-opdk-accelerator/post-installations/restore

## Download Dependencies
Use `ansible-galaxy` to download dependencies in the following way: 

    ansible-galaxy install -r requirements.yml -f

## Executing Portions of the Restoreation
It is necessary to many times only execute a portion of the overall installation script. This has been enabled by the 
use of [Ansible tags](http://docs.ansible.com/ansible/latest/cli/ansible-playbook.html#cmdoption-ansible-playbook-tags). 
Ansible tags are used extensively to execute functionally significant portions of the installation. These tags have been 
used consistently across all the installation playbooks. In some cases, the tags perform slightly different tasks but 
achieve the semantic functionality ascribed by the name. A sample tag usage that invokes the `ds` tag is as follows: 

    ansible-playbook restore.yml --tags=ds
    
### Tags Listing
You can discover the names of tags using the Ansible flag --list-tags as follows: 

    ansible-playbook restore.yml --list-tags
    
The following table lists the main tag names and a description of the functionality that can be invoked. Additional, tags
are available and sometimes added organically. It is expected that you will read the roles to understand how tags that are
not listed here will function. 

| Tag Name | Description |
| --- | --- |
| ds | Restore Cassandra | 
| zk | Restore Zookeeper | 
| ldap | Restore OpenLDAP | 
| ms | Restore Management Server | 
| rmp | Restore Router & Message Processor | 
| r | Restore Router | 
| mp | Restore Message Processor | 
| qpid | Restore Qpid | 
| pg | Restore Postgresql |