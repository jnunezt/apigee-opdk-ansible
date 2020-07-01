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

## Change Directory to the JMX-Monitoring Folder
Change directory to the JMX-Monitoring folder:

    cd ~/apigee-opdk-ansible/post-installations/jmx-prometheus

## Download Dependencies
Use `ansible-galaxy` to download dependencies in the following way: 

    ansible-galaxy install -r requirements.yml -f

## Copy Jar
Copy jmx_prometheus_javaagent-0.3.1.jar in bastion path

    /opt/agent
	
## Playbook Execution

This tasks assume that the user has sudo privilege with no password prompt. Please invoke `install JMX-Monitoring` in the following way:
    
    ansible-playbook install.yml

If this task fails due to sudo privilege, please re-invoke the script and pass the sudo flag in the following way: 

    ansible-playbook install.yml -K
    

## Next Steps Single Region

Please continue with the [next steps](../../installations/single-region/README.md#quick-start-usage-overview) in the process.

## Next Steps Multi Region

Please continue with the [next steps](../../installations/multi-region/README.md#quick-start-usage-overview) in the process.