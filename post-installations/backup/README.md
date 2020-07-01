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

## Change Directory to the Backup Folder
Change directory to the Backup folder:

    cd ~/apigee-opdk-ansible/post-installations/backup

## Download Dependencies
Use `ansible-galaxy` to download dependencies in the following way: 

    ansible-galaxy install -r requirements.yml -f
	
## (Option 1) Playbook Execution Backup Platform

This tasks assume that the user has sudo privilege with no password prompt. Please invoke `backup` in the following way:
    
    ansible-playbook backup-all.yml

If this task fails due to sudo privilege, please re-invoke the script and pass the sudo flag in the following way: 

    ansible-playbook backup-all.yml -K

## (Option 2) Executing Portions of the Backup
It is necessary to many times only execute a portion of the overall installation script. This has been enabled by the 
use of [Ansible tags](http://docs.ansible.com/ansible/latest/cli/ansible-playbook.html#cmdoption-ansible-playbook-tags). 
Ansible tags are used extensively to execute functionally significant portions of the installation. These tags have been 
used consistently across all the installation playbooks. In some cases, the tags perform slightly different tasks but 
achieve the semantic functionality ascribed by the name. A sample tag usage that invokes the `ds` tag is as follows: 

    ansible-playbook backup.yml --tags=ds
    
### Tags Listing
You can discover the names of tags using the Ansible flag --list-tags as follows: 

    ansible-playbook backup.yml --list-tags
    
The following table lists the main tag names and a description of the functionality that can be invoked. Additional, tags
are available and sometimes added organically. It is expected that you will read the roles to understand how tags that are
not listed here will function. 

| Tag Name | Description |
| --- | --- |
| ds | Backup Cassandra | 
| zk | Backup Zookeeper | 
| ldap | Backup OpenLDAP | 
| ms | Backup Management Server | 
| rmp | Backup Router & Message Processor | 
| r | Backup Router | 
| mp | Backup Message Processor | 
| qpid | Backup Qpid | 
| pg | Backup Postgresql |
    

## Next Steps

Please continue with the [next steps](../README.md#ansible-apigee-private-cloud-recovery) in the process.