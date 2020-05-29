# Usage Instructions

## Basic Usage
We have created an `ansible-galaxy` requirements file `requirements.yml` that will download and install the roles 
used by this playbook. You can use `ansible-galaxy` in the following way:

    cd ~/apigee-opdk-accelerator/installations/monit
    ansible-galaxy install -r requirements.yml -f

## Monit an Ansible Control Server on localhost

`monit.yml` will configure the localhost as an Ansible control server. This tasks assume that the user has sudo privilege 
 with no password prompt. Please invoke `monit.yml` in the following way:
    
    # Monit the Ansible controller
    ansible-playbook install.yml

If this task fails due to sudo privilege, please re-invoke the script and pass the sudo flag in the following way: 

    ansible-playbook install.yml -K
    

## Next Steps

Please continue with the [next steps](../README.md#usage-overview) in the process.