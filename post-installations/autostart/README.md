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

## Change Directory to the AutoStart Folder
Change directory to the AutoStart folder:

    cd ~/apigee-opdk-ansible/post-installations/autostart

## (Option 1) Playbook Execution AutoStart Platform

This tasks assume that the user has sudo privilege with no password prompt. Please invoke `autostart` in the following way:
    
    ansible-playbook enable.yml
	
	or
	
	ansible-playbook disable.yml

If this task fails due to sudo privilege, please re-invoke the script and pass the sudo flag in the following way: 

    ansible-playbook enable.yml -K
	
	or
	
	ansible-playbook disable.yml -K

## (Option 2) Executing Portions of the AutoStart
It is necessary to many times only execute a portion of the overall installation script. This has been enabled by the 
use of [Ansible tags](http://docs.ansible.com/ansible/latest/cli/ansible-playbook.html#cmdoption-ansible-playbook-tags). 
Ansible tags are used extensively to execute functionally significant portions of the installation. These tags have been 
used consistently across all the installation playbooks. In some cases, the tags perform slightly different tasks but 
achieve the semantic functionality ascribed by the name. A sample tag usage that invokes the `ds` tag is as follows: 

    ansible-playbook enable.yml --tags=ds
	
	or
	
	ansible-playbook disable.yml --tags=ds
    
### Tags Listing
You can discover the names of tags using the Ansible flag --list-tags as follows: 

    ansible-playbook enable.yml --list-tags
	
	or
	
	ansible-playbook disable.yml --list-tags
    
The following table lists the main tag names and a description of the functionality that can be invoked. Additional, tags
are available and sometimes added organically. It is expected that you will read the roles to understand how tags that are
not listed here will function. 

| Tag Name | Description |
| --- | --- |
| ds | AutoStart Cassandra | 
| zk | AutoStart Zookeeper | 
| ldap | AutoStart OpenLdap | 
| ms | AutoStart Management Server | 
| rmp | AutoStart Router & Message Processor | 
| r | AutoStart Router | 
| mp | AutoStart Message Processor | 
| qpid | AutoStart Qpid | 
| pg | AutoStart Postgresql |
    

## Next Steps Single Region

Please continue with the [next steps](../../installations/single-region/README.md#quick-start-usage-overview) in the process.

## Next Steps Multi Region

Please continue with the [next steps](../../installations/multi-region/README.md#quick-start-usage-overview) in the process.