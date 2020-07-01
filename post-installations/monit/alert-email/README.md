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

## Change Directory to the Monit alert Folder
Change directory to the Monit alert folder:

    cd ~/apigee-opdk-ansible/post-installations/monit/alert-email

## Download Dependencies
Use `ansible-galaxy` to download dependencies in the following way: 

    ansible-galaxy install -r requirements.yml -f
	
## Copy Template
Copy template to generate installer by organization

    cp template.yml create-alert.yml
	
## Edit installer
Edit vars in the `create-alert.yml` role for the new alert

    vi create-alert.yml
	
	edit tag vars:
		opdk_alert_mail_from
		opdk_alert_mail_send_1
		opdk_alert_mail_send_2
		opdk_alert_mail_send_3
		.........

## Playbook Execution

This tasks assume that the user has sudo privilege with no password prompt. Please invoke `create alert monit` in the following way:
    
    ansible-playbook create-alert.yml

If this task fails due to sudo privilege, please re-invoke the script and pass the sudo flag in the following way: 

    ansible-playbook create-alert.yml -K
    

## Next Steps Single Region

Please continue with the [next steps](../../../installations/single-region/README.md#quick-start-usage-overview) in the process.

## Next Steps Multi Region

Please continue with the [next steps](../../../installations/multi-region/README.md#quick-start-usage-overview) in the process.